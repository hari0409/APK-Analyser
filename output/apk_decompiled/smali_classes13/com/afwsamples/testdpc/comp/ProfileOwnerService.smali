.class public Lcom/afwsamples/testdpc/comp/ProfileOwnerService;
.super Landroid/app/Service;
.source "ProfileOwnerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/comp/ProfileOwnerService$ProfileOwnerServiceImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ProfileOwnerService"


# instance fields
.field private mBinder:Landroid/os/Binder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 66
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/ProfileOwnerService;->mBinder:Landroid/os/Binder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 57
    new-instance v0, Lcom/afwsamples/testdpc/comp/ProfileOwnerService$ProfileOwnerServiceImpl;

    invoke-direct {v0, p0}, Lcom/afwsamples/testdpc/comp/ProfileOwnerService$ProfileOwnerServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/comp/ProfileOwnerService;->mBinder:Landroid/os/Binder;

    .line 58
    return-void
.end method
