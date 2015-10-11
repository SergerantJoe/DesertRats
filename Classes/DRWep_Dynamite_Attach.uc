
class DRWep_Dynamite_Attach extends ROWeaponAttachmentSatchel;

var ParticleSystemComponent mFuseSparks;
var name mFuseSparksAttachBone;
var float mFuseSparkDelay;

simulated function PostBeginPlay()
{
	Super.PostBeginPlay();
	
	if( Mesh != none )
	{
		mFuseSparks.bAutoActivate = false;
		mFuseSparks.SetActive(false);
		Mesh.AttachComponent(mFuseSparks, mFuseSparksAttachBone);
	}
}

simulated function ThirdPersonFireEffects(vector HitLocation)
{
	super.ThirdPersonFireEffects(HitLocation);
	
	SetTimer(mFuseSparkDelay, false, 'StartFuseSpark');
}

simulated event StopThirdPersonFireEffects()
{
	super.StopThirdPersonFireEffects();
	
	mFuseSparks.SetActive(false);
}

simulated function StartFuseSpark()
{
	mFuseSparks.SetActive(true);
}

DefaultProperties
{
	ThirdPersonHandsAnim=Soviet_Satchel_HandPose
	IKProfileName=F1
	
	Begin Object Name=SkeletalMeshComponent0
		SkeletalMesh=SkeletalMesh'WP_RS_3rd_Master.Mesh.M-37_Satchel_3rd_Master'
		CullDistance=5000
	End Object
	
	WeaponClass=class'ROWeap_F1_Grenade'
	
	Begin Object class=ParticleSystemComponent Name=FuseSparks
		bAutoActivate=false
		Template=ParticleSystem'FX_RS_Explosions.Satchel.FX_RS_Fuse'
		Scale=1.5
		Translation=(X=0.966000,Y=-0.662000,Z=7.100000)
		Rotation=(Pitch=8738,Yaw=22209,Roll=28763)
	End Object
	Components.Add(FuseSparks)
	mFuseSparks=FuseSparks
	mFuseSparksAttachBone=3rd_M-37_Satchel
	mFuseSparkDelay=0.5
}
