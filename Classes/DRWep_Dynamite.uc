
class DRWep_Dynamite extends ROSatchelChargeWeapon
	abstract;

var ParticleSystemComponent mLighterFlame;
var name mLighterFlameAttachBone;

var ParticleSystemComponent mFuseSparks;
var name mFuseSparksAttachBone;
var float mFuseSparkDelay;

// var(Sounds) SoundCue BurningFuseSnd;

simulated function bool IsAutoPrime()
{
	return true;
}

simulated function PostBeginPlay()
{
	local SkeletalMeshComponent SKMesh;
	
	Super.PostBeginPlay();
	
	SKMesh = SkeletalMeshComponent(Mesh);
	if(SKMesh != none)
	{
		mLighterFlame.bAutoActivate = false;
		mFuseSparks.bAutoActivate = false;
		mLighterFlame.SetActive(false);
		mFuseSparks.SetActive(false);
		SKMesh.AttachComponent(mLighterFlame, mLighterFlameAttachBone);
		SKMesh.AttachComponent(mFuseSparks, mFuseSparksAttachBone);
	}
}

simulated function PullPinThrow()
{
	super.PullPinThrow();
	
	mLighterFlame.SetActive(true);
	SetTimer(mFuseSparkDelay, false, 'StartFuseSpark');
}

simulated function PullPinToss()
{
	super.PullPinToss();
	
	mLighterFlame.SetActive(true);
	SetTimer(mFuseSparkDelay, false, 'StartFuseSpark');
}

simulated function StartFuseSpark()
{
	mFuseSparks.SetActive(true);
	// StartLoopingFuseSound();
}

simulated function GrenadeWasThrown()
{
	Super.GrenadeWasThrown();
	
	mLighterFlame.SetActive(false);
	mFuseSparks.SetActive(false);
	// EndLoopingFuseSound();
}

// simulated function StartLoopingFuseSound(optional ROPawn POwner)
// {
	// if ( POwner == None )
	// {
		// POwner = ROPawn(Instigator);
	// }
	
	// if (POwner != None)
	// {
		// POwner.SetWeaponAmbientSound(BurningFuseSnd);
	// }
// }

// simulated function EndLoopingFuseSound(optional ROPawn POwner)
// {
	// if ( POwner == None )
	// {
		// POwner = ROPawn(Instigator);
	// }
	
	// if (POwner != None)
	// {
		// POwner.SetWeaponAmbientSound(None);
	// }
// }

