.class Landroid/support/v4/media/session/MediaSessionCompatApi22;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi22.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x16
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static setRatingType(Ljava/lang/Object;I)V
    .locals 0
    .param p0, "sessionObj"    # Ljava/lang/Object;
    .param p1, "type"    # I

    .prologue
    .line 26
    check-cast p0, Landroid/media/session/MediaSession;

    .end local p0    # "sessionObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/session/MediaSession;->setRatingType(I)V

    .line 27
    return-void
.end method
