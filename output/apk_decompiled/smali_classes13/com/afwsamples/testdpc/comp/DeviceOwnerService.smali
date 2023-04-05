.class public Lcom/afwsamples/testdpc/comp/DeviceOwnerService;
.super Landroid/app/Service;
.source "DeviceOwnerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/comp/DeviceOwnerService$DeviceOwnerServiceImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceOwnerService"


# instance fields
.field private mBinder:Landroid/os/Binder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/DeviceOwnerService;->mBinder:Landroid/os/Binder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/afwsamples/testdpc/comp/DeviceOwnerService$DeviceOwnerServiceImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/afwsamples/testdpc/comp/DeviceOwnerService$DeviceOwnerServiceImpl;-><init>(Landroid/content/Context;Lcom/afwsamples/testdpc/comp/DeviceOwnerService$1;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/comp/DeviceOwnerService;->mBinder:Landroid/os/Binder;

    .line 41
    return-void
.end method
