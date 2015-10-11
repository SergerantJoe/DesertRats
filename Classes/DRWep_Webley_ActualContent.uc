
class DRWep_Webley_ActualContent extends DRWep_Webley;

DefaultProperties
{
	ArmsAnimSet=AnimSet'WP_Sov_M1895Nagant_Revolver.animation.WP_RevolverNewHands_Prototype'
	
	Begin Object Name=FirstPersonMesh
		DepthPriorityGroup=SDPG_Foreground
		SkeletalMesh=SkeletalMesh'WP_Sov_M1895Nagant_Revolver.Mesh.Sov_M1895Nagant_Revolver'
		PhysicsAsset=None
		AnimSets(0)=AnimSet'WP_Sov_M1895Nagant_Revolver.animation.WP_RevolverNewHands_Prototype'
		Animations=AnimTree'WP_Sov_M1895Nagant_Revolver.animation.Sov_M1895_Tree'
		Scale=1.0
		FOV=70
	End Object
	
	Begin Object Name=PickupMesh
		SkeletalMesh=SkeletalMesh'WP_3rd_Master.Mesh.Revolver_3rd_Master'
		PhysicsAsset=PhysicsAsset'WP_3rd_Master.Phy.P38_3rd_Master_Physics'
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
	
	AttachmentClass=class'DRWep_Webley_Attach'
	
	WeaponFireSnd[0]=SoundCue'AUD_RS_Firearms_Pistol_Type14.Fire_3P.Pistol_Type14_Fire_3P_Cue'
	WeaponFireSnd[1]=SoundCue'AUD_RS_Firearms_Pistol_Type14.Fire_3P.Pistol_Type14_Fire_3P_Cue'
}
