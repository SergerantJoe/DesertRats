
class DRWep_Kar_ActualContent extends DRWep_Kar;

DefaultProperties
{
	ArmsAnimSet=AnimSet'WP_Ger_Kar98k_Rifle.animation.WP_K98Hands'
	
	Begin Object Name=FirstPersonMesh
		DepthPriorityGroup=SDPG_Foreground
		SkeletalMesh=SkeletalMesh'WP_Ger_Kar98k_Rifle.Mesh.Ger_K98'
		PhysicsAsset=None
		AnimSets(0)=AnimSet'WP_Ger_Kar98k_Rifle.animation.WP_K98Hands'
		Animations=AnimTree'WP_Ger_Kar98k_Rifle.animation.Ger_Kar98_Tree'
		Scale=1.0
		FOV=70
	End Object
	
	Begin Object Name=PickupMesh
		SkeletalMesh=SkeletalMesh'WP_3rd_Master.Mesh.Kar98_3rd_Master'
		PhysicsAsset=PhysicsAsset'WP_3rd_Master.Phy.Kar98_3rd_Master_Physics'
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
	
	AttachmentClass=class'DRWep_Kar_Attach'
	
	WeaponFireSnd[0]=SoundCue'AUD_Firearms_Rifle_Kar98.Fire_3P.Rifle_Kar98_Fire_Single_M_Cue'
	WeaponFireSnd[1]=SoundCue'AUD_Firearms_Rifle_Kar98.Fire_3P.Rifle_Kar98_Fire_Single_M_Cue'
}
