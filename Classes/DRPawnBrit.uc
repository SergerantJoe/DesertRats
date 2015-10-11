
class DRPawnBrit extends DRPawn;

simulated event byte ScriptGetTeamNum()
{
	return `ALLIES_TEAM_INDEX;
}

DefaultProperties
{
	HeadAndArmsMeshes(0)=SkeletalMesh'DesertRats_CHR_UK_HEADS.Mesh.UK_HEAD_01'
	HeadAndArmsMeshes(1)=SkeletalMesh'DesertRats_CHR_UK_HEADS.Mesh.UK_HEAD_02'
	HeadAndArmsMeshes(2)=SkeletalMesh'DesertRats_CHR_UK_HEADS.Mesh.UK_HEAD_03'
	HeadAndArmsMeshes(3)=SkeletalMesh'DesertRats_CHR_UK_HEADS.Mesh.UK_HEAD_04'
	HeadAndArmsMeshes(4)=SkeletalMesh'DesertRats_CHR_UK_HEADS.Mesh.UK_HEAD_05'
	HeadAndArmsMeshes(5)=SkeletalMesh'DesertRats_CHR_UK_HEADS.Mesh.UK_HEAD_06'
	HeadAndArmsMeshes(6)=SkeletalMesh'DesertRats_CHR_UK_HEADS.Mesh.UK_HEAD_07'
	HeadAndArmsMeshes(7)=SkeletalMesh'DesertRats_CHR_UK_HEADS.Mesh.UK_HEAD_08'
	
	HeadAndArmsMICs(0)=MaterialInstanceConstant'DesertRats_CHR_UK_HEADS.MIC.UK_HEAD_01'
	HeadAndArmsMICs(1)=MaterialInstanceConstant'DesertRats_CHR_UK_HEADS.MIC.UK_HEAD_02'
	HeadAndArmsMICs(2)=MaterialInstanceConstant'DesertRats_CHR_UK_HEADS.MIC.UK_HEAD_03'
	HeadAndArmsMICs(3)=MaterialInstanceConstant'DesertRats_CHR_UK_HEADS.MIC.UK_HEAD_04'
	HeadAndArmsMICs(4)=MaterialInstanceConstant'DesertRats_CHR_UK_HEADS.MIC.UK_HEAD_05'
	HeadAndArmsMICs(5)=MaterialInstanceConstant'DesertRats_CHR_UK_HEADS.MIC.UK_HEAD_06'
	HeadAndArmsMICs(6)=MaterialInstanceConstant'DesertRats_CHR_UK_HEADS.MIC.UK_HEAD_07'
	HeadAndArmsMICs(7)=MaterialInstanceConstant'DesertRats_CHR_UK_HEADS.MIC.UK_HEAD_08'
	
	HeadgearAttachSocket=helmet
	
	ArmsMeshesFP(0)=SkeletalMesh'CHR_1stP_Hands_Master.Mesh.1stP_Hands_US_rolledSleeve'
	
	
	TunicMesh=		SkeletalMesh'DesertRats_CHR_UK.Mesh.UK_Tunic'
	PawnMesh_SV=	SkeletalMesh'DesertRats_CHR_UK.Mesh.UK_Tunic'
	BodyMICTemplate=	MaterialInstanceConstant'DesertRats_CHR_UK.MIC.UK_TUNIC'
	
	FieldgearMesh=		SkeletalMesh'DesertRats_CHR_UK.Mesh.UK_Gear_Rifleman'
	HeadgearMeshes(0)=	SkeletalMesh'DesertRats_CHR_UK.Mesh.UK_Headgear_Helmet'
	
	
	Begin Object Name=ROPawnSkeletalMeshComponent
		AnimSets(0)=AnimSet'CHR_Playeranim_Master.Anim.CHR_Stand_anim'
		AnimSets(1)=AnimSet'CHR_Playeranim_Master.Anim.CHR_ChestCover_anim'
		AnimSets(2)=AnimSet'CHR_Playeranim_Master.Anim.CHR_WaistCover_anim'
		AnimSets(3)=AnimSet'CHR_Playeranim_Master.Anim.CHR_StandCover_anim'
		AnimSets(4)=AnimSet'CHR_Playeranim_Master.Anim.CHR_Crouch_anim'
		AnimSets(5)=AnimSet'CHR_Playeranim_Master.Anim.CHR_Prone_anim'
		AnimSets(6)=AnimSet'CHR_Playeranim_Master.Anim.CHR_Hand_Poses_Master'
		AnimSets(7)=AnimSet'CHR_Playeranim_Master.Anim.CHR_Death_anim'
		AnimSets(8)=AnimSet'CHR_Playeranim_Master.Anim.CHR_Tripod_anim'
		AnimSets(9)=AnimSet'CHR_Playeranim_Master.Anim.Special_Actions'
		AnimSets(10)=AnimSet'CHR_Playeranim_Master.Anim.CHR_Melee'
		AnimSets(11)=AnimSet'CHR_Playeranim_Master.Anim.CHR_Russian_Unique'
		AnimSets(12)=None	// Reserved for weapon specific animations
		AnimSets(13)=AnimSet'CHR_RS_Playeranim_Master.Anim.CHR_RS_Hand_Poses_Master'
	End Object
	
	// Gore
	Gore_LeftHand=(GibClass=class'RSGameContent.RSGib_HumanArm_Gore_Arm')
	Gore_RightHand=(GibClass=class'RSGameContent.RSGib_HumanArm_Gore_Arm')
	Gore_LeftLeg=(GibClass=class'RSGameContent.RSGib_HumanLeg_GoreBoondockers')
	Gore_RightLeg=(GibClass=class'RSGameContent.RSGib_HumanLeg_GoreBoondockers')
	UberGoreMesh=SkeletalMesh'CHR_goremesh.Mesh.Ger_RawRecruit_UltraGore'
	
	bSingleHandedSprinting=false
}
