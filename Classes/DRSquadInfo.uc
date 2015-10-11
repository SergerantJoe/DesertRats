
class DRSquadInfo extends Object
	native
	editinlinenew
	perobjectlocalized;

enum EROSquadType
{
	ROST_Infantry<DisplayName=Infantry>,
	ROST_Vehicle<DisplayName=Vehicle>
};

var()	EROSquadType	SquadType;

struct native DRRole
{
	var()	instanced DRRI	RoleInfo;	// Type of Role(instanced so we can modify the properties)
	var		Controller				Owner;		// Player or AI currently filling this Role
};

struct native DRFireTeam
{
	var()	int					MinimumPlayers;				// Minimum number of players on the Server(both teams) before this Fire Team is available
	var()	localized string	Title;						// Title of this Fire Team
	var()	array<DRRole>		Roles;						// List of Roles in this Fire Team @note First entry is always Fire Team Leader
	var()	class<ROVehicle>	VehicleClass;				// If this is a Vehicle Fire Team, then this is its Vehicle Type
	var()	class<ROVehicle>	OpposingTeamVehicleClass;	// If this is a Vehicle Fire Team, then this is its Vehicle Type when Teams are reversed
	var()	float				VehicleRespawnInterval;		// Minimum Time between Spawning of Vehicles

	var		RORallyPoint	RallyPoint;
	var		ROVehicle		Vehicle;
	var		float			LastVehicleRespawnTime;

	structdefaultproperties
	{
		MinimumPlayers=-1
	}
};

var()	bool	bEnabled;
var()	int		MinimumPlayers;

var()	localized string	Title;			// name of this Squad

var()	DRRole				SquadLeader;	// Role Info for the leader of this Squad
var()	array<DRFireTeam>	FireTeams;		// List of Fire Teams in this Squad

var	ROSquadReplicationInfo	SRI;	// Replication object for this Squad

var	 array<float>		LastAIVoiceResponceTime;  // Stores the last time an AI from this squad/fireteam responded to an order, used to prevent spamming AI responses

function int GetNumOfFullFireteams()
{
	local int i, j, temp, ans;
	
	for (i = 0; i < FireTeams.Length; i++)
	{
		temp = 0;
		for(j = 0; j < FireTeams[i].Roles.Length; j++)
		{
			if(FireTeams[i].Roles[j].Owner != none)
			{
				temp++;
			}
		}
		if(temp == FireTeams[i].Roles.Length) // if fireteam is full...
		{
			ans++;
		}
	}
	//`Log("ROSquadInfo::GetNumOfFullFireteams()"@ans,,'RoleSorting');
	return ans;
}

function Controller GetOwner(byte FireTeamIndex, byte RoleIndex)
{
	if ( FireTeamIndex == `FIRETEAM_INDEX_SQUADLEADER )
	{
		return SquadLeader.Owner;
	}
	else if ( FireTeamIndex < FireTeams.Length && RoleIndex < FireTeams[FireTeamIndex].Roles.Length )
	{
		return FireTeams[FireTeamIndex].Roles[RoleIndex].Owner;
	}

	return none;
}

function DRRI GetRole(bool bReversedRoles, byte FireTeamIndex, byte RoleIndex)
{
	if ( FireTeamIndex == `FIRETEAM_INDEX_SQUADLEADER )
	{
		if ( bReversedRoles )
		{
			return SquadLeader.RoleInfo.OpposingTeamEquivalent;
		}

		return SquadLeader.RoleInfo;
	}
	else if ( FireTeamIndex < FireTeams.Length && RoleIndex < FireTeams[FireTeamIndex].Roles.Length )
	{
		if ( bReversedRoles )
		{
			return FireTeams[FireTeamIndex].Roles[RoleIndex].RoleInfo.OpposingTeamEquivalent;
		}

		return FireTeams[FireTeamIndex].Roles[RoleIndex].RoleInfo;
	}

	return none;
}

