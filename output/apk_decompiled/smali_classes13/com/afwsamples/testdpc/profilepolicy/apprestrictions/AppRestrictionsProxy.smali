.class public Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxy;
.super Landroid/app/Service;
.source "AppRestrictionsProxy.java"


# instance fields
.field private mMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxy;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxyHandler;

    .line 46
    invoke-static {p0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxyHandler;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxy;->mMessenger:Landroid/os/Messenger;

    .line 47
    return-void
.end method
