
class DRWep_Thompson extends DRProjectileWeapon
	abstract;

// simulated function SightIndexUpdated()
// {
	// if( SightRotController != none )
	// {
		// SightRotController.BoneRotation.Pitch = SightRanges[SightRangeIndex].SightPitch;
	// }
	// if( SightSlideController != none )
	// {
		// SightSlideController.BoneTranslation.Z = SightRanges[SightRangeIndex].SightSlideOffset;
	// }
	// IronSightPosition.Z=SightRanges[SightRangeIndex].SightPositionOffset;
	// PlayerViewOffset.Z=SightRanges[SightRangeIndex].SightPositionOffset;
// }

defaultproperties
{
	WeaponContentClass(0)="DesertRats.DRWep_Thompson_ActualContent"
	
	RoleSelectionImage(0)=Texture2D'RS_UI_Textures_Three.WeaponRenders.USA_Thompson_UPGD1'
	
	InvIndex=`WI_SMG_UK
	
	WeaponClassType=ROWCT_SMG
	TeamIndex=`ALLIES_TEAM_INDEX
	Category=ROIC_Primary
	Weight=4.9 //KG
	InventoryWeight=2
	RoleEncumbranceModifier=0.7
	PlayerIronSightFOV=45.0
	FiringStatesArray(0)=WeaponFiring
	WeaponFireTypes(0)=EWFT_Custom
	WeaponProjectiles(0)=class'M1928Bullet'
	bLoopHighROFSounds(0)=true
	FireInterval(0)=+0.086 // 700 RPM
	DelayedRecoilTime(0)=0.0
	Spread(0)=0.0095
	WeaponDryFireSnd=SoundCue'AUD_Firearms.DryFire.DryFire_SMG_Cue'
	FiringStatesArray(ALTERNATE_FIREMODE)=WeaponSingleFiring
	WeaponFireTypes(ALTERNATE_FIREMODE)=EWFT_Custom
	WeaponProjectiles(ALTERNATE_FIREMODE)=class'M1928Bullet'
	bLoopHighROFSounds(ALTERNATE_FIREMODE)=false
	FireInterval(ALTERNATE_FIREMODE)=+0.15
	DelayedRecoilTime(ALTERNATE_FIREMODE)=0.01
	Spread(ALTERNATE_FIREMODE)=0.0095
	PreFireTraceLength=1250 //25 Meters
	FireTweenTime=0.025
	ShoulderedSpreadMod=6.0
	HippedSpreadMod=10.0
	ShoulderedCasualSpreadMod=10.0
	HippedCasualSpreadMod=20.0
	MinBurstAmount=4
	MaxBurstAmount=8
	BurstWaitTime=1.0
	AISpreadScale=20.0
	maxRecoilPitch=200
	minRecoilPitch=175
	maxRecoilYaw=135
	minRecoilYaw=-135
	RecoilRate=0.08
	RecoilMaxYawLimit=500
	RecoilMinYawLimit=65035
	RecoilMaxPitchLimit=750
	RecoilMinPitchLimit=64785
	RecoilISMaxYawLimit=600
	RecoilISMinYawLimit=65035
	RecoilISMaxPitchLimit=500
	RecoilISMinPitchLimit=65035
	RecoilBlendOutRatio=0.75
	PostureHippedRecoilModifer=2.0
	PostureShoulderRecoilModifer=1.75
	InstantHitDamage(0)=65
	InstantHitDamage(1)=65
	InstantHitDamageTypes(0)=class'RSDmgType_M1928Bullet'
	InstantHitDamageTypes(1)=class'RSDmgType_M1928Bullet'
	MuzzleFlashSocket=MuzzleFlashSocket
	MuzzleFlashPSCTemplate=ParticleSystem'FX_MuzzleFlashes.Emitters.muzzleflash_1stP'
	MuzzleFlashDuration=0.33
	MuzzleFlashLightClass=class'ROGame.RORifleMuzzleFlashLight'
	ShellEjectSocket=ShellEjectSocket
	ShellEjectPSCTemplate=ParticleSystem'FX_RS_WEP_Gun.ShellEjects.FX_Wep_A_ShellEject_PhysX_USA_M1928A1SMG'
	CRef_WeaponFireSndFirstPerson[0]="AUD_RS_Firearms_SMG_M1928.Fire_Surround.SMG_M1928_Fire_Loop_Sur_Cue"
	CRef_WeaponFireSndFirstPerson[1]="AUD_RS_Firearms_SMG_M1928.Fire_Surround.SMG_M1928_Fire_Single_Sur_Cue"
	CRef_WeaponFireEndSndFirstPerson[0]="AUD_RS_Firearms_SMG_M1928.Fire_Surround.SMG_M1928_Fire_LoopEnd_Sur_Cue"
	WeaponFireEndSnd[0]=SoundCue'AUD_RS_Firearms_SMG_M1928.Fire_3P.SMG_M1928_Fire_LoopEnd_3P_Cue'
	bHasIronSights=true;
	WeaponPutDownAnim=M1928A1_putaway
	WeaponEquipAnim=M1928A1_pullout
	WeaponDownAnim=M1928A1_Down
	WeaponUpAnim=M1928A1_Up
	WeaponFireAnim(0)=M1928A1_Hip_Shoot
	WeaponFireAnim(1)=M1928A1_Hip_Shoot
	WeaponFireLastAnim=M1928A1_shootLAST
	WeaponFireShoulderedAnim(0)=M1928A1_Hip_Shoot
	WeaponFireShoulderedAnim(1)=M1928A1_Hip_Shoot
	WeaponFireLastShoulderedAnim=M1928A1_shootLAST
	WeaponFireSightedAnim(0)=M1928A1_iron_shoot
	WeaponFireSightedAnim(1)=M1928A1_iron_shoot
	WeaponFireLastSightedAnim=M1928A1_iron_shootLAST
	WeaponIdleAnims(0)=M1928A1_shoulder_idle
	WeaponIdleAnims(1)=M1928A1_shoulder_idle
	WeaponIdleShoulderedAnims(0)=M1928A1_shoulder_idle
	WeaponIdleShoulderedAnims(1)=M1928A1_shoulder_idle
	WeaponIdleSightedAnims(0)=M1928A1_iron_idle
	WeaponIdleSightedAnims(1)=M1928A1_iron_idle
	WeaponCrawlingAnims(0)=M1928A1_CrawlF
	WeaponCrawlStartAnim=M1928A1_Crawl_into
	WeaponCrawlEndAnim=M1928A1_Crawl_out
	WeaponReloadEmptyMagAnim=M1928A1_reloadempty
	WeaponReloadNonEmptyMagAnim=M1928A1_reloadhalf
	WeaponRestReloadEmptyMagAnim=M1928A1_reloadempty_rest
	WeaponRestReloadNonEmptyMagAnim=M1928A1_reloadhalf_rest
	WeaponAmmoCheckAnim=M1928A1_ammocheck
	WeaponRestAmmoCheckAnim=M1928A1_ammocheck_rest
	WeaponSprintStartAnim=M1928A1_sprint_into
	WeaponSprintLoopAnim=M1928A1_Sprint
	WeaponSprintEndAnim=M1928A1_sprint_out
	Weapon1HSprintStartAnim=M1928A1_1H_sprint_into
	Weapon1HSprintLoopAnim=M1928A1_1H_sprint
	Weapon1HSprintEndAnim=M1928A1_1H_sprint_out
	WeaponMantleOverAnim=M1928A1_Mantle
	WeaponRestAnim=M1928A1_rest_idle
	WeaponEquipRestAnim=M1928A1_pullout_rest
	WeaponPutDownRestAnim=M1928A1_putaway_rest
	WeaponBlindFireRightAnim=M1928A1_BF_Right_Shoot
	WeaponBlindFireLeftAnim=M1928A1_BF_Left_Shoot
	WeaponBlindFireUpAnim=M1928A1_BF_up_Shoot
	WeaponIdleToRestAnim=M1928A1_idleTOrest
	WeaponRestToIdleAnim=M1928A1_restTOidle
	WeaponRestToBlindFireRightAnim=M1928A1_restTOBF_Right
	WeaponRestToBlindFireLeftAnim=M1928A1_restTOBF_Left
	WeaponRestToBlindFireUpAnim=M1928A1_restTOBF_up
	WeaponBlindFireRightToRestAnim=M1928A1_BF_Right_TOrest
	WeaponBlindFireLeftToRestAnim=M1928A1_BF_Left_TOrest
	WeaponBlindFireUpToRestAnim=M1928A1_BF_up_TOrest
	WeaponBFLeftToUpTransAnim=M1928A1_BFleft_toBFup
	WeaponBFRightToUpTransAnim=M1928A1_BFright_toBFup
	WeaponBFUpToLeftTransAnim=M1928A1_BFup_toBFleft
	WeaponBFUpToRightTransAnim=M1928A1_BFup_toBFright
	WeaponBF_Rest2LeftReady=M1928A1_restTO_L_ready
	WeaponBF_LeftReady2LeftFire=M1928A1_L_readyTOBF_L
	WeaponBF_LeftFire2LeftReady=M1928A1_BF_LTO_L_ready
	WeaponBF_LeftReady2Rest=M1928A1_L_readyTOrest
	WeaponBF_Rest2RightReady=M1928A1_restTO_R_ready
	WeaponBF_RightReady2RightFire=M1928A1_R_readyTOBF_R
	WeaponBF_RightFire2RightReady=M1928A1_BF_RTO_R_ready
	WeaponBF_RightReady2Rest=M1928A1_R_readyTOrest
	WeaponBF_Rest2UpReady=M1928A1_restTO_Up_ready
	WeaponBF_UpReady2UpFire=M1928A1_Up_readyTOBF_Up
	WeaponBF_UpFire2UpReady=M1928A1_BF_UpTO_Up_ready
	WeaponBF_UpReady2Rest=M1928A1_Up_readyTOrest
	WeaponBF_LeftReady2Up=M1928A1_L_ready_toUp_ready
	WeaponBF_LeftReady2Right=M1928A1_L_ready_toR_ready
	WeaponBF_UpReady2Left=M1928A1_Up_ready_toL_ready
	WeaponBF_UpReady2Right=M1928A1_Up_ready_toR_ready
	WeaponBF_RightReady2Up=M1928A1_R_ready_toUp_ready
	WeaponBF_RightReady2Left=M1928A1_R_ready_toL_ready
	WeaponBF_LeftReady2Idle=M1928A1_L_readyTOidle
	WeaponBF_RightReady2Idle=M1928A1_R_readyTOidle
	WeaponBF_UpReady2Idle=M1928A1_Up_readyTOidle
	WeaponBF_Idle2UpReady=M1928A1_idleTO_Up_ready
	WeaponBF_Idle2LeftReady=M1928A1_idleTO_L_ready
	WeaponBF_Idle2RightReady=M1928A1_idleTO_R_ready
	WeaponMeleeAnims(0)=M1928A1_Bash
	WeaponMeleeHardAnim=M1928A1_BashHard
	MeleePullbackAnim=M1928A1_Pullback
	MeleeHoldAnim=M1928A1_Pullback_Hold
	ReloadMagazinEmptyCameraAnim=CameraAnim'1stperson_Cameras.Anim.Camera_MP40_reloadempty'
	EquipTime=+0.75
	PutDownTime=+0.50
	bDebugWeapon = false
	BoltControllerNames[0]=BoltSlide_M1928A1
	ISFocusDepth=20
	ISFocusBlendRadius=8
	AmmoClass=class'RSAmmo_1143x23_M1928Mag20'
	MaxAmmoCount=20
	bUsesMagazines=true
	InitialNumPrimaryMags=10
	bPlusOneLoading=false
	bCanReloadNonEmptyMag=true
	PenetrationDepth=9.5
	MaxPenetrationTests=3
	MaxNumPenetrations=2
	PlayerViewOffset=(X=1.0,Y=8.0,Z=-5)
	ZoomInRotation=(Pitch=-910,Yaw=0,Roll=2910)
	ShoulderedTime=0.35
	ShoulderedPosition=(X=5.0,Y=4.0,Z=-2.0)
	ShoulderRotation=(Pitch=-500,Yaw=0,Roll=2500)
	IronSightPosition=(X=5,Y=0,Z=0.0)
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
	FreeAimHipfireOffsetX=35
	Begin Object Class=ForceFeedbackWaveform Name=ForceFeedbackWaveformShooting1
		Samples(0)=(LeftAmplitude=30,RightAmplitude=30,LeftFunction=WF_Constant,RightFunction=WF_Constant,Duration=0.100)
	End Object
	WeaponFireWaveForm=ForceFeedbackWaveformShooting1
	CollisionCheckLength=42.55
	FireCameraAnim[0]=CameraAnim'1stperson_Cameras.Anim.Camera_PPSh_Shoot'
	FireCameraAnim[1]=CameraAnim'1stperson_Cameras.Anim.Camera_PPSh_Shoot'
	SightSlideControlName=Sight_Slide
	SightRotControlName=Sight_Rotation
	SightRanges[0]=(SightRange=50,SightPitch=0,SightSlideOffset=0.0,SightPositionOffset=0.0,AddedPitch=25)
	SightRanges[1]=(SightRange=100,SightPitch=16384,SightSlideOffset=0.35,SightPositionOffset=-0.26,AddedPitch=0)
	SightRanges[2]=(SightRange=200,SightPitch=16384,SightSlideOffset=0.58,SightPositionOffset=-0.55,AddedPitch=0)
	SightRanges[3]=(SightRange=300,SightPitch=16384,SightSlideOffset=0.87,SightPositionOffset=-0.94,AddedPitch=-25)
	SightRanges[4]=(SightRange=400,SightPitch=16384,SightSlideOffset=1.15,SightPositionOffset=-1.3,AddedPitch=-31)
	SightRanges[5]=(SightRange=500,SightPitch=16384,SightSlideOffset=1.38,SightPositionOffset=-1.6,AddedPitch=-2)
	SightRanges[6]=(SightRange=600,SightPitch=16384,SightSlideOffset=1.63,SightPositionOffset=-1.92,AddedPitch=0)
	WeaponProficiencyLevelReloadModifiers=(1.0000,0.9967,0.9933,0.9900,0.9867,0.9833,0.9800,0.9767,0.9733,0.9700,0.9667,0.9633,0.9600,0.9567,0.9533,0.9500,0.9467,0.9433,0.9400,0.9367,0.9333,0.9300,0.9267,0.9233,0.9200,0.9167,0.9133,0.9100,0.9067,0.9033,0.9000,0.8967,0.8933,0.8900,0.8867,0.8833,0.8800,0.8767,0.8733,0.8700,0.8667,0.8633,0.8600,0.8567,0.8533,0.8500,0.8467,0.8433,0.8400,0.8367,0.8333)
}
