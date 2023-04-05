.class public Lcom/afwsamples/testdpc/policy/ManageKeepUninstalledPackagesFragment;
.super Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;
.source "ManageKeepUninstalledPackagesFragment.java"


# instance fields
.field private mAdminComponent:Landroid/content/ComponentName;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 41
    const v0, 0x7f0f0196

    const v1, 0x7f0f0148

    const v2, 0x7f0f0224

    invoke-direct {p0, v0, v1, v2}, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;-><init>(III)V

    .line 43
    return-void
.end method


# virtual methods
.method protected loadItems()Ljava/util/Collection;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/ManageKeepUninstalledPackagesFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/ManageKeepUninstalledPackagesFragment;->mAdminComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getKeepUninstalledPackages(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 58
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .end local v0    # "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/ManageKeepUninstalledPackagesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/ManageKeepUninstalledPackagesFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 51
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/ManageKeepUninstalledPackagesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/ManageKeepUninstalledPackagesFragment;->mAdminComponent:Landroid/content/ComponentName;

    .line 52
    return-void
.end method

.method protected saveItems(Ljava/util/List;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/ManageKeepUninstalledPackagesFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/ManageKeepUninstalledPackagesFragment;->mAdminComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 65
    return-void
.end method
