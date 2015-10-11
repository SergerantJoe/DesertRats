
class DRVehicle_PanzerIIIM_Desert_Content extends ROVehicle_PanzerIIIM_Content;

defaultproperties
{
	Begin Object Name=ROSVehicleMesh
		Materials(0)=MaterialInstanceConstant'VH_Ger_Panzer_IIIM.Materials.VH_Ger_Panzer_IIIM_Winter_Mic'
	End Object
	
	DestroyedMaterial=MaterialInstanceConstant'VH_Ger_Panzer_IIIM.Materials.VH_Ger_Panzer_IIIM_Winter_Destroyed_Mic'
	
	Begin Object name=ExtBodyAttachment0
		Materials(0)=MaterialInstanceConstant'VH_Ger_Panzer_IIIM.Materials.VH_Ger_Panzer_IIIM_Winter_Mic'
	End Object
	
	Begin Object name=ExtBodyAttachment1
		Materials(0)=MaterialInstanceConstant'VH_Ger_Panzer_IIIM.Materials.VH_Ger_Panzer_IIIM_Winter_Mic'
	End Object
	
	Begin Object name=ExtBodyAttachment2
		Materials(0)=MaterialInstanceConstant'VH_Ger_Panzer_IIIM.Materials.VH_Ger_Panzer_IIIM_Winter_Mic'
	End Object
	
	Begin Object name=ExtBodyAttachment3
		Materials(0)=MaterialInstanceConstant'VH_Ger_Panzer_IIIM.Materials.VH_Ger_Panzer_IIIM_Winter_Mic'
	End Object
	
	Begin Object name=ExtBodyAttachment4
		Materials(0)=MaterialInstanceConstant'VH_Ger_Panzer_IIIM.Materials.VH_Ger_Panzer_IIIM_Winter_Mic'
	End Object
	
	VehicleEffects(TankVFX_TreadWing)=(EffectStartTag=EngineStart,EffectEndTag=EngineStop,bStayActive=true,EffectTemplate=ParticleSystem'FX_VEH_Tank_Three.FX_VEH_LightTank_A_Wing_Snow',EffectSocket=attachments_body_ground)
	
	// Driver
	SeatProxies(0)={(
		TunicMeshType=SkeletalMesh'DesertRats_CHR_DAK.Mesh.DAK_Tunic',
		HeadGearMeshType=SkeletalMesh'CHR_Ger_Tanker.Mesh.ger_tank_headgear',
		HeadAndArmsMeshType=SkeletalMesh'CHR_Ger_RawRecruit_Heads.Mesh.ger_rr_head_A01',
		HeadphonesMeshType=SkeletalMesh'CHR_Ger_Tanker.Mesh.ger_tanker_equipment',
		HeadAndArmsMICTemplate=MaterialInstanceConstant'CHR_Ger_RawRecruit_Heads.Materials.Ger_Rank3_Head01_M',
		BodyMICTemplate=MaterialInstanceConstant'DesertRats_CHR_DAK.MIC.DAK_Tunic',
		SeatIndex=0,
		PositionIndex=0)}

	// Commander
	SeatProxies(1)={(
		TunicMeshType=SkeletalMesh'DesertRats_CHR_DAK.Mesh.DAK_Tunic',
		HeadGearMeshType=SkeletalMesh'DesertRats_CHR_DAK.Mesh.DAK_Headgear_Cap',
		HeadAndArmsMeshType=SkeletalMesh'CHR_Ger_RawRecruit_Heads.Mesh.ger_rr_head_A02',
		HeadphonesMeshType=SkeletalMesh'CHR_Ger_Tanker.Mesh.ger_tanker_equipment',
		HeadAndArmsMICTemplate=MaterialInstanceConstant'CHR_Ger_RawRecruit_Heads.Materials.Ger_Rank3_Head02_M',
		BodyMICTemplate=MaterialInstanceConstant'DesertRats_CHR_DAK.MIC.DAK_Tunic',
		SeatIndex=1,
		PositionIndex=2)}
	
	// Hull MG
	SeatProxies(2)={(
		TunicMeshType=SkeletalMesh'DesertRats_CHR_DAK.Mesh.DAK_Tunic',
		HeadGearMeshType=SkeletalMesh'CHR_Ger_Tanker.Mesh.ger_tank_headgear',
		HeadAndArmsMeshType=SkeletalMesh'CHR_Ger_RawRecruit_Heads.Mesh.ger_rr_head_A06',
		HeadphonesMeshType=none,
		HeadAndArmsMICTemplate=MaterialInstanceConstant'CHR_Ger_RawRecruit_Heads.Materials.Ger_Rank3_Head06_M',
		BodyMICTemplate=MaterialInstanceConstant'DesertRats_CHR_DAK.MIC.DAK_Tunic',
		SeatIndex=3,
		PositionIndex=1)}
	
	// Loader
	SeatProxies(3)={(
		TunicMeshType=SkeletalMesh'DesertRats_CHR_DAK.Mesh.DAK_Tunic',
		HeadGearMeshType=none,
		HeadAndArmsMeshType=SkeletalMesh'CHR_Ger_RawRecruit_Heads.Mesh.ger_rr_head_A04',
		HeadphonesMeshType=none,
		HeadAndArmsMICTemplate=MaterialInstanceConstant'CHR_Ger_RawRecruit_Heads.Materials.Ger_Rank3_Head04_M',
		BodyMICTemplate=MaterialInstanceConstant'DesertRats_CHR_DAK.MIC.DAK_Tunic',
		SeatIndex=4,
		PositionIndex=0)}
	
	// Gunner
	SeatProxies(4)={(
		TunicMeshType=SkeletalMesh'DesertRats_CHR_DAK.Mesh.DAK_Tunic',
		HeadGearMeshType=none,
		HeadAndArmsMeshType=SkeletalMesh'CHR_Ger_RawRecruit_Heads.Mesh.ger_rr_head_A05',
		HeadphonesMeshType=SkeletalMesh'CHR_Ger_Tanker.Mesh.ger_tanker_equipment',
		HeadAndArmsMICTemplate=MaterialInstanceConstant'CHR_Ger_RawRecruit_Heads.Materials.Ger_Rank3_Head05_M',
		BodyMICTemplate=MaterialInstanceConstant'DesertRats_CHR_DAK.MIC.DAK_Tunic',
		SeatIndex=2,
		PositionIndex=1)}
}
