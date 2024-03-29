
class DRWep_P38 extends DRProjectileWeapon
	abstract;

defaultproperties
{
	WeaponContentClass(0)="DesertRats.DRWep_P38_ActualContent"
	
	RoleSelectionImage(0)=MaterialInstanceConstant'UI_Mats.RoleSelectMenu.Ger_wp_P38_UPGD1_MIC'
	
	InvIndex=`WI_PISTOL_DAK
	
	WeaponClassType=ROWCT_HandGun
	TeamIndex=`AXIS_TEAM_INDEX
	Category=ROIC_Secondary
	Weight=0.80
	InventoryWeight=0
	RoleEncumbranceModifier=0.0
	PlayerIronSightFOV=60.0
	FiringStatesArray(0)=WeaponSingleFiring
	WeaponFireTypes(0)=EWFT_Custom
	WeaponProjectiles(0)=class'P38Bullet'
	FireInterval(0)=+0.15
	Spread(0)=0.011
	WeaponDryFireSnd=SoundCue'AUD_Firearms.DryFire.DryFire_Pistol_Cue'
	FiringStatesArray(ALTERNATE_FIREMODE)=none
	WeaponProjectiles(ALTERNATE_FIREMODE)=none
	FireInterval(ALTERNATE_FIREMODE)=+0.15
	Spread(ALTERNATE_FIREMODE)=0
	PreFireTraceLength=1250 //25 Meters
	ShoulderedSpreadMod=6.0
	HippedSpreadMod=10.0
	MinBurstAmount=1
	MaxBurstAmount=3
	BurstWaitTime=1.5
	AISpreadScale=20.0
	maxRecoilPitch=500
	minRecoilPitch=350
	maxRecoilYaw=130
	minRecoilYaw=-85
	RecoilRate=0.125
	RecoilMaxYawLimit=500
	RecoilMinYawLimit=65035
	RecoilMaxPitchLimit=750
	RecoilMinPitchLimit=64785
	RecoilISMaxYawLimit=500
	RecoilISMinYawLimit=65035
	RecoilISMaxPitchLimit=500
	RecoilISMinPitchLimit=65035
	RecoilBlendOutRatio=0.65
	InstantHitDamage(0)=40
	InstantHitDamage(1)=40
	InstantHitDamageTypes(0)=class'RODmgType_P38Bullet'
	InstantHitDamageTypes(1)=class'RODmgType_P38Bullet'
	MuzzleFlashSocket=MuzzleFlashSocket
	MuzzleFlashPSCTemplate=ParticleSystem'FX_WEP_Gun_Two.MuzzleFlashes.FX_WEP_Gun_A_MuzzleFlash_1stP_pistols'
	MuzzleFlashDuration=0.33
	MuzzleFlashLightClass=class'ROGame.RORifleMuzzleFlashLight'
	ShellEjectSocket=ShellEjectSocket
	ShellEjectPSCTemplate=ParticleSystem'FX_WEP_Gun_Two.ShellEjects.FX_Wep_A_ShellEject_PhysX_Ger_P38'
	CRef_WeaponFireSndFirstPerson[0]="AUD_Firearms_Pistol_P38.Fire_Surround.Pistol_P38_Fire_Single_Sur_Cue"
	CRef_WeaponFireSndFirstPerson[1]="AUD_Firearms_Pistol_P38.Fire_Surround.Pistol_P38_Fire_Single_Sur_Cue"
	bHasIronSights=true;
	WeaponPutDownAnim=P38_Putaway
	WeaponEquipAnim=P38_Pullout
	WeaponDownAnim=P38_Down
	WeaponUpAnim=P38_Up
	WeaponFireAnim(0)=P38_shoulder_shoot
	WeaponFireAnim(1)=P38_shoulder_shoot
	WeaponFireLastAnim=P38_shoulder_shoot_LAST
	WeaponFireShoulderedAnim(0)=P38_shoulder_shoot
	WeaponFireShoulderedAnim(1)=P38_shoulder_shoot
	WeaponFireLastShoulderedAnim=P38_shoulder_shoot_LAST
	WeaponFireSightedAnim(0)=P38_iron_shoot
	WeaponFireSightedAnim(1)=P38_iron_shoot
	WeaponFireLastSightedAnim=P38_iron_shoot_LAST
	WeaponIdleAnims(0)=P38_Shoulder_Idle
	WeaponIdleAnims(1)=P38_Shoulder_Idle
	WeaponIdleShoulderedAnims(0)=P38_Shoulder_Idle
	WeaponIdleShoulderedAnims(1)=P38_Shoulder_Idle
	WeaponIdleSightedAnims(0)=P38_Iron_Idle
	WeaponIdleSightedAnims(1)=P38_Iron_Idle
	WeaponCrawlingAnims(0)=P38_CrawlF
	WeaponCrawlStartAnim=P38_Crawl_into
	WeaponCrawlEndAnim=P38_Crawl_out
	WeaponReloadEmptyMagAnim=P38_reloadempty
	WeaponRestReloadEmptyMagAnim=P38_reloadempty_rest
	WeaponReloadNonEmptyMagAnim=P38_reloadhalf
	WeaponRestReloadNonEmptyMagAnim=P38_reloadhalf_rest
	WeaponAmmoCheckAnim=P38_ammocheck
	WeaponRestAmmoCheckAnim=P38_ammocheck_rest
	WeaponSprintStartAnim=P38_sprint_into
	WeaponSprintLoopAnim=P38_Sprint
	WeaponSprintEndAnim=P38_sprint_out
	WeaponMantleOverAnim=P38_Mantle
	WeaponRestAnim=P38_rest_idle
	WeaponEquipRestAnim=P38_pullout_rest
	WeaponPutDownRestAnim=P38_putaway_rest
	WeaponBlindFireRightAnim=P38_BF_Right_Shoot
	WeaponBlindFireLeftAnim=P38_BF_Left_Shoot
	WeaponBlindFireUpAnim=P38_BF_up_Shoot
	WeaponIdleToRestAnim=P38_idleTOrest
	WeaponRestToIdleAnim=P38_restTOidle
	WeaponRestToBlindFireRightAnim=P38_restTOBF_Right
	WeaponRestToBlindFireLeftAnim=P38_restTOBF_Left
	WeaponRestToBlindFireUpAnim=P38_restTOBF_up
	WeaponBlindFireRightToRestAnim=P38_BF_Right_TOrest
	WeaponBlindFireLeftToRestAnim=P38_BF_Left_TOrest
	WeaponBlindFireUpToRestAnim=P38_BF_up_TOrest
	WeaponBFLeftToUpTransAnim=P38_BFleft_toBFup
	WeaponBFRightToUpTransAnim=P38_BFright_toBFup
	WeaponBFUpToLeftTransAnim=P38_BFup_toBFleft
	WeaponBFUpToRightTransAnim=P38_BFup_toBFright
	WeaponBF_Rest2LeftReady=P38_restTO_L_ready
	WeaponBF_LeftReady2LeftFire=P38_L_readyTOBF_L
	WeaponBF_LeftFire2LeftReady=P38_BF_LTO_L_ready
	WeaponBF_LeftReady2Rest=P38_L_readyTOrest
	WeaponBF_Rest2RightReady=P38_restTO_R_ready
	WeaponBF_RightReady2RightFire=P38_R_readyTOBF_R
	WeaponBF_RightFire2RightReady=P38_BF_RTO_R_ready
	WeaponBF_RightReady2Rest=P38_R_readyTOrest
	WeaponBF_Rest2UpReady=P38_restTO_Up_ready
	WeaponBF_UpReady2UpFire=P38_Up_readyTOBF_Up
	WeaponBF_UpFire2UpReady=P38_BF_UpTO_Up_ready
	WeaponBF_UpReady2Rest=P38_Up_readyTOrest
	WeaponBF_LeftReady2Up=P38_L_ready_toUp_ready
	WeaponBF_LeftReady2Right=P38_L_ready_toR_ready
	WeaponBF_UpReady2Left=P38_Up_ready_toL_ready
	WeaponBF_UpReady2Right=P38_Up_ready_toR_ready
	WeaponBF_RightReady2Up=P38_R_ready_toUp_ready
	WeaponBF_RightReady2Left=P38_R_ready_toL_ready
	WeaponBF_LeftReady2Idle=P38_L_readyTOidle
	WeaponBF_RightReady2Idle=P38_R_readyTOidle
	WeaponBF_UpReady2Idle=P38_Up_readyTOidle
	WeaponBF_Idle2UpReady=P38_idleTO_Up_ready
	WeaponBF_Idle2LeftReady=P38_idleTO_L_ready
	WeaponBF_Idle2RightReady=P38_idleTO_R_ready
	WeaponMeleeAnims(0)=P38_Bash
	WeaponMeleeHardAnim=P38_BashHard
	MeleePullbackAnim=P38_Pullback
	MeleeHoldAnim=P38_Pullback_Hold
	EquipTime=+0.50
	PutDownTime=+0.33
	bDebugWeapon = false
	BoltControllerNames[0]=SlideControl_P38
	ISFocusDepth=20
	ISFocusBlendRadius=8
	MaxAmmoCount=9
	AmmoClass=class'ROAmmo_9x19_P38Mag'
	bUsesMagazines=true
	InitialNumPrimaryMags=6
	bPlusOneLoading=true
	bCanReloadNonEmptyMag=true
	bCanLoadStripperClip=false
	bCanLoadSingleBullet=false
	PenetrationDepth=10.16
	MaxPenetrationTests=3
	MaxNumPenetrations=2
	PerformReloadPct=0.81f
	PlayerViewOffset=(X=0.0,Y=8.0,Z=-5)
	ZoomInRotation=(Pitch=-910,Yaw=0,Roll=2910)
	ShoulderedTime=0.35
	ShoulderedPosition=(X=3.5,Y=4.0,Z=-2.0)// (X=0,Y=1,Z=-1.4)
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
	FullFreeAimISMaxYaw=250
	FullFreeAimISMinYaw=65285
	FullFreeAimISMaxPitch=175
	FullFreeAimISMinPitch=65360
	FreeAimSpeedScale=0.35
	FreeAimISSpeedScale=0.4
	FreeAimHipfireOffsetX=25
	Begin Object Class=ForceFeedbackWaveform Name=ForceFeedbackWaveformShooting1
		Samples(0)=(LeftAmplitude=30,RightAmplitude=30,LeftFunction=WF_Constant,RightFunction=WF_Constant,Duration=0.120)
	End Object
	WeaponFireWaveForm=ForceFeedbackWaveformShooting1
	CollisionCheckLength=22.0
	FireCameraAnim[0]=CameraAnim'1stperson_Cameras.Anim.Camera_C96_Shoot'
	FireCameraAnim[1]=CameraAnim'1stperson_Cameras.Anim.Camera_C96_Shoot'
	SuppressionPower=2.5
	AIRating=0.3
	WeaponProficiencyLevelReloadModifiers=(1.0000,0.9974,0.9948,0.9922,0.9896,0.9870,0.9843,0.9817,0.9791,0.9765,0.9739,0.9713,0.9687,0.9661,0.9635,0.9609,0.9583,0.9557,0.9530,0.9504,0.9478,0.9452,0.9426,0.9400,0.9374,0.9348,0.9322,0.9296,0.9270,0.9243,0.9217,0.9191,0.9165,0.9139,0.9113,0.9087,0.9061,0.9035,0.9009,0.8983,0.8957,0.8930,0.8904,0.8878,0.8852,0.8826,0.8800,0.8774,0.8748,0.8722,0.8696)
}
