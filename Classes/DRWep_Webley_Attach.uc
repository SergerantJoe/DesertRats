
class DRWep_Webley_Attach extends ROWeaponAttachmentPistol;

defaultproperties
{
	IKProfileName=mp40
	
	ThirdPersonHandsAnim=Revolver_Handpose
	
Begin Object Name=SkeletalMeshComponent0
		SkeletalMesh=SkeletalMesh'WP_3rd_Master.Mesh.Revolver_3rd_Master'
		AnimSets(0)=AnimSet'WP_3rd_Master.Anim.Revolver_3rd_anim'
		CullDistance=5000
	End Object
	
	CHR_AnimSet=AnimSet'CHR_Playeranim_Master.Weapons.CHR_Revolver'
	
	MuzzleFlashSocket=MuzzleFlashSocket
	MuzzleFlashPSCTemplate=ParticleSystem'FX_WEP_Gun.FX_WEP_Gun_A_Pistol_MuzzleFlash'
	MuzzleFlashDuration=0.33
	MuzzleFlashLightClass=class'ROGame.RORifleMuzzleFlashLight'
	WeaponClass=class'DRWep_Webley'
}
