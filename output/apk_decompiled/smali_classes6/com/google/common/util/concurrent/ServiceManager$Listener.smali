.class public abstract Lcom/google/common/util/concurrent/ServiceManager$Listener;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/google/common/util/concurrent/Service;)V
    .locals 0
    .param p1, "service"    # Lcom/google/common/util/concurrent/Service;

    .prologue
    .line 183
    return-void
.end method

.method public healthy()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public stopped()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method
