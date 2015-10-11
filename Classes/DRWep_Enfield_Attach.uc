
class DRWep_Enfield_Attach extends ROWeaponAttachment;

defaultproperties
{
	CarrySocketName=WeaponSling
	ThirdPersonHandsAnim=MN9130_Handpose
	IKProfileName=MN9130
	
	Begin Object Name=SkeletalMeshComponent0
		SkeletalMesh=SkeletalMesh'WP_3rd_Master.Mesh.MN9130_3rd_Master'
		AnimSets(0)=AnimSet'WP_3rd_Master.Anim.MN9130_3rd_anim'
		CullDistance=5000
	End Object
	
	MuzzleFlashSocket=MuzzleFlashSocket
	MuzzleFlashPSCTemplate=ParticleSystem'FX_WEP_Gun.FX_WEP_Gun_A_Rifle_MuzzleFlash'
	MuzzleFlashDuration=0.33
	MuzzleFlashLightClass=class'ROGame.RORifleMuzzleFlashLight'
	WeaponClass=class'DRWep_Enfield'
	
	ShellEjectSocket=ShellEjectSocket
	ShellEjectPSCTemplate=ParticleSystem'FX_WEP_Gun_Two.ShellEjects.FX_Wep_A_ShellEject_PhysX_Sov_7_62_54R_Single'
	bNoShellEjectOnFire=true
	
	CHR_AnimSet=AnimSet'CHR_Playeranim_Master.Weapons.CHR_K98'
	
	FireAnim=Shoot
	FireLastAnim=Shoot_Last
	IdleAnim=Idle
	IdleEmptyAnim=Idle_Empty
}
