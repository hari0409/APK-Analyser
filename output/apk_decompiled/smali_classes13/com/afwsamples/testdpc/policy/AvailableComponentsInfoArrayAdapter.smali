.class public Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;
.super Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;
.source "AvailableComponentsInfoArrayAdapter.java"


# instance fields
.field private mPermittedPackageNames:Ljava/util/List;
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
    .local p2, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local p3, "permittedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const v0, 0x7f090116

    invoke-direct {p0, p1, v0, p2}, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->mPermittedPackageNames:Ljava/util/List;

    .line 43
    iput-object p3, p0, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->mPermittedPackageNames:Ljava/util/List;

    .line 44
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->createIsComponentEnabledList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->setIsComponentEnabledList(Ljava/util/List;)V

    .line 45
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
    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v1, "isComponentEnabledList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->getCount()I

    move-result v2

    .line 105
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 106
    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->isComponentEnabled(Landroid/content/pm/ResolveInfo;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected canModifyComponent(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->getApplicationInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x16
    .end annotation

    .prologue
    .line 95
    sget v0, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-gt v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method protected getApplicationInfo(I)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getDisplayName(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedComponents()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v1, "selectedComponentsArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->getCount()I

    move-result v2

    .line 76
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 77
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->mIsComponentCheckedList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_1
    return-object v1
.end method

.method public isComponentEnabled(Landroid/content/pm/ResolveInfo;)Z
    .locals 2
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 55
    if-eqz p1, :cond_2

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->mPermittedPackageNames:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    :cond_0
    const/4 v0, 0x1

    .line 64
    :goto_0
    return v0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->mPermittedPackageNames:Ljava/util/List;

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 64
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
