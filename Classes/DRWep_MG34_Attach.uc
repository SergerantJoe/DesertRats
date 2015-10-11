
class DRWep_MG34_Attach extends ROWeaponAttachmentBipod;

defaultproperties
{
	TriggerHoldDuration=0.2
	
	CarrySocketName=WeaponSling
	ThirdPersonHandsAnim=MG34_Handpose
	IKProfileName=MG34
	
	Begin Object Name=SkeletalMeshComponent0
		SkeletalMesh=SkeletalMesh'WP_3rd_Master.Mesh.MG34_3rd_Master'
		Animations=AnimTree'WP_3rd_Master.Animation.MG34_3rd_Tree'
		AnimSets(0)=AnimSet'WP_3rd_Master.Anim.MG34_3rd_anim'
		CullDistance=5000
	End Object
	
	MuzzleFlashSocket=MuzzleFlashSocket
	MuzzleFlashPSCTemplate=ParticleSystem'FX_WEP_Gun.FX_WEP_Gun_A_Rifle_MuzzleFlash'
	MuzzleFlashDuration=0.33
	MuzzleFlashLightClass=class'ROGame.RORifleMuzzleFlashLight'
	WeaponClass=class'ROWeap_MG34_LMG'
	
	ShellEjectSocket=ShellEjectSocket
	ShellEjectPSCTemplate=ParticleSystem'FX_WEP_Gun_Two.ShellEjects.FX_Wep_A_ShellEject_PhysX_Ger_MG34'
	
	TracerClass=class'MG34BulletTracer'
	TracerFrequency=10
	
	CHR_AnimSet=AnimSet'CHR_Playeranim_Master.Weapons.CHR_MG34'
	
	FireAnim=Shoot
	FireLastAnim=Shoot_Last
	IdleAnim=Idle
	IdleEmptyAnim=Idle_Empty
}