event DRRI AssignRole(ROMapInfo ROMI, bool bReversedRoles, Controller NewOwner, byte FireTeamIndex, byte RoleIndex, WorldInfo WorldInfo)
{
	local int i;

	if ( FireTeamIndex == `FIRETEAM_INDEX_SQUADLEADER )
	{
		if ( SquadLeader.Owner == none || AIController(SquadLeader.Owner) != none || SquadLeader.Owner == NewOwner ||
			 ROMI == none || !ROMI.OwnerHasRole(SquadLeader.Owner, 200, SRI.SquadIndex, `FIRETEAM_INDEX_SQUADLEADER, 0, WorldInfo) ||
			 ROPlayerController(NewOwner).bHasRandomBattleFieldCommission || ROPlayerController(NewOwner).bHasMeritBattleFieldCommission )
		{
			if ( SquadLeader.Owner != none && !ROPlayerController(SquadLeader.Owner).bHasRandomBattleFieldCommission &&
				 !ROPlayerController(SquadLeader.Owner).bHasMeritBattleFieldCommission &&
				 (ROPlayerController(NewOwner).bHasRandomBattleFieldCommission ||
				  ROPlayerController(NewOwner).bHasMeritBattleFieldCommission) )
			{
				ROPlayerController(SquadLeader.Owner).ShowBFCommission(SRI.TeamIndex,,,false);;
				ClearRole(SquadLeader.Owner, FireTeamIndex, RoleIndex, WorldInfo);

				if ( ROGameInfo(ROPlayerController(NewOwner).WorldInfo.Game).bRoundActive )
				{
					 ROPlayerController(NewOwner).ShowBFCommission(SRI.TeamIndex,,,true);
				}
			}

			SquadLeader.Owner = NewOwner;
			SRI.bHasSquadLeader = true;

			if ( bReversedRoles )
			{
				return SquadLeader.RoleInfo.OpposingTeamEquivalent;
			}
			
			return SquadLeader.RoleInfo;
		}
	}
	else if ( (FireTeamIndex < FireTeams.Length && RoleIndex < FireTeams[FireTeamIndex].Roles.Length &&
			 (FireTeams[FireTeamIndex].Roles[RoleIndex].Owner == none ||
			  AIController(FireTeams[FireTeamIndex].Roles[RoleIndex].Owner) != none ||
			  FireTeams[FireTeamIndex].Roles[RoleIndex].Owner == NewOwner || ROMI == none ||
			  !ROMI.OwnerHasRole(FireTeams[FireTeamIndex].Roles[RoleIndex].Owner, 200, SRI.SquadIndex, FireTeamIndex, RoleIndex, WorldInfo))) ||
			  ROPlayerController(NewOwner).bHasRandomBattleFieldCommission || ROPlayerController(NewOwner).bHasMeritBattleFieldCommission )
	{
		`LogRoles(NewOwner.PlayerReplicationInfo.PlayerName @ "AssignRole - NonSL");

		if ( FireTeams[FireTeamIndex].Roles[RoleIndex].Owner != none &&
			 !ROPlayerController(FireTeams[FireTeamIndex].Roles[RoleIndex].Owner).bHasRandomBattleFieldCommission &&
			 !ROPlayerController(FireTeams[FireTeamIndex].Roles[RoleIndex].Owner).bHasMeritBattleFieldCommission &&
			 (ROPlayerController(NewOwner).bHasRandomBattleFieldCommission || ROPlayerController(NewOwner).bHasMeritBattleFieldCommission) )
		{
			if ( ROGameInfoCountDown(FireTeams[FireTeamIndex].Roles[RoleIndex].Owner.WorldInfo.Game) != none )
			{
				ROPlayerController(FireTeams[FireTeamIndex].Roles[RoleIndex].Owner).bCountDownCommissionSpawn = true;
			}

			ROPlayerController(FireTeams[FireTeamIndex].Roles[RoleIndex].Owner).ShowBFCommission(SRI.TeamIndex,,,false);
			ClearRole(FireTeams[FireTeamIndex].Roles[RoleIndex].Owner, FireTeamIndex, RoleIndex, WorldInfo);

			if ( ROGameInfo(ROPlayerController(NewOwner).WorldInfo.Game).bRoundActive )
			{
			 	ROPlayerController(NewOwner).ShowBFCommission(SRI.TeamIndex,,,true);
			}
		}

		FireTeams[FireTeamIndex].Roles[RoleIndex].Owner = NewOwner;

		if ( (!bReversedRoles && (FireTeams[FireTeamIndex].Roles[RoleIndex].RoleInfo.class == class'RORoleInfoAlliesMachineGunner' || FireTeams[FireTeamIndex].Roles[RoleIndex].RoleInfo.class == class'RORoleInfoAxisMachineGunner')) ||
			 (bReversedRoles && (FireTeams[FireTeamIndex].Roles[RoleIndex].RoleInfo.OpposingTeamEquivalent.class == class'RORoleInfoAlliesMachineGunner' || FireTeams[FireTeamIndex].Roles[RoleIndex].RoleInfo.OpposingTeamEquivalent.class == class'RORoleInfoAxisMachineGunner')))
		{
			for ( i = 0; i < FireTeams[FireTeamIndex].Roles.Length; i++ )
			{
				if ( i != RoleIndex && ROPlayerController(FireTeams[FireTeamIndex].Roles[i].Owner) != none )
				{
					ROPlayerController(FireTeams[FireTeamIndex].Roles[i].Owner).MyMGPRI = ROPlayerReplicationInfo(NewOwner.PlayerReplicationInfo);
				}
			}
		}

		if ( bReversedRoles )
		{
			`LogRoles(NewOwner.PlayerReplicationInfo.PlayerName @ "AssignRole - returning FireTeams[FireTeamIndex].Roles[RoleIndex].RoleInfo.OpposingTeamEquivalent" @ FireTeams[FireTeamIndex].Roles[RoleIndex].RoleInfo.OpposingTeamEquivalent);
			return FireTeams[FireTeamIndex].Roles[RoleIndex].RoleInfo.OpposingTeamEquivalent;
		}

		`LogRoles(NewOwner.PlayerReplicationInfo.PlayerName @ "AssignRole - returning FireTeams[FireTeamIndex].Roles[RoleIndex].RoleInfo" @ FireTeams[FireTeamIndex].Roles[RoleIndex].RoleInfo);
		return FireTeams[FireTeamIndex].Roles[RoleIndex].RoleInfo;
	}

	`LogRoles(NewOwner.PlayerReplicationInfo.PlayerName @ "AssignRole - EoF returning none");
	return none;
}

