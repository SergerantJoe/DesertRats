
class DRWep_Boys_ActualContent extends DRWep_Boys;

DefaultProperties
{
	ArmsAnimSet=AnimSet'Wp_Sov_PTRS.Animation.WP_PTRShands'
	
	Begin Object Name=FirstPersonMesh
		DepthPriorityGroup=SDPG_Foreground
		SkeletalMesh=SkeletalMesh'Wp_Sov_PTRS.Mesh.Sov_PTRS'
		PhysicsAsset=None
		AnimSets(0)=AnimSet'Wp_Sov_PTRS.Animation.WP_PTRShands'
		Animations=AnimTree'Wp_Sov_PTRS.Animation.Sov_PTRS_Tree'
		Scale=1.0
		FOV=70
	End Object
	
	Begin Object Name=PickupMesh
		SkeletalMesh=SkeletalMesh'WP_3rd_Master.Mesh.PTRS_3rd_Master'
		PhysicsAsset=PhysicsAsset'WP_3rd_Master.Phy.PTRS_3rd_Master_Physics'
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
	
	AttachmentClass=class'DRWep_Boys_Attach'
	
	WeaponFireSnd[0]=SoundCue'AUD_Firearms_AT_PTRS.Fire_3P.AT_PTRS_Fire_Single_M_Cue'
	WeaponFireSnd[1]=SoundCue'AUD_Firearms_AT_PTRS.Fire_3P.AT_PTRS_Fire_Single_M_Cue'
}
