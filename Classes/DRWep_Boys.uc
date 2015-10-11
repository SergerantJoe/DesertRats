
class DRWep_Boys extends ROATWeapon
	abstract;

simulated function name GetReloadStripperAnimName()
{
	local ROPawn ROP;
	ROP = ROPawn(Instigator);
	
	if ( ROP.bBipodDeployed || ROP.bIsProning )
	{
		return WeaponReloadStripperAnim;
	}
	else if ( ROP.IsInCover() && bResting )
	{
		return WeaponRestReloadStripperAnim;
	}
	else
	{
		return WeaponRestReloadStripperAnim;
	}
}

defaultproperties
{
	WeaponContentClass(0)="DesertRats.DRWep_Boys_ActualContent"
	
	RoleSelectionImage(0)=MaterialInstanceConstant'UI_Mats.RoleSelectMenu.sov_wp_PTRS_UPGRD1_MIC'
	
	InvIndex=`WI_RIFLEAT_UK
	
	WeaponClassType=ROWCT_ATRifle
	TeamIndex=`ALLIES_TEAM_INDEX
	Category=ROIC_Primary
	Weight=10.45
	RoleEncumbranceModifier=0.5
	InventoryWeight=4
	PlayerIronSightFOV=55.0
	FiringStatesArray(0)=WeaponSingleFiring
	WeaponFireTypes(0)=EWFT_Custom
	WeaponProjectiles(0)=class'PTRS1941Bullet_AP'
	FireInterval(0)=+0.3	// ~600 RPM
	DelayedRecoilTime(0)=0.0
	Spread(0)=0.00012
	FiringStatesArray(ALTERNATE_FIREMODE)=none
	WeaponProjectiles(ALTERNATE_FIREMODE)=none
	FireInterval(ALTERNATE_FIREMODE)=+0.3	// ~600 RPM
	DelayedRecoilTime(ALTERNATE_FIREMODE)=0.01
	Spread(ALTERNATE_FIREMODE)=0.001
	
	// FireModeCanUseClientSideHitDetection[DEFAULT_FIREMODE]=false
	// FireModeCanUseClientSideHitDetection[ALTERNATE_FIREMODE]=false
	// FireModeCanUseClientSideHitDetection[MELEE_ATTACK_FIREMODE]=false

	PreFireTraceLength=10//2500 //50 Meters
	FireTweenTime=0.025
	ShoulderedSpreadMod=6.0
	HippedSpreadMod=10.0
	MinBurstAmount=1
	MaxBurstAmount=1
	BurstWaitTime=2.5
	maxRecoilPitch=1250
	minRecoilPitch=860
	maxRecoilYaw=180
	minRecoilYaw=-180
	RecoilRate=0.15
	RecoilMaxYawLimit=500
	RecoilMinYawLimit=65035
	RecoilMaxPitchLimit=1500
	RecoilMinPitchLimit=64785
	RecoilISMaxYawLimit=800
	RecoilISMinYawLimit=65035
	RecoilISMaxPitchLimit=900
	RecoilISMinPitchLimit=65035
	RecoilBlendOutRatio=0.55
	PostureHippedRecoilModifer=6.15
	PostureShoulderRecoilModifer=3.85
	RecoilViewRotationScale=0.45
	InstantHitDamage(0)=125
	InstantHitDamage(1)=125
	InstantHitDamageTypes(0)=class'RODmgType_PTRS1941Bullet'
	InstantHitDamageTypes(1)=class'RODmgType_PTRS1941Bullet'
	InstantHitMomentum(0)=1000
	InstantHitMomentum(1)=1000
	MuzzleFlashSocket=MuzzleFlashSocket
	MuzzleFlashPSCTemplate=ParticleSystem'FX_WEP_Gun_Two.MuzzleFlashes.FX_WEP_Gun_A_MuzzleFlash_1stP_ptrs'
	MuzzleFlashDuration=0.50
	MuzzleFlashLightClass=class'ROGame.RORifleMuzzleFlashLight'
	ShellEjectSocket=ShellEjectSocket
	ShellEjectPSCTemplate=ParticleSystem'FX_WEP_Gun_Two.ShellEjects.FX_Wep_A_ShellEject_PhysX_Sov_14_5x114_Single'
	CRef_WeaponFireSndFirstPerson[0]="AUD_Firearms_AT_PTRS.Fire_Suround.AT_PTRS_Fire_Single_Sur_Cue"
	CRef_WeaponFireSndFirstPerson[1]="AUD_Firearms_AT_PTRS.Fire_Suround.AT_PTRS_Fire_Single_Sur_Cue"
	bHasIronSights=true;
	WeaponPutDownAnim=PTRS_putaway
	WeaponEquipAnim=PTRS_pullout
	WeaponDownAnim=PTRS_Down
	WeaponUpAnim=PTRS_Up
	WeaponFireSightedAnim(0)=PTRS_deploy_shoot
	WeaponFireSightedAnim(1)=PTRS_deploy_shoot
	WeaponFireLastSightedAnim=PTRS_deploy_shootLAST
	WeaponIdleAnims(0)=PTRS_shoulder_idle
	WeaponIdleAnims(1)=PTRS_shoulder_idle
	WeaponIdleShoulderedAnims(0)=PTRS_shoulder_idle
	WeaponIdleShoulderedAnims(1)=PTRS_shoulder_idle
	WeaponIdleSightedAnims(0)=PTRS_deploy_idle
	WeaponIdleSightedAnims(1)=PTRS_deploy_idle
	WeaponCrawlingAnims(0)=PTRS_CrawlF
	WeaponCrawlStartAnim=PTRS_Crawl_into
	WeaponCrawlEndAnim=PTRS_Crawl_out
	RedeployCrawlingAnims(0)=PTRS_Deployed_CrawlF
	WeaponReloadStripperAnim=PTRS_deploy_reloadempty
	WeaponReloadSingleBulletAnim=PTRS_Deploy_Single_Insert
	WeaponReloadEmptySingleBulletAnim=PTRS_Single_single_Insert_empty
	WeaponOpenBoltAnim=PTRS_Deploy_Single_Open
	WeaponOpenBoltEmptyAnim=PTRS_Single_Boltopen_empty
	WeaponCloseBoltAnim=PTRS_Deploy_Single_Close
	WeaponRestReloadStripperAnim=PTRS_reloadempty_rest
	WeaponRestReloadSingleBulletAnim=PTRS_Single_Insert_Rest
	WeaponRestReloadEmptySingleBulletAnim=PTRS_Single_Insert_empty_rest
	WeaponRestOpenBoltAnim=PTRS_Single_Open_Rest
	WeaponRestOpenBoltEmptyAnim=PTRS_Single_Boltopen_empty_rest
	WeaponRestCloseBoltAnim=PTRS_Single_Close_Rest
	WeaponAmmoCheckAnim=PTRS_ammocheck_rest
	WeaponRestAmmoCheckAnim=PTRS_ammocheck_rest
	DeployAmmoCheckAnim=PTRS_deploy_ammocheck
	WeaponSprintStartAnim=PTRS_sprint_into
	WeaponSprintLoopAnim=PTRS_Sprint
	WeaponSprintEndAnim=PTRS_sprint_out
	Weapon1HSprintStartAnim=PTRS_ger_sprint_into
	Weapon1HSprintLoopAnim=PTRS_ger_sprint
	Weapon1HSprintEndAnim=PTRS_ger_sprint_out
	WeaponMantleOverAnim=PTRS_Mantle
	WeaponRestAnim=PTRS_rest_idle
	WeaponEquipRestAnim=PTRS_pullout
	WeaponPutDownRestAnim=PTRS_putaway
	ReloadMagazinEmptyCameraAnim=CameraAnim'1stperson_Cameras.Anim.Camera_MP40_reloadempty'
	EquipTime=+1.00
	PutDownTime=+0.75
	bDebugWeapon = false
	BoltControllerNames[0]=Bolt
	ISFocusDepth=30
	ISFocusBlendRadius=16
	AmmoClass=class'ROAmmo_145x114_PTRSClip'
	MaxAmmoCount=5
	bUsesMagazines=false
	InitialNumPrimaryMags=4
	StripperClipBulletCount=5
	bPlusOneLoading=false
	bCanReloadNonEmptyMag=false
	bCanLoadStripperClip=true
	bCanLoadSingleBullet=false
	PenetrationDepth=38.1
	MaxPenetrationTests=3
	MaxNumPenetrations=4
	PlayerViewOffset=(X=0.0,Y=8.0,Z=-5)
	ZoomInRotation=(Pitch=-910,Yaw=0,Roll=2910)
	ShoulderedTime=0.35
	ShoulderedPosition=(X=0.5,Y=4.0,Z=-2.0)// (X=0,Y=1,Z=-1.4)
	ShoulderRotation=(Pitch=-500,Yaw=0,Roll=2500)
	bUsesFreeAim=true
	FreeAimMaxYawLimit=2000
	FreeAimMinYawLimit=63535
	FreeAimMaxPitchLimit=1500
	FreeAimMinPitchLimit=64035
	FreeAimISMaxYawLimit=500
	FreeAimISMinYawLimit=65035
	FreeAimISMaxPitchLimit=350
	FreeAimISMinPitchLimit=65185
	FullFreeAimISMaxYaw=350
	FullFreeAimISMinYaw=65185
	FullFreeAimISMaxPitch=250
	FullFreeAimISMinPitch=65285
	FreeAimSpeedScale=0.35
	FreeAimISSpeedScale=0.4
	FreeAimHipfireOffsetX=55
	Begin Object Class=ForceFeedbackWaveform Name=ForceFeedbackWaveformShooting1
		Samples(0)=(LeftAmplitude=30,RightAmplitude=30,LeftFunction=WF_Constant,RightFunction=WF_Constant,Duration=0.100)
	End Object
	WeaponFireWaveForm=ForceFeedbackWaveformShooting1
	CollisionCheckLength=50.0
	DeployedSwayScale=0.05
	PitchControlName=PitchControl
	BipodZCheckDist=25.0
	bHasBipod=true
	bCanBlindFire=false
	DeployAnimName=PTRS_shoulderTOdeploy
	UnDeployAnimName=PTRS_deployTOshoulder
	RestDeployAnimName=PTRS_shoulderTOdeploy
	RestUnDeployAnimName=PTRS_deployTOshoulder
	DeployToShuffleAnimName=PTRS_Deploy_TO_Shuffle
	ShuffleIdleAnimName=PTRS_Shuffle_idle
	ShuffleToDeployAnimName=PTRS_Shuffle_TO_Deploy
	RedeployProneTurnAnimName=PTRS_prone_turn_TO_Deploy
	UnDeployProneTurnAnimName=PTRS_prone_Deploy_TO_turn
	ProneTurningIdleAnimName=PTRS_prone_Deploy_turn_idle
	BipodPivotBoneName=Bipod_Base
	FireCameraAnim[0]=CameraAnim'1stperson_Cameras.Anim.Camera_DP28_Shoot'
	FireCameraAnim[1]=CameraAnim'1stperson_Cameras.Anim.Camera_DP28_Shoot'
	ShakeScaleControlled=0.65
	SightSlideControlName=Sight_Slide
	SightRotControlName=Sight_Rotation
	SightRanges[0]=(SightRange=100,SightPitch=60,SightSlideOffset=0.0,SightPositionOffset=-0.025)
	SightRanges[1]=(SightRange=200,SightPitch=200,SightSlideOffset=0.090,SightPositionOffset=-0.09)
	SightRanges[2]=(SightRange=300,SightPitch=320,SightSlideOffset=0.181,SightPositionOffset=-0.149)
	SightRanges[3]=(SightRange=400,SightPitch=475,SightSlideOffset=0.272,SightPositionOffset=-0.218)
	SightRanges[4]=(SightRange=500,SightPitch=700,SightSlideOffset=0.363,SightPositionOffset=-0.325,AddedPitch=-5)
	SightRanges[5]=(SightRange=600,SightPitch=890,SightSlideOffset=0.454,SightPositionOffset=-0.41,AddedPitch=-7)
	SightRanges[6]=(SightRange=700,SightPitch=1125,SightSlideOffset=0.545,SightPositionOffset=-0.52,AddedPitch=-8)
	SightRanges[7]=(SightRange=800,SightPitch=1425,SightSlideOffset=0.636,SightPositionOffset=-0.66,AddedPitch=-9)
	SightRanges[8]=(SightRange=900,SightPitch=1800,SightSlideOffset=0.727,SightPositionOffset=-0.82,AddedPitch=-15)
	SightRanges[9]=(SightRange=1000,SightPitch=2150,SightSlideOffset=0.818,SightPositionOffset=-0.98)
	SightRanges[10]=(SightRange=1100,SightPitch=2550,SightSlideOffset=0.909,SightPositionOffset=-1.34)
	SightRanges[11]=(SightRange=1200,SightPitch=3100,SightSlideOffset=1.0,SightPositionOffset=-1.60)
	SuppressionPower=50
	WeaponProficiencyLevelReloadModifiers=(1.0000,0.9960,0.9920,0.9880,0.9840,0.9800,0.9760,0.9720,0.9680,0.9640,0.9600,0.9560,0.9520,0.9480,0.9440,0.9400,0.9360,0.9320,0.9280,0.9240,0.9200,0.9160,0.9120,0.9080,0.9040,0.9000,0.8960,0.8920,0.8880,0.8840,0.8800,0.8760,0.8720,0.8680,0.8640,0.8600,0.8560,0.8520,0.8480,0.8440,0.8400,0.8360,0.8320,0.8280,0.8240,0.8200,0.8160,0.8120,0.8080,0.8040,0.8000)
}
