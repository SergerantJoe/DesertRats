
class DRRI extends Object
	abstract
	editinlinenew
	native
	config(_DR_RoleInfo)
	hidecategories(Object);

enum ERORoleInfoType
{
	RORIT_None,
	RORIT_AntiTank,
	RORIT_Assault,
	RORIT_EliteAssault,
	RORIT_Rifleman,
	RORIT_EliteRifleman,
	RORIT_Engineer,
	RORIT_MachineGunner,
	RORIT_Marksman,
	RORIT_SquadLeader,
	RORIT_Commander,
	RORIT_Tank,
	RORIT_Transport,
	RORIT_SpottedByPlane
};

var		ERORoleInfoType		RoleType;
var		byte					ClassTier;
var		byte					ClassIndex;
var		localized string		MyName;
var		localized string		ClassViewName;
var		localized string		ClassShortName;
var		localized string		ProfileNameOverride;
var()		class<DRRI>		OpposingTeamEquivalentClass;
var		DRRI				OpposingTeamEquivalent;

var()	bool	bBotSelectable;

var 	array<class<ROWeapon> >	PrimaryWeapons;
var 	array<class<ROWeapon> >	SecondaryWeapons;
var 	array<class<ROWeapon> >	OtherItems;

var		bool	bAllowPistolsInRealism;

struct native WeaponSelectionInfo
{
	var	byte	PrimaryWeaponIndex;
	var byte	PrimaryWeaponLevel;
	var	byte	SecondaryWeaponIndex;
	var byte	SecondaryWeaponLevel;

	structdefaultproperties
	{
		PrimaryWeaponLevel=255
		SecondaryWeaponLevel=255
	}
};

// @todo: move to ROPC instead (avoid changing hands and memory cost)
var transient WeaponSelectionInfo ActiveWeaponLoadout;

var		bool	bCanCompleteMiniObjectives;	// Set for anyone who should see Mini Objectives on their Overhead Map
var		bool	bCanBeTankCrew;				// Set for anyone who may enter a tank
var()	bool	bIsTankCommander;			// Set for players that should spawn as Tank Commander
var()	bool	bIsVehicleDriver;			// Set for players that should spawn as Vehicle Driver
var()	bool	bIsVehicleMGer;				// Set for players that should spawn as Vehicle MGer
var()	bool	bIsTeamLeader;				// Set for players who are a Team Leader
var()	bool	bIsSquadLeader;				// Set for players who are a Squad Leader
var()	bool	bIsMarksman;				// Set for marksmen classes

var config byte LastPrimaryIndexSelected;
var config byte LastSecondaryIndexSelected;

native function AddSharedContentRef(object ObjectToAdd);

function CreateInventoryFor(Pawn PlayerPawn)
{
	local ROPawn ROP;
	local ROPlayerController ROPC;
	local ROGameStatsWrite Stats;
	local int i, OverriddenProficiencyLevel;
	local ROPlayerReplicationInfo ROPRI;
	local ROGameReplicationInfo ROGRI;

	ROP = ROPawn(PlayerPawn);

	if( ROP != none )
	{
		ROPC = ROPlayerController(PlayerPawn.Controller);
		ROPRI = ROPlayerReplicationInfo(ROP.PlayerReplicationInfo);
		ROGRI = ROGameReplicationInfo(ROPRI.WorldInfo.Game.GameReplicationInfo);

		if ( ROPC != None )
		{
			Stats = ROPC.StatsWrite;
			OverriddenProficiencyLevel = ROPC.OverriddenWeaponProficiencyLevel;
		}
		else
		{
			OverriddenProficiencyLevel = 255;
		}

		SetPrimaryWeapon( ROP, ROPRI, Stats, OverriddenProficiencyLevel );
		SetSecondaryWeapon( ROP, ROPRI, Stats, OverriddenProficiencyLevel );


		for ( i = GetOtherItemsStart(Stats != none ? byte(Stats.ClassRanks[ClassIndex]) : byte(0)); i < OtherItems.Length; i++ )
		{
			if ( ROGRI.bClassicWeaponLoadout )
		    {
		    	// Use the classic mode equipment if available
				if (OtherItems[i].default.ClassicWeaponContentClass != "")
				{
					ROP.LoadAndCreateInventory(OtherItems[i].default.ClassicWeaponContentClass);
					continue;
				}
		    }

			if( OtherItems[i].default.WeaponContentClass.Length > 1 )
				SetOtherWeapon( ROP, ROPRI, Stats, OverriddenProficiencyLevel, i );
			else
				ROP.LoadAndCreateInventory(OtherItems[i].default.WeaponContentClass[0]);
		}
	}
}

