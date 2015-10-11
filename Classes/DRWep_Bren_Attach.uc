
class DRWep_Bren_Attach extends ROWeaponAttachmentBipod;

defaultproperties
{
	TriggerHoldDuration=0.2
	
	CarrySocketName=WeaponSling
	
	PivotBoneName=Bipod
	
	ThirdPersonHandsAnim=Type99LMG_Handpose
	IKProfileName=MG34
	
	Begin Object Name=SkeletalMeshComponent0
		SkeletalMesh=SkeletalMesh'WP_RS_3rd_Master.Mesh.Type96_LMG_3rd_Master'
		Animations=AnimTree'WP_RS_3rd_Master.AnimTree.Type99LMG_3rd_Tree'
		AnimSets(0)=AnimSet'WP_RS_3rd_Master.Anim.Type99_LMG_3rd_Anims'
		CullDistance=5000
	End Object
	
	MuzzleFlashSocket=MuzzleFlashSocket
	MuzzleFlashPSCTemplate=ParticleSystem'FX_WEP_Gun.FX_WEP_Gun_A_SMG_MuzzleFlash'
	MuzzleFlashDuration=0.33
	MuzzleFlashLightClass=class'ROGame.RORifleMuzzleFlashLight'
	WeaponClass=class'RSWeap_Type96_LMG'
	
	ShellEjectSocket=ShellEjectSocket
	ShellEjectPSCTemplate=ParticleSystem'FX_RS_WEP_Gun.ShellEjects.FX_Wep_A_ShellEject_PhysX_JAP_Type96LMG'
	
	TracerClass=class'Type96BulletTracer'
	TracerFrequency=5
	
	CHR_AnimSet=AnimSet'CHR_RS_Playeranim_Master.Weapons.CHR_Type99LMG'
	
	FireAnim=Shoot
	FireLastAnim=Shoot_Last
	IdleAnim=Idle
	IdleEmptyAnim=Idle_Empty
}