function ClearRole(Controller OldOwner, byte FireTeamIndex, byte RoleIndex, WorldInfo WorldInfo)
{
	`LogRoles(OldOwner.PlayerReplicationInfo.PlayerName @ "ClearRole" @ OldOwner @ SRI.SquadIndex @ FireTeamIndex @ RoleIndex);

	// if this was the Squad Leader, let the Squad know their Leader is gone
	if ( FireTeamIndex == `FIRETEAM_INDEX_SQUADLEADER )
	{
		`LogRoles(OldOwner.PlayerReplicationInfo.PlayerName @ "ClearRole - Squad Leader" @ SquadLeader.Owner);
		if ( SquadLeader.Owner == OldOwner )
		{
			SquadLeader.Owner = none;
			SRI.bHasSquadLeader = false;
			ROPlayerReplicationInfo(OldOwner.PlayerReplicationInfo).SquadIndex = `SQUAD_INDEX_NONE;
		}
	}

	// Otherwise, If this is a valid Index
	else if ( FireTeamIndex < FireTeams.Length && RoleIndex < FireTeams[FireTeamIndex].Roles.Length )
	{
		`LogRoles(OldOwner.PlayerReplicationInfo.PlayerName @ "ClearRole - NonSL" @ FireTeams[FireTeamIndex].Roles[RoleIndex].Owner);
		if ( FireTeams[FireTeamIndex].Roles[RoleIndex].Owner == OldOwner )
		{
			// Mark the Role as available
			FireTeams[FireTeamIndex].Roles[RoleIndex].Owner = none;
			ROPlayerReplicationInfo(OldOwner.PlayerReplicationInfo).SquadIndex = `SQUAD_INDEX_NONE;
		}
	}
}

function bool VehicleReadyToRespawn(float TimeSeconds, bool bReversedRoles, byte FireTeamIndex, byte RoleIndex, bool bForcingRespawn)
{
	if ( (!bReversedRoles && !FireTeams[FireTeamIndex].Roles[RoleIndex].RoleInfo.bIsTankCommander) ||
		 (bReversedRoles && !FireTeams[FireTeamIndex].Roles[RoleIndex].RoleInfo.OpposingTeamEquivalent.bIsTankCommander) )
	{
		//`Log(GetFuncName() @ " returning false - !bIsTankCommander");
        return false;
	}

    /*if( bForcingRespawn )
    {
        `LogSpawning(GetFuncName() @ " returning true bForcingRespawn ");
        ScriptTrace();
    }
    else if (TimeSeconds - FireTeams[FireTeamIndex].LastVehicleRespawnTime > FireTeams[FireTeamIndex].VehicleRespawnInterval)
    {
         `LogSpawning(GetFuncName() @ " returning true TimeSeconds - FireTeams[FireTeamIndex].LastVehicleRespawnTime > FireTeams[FireTeamIndex].VehicleRespawnInterval");
        ScriptTrace();
    }
    else
    {
         `LogSpawningGetFuncName() @ " returning false !bForcingRespawn || TimeSeconds - FireTeams[FireTeamIndex].LastVehicleRespawnTime > FireTeams[FireTeamIndex].VehicleRespawnInterval");
        ScriptTrace();
    }*/

	return bForcingRespawn || (TimeSeconds - FireTeams[FireTeamIndex].LastVehicleRespawnTime > FireTeams[FireTeamIndex].VehicleRespawnInterval);
}

