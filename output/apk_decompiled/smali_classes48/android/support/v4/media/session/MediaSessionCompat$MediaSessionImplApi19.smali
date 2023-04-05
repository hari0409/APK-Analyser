.class Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;
.super Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18;
.source "MediaSessionCompat.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaSessionImplApi19"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "mbrComponent"    # Landroid/content/ComponentName;
    .param p4, "mbrIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 3300
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    .line 3301
    return-void
.end method


# virtual methods
.method buildRccMetadata(Landroid/os/Bundle;)Landroid/media/RemoteControlClient$MetadataEditor;
    .locals 9
    .param p1, "metadata"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v4, 0x0

    const v8, 0x10000001

    .line 3335
    invoke-super {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18;->buildRccMetadata(Landroid/os/Bundle;)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v2

    .line 3336
    .local v2, "editor":Landroid/media/RemoteControlClient$MetadataEditor;
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-nez v3, :cond_2

    move-wide v0, v4

    .line 3337
    .local v0, "actions":J
    :goto_0
    const-wide/16 v6, 0x80

    and-long/2addr v6, v0

    cmp-long v3, v6, v4

    if-eqz v3, :cond_0

    .line 3338
    invoke-virtual {v2, v8}, Landroid/media/RemoteControlClient$MetadataEditor;->addEditableKey(I)V

    .line 3341
    :cond_0
    if-nez p1, :cond_3

    .line 3358
    :cond_1
    :goto_1
    return-object v2

    .line 3336
    .end local v0    # "actions":J
    :cond_2
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v3}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v0

    goto :goto_0

    .line 3344
    .restart local v0    # "actions":J
    :cond_3
    const-string v3, "android.media.metadata.YEAR"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3345
    const/16 v3, 0x8

    const-string v4, "android.media.metadata.YEAR"

    .line 3346
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 3345
    invoke-virtual {v2, v3, v4, v5}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 3348
    :cond_4
    const-string v3, "android.media.metadata.RATING"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3350
    const/16 v3, 0x65

    const-string v4, "android.media.metadata.RATING"

    .line 3351
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .line 3350
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetadataEditor;->putObject(ILjava/lang/Object;)Landroid/media/MediaMetadataEditor;

    .line 3353
    :cond_5
    const-string v3, "android.media.metadata.USER_RATING"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3355
    const-string v3, "android.media.metadata.USER_RATING"

    .line 3356
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 3355
    invoke-virtual {v2, v8, v3}, Landroid/media/MediaMetadataEditor;->putObject(ILjava/lang/Object;)Landroid/media/MediaMetadataEditor;

    goto :goto_1
.end method

.method getRccTransportControlFlagsFromActions(J)I
    .locals 7
    .param p1, "actions"    # J

    .prologue
    .line 3326
    invoke-super {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18;->getRccTransportControlFlagsFromActions(J)I

    move-result v0

    .line 3327
    .local v0, "transportControlFlags":I
    const-wide/16 v2, 0x80

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 3328
    or-int/lit16 v0, v0, 0x200

    .line 3330
    :cond_0
    return v0
.end method

.method public setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "callback"    # Landroid/support/v4/media/session/MediaSessionCompat$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 3305
    invoke-super {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi18;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V

    .line 3306
    if-nez p1, :cond_0

    .line 3307
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;->mRcc:Landroid/media/RemoteControlClient;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/RemoteControlClient;->setMetadataUpdateListener(Landroid/media/RemoteControlClient$OnMetadataUpdateListener;)V

    .line 3322
    :goto_0
    return-void

    .line 3309
    :cond_0
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19$1;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19$1;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;)V

    .line 3320
    .local v0, "listener":Landroid/media/RemoteControlClient$OnMetadataUpdateListener;
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;->mRcc:Landroid/media/RemoteControlClient;

    invoke-virtual {v1, v0}, Landroid/media/RemoteControlClient;->setMetadataUpdateListener(Landroid/media/RemoteControlClient$OnMetadataUpdateListener;)V

    goto :goto_0
.end method
