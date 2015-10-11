
class DRWep_P38_Attach extends ROWeaponAttachmentPistol;

defaultproperties
{
	ThirdPersonHandsAnim=P38_HandPose
	IKProfileName=C96
	
	Begin Object Name=SkeletalMeshComponent0
		SkeletalMesh=SkeletalMesh'WP_3rd_Master.Mesh.P38_3rd_Master'
		AnimSets(0)=AnimSet'WP_3rd_Master.Anim.P38_3rd_anim'
		CullDistance=5000
	End Object
	
	MuzzleFlashSocket=MuzzleFlashSocket
	MuzzleFlashPSCTemplate=ParticleSystem'FX_WEP_Gun.FX_WEP_Gun_A_Pistol_MuzzleFlash'
	MuzzleFlashDuration=0.33
	MuzzleFlashLightClass=class'ROGame.RORifleMuzzleFlashLight'
	
	WeaponClass=class'DRWep_P38'
	
	ShellEjectSocket=ShellEjectSocket
	ShellEjectPSCTemplate=ParticleSystem'FX_WEP_Gun_Two.ShellEjects.FX_Wep_A_ShellEject_PhysX_Ger_P38'
	
	CHR_AnimSet=AnimSet'CHR_Playeranim_Master.Weapons.CHR_P38'
	
	FireAnim=Shoot
	FireLastAnim=Shoot_Last
	IdleAnim=Idle
	IdleEmptyAnim=Idle_Empty
}