function int VehicleTimeUntilRespawn(float TimeSeconds, byte FireTeamIndex)
{
	return FireTeams[FireTeamIndex].VehicleRespawnInterval - (TimeSeconds - FireTeams[FireTeamIndex].LastVehicleRespawnTime);
}

function ROVehicle SpawnFireTeamTank(bool bReverseRoles, byte FireTeamIndex, Actor Owner, vector SpawnLocation, rotator SpawnRotation)
{
	if ( FireTeams[FireTeamIndex].VehicleClass != none )
	{
		if ( bReverseRoles )
		{
			FireTeams[FireTeamIndex].Vehicle = Owner.Spawn(FireTeams[FireTeamIndex].OpposingTeamVehicleClass, Owner, , SpawnLocation, SpawnRotation);
		}
		else
		{
			FireTeams[FireTeamIndex].Vehicle = Owner.Spawn(FireTeams[FireTeamIndex].VehicleClass, Owner, , SpawnLocation, SpawnRotation);
		}

		FireTeams[FireTeamIndex].LastVehicleRespawnTime = Owner.WorldInfo.TimeSeconds;

		return FireTeams[FireTeamIndex].Vehicle;
	}

	return none;
}

function bool IsTransportSquad()
{
	return FireTeams.Length > 0 && FireTeams[0].VehicleClass != none && !FireTeams[0].VehicleClass.static.IsTank();
}

function ROVehicle SpawnSquadTransport(Actor Owner, bool bReverseRoles, vector SpawnLocation, rotator SpawnRotation)
{
	if ( FireTeams[0].VehicleClass != none && !FireTeams[0].VehicleClass.static.IsTank() )
	{
		if ( bReverseRoles )
		{
			FireTeams[0].Vehicle = Owner.Spawn(FireTeams[0].OpposingTeamVehicleClass, Owner, , SpawnLocation, SpawnRotation);
		}
		else
		{
			FireTeams[0].Vehicle = Owner.Spawn(FireTeams[0].VehicleClass, Owner, , SpawnLocation, SpawnRotation);
		}

		FireTeams[0].LastVehicleRespawnTime = Owner.WorldInfo.TimeSeconds;

		return FireTeams[0].Vehicle;
	}

	return none;
}

function ReceivedTeamLeaderCommand(ROPlayerController OrderIssuer, EROOrder NewCommand)
{
	SRI.TeamLeaderCommand = NewCommand;

	SRI.bNetDirty = true;

	if ( FireTeams[0].Vehicle == none )
	{
		if ( SquadLeader.Owner == none || AIController(SquadLeader.Owner) != none )
		{
			if ( AIController(SquadLeader.Owner) != none )
			{
			 	AIController(SquadLeader.Owner).ReceivedNewOrders(OrderIssuer, NewCommand);
			}

			ReceivedSquadLeaderCommand(OrderIssuer, FireTeams.Length, NewCommand);
		}
		else
		{
			ROPlayerController(SquadLeader.Owner).ReceivedNewHumanOrders(true, NewCommand);
		}
	}
	else
	{
		if ( FireTeams[0].Roles[0].Owner == none || AIController(FireTeams[0].Roles[0].Owner) != none )
		{
			ReceivedSquadLeaderCommand(OrderIssuer, FireTeams.Length, NewCommand);
		}
		else
		{
			ROPlayerController(FireTeams[0].Roles[0].Owner).ReceivedNewHumanOrders(true, NewCommand);
		}
	}
}

