
class DRWep_Binoculars_ActualContent extends DRWep_Binoculars;

DefaultProperties
{
	Begin Object Name=FirstPersonMesh
		DepthPriorityGroup=SDPG_Foreground
		SkeletalMesh=SkeletalMesh'WP_Sov_Binoculars.Mesh.Sov_Binocs'
		PhysicsAsset=None
		AnimSets(0)=AnimSet'WP_Sov_Binoculars.Anim.WP_BinocsHands'
		Animations=AnimTree'WP_Sov_Binoculars.Anim.Sov_Binocs_Tree'
		Scale=1.0
		FOV=70
	End Object
	
	AttachmentClass=class'DRWep_Binoculars_Attach'
	
	ArmsAnimSet=AnimSet'WP_Sov_Binoculars.Anim.WP_BinocsHands'
	
	BinocOverlayTexture=Texture2D'WP_Sov_Binoculars.Materials.BINOC_overlay'
}
