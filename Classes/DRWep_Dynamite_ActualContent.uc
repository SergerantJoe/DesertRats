
class DRWep_Dynamite_ActualContent extends DRWep_Dynamite;

DefaultProperties
{
	Begin Object Name=FirstPersonMesh
		DepthPriorityGroup=SDPG_Foreground
		SkeletalMesh=SkeletalMesh'DesertRats_WP_UK_Dynamite.Mesh.Dynamite'
		PhysicsAsset=None
		AnimSets(0)=AnimSet'WP_RS_USA_M37_Satchel.Animation.WP_M37SatchelHands'
		Animations=AnimTree'WP_RS_USA_M37_Satchel.Animation.WP_M37_Tree'
		Scale=1.0
		FOV=70
	End Object
	
	Begin Object Name=PickupMesh
		SkeletalMesh=SkeletalMesh'WP_RS_3rd_Master.Mesh.M-37_Satchel_3rd_Master'
		PhysicsAsset=PhysicsAsset'WP_RS_3rd_Master.Phy.M-37_Satchel_3rd_Physics'
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
	
	AttachmentClass=class'DRWep_Dynamite_Attach'
	
	Begin Object Name=LighterFlame
		Template=ParticleSystem'FX_RS_Explosions.Satchel.FX_RS_Lighter'
		Scale=0.200000
		Translation=(X=0,Y=0,Z=2)
	End Object
	mLighterFlameAttachBone=Zippo
	
	Begin Object Name=FuseSparks
		Template=ParticleSystem'FX_RS_Explosions.Satchel.FX_RS_Fuse'
		Scale=1.5
		Translation=(X=-3.37,Y=7.71,Z=6.86)
		Rotation=(Pitch=-3129,Yaw=7269,Roll=25187)
	End Object
	mFuseSparksAttachBone=M37_Satchel
	mFuseSparkDelay=1.1
	
	ArmsAnimSet=AnimSet'WP_RS_USA_M37_Satchel.Animation.WP_M37SatchelHands'
}
