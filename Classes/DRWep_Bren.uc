
class DRWep_Bren extends DRMGWeapon
	abstract;

defaultproperties
{
	WeaponContentClass(0)="DesertRats.DRWep_Bren_ActualContent"
	
	RoleSelectionImage(0)=Texture2D'RS_UI_Textures_Three.WeaponRenders.JP_Type96LMG_UPGD1'
	
	TeamIndex=`ALLIES_TEAM_INDEX
	
	InvIndex=`WI_LMG_UK
	
	WeaponClassType=ROWCT_LMG
	
	Category=ROIC_Primary
	Weight=9
	RoleEncumbranceModifier=0.4
	InventoryWeight=3
	
	PlayerIronSightFOV=55.0
	
	FiringStatesArray(0)=WeaponFiring
	WeaponFireTypes(0)=EWFT_Custom
	WeaponProjectiles(0)=class'Type96Bullet'
	FireInterval(0)=+0.109
	DelayedRecoilTime(0)=0.0
	Spread(0)=0.000175
	
	FiringStatesArray(ALTERNATE_FIREMODE)=none
	WeaponProjectiles(ALTERNATE_FIREMODE)=none
	FireInterval(ALTERNATE_FIREMODE)=+0.109
	DelayedRecoilTime(ALTERNATE_FIREMODE)=0.01
	Spread(ALTERNATE_FIREMODE)=0.000175
	
	PreFireTraceLength=2500
	FireTweenTime=0.025
	
	ShoulderedSpreadMod=6.0
	HippedSpreadMod=10.0
	ShoulderedCasualSpreadMod=550.0
	HippedCasualSpreadMod=1000.0
	
	MinBurstAmount=3
	MaxBurstAmount=6
	BurstWaitTime=1.0
	
	maxRecoilPitch=65
	minRecoilPitch=55
	maxRecoilYaw=50
	minRecoilYaw=-50
	RecoilRate=0.1
	RecoilMaxYawLimit=500
	RecoilMinYawLimit=65035
	RecoilMaxPitchLimit=1500
	RecoilMinPitchLimit=64785
	RecoilISMaxYawLimit=500
	RecoilISMinYawLimit=65035
	RecoilISMaxPitchLimit=350
	RecoilISMinPitchLimit=65035
	RecoilBlendOutRatio=0.75
	PostureHippedRecoilModifer=11.0
	PostureShoulderRecoilModifer=6.0
	RecoilViewRotationScale=0.45
	
	InstantHitDamage(0)=105
	InstantHitDamage(1)=105
	
	InstantHitDamageTypes(0)=class'RSDmgType_Type96Bullet'
	InstantHitDamageTypes(1)=class'RSDmgType_Type96Bullet'
	
	MuzzleFlashSocket=MuzzleFlashSocket
	MuzzleFlashPSCTemplate=ParticleSystem'FX_WEP_Gun_Two.MuzzleFlashes.FX_WEP_Gun_A_MuzzleFlash_1stP_pistols' // Using Pistol flash as this round had a very small muzzle flash
	MuzzleFlashDuration=0.33
	MuzzleFlashLightClass=class'ROGame.RORifleMuzzleFlashLight'
	
	ShellEjectSocket=ShellEjectSocket
	ShellEjectPSCTemplate=ParticleSystem'FX_RS_WEP_Gun.ShellEjects.FX_Wep_A_ShellEject_PhysX_JAP_Type96LMG'
	
	CRef_WeaponFireSndFirstPerson[0]="AUD_RS_Firearms_LMG_Type96.Fire_Surround.LMG_Type96_Fire_Sur_Cue"
	CRef_WeaponFireSndFirstPerson[1]="AUD_RS_Firearms_LMG_Type96.Fire_Surround.LMG_Type96_Fire_Sur_Cue"
	
	bHasIronSights=true;
	
	WeaponPutDownAnim=Type99LMG_putaway
	WeaponEquipAnim=Type99LMG_pullout
	WeaponDownAnim=Type99LMG_Down
	WeaponUpAnim=Type99LMG_Up
	WeaponFireAnim(0)=Type99LMG_shoulder_shoot
	WeaponFireAnim(1)=Type99LMG_shoulder_shoot
	WeaponFireLastAnim=Type99LMG_shoulder_shootLAST
	WeaponFireShoulderedAnim(0)=Type99LMG_shoulder_shoot
	WeaponFireShoulderedAnim(1)=Type99LMG_shoulder_shoot
	WeaponFireLastShoulderedAnim=Type99LMG_shoulder_shootLAST
	WeaponFireSightedAnim(0)=Type99LMG_deploy_shoot
	WeaponFireSightedAnim(1)=Type99LMG_deploy_shoot
	WeaponFireLastSightedAnim=Type99LMG_deploy_shootLAST
	WeaponIdleAnims(0)=Type99LMG_shoulder_idle
	WeaponIdleAnims(1)=Type99LMG_shoulder_idle
	WeaponIdleShoulderedAnims(0)=Type99LMG_shoulder_idle
	WeaponIdleShoulderedAnims(1)=Type99LMG_shoulder_idle
	WeaponIdleSightedAnims(0)=Type99LMG_deploy_idle
	WeaponIdleSightedAnims(1)=Type99LMG_deploy_idle
	WeaponCrawlingAnims(0)=Type99LMG_CrawlF
	WeaponCrawlStartAnim=Type99LMG_Crawl_into
	WeaponCrawlEndAnim=Type99LMG_Crawl_out
	RedeployCrawlingAnims(0)=Type99LMG_Deployed_CrawlF
	WeaponReloadEmptyMagAnim=Type99LMG_reloadempty_crouch
	WeaponReloadNonEmptyMagAnim=Type99LMG_reloadhalf_crouch
	WeaponRestReloadEmptyMagAnim=Type99LMG_reloadempty_rest
	WeaponRestReloadNonEmptyMagAnim=Type99LMG_reloadhalf_rest
	DeployReloadEmptyMagAnim=Type99LMG_deploy_reloadempty
	DeployReloadHalfMagAnim=Type99LMG_deploy_reloadhalf
	WeaponAmmoCheckAnim=Type99LMG_ammocheck_crouch
	WeaponRestAmmoCheckAnim=Type99LMG_ammocheck_rest
	DeployAmmoCheckAnim=Type99LMG_deploy_ammocheck
	WeaponSprintStartAnim=Type99LMG_sprint_into
	WeaponSprintLoopAnim=Type99LMG_Sprint
	WeaponSprintEndAnim=Type99LMG_sprint_out
	Weapon1HSprintStartAnim=Type99LMG_1H_sprint_into
	Weapon1HSprintLoopAnim=Type99LMG_1H_sprint
	Weapon1HSprintEndAnim=Type99LMG_1H_sprint_out
	WeaponMantleOverAnim=Type99LMG_Mantle
	WeaponRestAnim=Type99LMG_rest_idle
	WeaponEquipRestAnim=Type99LMG_pullout_rest
	WeaponPutDownRestAnim=Type99LMG_putaway_rest
	WeaponIdleToRestAnim=Type99LMG_shoulderTOrest
	WeaponRestToIdleAnim=Type99LMG_restTOshoulder
	
	ReloadMagazinEmptyCameraAnim=CameraAnim'1stperson_Cameras.Anim.Camera_MP40_reloadempty'
	
	EquipTime=+1.00
	PutDownTime=+0.75
	
	bDebugWeapon = false
	
	ISFocusDepth=30
	ISFocusBlendRadius=16
	
	AmmoClass=class'RSAmmo_65x50_Type96Mag'
	MaxAmmoCount=31
	bUsesMagazines=true
	InitialNumPrimaryMags=7
	MaxNumPrimaryMags=10
	NumMagsToResupply=3
	bPlusOneLoading=true
	bCanReloadNonEmptyMag=true
	PenetrationDepth=18.0
	MaxPenetrationTests=3
	MaxNumPenetrations=2
	TracerClass=class'Type96BulletTracer'
	TracerFrequency=5
	
	PlayerViewOffset=(X=0.0,Y=8.0,Z=-12) //(X=0.0,Y=8.0,Z=-5)
	ZoomInRotation=(Pitch=-910,Yaw=0,Roll=2910)
	ShoulderedTime=0.35
	ShoulderedPosition=(X=1.0,Y=4.5,Z=-10.0)// (X=0,Y=1,Z=-1.4)
	ShoulderRotation=(Pitch=-500,Yaw=0,Roll=1500)
	IronSightPosition=(X=0,Y=0,Z=-0.06)
	
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
	
	CollisionCheckLength=52.5
	
	DeployedSwayScale=0.05
	
	PitchControlName=PitchControl
	BipodZCheckDist=25.0
	bHasBipod=true
	bCanBlindFire=false
	DeployAnimName=Type99LMG_shoulderTOdeploy
	UnDeployAnimName=Type99LMG_deployTOshoulder
	RestDeployAnimName=Type99LMG_restTOdeploy
	RestUnDeployAnimName=Type99LMG_deployTOrest
	DeployToShuffleAnimName=Type99LMG_Deploy_TO_Shuffle
	ShuffleIdleAnimName=Type99LMG_Shuffle_idle
	ShuffleToDeployAnimName=Type99LMG_Shuffle_TO_Deploy
	RedeployProneTurnAnimName=Type99LMG_prone_turn_TO_Deploy
	UnDeployProneTurnAnimName=Type99LMG_prone_Deploy_TO_turn
	ProneTurningIdleAnimName=Type99LMG_prone_Deploy_turn_idle
	BipodPivotBoneName=Bipod_Pitch
	
	FireCameraAnim[0]=CameraAnim'1stperson_Cameras.Anim.Camera_MG34_Shoot'
	FireCameraAnim[1]=CameraAnim'1stperson_Cameras.Anim.Camera_MG34_Shoot'
	ShakeScaleControlled=0.65
	
	SightRotControlName=Sight_Rotation
	
	SightRanges[0]=(SightRange=100,SightPitch=125,SightPositionOffset=-0.06)
	SightRanges[1]=(SightRange=200,SightPitch=200,SightPositionOffset=-0.095)
	SightRanges[2]=(SightRange=300,SightPitch=300,SightPositionOffset=-0.14)
	SightRanges[3]=(SightRange=400,SightPitch=430,SightPositionOffset=-0.195)
	SightRanges[4]=(SightRange=500,SightPitch=570,SightPositionOffset=-0.26)
	SightRanges[5]=(SightRange=600,SightPitch=720,SightPositionOffset=-0.33)
	SightRanges[6]=(SightRange=700,SightPitch=900,SightPositionOffset=-0.41)
	SightRanges[7]=(SightRange=800,SightPitch=1080,SightPositionOffset=-0.49)
	SightRanges[8]=(SightRange=900,SightPitch=1340,SightPositionOffset=-0.6)
	SightRanges[9]=(SightRange=1000,SightPitch=1580,SightPositionOffset=-0.71)
	
	ROBarrelClass=class'RSMGBarrelType96'
	bTrackBarrelHeat=true
	BarrelHeatBone=Inner_Barrel
	BarrelChangeAnim=Type99LMG_deploy_changebarrel
	InitialBarrels=3
	
	SuppressionPower=10
}
