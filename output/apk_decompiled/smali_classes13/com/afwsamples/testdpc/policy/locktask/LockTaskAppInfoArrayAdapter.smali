.class public Lcom/afwsamples/testdpc/policy/locktask/LockTaskAppInfoArrayAdapter;
.super Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;
.source "LockTaskAppInfoArrayAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 39
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/locktask/LockTaskAppInfoArrayAdapter;->createIsComponentEnabledList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/locktask/LockTaskAppInfoArrayAdapter;->setIsComponentEnabledList(Ljava/util/List;)V

    .line 40
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
    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v1, "isComponentEnabledList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/locktask/LockTaskAppInfoArrayAdapter;->getCount()I

    move-result v2

    .line 76
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 77
    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/locktask/LockTaskAppInfoArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/locktask/LockTaskAppInfoArrayAdapter;->isComponentEnabled(Landroid/content/pm/ResolveInfo;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected canModifyComponent(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method protected getApplicationInfo(I)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/locktask/LockTaskAppInfoArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getDisplayName(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/locktask/LockTaskAppInfoArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/locktask/LockTaskAppInfoArrayAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getLockTaskList()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 57
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 58
    .local v1, "lockTaskPackages":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/locktask/LockTaskAppInfoArrayAdapter;->getCount()I

    move-result v2

    .line 59
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 60
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/locktask/LockTaskAppInfoArrayAdapter;->mIsComponentCheckedList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/locktask/LockTaskAppInfoArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_1
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public isComponentEnabled(Landroid/content/pm/ResolveInfo;)Z
    .locals 2
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 44
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/locktask/LockTaskAppInfoArrayAdapter;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 47
    invoke-interface {v0, v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result v0

    .line 49
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
