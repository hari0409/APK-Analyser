.class public Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;
.super Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;
.source "MeteredDataRestrictionInfoAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mRestrictedPkgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local p3, "restrictedPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const v0, 0x7f090116

    invoke-direct {p0, p1, v0, p2}, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 43
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->mContext:Landroid/content/Context;

    .line 44
    iput-object p3, p0, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->mRestrictedPkgs:Ljava/util/List;

    .line 45
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->createIsComponentEnabledList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->setIsComponentEnabledList(Ljava/util/List;)V

    .line 46
    return-void
.end method

.method private createIsComponentEnabledList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v1, "isComponentEnabledList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->getCount()I

    move-result v2

    .line 67
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 68
    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->isComponentEnabled(Landroid/content/pm/ResolveInfo;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    return-object v1
.end method

.method private setMeteredDataRestrictedPkgs(Ljava/util/List;)V
    .locals 7
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
    .local p1, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x1

    .line 99
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->mContext:Landroid/content/Context;

    .line 100
    invoke-static {v2}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    .line 99
    invoke-virtual {v1, v2, p1}, Landroid/app/admin/DevicePolicyManager;->setMeteredDataDisabledPackages(Landroid/content/ComponentName;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 102
    .local v0, "excludedPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0f01d8

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 107
    :cond_0
    return-void
.end method


# virtual methods
.method protected canModifyComponent(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method protected getApplicationInfo(I)Landroid/content/pm/ApplicationInfo;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 56
    :try_start_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 61
    :goto_0
    return-object v1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->TAG:Ljava/lang/String;

    const-string v2, "getApplicationInfo: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDisplayName(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->getApplicationInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public isComponentEnabled(Landroid/content/pm/ResolveInfo;)Z
    .locals 2
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->mRestrictedPkgs:Ljava/util/List;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 85
    const/4 v3, -0x1

    if-ne p2, v3, :cond_2

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v1, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->mIsComponentCheckedList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 88
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 89
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->mIsComponentCheckedList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_1
    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;->setMeteredDataRestrictedPkgs(Ljava/util/List;)V

    .line 95
    .end local v0    # "i":I
    .end local v1    # "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "size":I
    :cond_2
    return-void
.end method
