
class DRWep_Enfield_ActualContent extends DRWep_Enfield;

DefaultProperties
{
	ArmsAnimSet=AnimSet'WP_Sov_MN9130_rifle.animation.WP_MN9130Hands'
	
	Begin Object Name=FirstPersonMesh
		DepthPriorityGroup=SDPG_Foreground
		SkeletalMesh=SkeletalMesh'WP_Sov_MN9130_rifle.Mesh.Sov_MN9130'
		Materials(0)=MaterialInstanceConstant'WP_Sov_MN9130_rifle.Materials.Sov_MN9130_lev3_M'
		PhysicsAsset=None
		AnimSets(0)=AnimSet'WP_Sov_MN9130_rifle.animation.WP_MN9130Hands'
		Animations=AnimTree'WP_Sov_MN9130_rifle.animation.Sov_MN9130_Tree'
		Scale=1.0
		FOV=70
	End Object
	
	Begin Object Name=PickupMesh
		SkeletalMesh=SkeletalMesh'WP_3rd_Master.Mesh.MN9130_3rd_Master'
		PhysicsAsset=PhysicsAsset'WP_3rd_Master.Phy.MN9130_3rd_Master_Physics'
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
	
	AttachmentClass=class'DRWep_Enfield_Attach'
	
	WeaponFireSnd[0]=SoundCue'AUD_RS_Firearms_Rifle_M1903.Fire_3P.Rifle_M1903_Fire_3P_Cue'
	WeaponFireSnd[1]=SoundCue'AUD_RS_Firearms_Rifle_M1903.Fire_3P.Rifle_M1903_Fire_3P_Cue'
}
