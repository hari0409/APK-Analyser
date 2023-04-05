.class public abstract Lcom/afwsamples/testdpc/common/ManageAppFragment;
.super Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;
.source "ManageAppFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/afwsamples/testdpc/common/BaseManageComponentFragment",
        "<",
        "Landroid/content/pm/ApplicationInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALLOWLISTED_APPS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/afwsamples/testdpc/common/ManageAppFragment;->ALLOWLISTED_APPS:Ljava/util/Set;

    .line 37
    sget-object v0, Lcom/afwsamples/testdpc/common/ManageAppFragment;->ALLOWLISTED_APPS:Ljava/util/Set;

    const-string v1, "com.google.android.gms"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;-><init>()V

    return-void
.end method

.method private getInstalledOrLaunchableApps()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/ManageAppFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 60
    .local v2, "installedApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v1, "filteredAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 62
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/afwsamples/testdpc/common/ManageAppFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_1

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    sget-object v4, Lcom/afwsamples/testdpc/common/ManageAppFragment;->ALLOWLISTED_APPS:Ljava/util/Set;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 64
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    :cond_1
    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/common/ManageAppFragment;->filterApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    return-object v1
.end method


# virtual methods
.method protected createSpinnerAdapter()Landroid/widget/SpinnerAdapter;
    .locals 5

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/ManageAppFragment;->getInstalledOrLaunchableApps()Ljava/util/List;

    move-result-object v0

    .line 43
    .local v0, "managedAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v1, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;

    iget-object v2, p0, Lcom/afwsamples/testdpc/common/ManageAppFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v1, v2}, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 45
    new-instance v1, Lcom/afwsamples/testdpc/common/AppInfoSpinnerAdapter;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ManageAppFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b0022

    const v4, 0x7f090116

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/afwsamples/testdpc/common/AppInfoSpinnerAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-object v1
.end method

.method protected filterApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method
