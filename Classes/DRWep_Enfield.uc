
class DRWep_Enfield extends DRProjectileWeapon
	abstract;

defaultproperties
{
	WeaponContentClass(0)="DesertRats.DRWep_Enfield_ActualContent"
	RoleSelectionImage(0)=MaterialInstanceConstant'UI_Mats.RoleSelectMenu.sov_wp_9130_UPGRD1_MIC'
	
	WeaponClassType=ROWCT_Rifle
	TeamIndex=`ALLIES_TEAM_INDEX
	
	Category=ROIC_Primary
	Weight=4.0 // kg
	InvIndex=`WI_RIFLE_UK
	InventoryWeight=0
	
	PlayerIronSightFOV=40.0
	PreFireTraceLength=2500
	
	FiringStatesArray(0)=WeaponSingleFiring
	WeaponFireTypes(0)=EWFT_Custom
	WeaponProjectiles(0)=class'M1903Bullet'
	FireInterval(0)=1.1//+1.5
	DelayedRecoilTime(0)=0.01
	Spread(0)=0.00012
	
	FiringStatesArray(ALTERNATE_FIREMODE)=WeaponManualSingleFiring
	WeaponFireTypes(ALTERNATE_FIREMODE)=EWFT_Custom
	WeaponProjectiles(ALTERNATE_FIREMODE)=class'M1903Bullet'
	FireInterval(ALTERNATE_FIREMODE)=1.1//+1.5
	DelayedRecoilTime(ALTERNATE_FIREMODE)=0.01
	Spread(ALTERNATE_FIREMODE)=0.00012
	
	ShoulderedCasualSpreadMod=550.0
	HippedCasualSpreadMod=1000.0
	MinBurstAmount=1
	MaxBurstAmount=1
	BurstWaitTime=1.5
	AILongDistanceScale=1.25f
	AIMediumDistanceScale=0.5f
	AISpreadScale=200.0
	AISpreadNoSeeScale=2.0
	AISpreadNMEStillScale=0.5
	AISpreadNMESprintScale=1.5
	maxRecoilPitch=850
	minRecoilPitch=725
	maxRecoilYaw=300
	minRecoilYaw=215
	RecoilRate=0.1
	RecoilMaxYawLimit=500
	RecoilMinYawLimit=65035
	RecoilMaxPitchLimit=2000
	RecoilMinPitchLimit=63535
	RecoilISMaxYawLimit=500
	RecoilISMinYawLimit=65035
	RecoilISMaxPitchLimit=1500
	RecoilISMinPitchLimit=64035
	InstantHitDamage(0)=115
	InstantHitDamage(1)=115
	InstantHitDamageTypes(0)=class'RSDmgType_M1903Bullet'
	InstantHitDamageTypes(1)=class'RSDmgType_M1903Bullet'
	MuzzleFlashSocket=MuzzleFlashSocket
	MuzzleFlashPSCTemplate=ParticleSystem'FX_WEP_Gun_Two.MuzzleFlashes.FX_WEP_Gun_A_MuzzleFlash_1stP_rifles'
	MuzzleFlashDuration=0.33
	MuzzleFlashLightClass=class'ROGame.RORifleMuzzleFlashLight'
	ShellEjectSocket=ShellEjectSocket
	ShellEjectPSCTemplate=ParticleSystem'FX_WEP_Gun_Two.ShellEjects.FX_Wep_A_ShellEject_PhysX_Sov_7_62_54R_Single'
	
	CRef_WeaponFireSndFirstPerson[0]="AUD_RS_Firearms_Rifle_M1903.Fire_Surround.Rifle_M1903_Fire_Sur_Cue"
	CRef_WeaponFireSndFirstPerson[1]="AUD_RS_Firearms_Rifle_M1903.Fire_Surround.Rifle_M1903_Fire_Sur_Cue"
	
	bHasIronSights=true;
	bHasManualBolting=true;
	
	WeaponPutDownAnim=9130_Putaway
	WeaponEquipAnim=9130_Pullout
	WeaponDownAnim=9130_Down
	WeaponUpAnim=9130_Up
	WeaponFireAnim(0)=9130_Shoulder_Bolt//9130_Hip_Bolt
	WeaponFireAnim(1)=9130_Shoulder_Bolt//9130_Hip_Bolt
	WeaponFireLastAnim=9130_ShootLAST
	WeaponFireShoulderedAnim(0)=9130_Shoulder_Bolt
	WeaponFireShoulderedAnim(1)=9130_Shoulder_Bolt
	WeaponFireLastShoulderedAnim=9130_ShootLAST
   	WeaponFireSightedAnim(0)=9130_Iron_Bolt
	WeaponFireSightedAnim(1)=9130_Iron_Bolt
	WeaponFireLastSightedAnim=9130_ShootLAST
	WeaponManualBoltAnim=9130_Iron_Manual_Bolt
	WeaponManualBoltRestAnim=9130_Iron_Manual_Bolt_rest
	WeaponIdleAnims(0)=9130_Shoulder_Idle//9130_Hip_Idle
	WeaponIdleAnims(1)=9130_Shoulder_Idle//9130_Hip_Idle
	WeaponIdleShoulderedAnims(0)=9130_Shoulder_Idle
	WeaponIdleShoulderedAnims(1)=9130_Shoulder_Idle
	WeaponIdleSightedAnims(0)=9130_Iron_Idle
	WeaponIdleSightedAnims(1)=9130_Iron_Idle
	WeaponCrawlingAnims(0)=9130_CrawlF
	WeaponCrawlStartAnim=9130_Crawl_into
	WeaponCrawlEndAnim=9130_Crawl_out
	WeaponReloadStripperAnim=9130_Reload
	WeaponReloadSingleBulletAnim=9130_single_Insert
	WeaponReloadEmptySingleBulletAnim=9130_single_Insert_empty
	WeaponOpenBoltAnim=9130_single_open
	WeaponOpenBoltEmptyAnim=9130_single_open_empty
	WeaponCloseBoltAnim=9130_single_close
	WeaponRestReloadStripperAnim=9130_Reload_rest
	WeaponRestReloadSingleBulletAnim=9130_single_Insert_rest
	WeaponRestReloadEmptySingleBulletAnim=9130_single_Insert_empty_rest
	WeaponRestOpenBoltAnim=9130_single_open_rest
	WeaponRestOpenBoltEmptyAnim=9130_single_open_empty_rest
	WeaponRestCloseBoltAnim=9130_single_close_rest
	WeaponAmmoCheckAnim=9130_ammocheck
	WeaponRestAmmoCheckAnim=9130_ammocheck_rest
	WeaponSprintStartAnim=9130_sprint_into
	WeaponSprintLoopAnim=9130_Sprint
	WeaponSprintEndAnim=9130_sprint_out
	Weapon1HSprintStartAnim=9130_ger_sprint_into
	Weapon1HSprintLoopAnim=9130_ger_sprint
	Weapon1HSprintEndAnim=9130_ger_sprint_out
	WeaponMantleOverAnim=9130_Mantle
	WeaponRestAnim=9130_rest_idle
	WeaponEquipRestAnim=9130_pullout_rest
	WeaponPutDownRestAnim=9130_putaway_rest
	WeaponBlindFireRightAnim=9130_BF_Right_Shoot
	WeaponBlindFireLeftAnim=9130_BF_Left_Shoot
	WeaponBlindFireUpAnim=9130_BF_up_Shoot
	WeaponIdleToRestAnim=9130_idleTOrest
	WeaponRestToIdleAnim=9130_restTOidle
	WeaponRestToBlindFireRightAnim=9130_restTOBF_Right
	WeaponRestToBlindFireLeftAnim=9130_restTOBF_Left
	WeaponRestToBlindFireUpAnim=9130_restTOBF_up
	WeaponBlindFireRightToRestAnim=9130_BF_Right_TOrest
	WeaponBlindFireLeftToRestAnim=9130_BF_Left_TOrest
	WeaponBlindFireUpToRestAnim=9130_BF_up_TOrest
	WeaponBFLeftToUpTransAnim=9130_BFleft_toBFup
	WeaponBFRightToUpTransAnim=9130_BFright_toBFup
	WeaponBFUpToLeftTransAnim=9130_BFup_toBFleft
	WeaponBFUpToRightTransAnim=9130_BFup_toBFright
	WeaponBF_Rest2LeftReady=9130_restTO_L_ready
	WeaponBF_LeftReady2LeftFire=9130_L_readyTOBF_L
	WeaponBF_LeftFire2LeftReady=9130_BF_LTO_L_ready
	WeaponBF_LeftReady2Rest=9130_L_readyTOrest
	WeaponBF_Rest2RightReady=9130_restTO_R_ready
	WeaponBF_RightReady2RightFire=9130_R_readyTOBF_R
	WeaponBF_RightFire2RightReady=9130_BF_RTO_R_ready
	WeaponBF_RightReady2Rest=9130_R_readyTOrest
	WeaponBF_Rest2UpReady=9130_restTO_Up_ready
	WeaponBF_UpReady2UpFire=9130_Up_readyTOBF_Up
	WeaponBF_UpFire2UpReady=9130_BF_UpTO_Up_ready
	WeaponBF_UpReady2Rest=9130_Up_readyTOrest
	WeaponBF_LeftReady2Up=9130_L_ready_toUp_ready
	WeaponBF_LeftReady2Right=9130_L_ready_toR_ready
	WeaponBF_UpReady2Left=9130_Up_ready_toL_ready
	WeaponBF_UpReady2Right=9130_Up_ready_toR_ready
	WeaponBF_RightReady2Up=9130_R_ready_toUp_ready
	WeaponBF_RightReady2Left=9130_R_ready_toL_ready
	WeaponBF_LeftReady2Idle=9130_L_readyTOidle
	WeaponBF_RightReady2Idle=9130_R_readyTOidle
	WeaponBF_UpReady2Idle=9130_Up_readyTOidle
	WeaponBF_Idle2UpReady=9130_idleTO_Up_ready
	WeaponBF_Idle2LeftReady=9130_idleTO_L_ready
	WeaponBF_Idle2RightReady=9130_idleTO_R_ready
	WeaponMeleeAnims(0)=9130_Bash
	WeaponMeleeHardAnim=9130_BashHard
	MeleePullbackAnim=9130_Pullback
	MeleeHoldAnim=9130_Pullback_Hold
	EquipTime=+0.75
	PutDownTime=+0.50
	bDebugWeapon = false
	BoltControllerNames[0]=Hammer_9130
	ISFocusDepth=30
	ISFocusBlendRadius=12
	
	AmmoClass=class'DRAmmo_Enfield'
	MaxAmmoCount=10
	bUsesMagazines=false
	InitialNumPrimaryMags=12
	bLosesRoundOnReload=true
	bPlusOneLoading=false
	bCanReloadNonEmptyMag=true
	bCanLoadStripperClip=true
	bCanLoadSingleBullet=true
	StripperClipBulletCount=5
	
	PenetrationDepth=23.4
	MaxPenetrationTests=3
	MaxNumPenetrations=2
	PerformReloadPct=0.60f
	PlayerViewOffset=(X=0.0,Y=8.0,Z=-5)
	ZoomInRotation=(Pitch=-910,Yaw=0,Roll=2910)
	ShoulderedTime=0.35
	ShoulderedPosition=(X=0.5,Y=4.0,Z=-2.0)// (X=0,Y=1,Z=-1.4)
	ShoulderRotation=(Pitch=-500,Yaw=0,Roll=2500)
	IronSightPosition=(X=0,Y=0,Z=-0.03)
	bUsesFreeAim=true
	FreeAimMaxYawLimit=2000
	FreeAimMinYawLimit=63535
	FreeAimMaxPitchLimit=1500
	FreeAimMinPitchLimit=64035
	FreeAimISMaxYawLimit=500
	FreeAimISMinYawLimit=65035
	FreeAimISMaxPitchLimit=350
	FreeAimISMinPitchLimit=65185
	FullFreeAimISMaxYaw=250
	FullFreeAimISMinYaw=65285
	FullFreeAimISMaxPitch=175
	FullFreeAimISMinPitch=65360
	FreeAimSpeedScale=0.35
	FreeAimISSpeedScale=0.4
	FreeAimHipfireOffsetX=45
	Begin Object Class=ForceFeedbackWaveform Name=ForceFeedbackWaveformShooting1
		Samples(0)=(LeftAmplitude=30,RightAmplitude=50,LeftFunction=WF_Constant,RightFunction=WF_Constant,Duration=0.200)
	End Object
	WeaponFireWaveForm=ForceFeedbackWaveformShooting1
	CollisionCheckLength=45.5
	FireCameraAnim[0]=CameraAnim'1stperson_Cameras.Anim.Camera_MN9130_Shoot'
	FireCameraAnim[1]=CameraAnim'1stperson_Cameras.Anim.Camera_MN9130_Shoot'
	SightSlideControlName=Sight_Slide
	SightRotControlName=Sight_Rotation
	SightRanges[0]=(SightRange=100,SightPitch=60,SightSlideOffset=0.05,SightPositionOffset=-0.03)
	SightRanges[1]=(SightRange=200,SightPitch=140,SightSlideOffset=0.2,SightPositionOffset=-0.075)
	SightRanges[2]=(SightRange=300,SightPitch=210,SightSlideOffset=0.35,SightPositionOffset=-0.12)
	SightRanges[3]=(SightRange=400,SightPitch=305,SightSlideOffset=0.5,SightPositionOffset=-0.18)
	SightRanges[4]=(SightRange=500,SightPitch=415,SightSlideOffset=0.65,SightPositionOffset=-0.25)
	SightRanges[5]=(SightRange=600,SightPitch=490,SightSlideOffset=0.8,SightPositionOffset=-0.295)
	SightRanges[6]=(SightRange=700,SightPitch=575,SightSlideOffset=0.95,SightPositionOffset=-0.35)
	SightRanges[7]=(SightRange=800,SightPitch=800,SightSlideOffset=1.1,SightPositionOffset=-0.5)
	SightRanges[8]=(SightRange=900,SightPitch=1150,SightSlideOffset=1.25,SightPositionOffset=-0.725)// dialed in
	SightRanges[9]=(SightRange=1000,SightPitch=1625,SightSlideOffset=1.4,SightPositionOffset=-1.03)// dialed in
	SightRanges[10]=(SightRange=1100,SightPitch=2125,SightSlideOffset=1.55,SightPositionOffset=-1.335)
	SightRanges[11]=(SightRange=1200,SightPitch=2625,SightSlideOffset=1.7,SightPositionOffset=-1.65)
	SightRanges[12]=(SightRange=1300,SightPitch=3150,SightSlideOffset=1.85,SightPositionOffset=-1.95)
	SightRanges[13]=(SightRange=1400,SightPitch=3650,SightSlideOffset=2.0,SightPositionOffset=-2.25)
	SightRanges[14]=(SightRange=1500,SightPitch=4150,SightSlideOffset=2.15,SightPositionOffset=-2.55)
	SightRanges[15]=(SightRange=1600,SightPitch=4650,SightSlideOffset=2.3,SightPositionOffset=-2.860)
	SightRanges[16]=(SightRange=1700,SightPitch=5200,SightSlideOffset=2.45,SightPositionOffset=-3.165)
	SightRanges[17]=(SightRange=1800,SightPitch=5750,SightSlideOffset=2.6,SightPositionOffset=-3.470)
	SightRanges[18]=(SightRange=1900,SightPitch=6300,SightSlideOffset=2.75,SightPositionOffset=-3.775)
	SightRanges[19]=(SightRange=2000,SightPitch=6900,SightSlideOffset=2.9,SightPositionOffset=-4.08)
	SuppressionPower=20
	WeaponProficiencyLevelReloadModifiers=(1.0000,0.9967,0.9933,0.9900,0.9867,0.9833,0.9800,0.9767,0.9733,0.9700,0.9667,0.9633,0.9600,0.9567,0.9533,0.9500,0.9467,0.9433,0.9400,0.9367,0.9333,0.9300,0.9267,0.9233,0.9200,0.9167,0.9133,0.9100,0.9067,0.9033,0.9000,0.8967,0.8933,0.8900,0.8867,0.8833,0.8800,0.8767,0.8733,0.8700,0.8667,0.8633,0.8600,0.8567,0.8533,0.8500,0.8467,0.8433,0.8400,0.8367,0.8333)
}