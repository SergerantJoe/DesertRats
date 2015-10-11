
class DRWep_Bren_ActualContent extends DRWep_Bren;

DefaultProperties
{
	ArmsAnimSet=AnimSet'WP_RS_Jap_Type99-96_LMG.Animation.WP_Type99MGHands'
	
	Begin Object Name=FirstPersonMesh
		DepthPriorityGroup=SDPG_Foreground
		SkeletalMesh=SkeletalMesh'WP_RS_Jap_Type99-96_LMG.Mesh.JP_Type96LMG_UPGD1'
		PhysicsAsset=None
		AnimSets(0)=AnimSet'WP_RS_Jap_Type99-96_LMG.Animation.WP_Type99MGHands'
		Animations=AnimTree'WP_RS_Jap_Type99-96_LMG.Animation.Jap_Type99LMGBipod_Tree'
		Scale=1.0
		FOV=70
	End Object
	
	Begin Object Name=PickupMesh
		SkeletalMesh=SkeletalMesh'WP_RS_3rd_Master.Mesh.Type96_LMG_3rd_Master'
		PhysicsAsset=PhysicsAsset'WP_RS_3rd_Master.Phy.Type99LMG_3rd_Physics'
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
	
	AttachmentClass=class'RSGameContent.RSWeapAttach_Type96_LMG'
	
	WeaponFireSnd[0]=SoundCue'AUD_RS_Firearms_LMG_Type96.Fire_3P.LMG_Type96_Fire_3P_Cue'
	WeaponFireSnd[1]=SoundCue'AUD_RS_Firearms_LMG_Type96.Fire_3P.LMG_Type96_Fire_3P_Cue'
}
