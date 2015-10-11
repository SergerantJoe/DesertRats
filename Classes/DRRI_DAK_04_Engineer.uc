
class DRRI_DAK_04_Engineer extends DRRI_DAK;

defaultproperties
{
	RoleType=RORIT_Engineer
	ClassTier=3
	ClassIndex=`CI_ENGINEER
	
	PrimaryWeapons(0)=`SMG_DAK
	PrimaryWeapons(1)=`RIFLE_DAK
	
	OtherItems(0)=`SATCHEL_DAK
	
	OpposingTeamEquivalentClass=class'DRRI_UK_04_Engineer'
	
	bCanCompleteMiniObjectives=true
}
