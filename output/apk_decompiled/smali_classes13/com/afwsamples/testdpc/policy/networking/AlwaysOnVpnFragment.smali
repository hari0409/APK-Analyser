.class public Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;
.super Lcom/afwsamples/testdpc/common/SelectAppFragment;
.source "AlwaysOnVpnFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AlwaysOnVpnFragment"

.field private static final VPN_INTENT:Landroid/content/Intent;


# instance fields
.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mExemptedPackages:Landroid/widget/EditText;

.field private mLockdown:Landroid/widget/CheckBox;

.field private mWho:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.VpnService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->VPN_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/SelectAppFragment;-><init>()V

    return-void
.end method

.method static final synthetic lambda$setAlwaysOnVpnPackageQPlus$193$AlwaysOnVpnFragment(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAlwaysOnVpnPackageQPlus(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->mLockdown:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 151
    .local v0, "lockdown":Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->mExemptedPackages:Landroid/widget/EditText;

    .line 152
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment$$Lambda$1;->$instance:Ljava/util/function/Function;

    .line 153
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment$$Lambda$2;->$instance:Ljava/util/function/Predicate;

    .line 154
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 155
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    move-object v1, v2

    .line 157
    .local v1, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->mWho:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, p1, v0, v1}, Landroid/app/admin/DevicePolicyManager;->setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;ZLjava/util/Set;)V

    .line 158
    return-void

    .line 155
    .end local v1    # "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateLockdown()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    .prologue
    .line 122
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->mLockdown:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->mWho:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->isAlwaysOnVpnLockdownEnabled(Landroid/content/ComponentName;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 123
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->mWho:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getAlwaysOnVpnLockdownWhitelist(Landroid/content/ComponentName;)Ljava/util/Set;

    move-result-object v0

    .line 124
    .local v0, "exemptedPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->mExemptedPackages:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const-string v1, ","

    .line 125
    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 124
    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 126
    return-void

    .line 125
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method protected clearSelectedPackage()V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->setSelectedPackage(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method protected createAppList()Ljava/util/List;
    .locals 6
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
    .line 100
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 101
    .local v0, "apps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 102
    .local v1, "pm":Landroid/content/pm/PackageManager;
    sget-object v4, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->VPN_INTENT:Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 103
    .local v3, "serviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 104
    .local v2, "serviceInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v5, :cond_0

    .line 107
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    .end local v2    # "serviceInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v4
.end method

.method protected getSelectedPackage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAlwaysOnVpnPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final synthetic lambda$onCreateView$192$AlwaysOnVpnFragment(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "unused"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .prologue
    .line 93
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->mExemptedPackages:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/SelectAppFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 72
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->mWho:Landroid/content/ComponentName;

    .line 73
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/common/SelectAppFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 86
    .local v1, "view":Landroid/view/View;
    sget v2, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_0

    .line 87
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->getExtensionLayout(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 88
    .local v0, "extension":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 89
    const v2, 0x7f0b0040

    invoke-virtual {p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 90
    const v2, 0x7f0900a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->mLockdown:Landroid/widget/CheckBox;

    .line 91
    const v2, 0x7f0900b0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->mExemptedPackages:Landroid/widget/EditText;

    .line 92
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->mLockdown:Landroid/widget/CheckBox;

    new-instance v3, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment$$Lambda$0;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment$$Lambda$0;-><init>(Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 95
    .end local v0    # "extension":Landroid/view/ViewGroup;
    :cond_0
    return-object v1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Lcom/afwsamples/testdpc/common/SelectAppFragment;->onResume()V

    .line 78
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0f02d0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 79
    return-void
.end method

.method protected reloadSelectedPackage()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Lcom/afwsamples/testdpc/common/SelectAppFragment;->reloadSelectedPackage()V

    .line 115
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->updateLockdown()V

    .line 118
    :cond_0
    return-void
.end method

.method protected setSelectedPackage(Ljava/lang/String;)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 131
    :try_start_0
    sget v2, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_0

    .line 132
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->setAlwaysOnVpnPackageQPlus(Ljava/lang/String;)V

    .line 145
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->mWho:Landroid/content/ComponentName;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p1, v4}, Landroid/app/admin/DevicePolicyManager;->setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 139
    const-string v2, "AlwaysOnVpnFragment"

    const-string v3, "setAlwaysOnVpnPackage:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 140
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1    # "text":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "App doesn\'t support always-on VPN"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 142
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 143
    const-string v2, "AlwaysOnVpnFragment"

    const-string v3, "setAlwaysOnVpnPackage:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