function SetPrimaryWeapon(ROPawn ROP, ROPlayerReplicationInfo ROPRI, ROGameStatsWrite Stats, int OverriddenProficiencyLevel)
{
	local byte WeaponProficiency;
	local class<ROWeapon> WeaponClass;

	WeaponClass = PrimaryWeapons[ActiveWeaponLoadout.PrimaryWeaponIndex];
	if ( WeaponClass == None )
	{
		return;
	}

	if ( OverriddenProficiencyLevel != -1 && OverriddenProficiencyLevel <= 50 )
	{
		WeaponProficiency = OverriddenProficiencyLevel;
	}
	else if ( Stats != none )
	{
		WeaponProficiency = Stats.WeaponLevels[WeaponClass.default.InvIndex];
	}

	ROP.LoadAndCreateInventory(WeaponClass.static.GetWeaponContentClassName(ROPRI, WeaponProficiency, ActiveWeaponLoadout.PrimaryWeaponLevel));
}

function SetSecondaryWeapon(ROPawn ROP, ROPlayerReplicationInfo ROPRI, ROGameStatsWrite Stats, int OverriddenProficiencyLevel)
{
	local byte WeaponProficiency;
	local class<ROWeapon> WeaponClass;

	if ( ActiveWeaponLoadout.SecondaryWeaponIndex <=  SecondaryWeapons.Length - 1 )
	{
		WeaponClass = SecondaryWeapons[ActiveWeaponLoadout.SecondaryWeaponIndex];
	}

	if ( WeaponClass == None )
	{
		return;
	}

	if ( OverriddenProficiencyLevel != -1 && OverriddenProficiencyLevel <= 50 )
	{
		WeaponProficiency = OverriddenProficiencyLevel;
	}
	else if ( Stats != none )
	{
		WeaponProficiency = Stats.WeaponLevels[WeaponClass.default.InvIndex];
	}

	ROP.LoadAndCreateInventory(WeaponClass.static.GetWeaponContentClassName(ROPRI, WeaponProficiency, ActiveWeaponLoadout.SecondaryWeaponLevel));
}

function SetOtherWeapon(ROPawn ROP, ROPlayerReplicationInfo ROPRI, ROGameStatsWrite Stats, int OverriddenProficiencyLevel, int ItemIndex)
{
	local byte WeaponProficiency;
	local class<ROWeapon> WeaponClass;

	WeaponClass = OtherItems[ItemIndex];
	if ( WeaponClass == None )
	{
		return;
	}
	
	if ( OverriddenProficiencyLevel != -1 && OverriddenProficiencyLevel <= 50 )
	{
		WeaponProficiency = OverriddenProficiencyLevel;
	}
	else if ( Stats != none )
	{
		WeaponProficiency = Stats.WeaponLevels[WeaponClass.default.InvIndex];
	}

	ROP.LoadAndCreateInventory(WeaponClass.static.GetWeaponContentClassName(ROPRI, WeaponProficiency));
}

function SetActiveWeaponLoadout(const WeaponSelectionInfo InWeaponLoadout)
{
	ActiveWeaponLoadout = InWeaponLoadout;
}

function PreLoadContent(array<string> PawnLevelContentClasses) { }

