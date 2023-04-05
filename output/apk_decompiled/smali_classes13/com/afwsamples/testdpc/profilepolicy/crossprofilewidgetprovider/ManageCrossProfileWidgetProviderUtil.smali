.class public Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;
.super Ljava/lang/Object;
.source "ManageCrossProfileWidgetProviderUtil.java"


# static fields
.field private static sInstance:Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;


# instance fields
.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;->mContext:Landroid/content/Context;

    .line 46
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 47
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 49
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const-class v1, Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;->sInstance:Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;

    invoke-direct {v0, p0}, Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;->sInstance:Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;

    .line 55
    :cond_0
    sget-object v0, Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;->sInstance:Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getDisabledCrossProfileWidgetProvidersList()Ljava/util/List;
    .locals 7
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
    .line 64
    new-instance v4, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v6, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;->mContext:Landroid/content/Context;

    .line 66
    invoke-static {v6}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v6

    .line 65
    invoke-virtual {v5, v6}, Landroid/app/admin/DevicePolicyManager;->getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 68
    .local v4, "enabledCrossProfileWidgetProvidersList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 69
    .local v3, "disabledCrossProfileWidgetProvidersPackageNameSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 70
    invoke-virtual {v5}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v1

    .line 71
    .local v1, "appWidgetProviderInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 72
    .local v0, "appWidgetProviderInfo":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "appWidgetProviderPackage":Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 74
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    .end local v0    # "appWidgetProviderInfo":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v2    # "appWidgetProviderPackage":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v5
.end method
