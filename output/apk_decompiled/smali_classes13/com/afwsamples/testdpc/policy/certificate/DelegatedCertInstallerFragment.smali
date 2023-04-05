.class public Lcom/afwsamples/testdpc/policy/certificate/DelegatedCertInstallerFragment;
.super Lcom/afwsamples/testdpc/common/SelectAppFragment;
.source "DelegatedCertInstallerFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# instance fields
.field private mDpm:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/SelectAppFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected clearSelectedPackage()V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/certificate/DelegatedCertInstallerFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/certificate/DelegatedCertInstallerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method protected getSelectedPackage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/certificate/DelegatedCertInstallerFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/certificate/DelegatedCertInstallerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCertInstallerPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/SelectAppFragment;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/certificate/DelegatedCertInstallerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/certificate/DelegatedCertInstallerFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 43
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Lcom/afwsamples/testdpc/common/SelectAppFragment;->onResume()V

    .line 48
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/certificate/DelegatedCertInstallerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0f01c1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 49
    return-void
.end method

.method protected setSelectedPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/certificate/DelegatedCertInstallerFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/certificate/DelegatedCertInstallerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 54
    return-void
.end method
