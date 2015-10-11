
class DRWep_KarSniper_Attach extends ROWeaponAttachment;

defaultproperties
{
	CarrySocketName=WeaponSling
	ThirdPersonHandsAnim=Kar98_Handpose
	IKProfileName=Kar98
	
	Begin Object Name=SkeletalMeshComponent0
		SkeletalMesh=SkeletalMesh'WP_3rd_Master.Mesh_UPGD.Kar98sniper_3rd_Master_UPGD2'
		AnimSets(0)=AnimSet'WP_3rd_Master.Anim.Kar98_3rd_anim'
		CullDistance=5000
	End Object
	
	MuzzleFlashSocket=MuzzleFlashSocket
	MuzzleFlashPSCTemplate=ParticleSystem'FX_WEP_Gun.FX_WEP_Gun_A_Rifle_MuzzleFlash'
	MuzzleFlashDuration=0.33
	MuzzleFlashLightClass=class'ROGame.RORifleMuzzleFlashLight'
	
	WeaponClass=class'DRWep_KarSniper'
	
	ShellEjectSocket=ShellEjectSocket
	ShellEjectPSCTemplate=ParticleSystem'FX_WEP_Gun_Two.ShellEjects.FX_Wep_A_ShellEject_PhysX_Ger_7_92x57_Single'
	bNoShellEjectOnFire=true
	
	CHR_AnimSet=AnimSet'CHR_Playeranim_Master.Weapons.CHR_K98'

	FireAnim=Shoot
	FireLastAnim=Shoot_Last
	IdleAnim=Idle
	IdleEmptyAnim=Idle_Empty
	WP_ReloadAnims(0)=Reload_Half
	WP_ReloadAnims(1)=Reload_Single
	WP_Prone_ReloadAnims(0)=Prone_Reload_Half
	WP_Prone_ReloadAnims(1)=Prone_Reload_Single
	ReloadAnims(0)=Reload_Half
	ReloadAnims(1)=Reload_Single
	CH_ReloadAnims(0)=CH_Reload_Half
	CH_ReloadAnims(1)=CH_Reload_Single
	Prone_ReloadAnims(0)=Prone_Reload_Half
	Prone_ReloadAnims(1)=Prone_Reload_Single
}