function ReceivedTeamLeaderCommandLocation(ROPlayerController OrderIssuer, EROOrder NewCommand, vector NewCommandLocation)
{
	SRI.TeamLeaderCommand = NewCommand;
	SRI.TeamLeaderCommandLocation = NewCommandLocation;

	SRI.bNetDirty = true;

	if ( FireTeams[0].Vehicle == none )
	{
		if ( SquadLeader.Owner == none || AIController(SquadLeader.Owner) != none )
		{
			if ( AIController(SquadLeader.Owner) != none )
			{
			 	AIController(SquadLeader.Owner).ReceivedNewOrders(OrderIssuer, NewCommand, NewCommandLocation);
			}

			ReceivedSquadLeaderCommandLocation(OrderIssuer, FireTeams.Length, NewCommand, NewCommandLocation);
		}
		else
		{
			ROPlayerController(SquadLeader.Owner).ReceivedNewHumanOrders(true, NewCommand, NewCommandLocation);
		}
	}
	else
	{
		if ( FireTeams[0].Roles[0].Owner == none || AIController(FireTeams[0].Roles[0].Owner) != none )
		{
			ReceivedSquadLeaderCommandLocation(OrderIssuer, FireTeams.Length, NewCommand, NewCommandLocation);
		}
		else
		{
			ROPlayerController(FireTeams[0].Roles[0].Owner).ReceivedNewHumanOrders(true, NewCommand, NewCommandLocation);
		}
	}
}

function ReceivedTeamLeaderCommandIndex(ROPlayerController OrderIssuer, EROOrder NewCommand, byte NewCommandIndex)
{
	SRI.TeamLeaderCommand = NewCommand;
	SRI.TeamLeaderCommandIndex = NewCommandIndex;

	SRI.bNetDirty = true;

	if ( FireTeams[0].Vehicle == none )
	{
		if ( SquadLeader.Owner == none || AIController(SquadLeader.Owner) != none )
		{
			if ( AIController(SquadLeader.Owner) != none )
			{
			 	AIController(SquadLeader.Owner).ReceivedNewOrders(OrderIssuer, NewCommand, , NewCommandIndex);
			}

			ReceivedSquadLeaderCommandIndex(OrderIssuer, FireTeams.Length, NewCommand, NewCommandIndex);
		}
		else
		{
			ROPlayerController(SquadLeader.Owner).ReceivedNewHumanOrders(true, NewCommand, , NewCommandIndex);
		}
	}
	else
	{
		if ( FireTeams[0].Roles[0].Owner == none || AIController(FireTeams[0].Roles[0].Owner) != none )
		{
			ReceivedSquadLeaderCommandIndex(OrderIssuer, FireTeams.Length, NewCommand, NewCommandIndex);
		}
		else
		{
			ROPlayerController(FireTeams[0].Roles[0].Owner).ReceivedNewHumanOrders(true, NewCommand, , NewCommandIndex);
		}
	}
}

function ReceivedTeamLeaderCommandPawn(ROPlayerController OrderIssuer, EROOrder NewCommand, Pawn NewCommandTarget)
{
	SRI.TeamLeaderCommand = NewCommand;
	SRI.TeamLeaderCommandTarget = NewCommandTarget;

	SRI.bNetDirty = true;

	if ( FireTeams[0].Vehicle == none )
	{
		if ( SquadLeader.Owner == none || AIController(SquadLeader.Owner) != none )
		{
			if ( AIController(SquadLeader.Owner) != none )
			{
			 	AIController(SquadLeader.Owner).ReceivedNewOrders(OrderIssuer, NewCommand, , , NewCommandTarget);
			}

			ReceivedSquadLeaderCommandPawn(OrderIssuer, FireTeams.Length, NewCommand, NewCommandTarget);
		}
		else
		{
			ROPlayerController(SquadLeader.Owner).ReceivedNewHumanOrders(true, NewCommand, , , NewCommandTarget);
		}
	}
	else
	{
		if ( FireTeams[0].Roles[0].Owner == none || AIController(FireTeams[0].Roles[0].Owner) != none )
		{
			ReceivedSquadLeaderCommandPawn(OrderIssuer, FireTeams.Length, NewCommand, NewCommandTarget);
		}
		else
		{
			ROPlayerController(FireTeams[0].Roles[0].Owner).ReceivedNewHumanOrders(true, NewCommand, , , NewCommandTarget);
		}
	}
}