function bool IsWeaponClassDefaultRoleWeapon(ROWeapon WeaponClass)
{
	local int InvIndex;
	local int InvLevelIndex;
	local class<ROWeapon> InvType;
	local name InvName;
	local ROGameReplicationInfo ROGRI;

	ROGRI = ROGameReplicationInfo( class'WorldInfo'.static.GetWorldInfo().GRI );

	// Check the primary weapons
	for( InvIndex=0; InvIndex<PrimaryWeapons.Length; InvIndex++ )
	{
		InvType = PrimaryWeapons[InvIndex];
		for( InvLevelIndex=0; InvLevelIndex<InvType.default.WeaponContentClass.Length; InvLevelIndex++ )
		{
			InvName = name(Split(InvType.default.WeaponContentClass[InvLevelIndex], ".", true));
			if( WeaponClass.IsA(InvName) )
			{
				return true;
			}

			if( ROGRI.bClassicWeaponLoadout )
			{
				InvName = name(Split(InvType.default.ClassicWeaponContentClass, ".", true));
				if( WeaponClass.IsA(InvName) )
				{
					return true;
				}
			}
		}
	}

	// Check the secondary weapons
	for( InvIndex=0; InvIndex<SecondaryWeapons.Length; InvIndex++ )
	{
		InvType = SecondaryWeapons[InvIndex];
		for( InvLevelIndex=0; InvLevelIndex<InvType.default.WeaponContentClass.Length; InvLevelIndex++ )
		{
			InvName = name(Split(InvType.default.WeaponContentClass[InvLevelIndex], ".", true));
			if( WeaponClass.IsA(InvName) )
			{
				return true;
			}
		}
	}

	// Check all other items
	for( InvIndex=0; InvIndex<OtherItems.Length; InvIndex++ )
	{
		InvType = OtherItems[InvIndex];
		for( InvLevelIndex=0; InvLevelIndex<InvType.default.WeaponContentClass.Length; InvLevelIndex++ )
		{
			InvName = name(Split(InvType.default.WeaponContentClass[InvLevelIndex], ".", true));
			if( WeaponClass.IsA(InvName) )
			{
				return true;
			}
		}
	}

	return false;
}

function bool IsWeaponClassDefaultRoleOtherItem(ROWeapon WeaponClass)
{
	local int InvIndex;
	local int InvLevelIndex;
	local class<ROWeapon> InvType;
	local name InvName;

	for( InvIndex=0; InvIndex<OtherItems.Length; InvIndex++ )
	{
		InvType = OtherItems[InvIndex];
		for( InvLevelIndex=0; InvLevelIndex<InvType.default.WeaponContentClass.Length; InvLevelIndex++ )
		{
			InvName = name(Split(InvType.default.WeaponContentClass[InvLevelIndex], ".", true));
			if( WeaponClass.IsA(InvName) )
			{
				return true;
			}
		}
	}

	return false;
}

function InitMPOptions(bool bNoWeaponLimits, bool bRealisticPistolLoadouts);

function CreateOpposingTeamEquivalent()
{
	if ( OpposingTeamEquivalent == none )
	{
		OpposingTeamEquivalent = new OpposingTeamEquivalentClass;
	}
}

static function int GetPrimaryWeaponsNum(ROGameReplicationInfo ROGRI, byte ClassRank, optional bool bPreorderBonus)
{
	return default.PrimaryWeapons.Length;
}

static function int GetSecondaryWeaponsNum(ROGameReplicationInfo ROGRI, byte ClassRank)
{
	return default.SecondaryWeapons.Length;
}

static function int GetPrimaryWeaponsStart(byte ClassRank, optional bool bPreorderBonus)
{
	return 0;
}

static function int GetSecondaryWeaponsStart(byte ClassRank)
{
	return 0;
}

static function int GetOtherItemsStart(byte ClassRank)
{
	return 0;
}

static function string GetProfileName()
{
	if ( default.ProfileNameOverride != "" )
	{
		return default.ProfileNameOverride;
	}

	return default.MyName;
}

defaultproperties
{
	bBotSelectable=true
	bAllowPistolsInRealism=true
}
