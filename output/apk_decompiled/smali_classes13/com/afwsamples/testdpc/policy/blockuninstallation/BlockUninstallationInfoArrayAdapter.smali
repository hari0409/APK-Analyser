.class public Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;
.super Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;
.source "BlockUninstallationInfoArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter$BlockUninstallationAppInfo;
    }
.end annotation


# instance fields
.field private final mAdminComponent:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p4, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p3, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 46
    iput-object p4, p0, Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;->mAdminComponent:Landroid/content/ComponentName;

    .line 47
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;->createIsComponentEnabledList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;->setIsComponentEnabledList(Ljava/util/List;)V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;->mIsComponentCheckedList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;->mAdminComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$200(Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;)Landroid/app/admin/DevicePolicyManager;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
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
    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v1, "isComponentEnabledList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;->getCount()I

    move-result v2

    .line 87
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 88
    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;->isComponentEnabled(Landroid/content/pm/ResolveInfo;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected canModifyComponent(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method protected getApplicationInfo(I)Landroid/content/pm/ApplicationInfo;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 76
    :try_start_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 81
    :goto_0
    return-object v1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;->TAG:Ljava/lang/String;

    const-string v2, "getApplicationInfo: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDisplayName(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;->getApplicationInfo(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0900a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter$1;-><init>(Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    return-object v0
.end method

.method public isComponentEnabled(Landroid/content/pm/ResolveInfo;)Z
    .locals 3
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/blockuninstallation/BlockUninstallationInfoArrayAdapter;->mAdminComponent:Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->isUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