function ReceivedSquadLeaderCommand(ROPlayerController OrderIssuer, int FireTeamIndex, EROOrder NewCommand)
{
	local int StartIndex, i, j;

	if ( SRI != none )
	{
		if ( FireTeamIndex == `UNIT_INDEX_MYTANK )
		{
			FireTeamIndex = 0;
		}

		if ( FireTeamIndex < FireTeams.Length )
		{
			SRI.SquadLeaderCommand[FireTeamIndex] = NewCommand;

			SRI.bNetDirty = true;

			for ( j = 0; j < FireTeams[FireTeamIndex].Roles.Length; j++ )
			{
				if ( FireTeams[FireTeamIndex].Roles[j].Owner != none )
				{
					FireTeams[FireTeamIndex].Roles[j].Owner.ReceivedNewOrders(OrderIssuer, NewCommand);
				}
			}
		}
		else
		{
			// If the order issuer is the vehicle Team Leader, give the order to all the fire teams in this squad
            if( FireTeams[0].VehicleClass != none && OrderIssuer != none &&
                ROPlayerReplicationInfo(OrderIssuer.PlayerReplicationInfo).RoleInfo.bIsTeamLeader )
			{
                // Don't give this tanks fireteam the order
                if( FireTeams[0].Roles[0].Owner == OrderIssuer )
                {
                    return;
                }
                StartIndex = 0;
			}
            else if ( FireTeams[0].VehicleClass != none )
			{
				StartIndex = 1;
			}
			else
			{
				StartIndex = 0;
			}

			for ( i = StartIndex; i < FireTeams.Length; i++ )
			{
				SRI.SquadLeaderCommand[i] = NewCommand;

				SRI.bNetDirty = true;

				for ( j = 0; j < FireTeams[i].Roles.Length; j++ )
				{
					if ( FireTeams[i].Roles[j].Owner != none )
					{
						FireTeams[i].Roles[j].Owner.ReceivedNewOrders(OrderIssuer, NewCommand);
					}
				}
			}
		}
	}
}

function ReceivedSquadLeaderCommandLocation(ROPlayerController OrderIssuer, byte FireTeamIndex, EROOrder NewCommand, vector NewCommandLocation)
{
	local int StartIndex, i, j;

	if ( SRI != none )
	{
		if ( FireTeamIndex == `UNIT_INDEX_MYTANK )
		{
			FireTeamIndex = 0;
		}

		if ( FireTeamIndex < FireTeams.Length )
		{
			SRI.SquadLeaderCommand[FireTeamIndex] = NewCommand;
			SRI.SquadLeaderCommandLocation[FireTeamIndex] = NewCommandLocation;

			SRI.bNetDirty = true;

			// If it is a move order create a rally point
			if( NewCommand == ROORDER_Move )
			{
				if ( FireTeams[FireTeamIndex].RallyPoint == none )
				{
					FireTeams[FireTeamIndex].RallyPoint = SRI.Spawn(class'RORallyPoint', SRI);
				}

				FireTeams[FireTeamIndex].RallyPoint.Initialize(NewCommand, NewCommandLocation);
			}

			for ( j = 0; j < FireTeams[FireTeamIndex].Roles.Length; j++ )
			{
				if ( FireTeams[FireTeamIndex].Roles[j].Owner != none )
				{
					if( NewCommand == ROORDER_Move )
					{
					   FireTeams[FireTeamIndex].RallyPoint.AddPlayer(FireTeams[FireTeamIndex].Roles[j].Owner);
					}

					FireTeams[FireTeamIndex].Roles[j].Owner.ReceivedNewOrders(OrderIssuer, NewCommand, NewCommandLocation);
				}
			}
		}
		else
		{
			// If the order issuer is the vehicle Team Leader, give the order to all the fire teams in this squad
            if( FireTeams[0].VehicleClass != none && OrderIssuer != none &&
                ROPlayerReplicationInfo(OrderIssuer.PlayerReplicationInfo).RoleInfo.bIsTeamLeader )
			{
                // Don't give this tanks fireteam the order
                if( FireTeams[0].Roles[0].Owner == OrderIssuer )
                {
                    return;
                }
                StartIndex = 0;
			}
            else if ( FireTeams[0].VehicleClass != none )
			{
				StartIndex = 1;
			}
			else
			{
				StartIndex = 0;
			}

			for ( i = StartIndex; i < FireTeams.Length; i++ )
			{
				SRI.SquadLeaderCommand[i] = NewCommand;
				SRI.SquadLeaderCommandLocation[i] = NewCommandLocation;

				SRI.bNetDirty = true;

				// If it is a move order create a rally point
				if( NewCommand == ROORDER_Move )
				{
					if ( FireTeams[i].RallyPoint == none )
					{
						FireTeams[i].RallyPoint = SRI.Spawn(class'RORallyPoint', SRI);
					}

					FireTeams[i].RallyPoint.Initialize(NewCommand, NewCommandLocation);
				}

				for ( j = 0; j < FireTeams[i].Roles.Length; j++ )
				{
					if ( FireTeams[i].Roles[j].Owner != none )
					{
						if( NewCommand == ROORDER_Move )
						{
							FireTeams[i].RallyPoint.AddPlayer(FireTeams[i].Roles[j].Owner);
						}

						FireTeams[i].Roles[j].Owner.ReceivedNewOrders(OrderIssuer, NewCommand, NewCommandLocation);
					}
				}
			}
		}
	}
}

