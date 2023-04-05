.class public Lcom/afwsamples/testdpc/provision/ProvisioningUtil;
.super Ljava/lang/Object;
.source "ProvisioningUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableProfile(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 30
    .local v1, "manager":Landroid/app/admin/DevicePolicyManager;
    invoke-static {p0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    .line 32
    .local v0, "componentName":Landroid/content/ComponentName;
    const v2, 0x7f0f0267

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/app/admin/DevicePolicyManager;->setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 34
    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManager;->setProfileEnabled(Landroid/content/ComponentName;)V

    .line 35
    return-void
.end method
