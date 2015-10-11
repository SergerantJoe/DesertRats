
class DRRI_DAK_07_SquadLeader extends DRRI_DAK;

defaultproperties
{
	RoleType=RORIT_SquadLeader
	ClassTier=3
	ClassIndex=`CI_SQUADLEADER
	
	PrimaryWeapons(0)=`SMG_DAK
	PrimaryWeapons(1)=`RIFLE_DAK
	
	OtherItems(0)=`GRENADE_DAK
	OtherItems(1)=`GRENADESMOKE_DAK
	OtherItems(2)=`BINOCULARS
	
	OpposingTeamEquivalentClass=class'DRRI_UK_07_SquadLeader'
	
	bIsSquadLeader=true
}