function ReceivedSquadLeaderCommandIndex(ROPlayerController OrderIssuer, byte FireTeamIndex, EROOrder NewCommand, byte NewCommandIndex)
{
	local int StartIndex, i, j;

	if ( SRI != none )
	{
		if ( FireTeamIndex == `UNIT_INDEX_MYTANK )
		{
			FireTeamIndex = 0;
		}

		if ( FireTeamIndex < FireTeams.Length )
		{
			SRI.SquadLeaderCommand[FireTeamIndex] = NewCommand;
			SRI.SquadLeaderCommandIndex[FireTeamIndex] = NewCommandIndex;

			SRI.bNetDirty = true;

			for ( j = 0; j < FireTeams[FireTeamIndex].Roles.Length; j++ )
			{
				if ( FireTeams[FireTeamIndex].Roles[j].Owner != none )
				{
					FireTeams[FireTeamIndex].Roles[j].Owner.ReceivedNewOrders(OrderIssuer, NewCommand, , NewCommandIndex);
				}
			}
		}
		else
		{
			// If the order issuer is the vehicle Team Leader, give the order to all the fire teams in this squad
            if( FireTeams[0].VehicleClass != none && OrderIssuer != none &&
                ROPlayerReplicationInfo(OrderIssuer.PlayerReplicationInfo).RoleInfo.bIsTeamLeader )
			{
                // Don't give this tanks fireteam the order - Removed until I can figure out why we do this, as it breaks the commander HUD - Sturt
                /*if( FireTeams[0].Roles[0].Owner == OrderIssuer )
                {
                    return;
                }*/
                StartIndex = 0;
			}
            else if ( FireTeams[0].VehicleClass != none )
			{
				StartIndex = 1;
			}
			else
			{
				StartIndex = 0;
			}

			for ( i = StartIndex; i < FireTeams.Length; i++ )
			{
				SRI.SquadLeaderCommand[i] = NewCommand;
				SRI.SquadLeaderCommandIndex[i] = NewCommandIndex;

				SRI.bNetDirty = true;

				for ( j = 0; j < FireTeams[i].Roles.Length; j++ )
				{
					if ( FireTeams[i].Roles[j].Owner != none )
					{
						FireTeams[i].Roles[j].Owner.ReceivedNewOrders(OrderIssuer, NewCommand,, NewCommandIndex);
					}
				}
			}
		}
	}
}

function ReceivedSquadLeaderCommandPawn(ROPlayerController OrderIssuer, byte FireTeamIndex, EROOrder NewCommand, Pawn NewCommandTarget)
{
	local int StartIndex, i, j;

	if ( SRI != none )
	{
		if ( FireTeamIndex == `UNIT_INDEX_MYTANK )
		{
			FireTeamIndex = 0;
		}

		if ( FireTeamIndex < FireTeams.Length )
		{
			SRI.SquadLeaderCommand[FireTeamIndex] = NewCommand;
			SRI.SquadLeaderCommandTarget[FireTeamIndex] = NewCommandTarget;

			SRI.bNetDirty = true;

			for ( j = 0; j < FireTeams[FireTeamIndex].Roles.Length; j++ )
			{
				if ( FireTeams[FireTeamIndex].Roles[j].Owner != none )
				{
					FireTeams[FireTeamIndex].Roles[j].Owner.ReceivedNewOrders(OrderIssuer, NewCommand, , , NewCommandTarget);
				}
			}
		}
		else
		{
			// If the order issuer is the vehicle Team Leader, give the order to all the fire teams in this squad
            if( FireTeams[0].VehicleClass != none && OrderIssuer != none &&
                ROPlayerReplicationInfo(OrderIssuer.PlayerReplicationInfo).RoleInfo.bIsTeamLeader )
			{
                // Don't give this tanks fireteam the order
                if( FireTeams[0].Roles[0].Owner == OrderIssuer )
                {
                    return;
                }
                StartIndex = 0;
			}
            else if ( FireTeams[0].VehicleClass != none )
			{
				StartIndex = 1;
			}
			else
			{
				StartIndex = 0;
			}

			for ( i = StartIndex; i < FireTeams.Length; i++ )
			{
				SRI.SquadLeaderCommand[i] = NewCommand;
				SRI.SquadLeaderCommandTarget[i] = NewCommandTarget;

				SRI.bNetDirty = true;

				for ( j = 0; j < FireTeams[i].Roles.Length; j++ )
				{
					if ( FireTeams[i].Roles[j].Owner != none )
					{
						FireTeams[i].Roles[j].Owner.ReceivedNewOrders(OrderIssuer, NewCommand, , , NewCommandTarget);
					}
				}
			}
		}
	}
}

