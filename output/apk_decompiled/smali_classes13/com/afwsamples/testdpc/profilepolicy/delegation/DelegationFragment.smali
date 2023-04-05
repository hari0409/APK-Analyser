.class public Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;
.super Lcom/afwsamples/testdpc/common/ManageAppFragment;
.source "DelegationFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mDelegations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;",
            ">;"
        }
    .end annotation
.end field

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mIsDeviceOrProfileOwner:Z

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/ManageAppFragment;-><init>()V

    .line 197
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private isDelegatedApp(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readScopesFromDpm(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 111
    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-boolean v2, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mIsDeviceOrProfileOwner:Z

    if-eqz v2, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    .line 111
    :goto_0
    invoke-virtual {v3, v2, p1}, Landroid/app/admin/DevicePolicyManager;->getDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 114
    .local v1, "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mDelegations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;

    .line 118
    .local v0, "delegationScope":Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;
    iget-object v3, v0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;->scope:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;->granted:Z

    goto :goto_1

    .line 112
    .end local v0    # "delegationScope":Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;
    .end local v1    # "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 120
    .restart local v1    # "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method private readScopesFromUi()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v2, "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mDelegations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 130
    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mAppListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f09006a

    .line 131
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 132
    .local v0, "checkBox":Landroid/widget/CheckBox;
    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mDelegations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    iput-boolean v4, v3, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;->granted:Z

    .line 134
    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mDelegations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;

    iget-boolean v3, v3, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;->granted:Z

    if-eqz v3, :cond_0

    .line 135
    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mDelegations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;

    iget-object v3, v3, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;->scope:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v0    # "checkBox":Landroid/widget/CheckBox;
    :cond_1
    return-object v2
.end method


# virtual methods
.method protected addNewRow()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method protected createListAdapter()Landroid/widget/BaseAdapter;
    .locals 4

    .prologue
    .line 182
    new-instance v0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationScopesArrayAdapter;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mDelegations:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationScopesArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-object v0
.end method

.method protected filterApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mIsDeviceOrProfileOwner:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/ManageAppFragment;->filterApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    .line 101
    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected loadDefault()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 60
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/ManageAppFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v7, "device_policy"

    invoke-virtual {v4, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    iput-object v4, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 62
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mPackageName:Ljava/lang/String;

    .line 63
    iget-object v4, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->isDelegatedApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    invoke-static {v6}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;->defaultDelegationScopes(Z)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mDelegations:Ljava/util/List;

    .line 78
    :goto_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const v5, 0x7f0f016a

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 79
    return-void

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v3

    .line 68
    .local v3, "mAdminName":Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v7, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v0

    .line 69
    .local v0, "isDeviceOwner":Z
    iget-object v4, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v7, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v2

    .line 70
    .local v2, "isProfileOwner":Z
    iget-object v4, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v4, v3}, Landroid/app/admin/DevicePolicyManager;->isManagedProfile(Landroid/content/ComponentName;)Z

    move-result v1

    .line 71
    .local v1, "isManagedProfile":Z
    if-nez v0, :cond_1

    if-eqz v2, :cond_4

    :cond_1
    move v4, v6

    :goto_1
    iput-boolean v4, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mIsDeviceOrProfileOwner:Z

    .line 74
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    :cond_2
    move v5, v6

    .line 75
    :cond_3
    invoke-static {v5}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment$DelegationScope;->defaultDelegationScopes(Z)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mDelegations:Ljava/util/List;

    goto :goto_0

    :cond_4
    move v4, v5

    .line 71
    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x8

    .line 84
    invoke-super {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/common/ManageAppFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f090030

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 86
    const v1, 0x7f09013a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-boolean v1, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mIsDeviceOrProfileOwner:Z

    if-nez v1, :cond_0

    .line 90
    const v1, 0x7f090141

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :cond_0
    return-object v0
.end method

.method protected onSpinnerItemSelected(Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 143
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 144
    .local v0, "pkgName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->readScopesFromDpm(Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected bridge synthetic onSpinnerItemSelected(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 46
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->onSpinnerItemSelected(Landroid/content/pm/ApplicationInfo;)V

    return-void
.end method

.method protected resetConfig()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method protected saveConfig()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 158
    iget-boolean v3, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mIsDeviceOrProfileOwner:Z

    if-nez v3, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0f00ce

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 160
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 161
    sget-object v3, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->TAG:Ljava/lang/String;

    const-string v4, "Only PO/DO can modify delegations"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mManagedAppsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 166
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 169
    .local v1, "pkgName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->readScopesFromUi()Ljava/util/List;

    move-result-object v2

    .line 172
    .local v2, "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 173
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v4

    .line 172
    invoke-virtual {v3, v4, v1, v2}, Landroid/app/admin/DevicePolicyManager;->setDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V

    .line 174
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0f00db

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 175
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 177
    sget-object v3, Lcom/afwsamples/testdpc/profilepolicy/delegation/DelegationFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
