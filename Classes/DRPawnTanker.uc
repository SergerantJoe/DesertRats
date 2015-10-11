
class DRPawnTanker extends ROPawnTanker;

DefaultProperties
{
	HeadAndArmsMeshes(0)=SkeletalMesh'CHR_Ger_RawRecruit_Heads.Mesh.ger_rr_head_A01'
	HeadAndArmsMeshes(1)=SkeletalMesh'CHR_Ger_RawRecruit_Heads.Mesh.ger_rr_head_A02'
	HeadAndArmsMeshes(2)=SkeletalMesh'CHR_Ger_RawRecruit_Heads.Mesh.ger_rr_head_A03'
	HeadAndArmsMeshes(3)=SkeletalMesh'CHR_Ger_RawRecruit_Heads.Mesh.ger_rr_head_A04'
	HeadAndArmsMeshes(4)=SkeletalMesh'CHR_Ger_RawRecruit_Heads.Mesh.ger_rr_head_A05'
	HeadAndArmsMeshes(5)=SkeletalMesh'CHR_Ger_RawRecruit_Heads.Mesh.ger_rr_head_A06'
	HeadAndArmsMeshes(6)=SkeletalMesh'CHR_Ger_RawRecruit_Heads.Mesh.ger_rr_head_A07'
	HeadAndArmsMeshes(7)=SkeletalMesh'CHR_Ger_RawRecruit_Heads.Mesh.ger_rr_head_A08'
	
	HeadAndArmsMICs(0)=MaterialInstanceConstant'CHR_Ger_RawRecruit_Heads.Materials.Ger_Rank1_Head01_M'
	HeadAndArmsMICs(1)=MaterialInstanceConstant'CHR_Ger_RawRecruit_Heads.Materials.Ger_Rank1_Head02_M'
	HeadAndArmsMICs(2)=MaterialInstanceConstant'CHR_Ger_RawRecruit_Heads.Materials.Ger_Rank1_Head03_M'
	HeadAndArmsMICs(3)=MaterialInstanceConstant'CHR_Ger_RawRecruit_Heads.Materials.Ger_Rank1_Head04_M'
	HeadAndArmsMICs(4)=MaterialInstanceConstant'CHR_Ger_RawRecruit_Heads.Materials.Ger_Rank1_Head05_M'
	HeadAndArmsMICs(5)=MaterialInstanceConstant'CHR_Ger_RawRecruit_Heads.Materials.Ger_Rank1_Head06_M'
	HeadAndArmsMICs(6)=MaterialInstanceConstant'CHR_Ger_RawRecruit_Heads.Materials.Ger_Rank1_Head07_M'
	HeadAndArmsMICs(7)=MaterialInstanceConstant'CHR_Ger_RawRecruit_Heads.Materials.Ger_Rank1_Head08_M'
	
	TunicMesh=SkeletalMesh'CHR_Ger_Tanker.Mesh.ger_tanker'
	
	BodyMICTemplate=MaterialInstanceConstant'CHR_Ger_Tanker.Materials.Ger_Rank1_Tanker_M'
	
	Begin Object Name=ROPawnSkeletalMeshComponent
		AnimTreeTemplate=AnimTree'CHR_Playeranimtree_Master.CHR_Tanker_animtree'
	    AnimSets(0)=AnimSet'CHR_Playeranim_Master.Anim.CHR_Panzer4G_Anim_Master'
	End Object
	
	Begin Object Name=FirstPersonArms1
		SkeletalMesh=SkeletalMesh'CHR_Ger_RawRecruit.Mesh.ger_tanker_fp_hands'
	End Object
}
