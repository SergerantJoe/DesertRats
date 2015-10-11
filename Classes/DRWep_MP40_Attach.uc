
class DRWep_MP40_Attach extends ROWeaponAttachment;

defaultproperties
{
	TriggerHoldDuration=0.2
	
	CarrySocketName=WeaponSling
	ThirdPersonHandsAnim=MP40_Handpose
	IKProfileName=mp40
	
	Begin Object Name=SkeletalMeshComponent0
		SkeletalMesh=SkeletalMesh'WP_3rd_Master.Mesh.MP40_3rd_Master'
		AnimSets(0)=AnimSet'WP_3rd_Master.Anim.MP40_3rd_anim'
		CullDistance=5000
	End Object
	
	MuzzleFlashSocket=MuzzleFlashSocket
	MuzzleFlashPSCTemplate=ParticleSystem'FX_WEP_Gun.FX_WEP_Gun_A_SMG_MuzzleFlash'
	MuzzleFlashDuration=0.33
	MuzzleFlashLightClass=class'ROGame.RORifleMuzzleFlashLight'
	
	WeaponClass=class'DRWep_MP40'
	
	ShellEjectSocket=ShellEjectSocket
	ShellEjectPSCTemplate=ParticleSystem'FX_WEP_Gun_Two.ShellEjects.FX_Wep_A_ShellEject_PhysX_Ger_MP40'
	
	CHR_AnimSet=AnimSet'CHR_Playeranim_Master.Weapons.CHR_MP40'
	
	FireAnim=Shoot
	FireLastAnim=Shoot_Last
	IdleAnim=Idle
	IdleEmptyAnim=Idle_Empty
}
