.class Landroid/support/v7/app/NotificationCompatImpl21;
.super Ljava/lang/Object;
.source "NotificationCompatImpl21.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMediaStyle(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;[ILjava/lang/Object;)V
    .registers 5
    .param p0, "b"    # Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
    .param p1, "actionsToShowInCompact"    # [I
    .param p2, "token"    # Ljava/lang/Object;

    .prologue
    .line 32
    new-instance v0, Landroid/app/Notification$MediaStyle;

    invoke-interface {p0}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$MediaStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 33
    .local v0, "style":Landroid/app/Notification$MediaStyle;
    if-eqz p1, :cond_e

    .line 34
    invoke-virtual {v0, p1}, Landroid/app/Notification$MediaStyle;->setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;

    .line 36
    :cond_e
    if-eqz p2, :cond_15

    .line 37
    check-cast p2, Landroid/media/session/MediaSession$Token;

    .end local p2    # "token":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Landroid/app/Notification$MediaStyle;->setMediaSession(Landroid/media/session/MediaSession$Token;)Landroid/app/Notification$MediaStyle;

    .line 39
    :cond_15
    return-void
.end method
