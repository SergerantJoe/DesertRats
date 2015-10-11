
class DRWep_KarSniper_ActualContent extends DRWep_KarSniper;

DefaultProperties
{
	ArmsAnimSet=AnimSet'WP_Ger_Kar98k_Rifle.animation.WP_K98Hands'
	
	Begin Object Name=FirstPersonMesh
		DepthPriorityGroup=SDPG_Foreground
		SkeletalMesh=SkeletalMesh'WP_Ger_Kar98k_Rifle.Mesh.Ger_Kar98_Sniper_UPGD1'
		Materials(2)=MaterialInstanceConstant'WP_Ger_Kar98_rifle_scope.Materials.Ger_Kar98_rifle_scope_lev3_M'
		PhysicsAsset=None
		AnimSets(0)=AnimSet'WP_Ger_Kar98k_Rifle.animation.WP_K98Hands'
		Animations=AnimTree'WP_Ger_Kar98k_Rifle.animation.Ger_Kar98_Tree'
		Scale=1.0
		FOV=70
	End Object
	
	Begin Object Name=PickupMesh
		SkeletalMesh=SkeletalMesh'WP_3rd_Master.Mesh_UPGD.Kar98sniper_3rd_Master_UPGD2'
		PhysicsAsset=PhysicsAsset'WP_3rd_Master.Phy.Kar98sniper_3rd_Master_Physics'
		CollideActors=true
		BlockActors=true
		BlockZeroExtent=true
		BlockNonZeroExtent=true//false
		BlockRigidBody=true
		bHasPhysicsAssetInstance=false
		bUpdateKinematicBonesFromAnimation=false
		PhysicsWeight=1.0
		RBChannel=RBCC_GameplayPhysics
		RBCollideWithChannels=(Default=TRUE,GameplayPhysics=TRUE,EffectPhysics=TRUE)
		bSkipAllUpdateWhenPhysicsAsleep=TRUE
		bSyncActorLocationToRootRigidBody=true
	End Object
	
	AttachmentClass=class'DRWep_KarSniper_Attach'
	
	WeaponFireSnd[0]=SoundCue'AUD_Firearms_Rifle_Kar98_Sn.Fire_3P.Rifle_Kar98_Sniper_Fire_Single_M_Cue'
	WeaponFireSnd[1]=SoundCue'AUD_Firearms_Rifle_Kar98_Sn.Fire_3P.Rifle_Kar98_Sniper_Fire_Single_M_Cue'
	
	ScopeLenseMICTemplate=MaterialInstanceConstant'WP_Ger_Kar98k_Rifle.Materials.Kar98LenseMaterial_Mic'
}