function ReceivedTankCommanderCommand(ROPlayerController OrderIssuer, byte FireTeamIndex, EROOrder NewCommand)
{
	local int i;

	SRI.TankCommanderCommand[FireTeamIndex] = NewCommand;

	SRI.bNetDirty = true;

	for ( i = 0; i < FireTeams[FireTeamIndex].Roles.Length; i++ )
	{
		if ( FireTeams[FireTeamIndex].Roles[i].Owner != none )
		{
			FireTeams[FireTeamIndex].Roles[i].Owner.ReceivedNewOrders(OrderIssuer, NewCommand);
		}
	}
}

function ReceivedTankCommanderCommandLocation(ROPlayerController OrderIssuer, byte FireTeamIndex, EROOrder NewCommand, vector NewCommandLocation)
{
	local int i;

	SRI.TankCommanderCommand[FireTeamIndex] = NewCommand;
	SRI.TankCommanderCommandLocation[FireTeamIndex] = NewCommandLocation;

	SRI.bNetDirty = true;

	for ( i = 0; i < FireTeams[FireTeamIndex].Roles.Length; i++ )
	{
		if ( FireTeams[FireTeamIndex].Roles[i].Owner != none )
		{
			FireTeams[FireTeamIndex].Roles[i].Owner.ReceivedNewOrders(OrderIssuer, NewCommand, NewCommandLocation);
		}
	}
}

function ReceivedTankCommanderCommandIndex(ROPlayerController OrderIssuer, byte FireTeamIndex, EROOrder NewCommand, byte NewCommandIndex)
{
	local int i;

	SRI.TankCommanderCommand[FireTeamIndex] = NewCommand;
	SRI.TankCommanderCommandIndex[FireTeamIndex] = NewCommandIndex;

	SRI.bNetDirty = true;

	for ( i = 0; i < FireTeams[FireTeamIndex].Roles.Length; i++ )
	{
		if ( FireTeams[FireTeamIndex].Roles[i].Owner != none )
		{
			FireTeams[FireTeamIndex].Roles[i].Owner.ReceivedNewOrders(OrderIssuer, NewCommand, , NewCommandIndex);
		}
	}
}

function ReceivedTankCommanderCommandPawn(ROPlayerController OrderIssuer, byte FireTeamIndex, EROOrder NewCommand, Pawn NewCommandTarget)
{
	local int i;

	SRI.TankCommanderCommand[FireTeamIndex] = NewCommand;
	SRI.TankCommanderCommandTarget[FireTeamIndex] = NewCommandTarget;

	SRI.bNetDirty = true;

	for ( i = 0; i < FireTeams[FireTeamIndex].Roles.Length; i++ )
	{
		if ( FireTeams[FireTeamIndex].Roles[i].Owner != none )
		{
			FireTeams[FireTeamIndex].Roles[i].Owner.ReceivedNewOrders(OrderIssuer, NewCommand, , , NewCommandTarget);
		}
	}
}

function InitMPWeaponOptions(bool bNoWeaponLimits, bool bRealisticPistolLoadouts)
{
	local int i, j;

	if ( SquadType != ROST_Infantry )
	{
		return;
	}

	for ( i = 0; i < FireTeams.Length; i++ )
	{
		for ( j = 0; j < FireTeams[i].Roles.Length; j++ )
		{
			FireTeams[i].Roles[j].RoleInfo.InitMPOptions(bNoWeaponLimits, bRealisticPistolLoadouts);
		}
	}
}

defaultproperties
{
	bEnabled=true
}
