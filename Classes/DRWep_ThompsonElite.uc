
class DRWep_ThompsonElite extends DRWep_Thompson;

DefaultProperties
{
	WeaponContentClass(0)="DesertRats.DRWep_ThompsonElite_ActualContent"
	
	RoleSelectionImage(0)=Texture2D'RS_UI_Textures_Three.WeaponRenders.USA_Thompson_UPGD3'
	
	InvIndex=`WI_SMGELITE_UK
	
	AmmoClass=class'RSAmmo_1143x23_M1928Drum50'
	MaxAmmoCount=50
	InitialNumPrimaryMags=4
	AttachmentClass=class'RSWeapAttach_M1928_SMG_Drum'
	maxRecoilPitch=135
	minRecoilPitch=115
	maxRecoilYaw=95
	minRecoilYaw=-95
}
