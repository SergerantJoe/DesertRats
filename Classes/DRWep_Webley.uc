
class DRWep_Webley extends DRProjectileWeapon
	abstract;

simulated function CauseShellEject(bool bPlayingFireEffects)
{
	if ( bPlayingFireEffects )
	{
		return;
	}
	
	Super.CauseShellEject(bPlayingFireEffects);
}

defaultproperties
{
	WeaponContentClass(0)="DesertRats.DRWep_Webley_ActualContent"
	
	RoleSelectionImage(0)=MaterialInstanceConstant'UI_Mats.RoleSelectMenu.sov_wp_nagant_revolver_UPGD1_MIC'
	
	WeaponClassType=ROWCT_HandGun
	TeamIndex=`ALLIES_TEAM_INDEX
	
	Category=ROIC_Secondary
	Weight=0.79
	InvIndex=`WI_PISTOL_UK
	InventoryWeight=1
	WeaponDryFireSnd=SoundCue'AUD_Firearms.DryFire.DryFire_Pistol_Cue'
	RoleEncumbranceModifier=0.0
	
	PlayerIronSightFOV=60.0
	
	FiringStatesArray(0)=WeaponSingleFiring
	WeaponFireTypes(0)=EWFT_Custom
	WeaponProjectiles(0)=class'M1895Bullet'
	FireInterval(0)=+0.175
	Spread(0)=0.011
	
	FiringStatesArray(ALTERNATE_FIREMODE)=none
	WeaponProjectiles(ALTERNATE_FIREMODE)=none
	FireInterval(ALTERNATE_FIREMODE)=+0.175
	Spread(ALTERNATE_FIREMODE)=0
	
	PreFireTraceLength=1250
	
	ShoulderedSpreadMod=6.0
	HippedSpreadMod=10.0
	
	MinBurstAmount=1
	MaxBurstAmount=3
	BurstWaitTime=5.0
	AISpreadScale=20.0
	
	maxRecoilPitch=500
	minRecoilPitch=350
	maxRecoilYaw=130
	minRecoilYaw=-85
	RecoilRate=0.1
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
	
	InstantHitDamageTypes(0)=class'RSDmgType_M1911Bullet'
	InstantHitDamageTypes(1)=class'RSDmgType_M1911Bullet'
	
	MuzzleFlashSocket=MuzzleFlashSocket
	MuzzleFlashPSCTemplate=ParticleSystem'FX_WEP_Gun_Two.MuzzleFlashes.FX_WEP_Gun_A_MuzzleFlash_1stP_pistols'
	MuzzleFlashDuration=0.33
	MuzzleFlashLightClass=class'ROGame.RORifleMuzzleFlashLight'
	
	ShellEjectSocket=ShellEjectSocket
	ShellEjectPSCTemplate=ParticleSystem'FX_WEP_Gun_Two.ShellEjects.FX_Wep_A_ShellEject_PhysX_Sov_7_62_Nagant_Single'
	
	CRef_WeaponFireSndFirstPerson[0]="AUD_RS_Firearms_Pistol_Type14.Fire_Surround.Pistol_Type14_Fire_Sur_Cue"
	CRef_WeaponFireSndFirstPerson[1]="AUD_RS_Firearms_Pistol_Type14.Fire_Surround.Pistol_Type14_Fire_Sur_Cue"
	
	bHasIronSights=true;
	
	WeaponPutDownAnim=1st_revolver_putaway
	WeaponEquipAnim=1st_revolver_pullout
	WeaponDownAnim=1st_revolver_Down
	WeaponUpAnim=1st_revolver_Up
	WeaponFireAnim(0)=1st_revolver_iron_shootdecocked
	WeaponFireAnim(1)=1st_revolver_iron_shootdecocked
	WeaponFireLastAnim=1st_revolver_iron_shootdecocked
	WeaponFireShoulderedAnim(0)=1st_revolver_iron_shootdecocked
	WeaponFireShoulderedAnim(1)=1st_revolver_iron_shootdecocked
	WeaponFireLastShoulderedAnim=1st_revolver_iron_shootdecocked
	WeaponFireSightedAnim(0)=1st_revolver_iron_shootdecocked
	WeaponFireSightedAnim(1)=1st_revolver_iron_shootdecocked
	WeaponFireLastSightedAnim=1st_revolver_iron_shootdecocked
	WeaponIdleAnims(0)=1st_revolver_shoulder_idle_decocked
	WeaponIdleAnims(1)=1st_revolver_shoulder_idle_decocked
	WeaponIdleShoulderedAnims(0)=1st_revolver_shoulder_idle_decocked
	WeaponIdleShoulderedAnims(1)=1st_revolver_shoulder_idle_decocked
	WeaponIdleSightedAnims(0)=1st_revolver_iron_idle_decocked
	WeaponIdleSightedAnims(1)=1st_revolver_iron_idle_decocked
	WeaponCrawlingAnims(0)=1st_revolver_CrawlF
	WeaponCrawlStartAnim=1st_revolver_Crawl_into
	WeaponCrawlEndAnim=1st_revolver_Crawl_out
	WeaponReloadSingleBulletAnim=1st_revolver_reloadInsert
	WeaponOpenBoltAnim=1st_revolver_reloadOpen
	WeaponCloseBoltAnim=1st_revolver_reloadClose
	WeaponRestReloadSingleBulletAnim=1st_revolver_reloadInsert_rest
	WeaponRestOpenBoltAnim=1st_revolver_reloadOpen_rest
	WeaponRestCloseBoltAnim=1st_revolver_reloadClose_rest
	WeaponAmmoCheckAnim=1st_revolver_ammocheck
	WeaponRestAmmoCheckAnim=1st_revolver_ammocheck_rest
	WeaponSprintStartAnim=1st_revolver_sprint_into
	WeaponSprintLoopAnim=1st_revolver_Sprint
	WeaponSprintEndAnim=1st_revolver_sprint_out
	WeaponMantleOverAnim=1st_revolver_Mantle
	WeaponRestAnim=1st_revolver_rest_idle
	WeaponEquipRestAnim=1st_revolver_pullout_rest
	WeaponPutDownRestAnim=1st_revolver_putaway_rest
	WeaponBlindFireRightAnim=1st_revolver_BF_Right_Shoot
	WeaponBlindFireLeftAnim=1st_revolver_BF_Left_Shoot
	WeaponBlindFireUpAnim=1st_revolver_BF_up_Shoot
	WeaponIdleToRestAnim=1st_revolver_idleTOrest
	WeaponRestToIdleAnim=1st_revolver_restTOidle
	WeaponRestToBlindFireRightAnim=1st_revolver_restTOBF_Right
	WeaponRestToBlindFireLeftAnim=1st_revolver_restTOBF_Left
	WeaponRestToBlindFireUpAnim=1st_revolver_restTOBF_up
	WeaponBlindFireRightToRestAnim=1st_revolver_BF_Right_TOrest
	WeaponBlindFireLeftToRestAnim=1st_revolver_BF_Left_TOrest
	WeaponBlindFireUpToRestAnim=1st_revolver_BF_up_TOrest
	WeaponBFLeftToUpTransAnim=1st_revolver_BFleft_toBFup
	WeaponBFRightToUpTransAnim=1st_revolver_BFright_toBFup
	WeaponBFUpToLeftTransAnim=1st_revolver_BFup_toBFleft
	WeaponBFUpToRightTransAnim=1st_revolver_BFup_toBFright
	WeaponBF_Rest2LeftReady=1st_revolver_restTO_L_ready
	WeaponBF_LeftReady2LeftFire=1st_revolver_L_readyTOBF_L
	WeaponBF_LeftFire2LeftReady=1st_revolver_BF_LTO_L_ready
	WeaponBF_LeftReady2Rest=1st_revolver_L_readyTOrest
	WeaponBF_Rest2RightReady=1st_revolver_restTO_R_ready
	WeaponBF_RightReady2RightFire=1st_revolver_R_readyTOBF_R
	WeaponBF_RightFire2RightReady=1st_revolver_BF_RTO_R_ready
	WeaponBF_RightReady2Rest=1st_revolver_R_readyTOrest
	WeaponBF_Rest2UpReady=1st_revolver_restTO_Up_ready
	WeaponBF_UpReady2UpFire=1st_revolver_Up_readyTOBF_Up
	WeaponBF_UpFire2UpReady=1st_revolver_BF_UpTO_Up_ready
	WeaponBF_UpReady2Rest=1st_revolver_Up_readyTOrest
	WeaponBF_LeftReady2Up=1st_revolver_L_ready_toUp_ready
	WeaponBF_LeftReady2Right=1st_revolver_L_ready_toR_ready
	WeaponBF_UpReady2Left=1st_revolver_Up_ready_toL_ready
	WeaponBF_UpReady2Right=1st_revolver_Up_ready_toR_ready
	WeaponBF_RightReady2Up=1st_revolver_R_ready_toUp_ready
	WeaponBF_RightReady2Left=1st_revolver_R_ready_toL_ready
	WeaponBF_LeftReady2Idle=1st_revolver_L_readyTOidle
	WeaponBF_RightReady2Idle=1st_revolver_R_readyTOidle
	WeaponBF_UpReady2Idle=1st_revolver_Up_readyTOidle
	WeaponBF_Idle2UpReady=1st_revolver_idleTO_Up_ready
	WeaponBF_Idle2LeftReady=1st_revolver_idleTO_L_ready
	WeaponBF_Idle2RightReady=1st_revolver_idleTO_R_ready
	
	WeaponMeleeAnims(0)=1st_revolver_Bash
	WeaponMeleeHardAnim=1st_revolver_BashHard
	MeleePullbackAnim=1st_revolver_Pullback
	MeleeHoldAnim=1st_revolver_Pullback_Hold
	
	EquipTime=+0.50
	PutDownTime=+0.33
	
	bDebugWeapon = false
	
	ISFocusDepth=20
	ISFocusBlendRadius=8
	
	MaxAmmoCount=7
	AmmoClass=class'ROAmmo_762x38R_M1895Bullets'
	bUsesMagazines=false
	InitialNumPrimaryMags=8
	bPlusOneLoading=false
	bCanReloadNonEmptyMag=false
	bCanLoadStripperClip=false
	bCanLoadSingleBullet=true
	PenetrationDepth=8.89
	MaxPenetrationTests=3
	MaxNumPenetrations=2
	
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
	
	FireCameraAnim[0]=CameraAnim'1stperson_Cameras.Anim.Camera_M1895_Shoot'
	FireCameraAnim[1]=CameraAnim'1stperson_Cameras.Anim.Camera_M1895_Shoot'
	
	SuppressionPower=2.5
	
	AIRating=0.3
}
