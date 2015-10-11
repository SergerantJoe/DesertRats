
class DRWep_Thompson_ActualContent extends DRWep_Thompson;

DefaultProperties
{
	ArmsAnimSet=AnimSet'WP_RS_USA_ThompsonM1928A1_SMG.Animation.WP_M1928ThompsonHands'
	
	Begin Object Name=FirstPersonMesh
		DepthPriorityGroup=SDPG_Foreground
		SkeletalMesh=SkeletalMesh'WP_RS_USA_ThompsonM1928A1_SMG.Mesh.USA_Thompson_UPGD1'
		PhysicsAsset=None
		AnimSets(0)=AnimSet'WP_RS_USA_ThompsonM1928A1_SMG.Animation.WP_M1928ThompsonHands'
		Animations=AnimTree'WP_RS_USA_ThompsonM1928A1_SMG.Animation.USA_M1928A1_AnimTree'
		Scale=1.0
		FOV=70
	End Object
	
	Begin Object Name=PickupMesh
		SkeletalMesh=SkeletalMesh'WP_RS_3rd_Master.Mesh.ThompsonM1928A1_3rd_Master'
		PhysicsAsset=PhysicsAsset'WP_RS_3rd_Master.Phy.ThompsonM1928A1_3rd_Physics'
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
	
	AttachmentClass=class'DRWep_Thompson_Attach'
	
	WeaponFireSnd[0]=SoundCue'AUD_RS_Firearms_SMG_M1928.Fire_3P.SMG_M1928_Fire_Loop_3P_Cue'
	WeaponFireSnd[1]=SoundCue'AUD_RS_Firearms_SMG_M1928.Fire_3P.SMG_M1928_Fire_Single_3P_Cue'
}
