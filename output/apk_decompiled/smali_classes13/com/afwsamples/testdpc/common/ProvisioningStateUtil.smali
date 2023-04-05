.class public Lcom/afwsamples/testdpc/common/ProvisioningStateUtil;
.super Ljava/lang/Object;
.source "ProvisioningStateUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDeviceProvisioned(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 54
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isDeviceUnprovisionedAndNoDeviceOwner(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-static {p0}, Lcom/afwsamples/testdpc/common/ProvisioningStateUtil;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    invoke-static {p0}, Lcom/afwsamples/testdpc/common/ProvisioningStateUtil;->isManaged(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isManaged(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 73
    const-string v5, "device_policy"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 76
    .local v3, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v2

    .line 77
    .local v2, "admins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-nez v2, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v4

    .line 78
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 79
    .local v0, "admin":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "adminPackageName":Ljava/lang/String;
    invoke-virtual {v3, v1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 81
    invoke-virtual {v3, v1}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 82
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static isManagedByTestDPC(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 63
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 66
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isProvisioningAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 96
    sget v2, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    .line 97
    const-string v1, "device_policy"

    .line 98
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 99
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->isProvisioningAllowed(Ljava/lang/String;)Z

    move-result v1

    .line 108
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_0
    :goto_0
    return v1

    .line 101
    :cond_1
    const-string v2, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    sget v2, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v3, 0x17

    if-ne v2, v3, :cond_0

    .line 103
    invoke-static {p0}, Lcom/afwsamples/testdpc/common/ProvisioningStateUtil;->isDeviceUnprovisionedAndNoDeviceOwner(Landroid/content/Context;)Z

    move-result v1

    goto :goto_0

    .line 105
    :cond_2
    const-string v2, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    const/4 v1, 0x1

    goto :goto_0
.end method
