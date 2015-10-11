
class DRWep_MG34_ActualContent extends DRWep_MG34;

DefaultProperties
{
	ArmsAnimSet=AnimSet'WP_Ger_MG34_LMG.animation.WP_MG34bipodhands'
	
	Begin Object Name=FirstPersonMesh
		DepthPriorityGroup=SDPG_Foreground
		SkeletalMesh=SkeletalMesh'WP_Ger_MG34_LMG.Mesh.Ger_MG34'
		PhysicsAsset=None
		AnimSets(0)=AnimSet'WP_Ger_MG34_LMG.animation.WP_MG34bipodhands'
		Animations=AnimTree'WP_Ger_MG34_LMG.animation.Ger_MG34Bipod_Tree'
		Scale=1.0
		FOV=70
	End Object
	
	Begin Object Name=PickupMesh
		SkeletalMesh=SkeletalMesh'WP_3rd_Master.Mesh.MG34_3rd_Master'
		PhysicsAsset=PhysicsAsset'WP_3rd_Master.Phy.MG34_3rd_Master_Physics'
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
	
	AttachmentClass=class'ROGameContent.ROWeapAttach_MG34_LMG'
	
	WeaponFireSnd[0]=SoundCue'AUD_Firearms_MG_MG34.Fire_3P.MG_MG34_Fire_Loop_M_Cue'
	WeaponFireSnd[1]=SoundCue'AUD_Firearms_MG_MG34.Fire_3P.MG_MG34_Fire_Single_M_Cue'
}
