.class public Lcom/afwsamples/testdpc/util/MainThreadExecutor;
.super Lcom/afwsamples/testdpc/util/LooperExecutor;
.source "MainThreadExecutor.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/util/LooperExecutor;-><init>(Landroid/os/Looper;)V

    .line 30
    return-void
.end method
