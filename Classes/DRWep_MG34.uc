
class DRWep_MG34 extends DRMGWeapon
	abstract;

simulated function SightIndexUpdated()
{
	if( SightRotController != none )
	{
		SightRotController.BoneRotation.Pitch = SightRanges[SightRangeIndex].SightPitch * -1;
	}
	if( SightSlideController != none )
	{
		SightSlideController.BoneTranslation.Z = SightRanges[SightRangeIndex].SightSlideOffset;
	}
	IronSightPosition.Z=SightRanges[SightRangeIndex].SightPositionOffset;
	PlayerViewOffset.Z=SightRanges[SightRangeIndex].SightPositionOffset;
}

simulated exec function SwitchFireMode()
{
	ROMGOperation();
}

simulated function bool OverrideAllowFocusZoom()
{
	return bUsingSights;
}

defaultproperties
{
	WeaponContentClass(0)="DesertRats.DRWep_MG34_ActualContent"

	RoleSelectionImage(0)=MaterialInstanceConstant'UI_Mats.RoleSelectMenu.Ger_wp_MG34_UPGRD1_MIC'
	
	WeaponClassType=ROWCT_LMG
	TeamIndex=`AXIS_TEAM_INDEX
	
	Category=ROIC_Primary
	Weight=12.1 //KG
	RoleEncumbranceModifier=0.35
	InvIndex=8
	InventoryWeight=3
	
	PlayerIronSightFOV=55.0
	
	FiringStatesArray(0)=WeaponFiring
	WeaponFireTypes(0)=EWFT_Custom
	WeaponProjectiles(0)=class'MG34Bullet'
	bLoopHighROFSounds(0)=true
	FireInterval(0)=+0.075
	DelayedRecoilTime(0)=0.0
	Spread(0)=0.000175//0.0003
	
	FiringStatesArray(ALTERNATE_FIREMODE)=WeaponSingleFiring
	WeaponFireTypes(ALTERNATE_FIREMODE)=EWFT_Custom
	WeaponProjectiles(ALTERNATE_FIREMODE)=class'MG34Bullet'
	bLoopHighROFSounds(ALTERNATE_FIREMODE)=false
	FireInterval(ALTERNATE_FIREMODE)=+0.075
	DelayedRecoilTime(ALTERNATE_FIREMODE)=0.01
	Spread(ALTERNATE_FIREMODE)=0.000175//0.0003
	
	PreFireTraceLength=2500 //50 Meters
	FireTweenTime=0.025
	
	ShoulderedSpreadMod=6.0
	HippedSpreadMod=10.0
	ShoulderedCasualSpreadMod=550.0
	HippedCasualSpreadMod=1000.0
	
	MinBurstAmount=3
	MaxBurstAmount=6
	BurstWaitTime=1.0
	
	maxRecoilPitch=65//130
	minRecoilPitch=55//110
	maxRecoilYaw=35//50
	minRecoilYaw=-25//-40
	RecoilRate=0.07
	RecoilMaxYawLimit=1500
	RecoilMinYawLimit=64035
	RecoilMaxPitchLimit=1500
	RecoilMinPitchLimit=64785
	RecoilISMaxYawLimit=500
	RecoilISMinYawLimit=65035
	RecoilISMaxPitchLimit=450//350
	RecoilISMinPitchLimit=65035
	RecoilBlendOutRatio=0.75
	PostureHippedRecoilModifer=11.0//5.5
	PostureShoulderRecoilModifer=4.0//2.0
	RecoilViewRotationScale=0.45
	
	InstantHitDamage(0)=115
	InstantHitDamage(1)=115
	
	InstantHitDamageTypes(0)=class'RODmgType_MG34Bullet'
	InstantHitDamageTypes(1)=class'RODmgType_MG34Bullet'
	
	MuzzleFlashSocket=MuzzleFlashSocket
	MuzzleFlashPSCTemplate=ParticleSystem'FX_WEP_Gun_Two.MuzzleFlashes.FX_WEP_Gun_A_MuzzleFlash_1stP_MG'
	MuzzleFlashDuration=0.33
	MuzzleFlashLightClass=class'ROGame.RORifleMuzzleFlashLight'
	
	ShellEjectSocket=ShellEjectSocket
	ShellEjectPSCTemplate=ParticleSystem'FX_WEP_Gun_Two.ShellEjects.FX_Wep_A_ShellEject_PhysX_Ger_MG34'
	
	CRef_WeaponFireSndFirstPerson[0]="AUD_Firearms_MG_MG34.Fire_Surround.MG_MG34_Fire_Loop_Sur_Cue"
	CRef_WeaponFireSndFirstPerson[1]="AUD_Firearms_MG_MG34.Fire_Surround.MG_MG34_Fire_Single_Sur_Cue"
	CRef_WeaponFireEndSndFirstPerson[0]="AUD_Firearms_MG_MG34.Fire_Surround.MG_MG34_Fire_LoopEnd_Sur_Cue"
	
	WeaponFireEndSnd[0]=SoundCue'AUD_Firearms_MG_MG34.Fire_3P.MG_MG34_Fire_LoopEnd_M_Cue'
	
	bHasIronSights=true;

	WeaponPutDownAnim=MG34_putaway
	WeaponEquipAnim=MG34_pullout
	WeaponDownAnim=MG34_Down
	WeaponUpAnim=MG34_Up
	WeaponFireAnim(0)=MG34_shoulder_shoot
	WeaponFireAnim(1)=MG34_shoulder_shoot
	WeaponFireLastAnim=MG34_shoulder_shoot
	WeaponFireShoulderedAnim(0)=MG34_shoulder_shoot
	WeaponFireShoulderedAnim(1)=MG34_shoulder_shoot
	WeaponFireLastShoulderedAnim=MG34_shoulder_shoot
	WeaponFireSightedAnim(0)=MG34_deploy_shoot
	WeaponFireSightedAnim(1)=MG34_deploy_shoot
	WeaponFireLastSightedAnim=MG34_deploy_shoot
	WeaponIdleAnims(0)=MG34_shoulder_idle
	WeaponIdleAnims(1)=MG34_shoulder_idle
	WeaponIdleShoulderedAnims(0)=MG34_shoulder_idle
	WeaponIdleShoulderedAnims(1)=MG34_shoulder_idle
	WeaponIdleSightedAnims(0)=MG34_deploy_idle
	WeaponIdleSightedAnims(1)=MG34_deploy_idle
	WeaponCrawlingAnims(0)=MG34_CrawlF
	WeaponCrawlStartAnim=MG34_Crawl_into
	WeaponCrawlEndAnim=MG34_Crawl_out
	RedeployCrawlingAnims(0)=MG34_Deployed_CrawlF
	WeaponReloadEmptyMagAnim=MG34_reloadempty_crouch
	WeaponReloadNonEmptyMagAnim=MG34_reloadhalf_crouch
	WeaponRestReloadEmptyMagAnim=MG34_reloadempty_rest
	WeaponRestReloadNonEmptyMagAnim=MG34_reloadhalf_rest
	DeployReloadEmptyMagAnim=MG34_deploy_reloadempty
	DeployReloadHalfMagAnim=MG34_deploy_reloadhalf
	WeaponAmmoCheckAnim=MG34_ammocheck_crouch
	WeaponRestAmmoCheckAnim=MG34_ammocheck_rest
	DeployAmmoCheckAnim=MG34_deploy_ammocheck
	WeaponSprintStartAnim=MG34_sprint_into
	WeaponSprintLoopAnim=MG34_Sprint
	WeaponSprintEndAnim=MG34_sprint_out
	Weapon1HSprintStartAnim=MG34_ger_sprint_into
	Weapon1HSprintLoopAnim=MG34_ger_sprint
	Weapon1HSprintEndAnim=MG34_ger_sprint_out
	WeaponMantleOverAnim=MG34_Mantle
	WeaponRestAnim=MG34_rest_idle
	WeaponEquipRestAnim=MG34_pullout_rest
	WeaponPutDownRestAnim=MG34_putaway_rest
	WeaponIdleToRestAnim=MG34_shoulderTOrest
	WeaponRestToIdleAnim=MG34_restTOshoulder
	
	ReloadMagazinEmptyCameraAnim=CameraAnim'1stperson_Cameras.Anim.Camera_MP40_reloadempty'
	
	EquipTime=+1.00
	PutDownTime=+0.75
	
	bDebugWeapon = false
	
	ISFocusDepth=30
	ISFocusBlendRadius=16
	
	AmmoClass=class'ROAmmo_792x57_MG34Drum'
	MaxAmmoCount=50
	bUsesMagazines=true
	InitialNumPrimaryMags=4
	bPlusOneLoading=false
	bCanReloadNonEmptyMag=true
	PenetrationDepth=23.5
	MaxPenetrationTests=3
	MaxNumPenetrations=2
	TracerClass=class'MG34BulletTracer'
	TracerFrequency=10
	
	PlayerViewOffset=(X=0.0,Y=8.0,Z=-5)
	ZoomInRotation=(Pitch=-910,Yaw=0,Roll=2910)
	ShoulderedTime=0.35
	ShoulderedPosition=(X=0.5,Y=4.0,Z=-2.0)// (X=0,Y=1,Z=-1.4)
	ShoulderRotation=(Pitch=-500,Yaw=0,Roll=2500)
	IronSightPosition=(X=0,Y=0,Z=0.0)
	
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
	
	YawControlName=YawControl
	PitchControlName=PitchControl
	BipodZCheckDist=25.0
	bHasBipod=true
	bCanBlindFire=false
	DeployAnimName=MG34_shoulderTOdeploy
	UnDeployAnimName=MG34_deployTOshoulder
	RestDeployAnimName=MG34_restTOdeploy
	RestUnDeployAnimName=MG34_deployTOrest
	DeployToShuffleAnimName=MG34_Deploy_TO_Shuffle
	ShuffleIdleAnimName=MG34_Shuffle_idle
	ShuffleToDeployAnimName=MG34_Shuffle_TO_Deploy
	RedeployProneTurnAnimName=MG34_prone_turn_TO_Deploy
	UnDeployProneTurnAnimName=MG34_prone_Deploy_TO_turn
	ProneTurningIdleAnimName=MG34_prone_Deploy_turn_idle
	BipodPivotBoneName=Bipod_hinge_Yaw
	BipodOffset=(X=35.80)
	
	FireCameraAnim[0]=CameraAnim'1stperson_Cameras.Anim.Camera_MG34_Shoot'
	FireCameraAnim[1]=CameraAnim'1stperson_Cameras.Anim.Camera_MG34_Shoot'
	ShakeScaleControlled=0.65
	
	SightSlideControlName=Sight_Slide
	
	SightRanges[0]=(SightRange=200,SightSlideOffset=0.0,SightPositionOffset=0.0,AddedPitch=30)
	SightRanges[1]=(SightRange=400,SightSlideOffset=0.05,SightPositionOffset=-0.075,AddedPitch=48)
	SightRanges[2]=(SightRange=500,SightSlideOffset=0.075,SightPositionOffset=-0.12,AddedPitch=58)
	SightRanges[3]=(SightRange=600,SightSlideOffset=0.11,SightPositionOffset=-0.18,AddedPitch=70)
	SightRanges[4]=(SightRange=700,SightSlideOffset=0.14,SightPositionOffset=-0.225,AddedPitch=70)
	SightRanges[5]=(SightRange=800,SightSlideOffset=0.16,SightPositionOffset=-0.285,AddedPitch=86)
	SightRanges[6]=(SightRange=900,SightSlideOffset=0.24,SightPositionOffset=-0.4,AddedPitch=96)
	SightRanges[7]=(SightRange=1000,SightSlideOffset=0.3,SightPositionOffset=-0.52,AddedPitch=106)
	
	ROBarrelClass=class'ROMGBarrelMG34'
	bTrackBarrelHeat=true
	BarrelHeatBone=barrel
	BarrelChangeAnim=MG34_BarrelChange
	InitialBarrels=3
	
	MaxNumPrimaryMags=6
	
	SuppressionPower=10
}