defaultproperties
{
	WeaponContentClass(0)="DesertRats.DRWep_Dynamite_ActualContent"
	
	RoleSelectionImage(0)=none
	
	InvIndex=`WI_SATCHEL_UK
	
	InitialNumPrimaryMags=2
	
	Weight=0.0
	PlayerViewOffset=(X=-1.557,Y=2.077,Z=-1.914)
	InstantHitDamageTypes(0)=class'RSDmgType_M37SatchelCharge'
	InstantHitDamageTypes(1)=class'RSDmgType_M37SatchelCharge'
	FuzeLength=10.0
	AmmoClass=class'RSAmmo_M37_SatchelCharge'
	FiringStatesArray(0)=WeaponSingleFiring
	WeaponProjectiles(0)=class'M37SatchelProjectile'
	WeaponThrowAnim(0)=M37Satchel_throw
	WeaponIdleAnims(0)=M37Satchel_idle
	ExplosiveBlindFireRightAnim(0)=M37Satchel_R_throw
	ExplosiveBlindFireLeftAnim(0)=M37Satchel_L_throw
	ExplosiveBlindFireUpAnim(0)=M37Satchel_Up_throw
	FiringStatesArray(ALTERNATE_FIREMODE)=WeaponSingleFiring
	WeaponProjectiles(ALTERNATE_FIREMODE)=class'M37SatchelProjectile'
	WeaponThrowAnim(ALTERNATE_FIREMODE)=M37Satchel_toss
	WeaponIdleAnims(ALTERNATE_FIREMODE)=M37Satchel_idle
	ExplosiveBlindFireRightAnim(ALTERNATE_FIREMODE)=M37Satchel_R_toss
	ExplosiveBlindFireLeftAnim(ALTERNATE_FIREMODE)=M37Satchel_L_throw
	ExplosiveBlindFireUpAnim(ALTERNATE_FIREMODE)=M37Satchel_toss
	WeaponPullPinAnim=M37Satchel_pullpin
	WeaponPutDownAnim=M37Satchel_Putaway
	WeaponEquipAnim=M37Satchel_Pullout
	WeaponDownAnim=M37Satchel_Down
	WeaponUpAnim=M37Satchel_Up
	WeaponCrawlingAnims(0)=M37Satchel_CrawlF
	WeaponCrawlStartAnim=M37Satchel_Crawl_into
	WeaponCrawlEndAnim=M37Satchel_Crawl_out
	WeaponSprintStartAnim=M37Satchel_sprint_into
	WeaponSprintLoopAnim=M37Satchel_Sprint
	WeaponSprintEndAnim=M37Satchel_sprint_out
	WeaponMantleOverAnim=M37Satchel_Mantle
	WeaponBF_LeftPullpin=M37Satchel_L_Pullpin
	WeaponBF_RightPullpin=M37Satchel_R_Pullpin
	WeaponBF_UpPullpin=M37Satchel_Up_Pullpin
	WeaponBF_Rest2LeftReady=M37Satchel_idleTO_L_ready
	WeaponBF_Rest2RightReady=M37Satchel_idleTO_R_ready
	WeaponBF_Rest2UpReady=M37Satchel_idleTO_Up_ready
	WeaponBF_LeftReady2Rest=M37Satchel_L_readyTOidle
	WeaponBF_RightReady2Rest=M37Satchel_R_readyTOidle
	WeaponBF_UpReady2Rest=M37Satchel_Up_readyTOidle
	WeaponBF_LeftReady2Up=M37Satchel_L_ready_toUp_ready
	WeaponBF_LeftReady2Right=M37Satchel_Up_ready_toL_ready
	WeaponBF_UpReady2Left=M37Satchel_Up_ready_toL_ready
	WeaponBF_UpReady2Right=M37Satchel_Up_ready_toR_ready
	WeaponBF_RightReady2Up=M37Satchel_R_ready_toUp_ready
	WeaponBF_RightReady2Left=M37Satchel_R_ready_toL_ready
	WeaponBF_LeftReady2Idle=M37Satchel_L_readyTOidle
	WeaponBF_RightReady2Idle=M37Satchel_R_readyTOidle
	WeaponBF_UpReady2Idle=M37Satchel_Up_readyTOidle
	WeaponBF_Idle2UpReady=M37Satchel_idleTO_Up_ready
	WeaponBF_Idle2LeftReady=M37Satchel_idleTO_L_ready
	WeaponBF_Idle2RightReady=M37Satchel_idleTO_R_ready
	ArmedBF_Rest2LeftReady=M37Satchel_idleHold_TO_L_Hold
	ArmedBF_Rest2RightReady=M37Satchel_idleHold_TO_R_Hold
	ArmedBF_Rest2UpReady=M37Satchel_idleHold_TO_Up_Hold
	ArmedBF_LeftReady2Rest=M37Satchel_L_HoldTOidleHold
	ArmedBF_RightReady2Rest=M37Satchel_R_HoldTOidleHold
	ArmedBF_UpReady2Rest=M37Satchel_Up_HoldTOidleHold
	ArmedBF_LeftReady2Up=M37Satchel_L_Hold_toUp_Hold
	ArmedBF_LeftReady2Right=M37Satchel_LHold_ready_toR_Hold
	ArmedBF_UpReady2Left=M37Satchel_Up_Hold_toL_Hold
	ArmedBF_UpReady2Right=M37Satchel_Up_Hold_toR_Hold
	ArmedBF_RightReady2Up=M37Satchel_R_Hold_toUp_Hold
	ArmedBF_RightReady2Left=M37Satchel_R_Hold_toL_Hold
	ArmedBF_LeftReady2Idle=M37Satchel_L_HoldTOidleHold
	ArmedBF_RightReady2Idle=M37Satchel_R_HoldTOidleHold
	ArmedBF_UpReady2Idle=M37Satchel_Up_HoldTOidleHold
	ArmedBF_Idle2UpReady=M37Satchel_idleHold_TO_Up_Hold
	ArmedBF_Idle2LeftReady=M37Satchel_idleHold_TO_L_Hold
	ArmedBF_Idle2RightReady=M37Satchel_idleHold_TO_R_Hold
	WeaponMeleeAnims(0)=M37Satchel_Bash
	WeaponMeleeHardAnim=M37Satchel_BashHard
	MeleePullbackAnim=M37Satchel_Pullback
	MeleeHoldAnim=M37Satchel_Pullback_Hold
	
	Begin Object class=ParticleSystemComponent Name=LighterFlame
	End Object
	Components.Add(LighterFlame)
	mLighterFlame=LighterFlame
	
	Begin Object class=ParticleSystemComponent Name=FuseSparks
	End Object
	Components.Add(FuseSparks)
	mFuseSparks=FuseSparks
	
	// BurningFuseSnd=SoundCue'AUD_RS_Weapon_Foley.Grenade.Grenade_Fuse_Burn_LP_Cue'
}
