.class public Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;
.super Landroid/app/Fragment;
.source "CrossProfileAppsAllowlistFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1e
.end annotation


# static fields
.field private static final DELIMITER:Ljava/lang/String; = "\n"


# instance fields
.field private mAddButton:Landroid/widget/Button;

.field private mAdminComponent:Landroid/content/ComponentName;

.field private mAppNameEditText:Landroid/widget/EditText;

.field private mAppsList:Landroid/widget/TextView;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mInflatedView:Landroid/view/View;

.field private mRemoveButton:Landroid/widget/Button;

.field private mResetButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private addApp(Ljava/lang/String;)V
    .locals 3
    .param p1, "app"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v1, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mAdminComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getCrossProfilePackages(Landroid/content/ComponentName;)Ljava/util/Set;

    move-result-object v0

    .line 91
    .local v0, "currentApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v1, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mAdminComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Landroid/app/admin/DevicePolicyManager;->setCrossProfilePackages(Landroid/content/ComponentName;Ljava/util/Set;)V

    .line 93
    invoke-direct {p0}, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->updateCrossProfileAppsList()V

    .line 94
    return-void
.end method

.method private removeApp(Ljava/lang/String;)V
    .locals 3
    .param p1, "app"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v1, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mAdminComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getCrossProfilePackages(Landroid/content/ComponentName;)Ljava/util/Set;

    move-result-object v0

    .line 98
    .local v0, "currentApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 99
    iget-object v1, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mAdminComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Landroid/app/admin/DevicePolicyManager;->setCrossProfilePackages(Landroid/content/ComponentName;Ljava/util/Set;)V

    .line 100
    invoke-direct {p0}, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->updateCrossProfileAppsList()V

    .line 101
    return-void
.end method

.method private resetApps()V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mAdminComponent:Landroid/content/ComponentName;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->setCrossProfilePackages(Landroid/content/ComponentName;Ljava/util/Set;)V

    .line 86
    invoke-direct {p0}, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->updateCrossProfileAppsList()V

    .line 87
    return-void
.end method

.method private setOnClickListeners()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mResetButton:Landroid/widget/Button;

    new-instance v1, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment$$Lambda$0;-><init>(Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mAddButton:Landroid/widget/Button;

    new-instance v1, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment$$Lambda$1;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment$$Lambda$1;-><init>(Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mRemoveButton:Landroid/widget/Button;

    new-instance v1, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment$$Lambda$2;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment$$Lambda$2;-><init>(Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method

.method private updateCrossProfileAppsList()V
    .locals 3

    .prologue
    .line 104
    iget-object v1, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mAdminComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getCrossProfilePackages(Landroid/content/ComponentName;)Ljava/util/Set;

    move-result-object v0

    .line 105
    .local v0, "currentApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mAppsList:Landroid/widget/TextView;

    const v2, 0x7f0f00b3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mAppsList:Landroid/widget/TextView;

    const-string v2, "\n"

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method final synthetic lambda$setOnClickListeners$209$CrossProfileAppsAllowlistFragment(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->resetApps()V

    return-void
.end method

.method final synthetic lambda$setOnClickListeners$210$CrossProfileAppsAllowlistFragment(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mAppNameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->addApp(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic lambda$setOnClickListeners$211$CrossProfileAppsAllowlistFragment(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mAppNameEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->removeApp(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 60
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mAdminComponent:Landroid/content/ComponentName;

    .line 61
    const v0, 0x7f0b002c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mInflatedView:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mInflatedView:Landroid/view/View;

    const v1, 0x7f09007c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mAppNameEditText:Landroid/widget/EditText;

    .line 65
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mInflatedView:Landroid/view/View;

    const v1, 0x7f09007e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mResetButton:Landroid/widget/Button;

    .line 66
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mInflatedView:Landroid/view/View;

    const v1, 0x7f09007b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mAddButton:Landroid/widget/Button;

    .line 67
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mInflatedView:Landroid/view/View;

    const v1, 0x7f09007d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mRemoveButton:Landroid/widget/Button;

    .line 68
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mInflatedView:Landroid/view/View;

    const v1, 0x7f090082

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mAppsList:Landroid/widget/TextView;

    .line 70
    invoke-direct {p0}, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->setOnClickListeners()V

    .line 71
    invoke-direct {p0}, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->updateCrossProfileAppsList()V

    .line 73
    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsAllowlistFragment;->mInflatedView:Landroid/view/View;

    return-object v0
.end method
