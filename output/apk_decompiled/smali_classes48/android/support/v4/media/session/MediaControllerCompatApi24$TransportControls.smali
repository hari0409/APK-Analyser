.class public Landroid/support/v4/media/session/MediaControllerCompatApi24$TransportControls;
.super Ljava/lang/Object;
.source "MediaControllerCompatApi24.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompatApi24;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransportControls"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static prepare(Ljava/lang/Object;)V
    .locals 0
    .param p0, "controlsObj"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p0, Landroid/media/session/MediaController$TransportControls;

    .end local p0    # "controlsObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->prepare()V

    .line 31
    return-void
.end method

.method public static prepareFromMediaId(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "controlsObj"    # Ljava/lang/Object;
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 34
    check-cast p0, Landroid/media/session/MediaController$TransportControls;

    .end local p0    # "controlsObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 35
    return-void
.end method

.method public static prepareFromSearch(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "controlsObj"    # Ljava/lang/Object;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 38
    check-cast p0, Landroid/media/session/MediaController$TransportControls;

    .end local p0    # "controlsObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 39
    return-void
.end method

.method public static prepareFromUri(Ljava/lang/Object;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "controlsObj"    # Ljava/lang/Object;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 42
    check-cast p0, Landroid/media/session/MediaController$TransportControls;

    .end local p0    # "controlsObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 43
    return-void
.end method
