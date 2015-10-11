
class DRWep_Satchel_ActualContent extends DRWep_Satchel;

DefaultProperties
{
	Begin Object Name=FirstPersonMesh
		DepthPriorityGroup=SDPG_Foreground
		SkeletalMesh=SkeletalMesh'WP_Ger_Satchel.Mesh.Ger_Satchel'
		PhysicsAsset=None
		AnimSets(0)=AnimSet'WP_Ger_Satchel.Animation.WP_SatchelHands'
		Animations=AnimTree'WP_Ger_Satchel.Animation.Ger_Satchel_Tree'
		Scale=1.0
		FOV=70
	End Object

	Begin Object Name=PickupMesh
		SkeletalMesh=SkeletalMesh'WP_3rd_Master.Mesh.Ger_Satchel_3rd_Master'
		PhysicsAsset=PhysicsAsset'WP_3rd_Master.Phy.Ger_Satchel_3rd_Master_Physics'
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
	
	AttachmentClass=class'DRWep_Satchel_Attach'
	
	ArmsAnimSet=AnimSet'WP_Ger_Satchel.Animation.WP_SatchelHands'
}
