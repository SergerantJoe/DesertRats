
class DRWep_P38_ActualContent extends DRWep_P38;

DefaultProperties
{
	ArmsAnimSet=AnimSet'WP_Ger_P38.Animation.WP_P38Hands'
	
	Begin Object Name=FirstPersonMesh
		DepthPriorityGroup=SDPG_Foreground
		SkeletalMesh=SkeletalMesh'WP_Ger_P38.Mesh.Ger_P38'
		PhysicsAsset=None
		AnimSets(0)=AnimSet'WP_Ger_P38.Animation.WP_P38Hands'
		Animations=AnimTree'WP_Ger_P38.Animation.Ger_P38_Tree'
		Scale=1.0
		FOV=70
	End Object
	
	Begin Object Name=PickupMesh
		SkeletalMesh=SkeletalMesh'WP_3rd_Master.Mesh.P38_3rd_Master'
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
	
	AttachmentClass=class'DRWep_P38_Attach'
	
	WeaponFireSnd[0]=SoundCue'AUD_Firearms_Pistol_P38.Fire_3P.Pistol_P38_Fire_Single_M_Cue'
	WeaponFireSnd[1]=SoundCue'AUD_Firearms_Pistol_P38.Fire_3P.Pistol_P38_Fire_Single_M_Cue'
}
