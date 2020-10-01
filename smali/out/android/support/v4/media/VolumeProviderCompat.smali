.class public abstract Landroid/support/v4/media/VolumeProviderCompat;
.super Ljava/lang/Object;
.source "VolumeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/VolumeProviderCompat$Callback;,
        Landroid/support/v4/media/VolumeProviderCompat$ControlType;
    }
.end annotation


# static fields
.field public static final VOLUME_CONTROL_ABSOLUTE:I = 0x2

.field public static final VOLUME_CONTROL_FIXED:I = 0x0

.field public static final VOLUME_CONTROL_RELATIVE:I = 0x1


# instance fields
.field private mCallback:Landroid/support/v4/media/VolumeProviderCompat$Callback;

.field private final mControlType:I

.field private mCurrentVolume:I

.field private final mMaxVolume:I

.field private mVolumeProviderObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(III)V
    .registers 4
    .param p1, "volumeControl"    # I
    .param p2, "maxVolume"    # I
    .param p3, "currentVolume"    # I

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Landroid/support/v4/media/VolumeProviderCompat;->mControlType:I

    .line 83
    iput p2, p0, Landroid/support/v4/media/VolumeProviderCompat;->mMaxVolume:I

    .line 84
    iput p3, p0, Landroid/support/v4/media/VolumeProviderCompat;->mCurrentVolume:I

    .line 85
    return-void
.end method


# virtual methods
.method public final getCurrentVolume()I
    .registers 2

    .prologue
    .line 93
    iget v0, p0, Landroid/support/v4/media/VolumeProviderCompat;->mCurrentVolume:I

    return v0
.end method

.method public final getMaxVolume()I
    .registers 2

    .prologue
    .line 112
    iget v0, p0, Landroid/support/v4/media/VolumeProviderCompat;->mMaxVolume:I

    return v0
.end method

.method public final getVolumeControl()I
    .registers 2

    .prologue
    .line 103
    iget v0, p0, Landroid/support/v4/media/VolumeProviderCompat;->mControlType:I

    return v0
.end method

.method public getVolumeProvider()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 167
    iget-object v0, p0, Landroid/support/v4/media/VolumeProviderCompat;->mVolumeProviderObj:Ljava/lang/Object;

    if-nez v0, :cond_a

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_d

    .line 168
    :cond_a
    iget-object v0, p0, Landroid/support/v4/media/VolumeProviderCompat;->mVolumeProviderObj:Ljava/lang/Object;

    .line 184
    :goto_c
    return-object v0

    .line 171
    :cond_d
    iget v0, p0, Landroid/support/v4/media/VolumeProviderCompat;->mControlType:I

    iget v1, p0, Landroid/support/v4/media/VolumeProviderCompat;->mMaxVolume:I

    iget v2, p0, Landroid/support/v4/media/VolumeProviderCompat;->mCurrentVolume:I

    new-instance v3, Landroid/support/v4/media/VolumeProviderCompat$1;

    invoke-direct {v3, p0}, Landroid/support/v4/media/VolumeProviderCompat$1;-><init>(Landroid/support/v4/media/VolumeProviderCompat;)V

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/media/VolumeProviderCompatApi21;->createVolumeProvider(IIILandroid/support/v4/media/VolumeProviderCompatApi21$Delegate;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/VolumeProviderCompat;->mVolumeProviderObj:Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Landroid/support/v4/media/VolumeProviderCompat;->mVolumeProviderObj:Ljava/lang/Object;

    goto :goto_c
.end method

.method public onAdjustVolume(I)V
    .registers 2
    .param p1, "direction"    # I

    .prologue
    .line 146
    return-void
.end method

.method public onSetVolumeTo(I)V
    .registers 2
    .param p1, "volume"    # I

    .prologue
    .line 138
    return-void
.end method

.method public setCallback(Landroid/support/v4/media/VolumeProviderCompat$Callback;)V
    .registers 2
    .param p1, "callback"    # Landroid/support/v4/media/VolumeProviderCompat$Callback;

    .prologue
    .line 155
    iput-object p1, p0, Landroid/support/v4/media/VolumeProviderCompat;->mCallback:Landroid/support/v4/media/VolumeProviderCompat$Callback;

    .line 156
    return-void
.end method

.method public final setCurrentVolume(I)V
    .registers 4
    .param p1, "currentVolume"    # I

    .prologue
    .line 122
    iput p1, p0, Landroid/support/v4/media/VolumeProviderCompat;->mCurrentVolume:I

    .line 123
    invoke-virtual {p0}, Landroid/support/v4/media/VolumeProviderCompat;->getVolumeProvider()Ljava/lang/Object;

    move-result-object v0

    .line 124
    .local v0, "volumeProviderObj":Ljava/lang/Object;
    if-eqz v0, :cond_b

    .line 125
    invoke-static {v0, p1}, Landroid/support/v4/media/VolumeProviderCompatApi21;->setCurrentVolume(Ljava/lang/Object;I)V

    .line 127
    :cond_b
    iget-object v1, p0, Landroid/support/v4/media/VolumeProviderCompat;->mCallback:Landroid/support/v4/media/VolumeProviderCompat$Callback;

    if-eqz v1, :cond_14

    .line 128
    iget-object v1, p0, Landroid/support/v4/media/VolumeProviderCompat;->mCallback:Landroid/support/v4/media/VolumeProviderCompat$Callback;

    invoke-virtual {v1, p0}, Landroid/support/v4/media/VolumeProviderCompat$Callback;->onVolumeChanged(Landroid/support/v4/media/VolumeProviderCompat;)V

    .line 130
    :cond_14
    return-void
.end method
