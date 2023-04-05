.class public Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsManagingPackageFragment;
.super Lcom/afwsamples/testdpc/common/SelectAppFragment;
.source "AppRestrictionsManagingPackageFragment.java"


# instance fields
.field private mDpm:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/SelectAppFragment;-><init>()V

    return-void
.end method

.method private getApplicationRestrictionsManagingPackage()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsManagingPackageFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 102
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsManagingPackageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getApplicationRestrictionsManagingPackageWithProxy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsManagingPackageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxyHandler;->getApplicationRestrictionsManagingPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setApplicationRestrictionsManagingPackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsManagingPackageFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 88
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsManagingPackageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    .line 87
    invoke-virtual {v1, v2, p1}, Landroid/app/admin/DevicePolicyManager;->setApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setApplicationRestrictionsManagingPackageWithProxy(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsManagingPackageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 95
    invoke-static {v0, p1}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxyHandler;->setApplicationRestrictionsManagingPackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    return-void
.end method


# virtual methods
.method protected clearSelectedPackage()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsManagingPackageFragment;->setSelectedPackage(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method protected getSelectedPackage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsManagingPackageFragment;->getApplicationRestrictionsManagingPackage()Ljava/lang/String;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsManagingPackageFragment;->getApplicationRestrictionsManagingPackageWithProxy()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/SelectAppFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsManagingPackageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsManagingPackageFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 49
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Lcom/afwsamples/testdpc/common/SelectAppFragment;->onResume()V

    .line 54
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsManagingPackageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0f0069

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 55
    return-void
.end method

.method protected setSelectedPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const/4 p1, 0x0

    .line 63
    :cond_0
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 64
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsManagingPackageFragment;->setApplicationRestrictionsManagingPackage(Ljava/lang/String;)V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsManagingPackageFragment;->setApplicationRestrictionsManagingPackageWithProxy(Ljava/lang/String;)V

    goto :goto_0
.end method
