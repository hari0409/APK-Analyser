.class public Lcom/afwsamples/testdpc/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private createBindDeviceOwnerServiceHelper(Landroid/content/Context;Landroid/os/UserHandle;)Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "targetUserHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            ")",
            "Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper",
            "<",
            "Lcom/afwsamples/testdpc/comp/IDeviceOwnerService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;

    const-class v1, Lcom/afwsamples/testdpc/comp/DeviceOwnerService;

    sget-object v2, Lcom/afwsamples/testdpc/BootReceiver$$Lambda$1;->$instance:Lcom/afwsamples/testdpc/comp/ServiceInterfaceConverter;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/afwsamples/testdpc/comp/ServiceInterfaceConverter;Landroid/os/UserHandle;)V

    return-object v0
.end method

.method static final synthetic lambda$onReceive$97$BootReceiver(Lcom/afwsamples/testdpc/comp/IDeviceOwnerService;)V
    .locals 1
    .param p0, "service"    # Lcom/afwsamples/testdpc/comp/IDeviceOwnerService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/afwsamples/testdpc/comp/IDeviceOwnerService;->notifyUserIsUnlocked(Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    invoke-static {p1}, Lcom/afwsamples/testdpc/common/Util;->isProfileOwner(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 36
    invoke-static {p1}, Lcom/afwsamples/testdpc/common/Util;->getBindDeviceAdminTargetUsers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    invoke-static {p1}, Lcom/afwsamples/testdpc/common/Util;->getBindDeviceAdminTargetUsers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 43
    .local v2, "targetUser":Landroid/os/UserHandle;
    invoke-direct {p0, p1, v2}, Lcom/afwsamples/testdpc/BootReceiver;->createBindDeviceOwnerServiceHelper(Landroid/content/Context;Landroid/os/UserHandle;)Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;

    move-result-object v1

    .line 44
    .local v1, "helper":Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;, "Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper<Lcom/afwsamples/testdpc/comp/IDeviceOwnerService;>;"
    sget-object v3, Lcom/afwsamples/testdpc/BootReceiver$$Lambda$0;->$instance:Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener;

    invoke-virtual {v1, v3}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->crossUserCall(Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener;)Z

    goto :goto_0
.end method
