
class DRWep_Thompson_Attach extends ROWeaponAttachment;

defaultproperties
{
	TriggerHoldDuration=0.2
	CarrySocketName=WeaponSling
	ThirdPersonHandsAnim=M1928_Handpose
	IKProfileName=mp40
	
	Begin Object Name=SkeletalMeshComponent0
		SkeletalMesh=SkeletalMesh'WP_RS_3rd_Master.Mesh_UPGD.Thompson_3rd_Master_UPGD3'
		AnimSets(0)=AnimSet'WP_RS_3rd_Master.Anim_UPGD.Thompson_3rd_Anims_UPGD3'
		CullDistance=5000
	End Object
	
	MuzzleFlashSocket=MuzzleFlashSocket
	MuzzleFlashPSCTemplate=ParticleSystem'FX_WEP_Gun.FX_WEP_Gun_A_SMG_MuzzleFlash'
	MuzzleFlashDuration=0.33
	MuzzleFlashLightClass=class'ROGame.RORifleMuzzleFlashLight'
	
	WeaponClass=class'DRWep_Thompson'
	
	ShellEjectSocket=ShellEjectSocket
	ShellEjectPSCTemplate=ParticleSystem'FX_RS_WEP_Gun.ShellEjects.FX_Wep_A_ShellEject_PhysX_USA_M1928A1SMG'
	CHR_AnimSet=AnimSet'CHR_RS_Playeranim_Master.Weapons.CHR_M1928_UPGD3'
	FireAnim=Shoot
	FireLastAnim=Shoot_Last
	IdleAnim=Idle
	IdleEmptyAnim=Idle_Empty
}
