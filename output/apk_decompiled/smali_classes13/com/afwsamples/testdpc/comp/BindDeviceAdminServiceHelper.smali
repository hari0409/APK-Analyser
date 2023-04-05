.class public Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;
.super Ljava/lang/Object;
.source "BindDeviceAdminServiceHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BindDeviceAdminService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDpm:Landroid/app/admin/DevicePolicyManager;

.field private final mServiceIntent:Landroid/content/Intent;

.field private final mServiceInterfaceConverter:Lcom/afwsamples/testdpc/comp/ServiceInterfaceConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/afwsamples/testdpc/comp/ServiceInterfaceConverter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mTargetUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/afwsamples/testdpc/comp/ServiceInterfaceConverter;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "targetUserHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;",
            "Lcom/afwsamples/testdpc/comp/ServiceInterfaceConverter",
            "<TT;>;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;, "Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper<TT;>;"
    .local p2, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    .local p3, "serviceInterfaceConverter":Lcom/afwsamples/testdpc/comp/ServiceInterfaceConverter;, "Lcom/afwsamples/testdpc/comp/ServiceInterfaceConverter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->mContext:Landroid/content/Context;

    .line 58
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 59
    iput-object p3, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->mServiceInterfaceConverter:Lcom/afwsamples/testdpc/comp/ServiceInterfaceConverter;

    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->mServiceIntent:Landroid/content/Intent;

    .line 61
    iput-object p4, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->mTargetUserHandle:Landroid/os/UserHandle;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;)Lcom/afwsamples/testdpc/comp/ServiceInterfaceConverter;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->mServiceInterfaceConverter:Lcom/afwsamples/testdpc/comp/ServiceInterfaceConverter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public crossUserCall(Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;, "Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper<TT;>;"
    .local p1, "listener":Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener;, "Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener<TT;>;"
    new-instance v3, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper$1;

    invoke-direct {v3, p0, p1}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper$1;-><init>(Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener;)V

    .line 94
    .local v3, "serviceConnection":Landroid/content/ServiceConnection;
    :try_start_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->mContext:Landroid/content/Context;

    .line 95
    invoke-static {v1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->mServiceIntent:Landroid/content/Intent;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->mTargetUserHandle:Landroid/os/UserHandle;

    .line 94
    invoke-virtual/range {v0 .. v5}, Landroid/app/admin/DevicePolicyManager;->bindDeviceAdminServiceAsUser(Landroid/content/ComponentName;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 102
    :goto_0
    return v0

    .line 100
    :catch_0
    move-exception v6

    .line 101
    .local v6, "e":Ljava/lang/RuntimeException;
    :goto_1
    const-string v0, "BindDeviceAdminService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot bind to user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->mTargetUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    const/4 v0, 0x0

    goto :goto_0

    .line 100
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v6

    goto :goto_1
.end method
