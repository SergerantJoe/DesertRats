
class DRWep_MP40_ActualContent extends DRWep_MP40;

DefaultProperties
{
	Begin Object Name=FirstPersonMesh
		DepthPriorityGroup=SDPG_Foreground
		SkeletalMesh=SkeletalMesh'WP_Ger_MP40.Mesh.Ger_MP40_Prototype'
		Materials(0)=MaterialInstanceConstant'WP_Ger_MP40.Material.Ger_MP40_lev3_M'
		PhysicsAsset=None
		AnimSets(0)=AnimSet'WP_Ger_MP40.animation.WP_MP40Hands'
		Animations=AnimTree'WP_Ger_MP40.animation.Ger_MP40_Prototype_Tree'
		Scale=1.0
		FOV=70
	End Object
	
	ArmsAnimSet=AnimSet'WP_Ger_MP40.animation.WP_MP40Hands'
	
	Begin Object Name=PickupMesh
		SkeletalMesh=SkeletalMesh'WP_3rd_Master.Mesh.MP40_3rd_Master'
		PhysicsAsset=PhysicsAsset'WP_3rd_Master.Phy.MP40_3rd_Master_Physics'
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
	
	AttachmentClass=class'DRWep_MP40_Attach'
	
	WeaponFireSnd[0]=SoundCue'AUD_Firearms_SMG_MP40.Fire_3P.SMG_MP40_Fire_Single_M_Cue'
	WeaponFireSnd[1]=SoundCue'AUD_Firearms_SMG_MP40.Fire_3P.SMG_MP40_Fire_Single_M_Cue'
}
