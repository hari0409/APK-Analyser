.class public Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;
.super Landroidx/enterprise/feedback/KeyedAppStatesReporter;
.source "SingletonKeyedAppStatesReporter.java"


# static fields
.field private static final EXECUTOR_IDLE_ALIVE_TIME_SECS:I = 0x14

.field private static final LOG_TAG:Ljava/lang/String; = "KeyedAppStatesReporter"

.field private static volatile sSingleton:Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mServiceConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroidx/enterprise/feedback/BufferedServiceConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 133
    invoke-direct {p0}, Landroidx/enterprise/feedback/KeyedAppStatesReporter;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->mServiceConnections:Ljava/util/Map;

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->mContext:Landroid/content/Context;

    .line 135
    iput-object p2, p0, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->mExecutor:Ljava/util/concurrent/Executor;

    .line 136
    return-void
.end method

.method private bind(Ljava/util/Collection;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "acceptablePackageNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 174
    .local v2, "filteredPackageNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 175
    .local v3, "packageName":Ljava/lang/String;
    iget-object v7, p0, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->mServiceConnections:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 176
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 198
    :cond_2
    return-void

    .line 184
    :cond_3
    new-instance v6, Landroid/content/Intent;

    const-string v7, "androidx.enterprise.feedback.action.APP_STATES"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-direct {p0, v6, v2}, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->getServiceInfoInPackages(Landroid/content/Intent;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v5

    .line 187
    .local v5, "serviceInfos":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/ServiceInfo;>;"
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ServiceInfo;

    .line 188
    .local v4, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 189
    .local v0, "bindIntent":Landroid/content/Intent;
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 191
    new-instance v1, Landroidx/enterprise/feedback/BufferedServiceConnection;

    iget-object v7, p0, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v8, p0, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-direct {v1, v7, v8, v0, v9}, Landroidx/enterprise/feedback/BufferedServiceConnection;-><init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/content/Intent;I)V

    .line 194
    .local v1, "bufferedServiceConnection":Landroidx/enterprise/feedback/BufferedServiceConnection;
    invoke-virtual {v1}, Landroidx/enterprise/feedback/BufferedServiceConnection;->bindService()V

    .line 196
    iget-object v7, p0, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->mServiceConnections:Ljava/util/Map;

    iget-object v8, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static buildStateBundles(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroidx/enterprise/feedback/KeyedAppState;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    .local p0, "keyedAppStates":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/enterprise/feedback/KeyedAppState;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v0, "bundles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/enterprise/feedback/KeyedAppState;

    .line 278
    .local v1, "keyedAppState":Landroidx/enterprise/feedback/KeyedAppState;
    invoke-virtual {v1}, Landroidx/enterprise/feedback/KeyedAppState;->toStateBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 280
    .end local v1    # "keyedAppState":Landroidx/enterprise/feedback/KeyedAppState;
    :cond_0
    return-object v0
.end method

.method static buildStatesBundle(Ljava/util/Collection;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroidx/enterprise/feedback/KeyedAppState;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, "keyedAppStates":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/enterprise/feedback/KeyedAppState;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 270
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "androidx.enterprise.feedback.APP_STATES"

    invoke-static {p0}, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->buildStateBundles(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 271
    return-object v0
.end method

.method private static createExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 8

    .prologue
    .line 71
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x14

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    return-object v1
.end method

.method private static createStateMessage(Landroid/os/Bundle;Z)Landroid/os/Message;
    .locals 2
    .param p0, "appStatesBundle"    # Landroid/os/Bundle;
    .param p1, "immediate"    # Z

    .prologue
    .line 292
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 293
    .local v0, "message":Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x2

    :goto_0
    iput v1, v0, Landroid/os/Message;->what:I

    .line 294
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 295
    return-object v0

    .line 293
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getDeviceOwnerAndProfileOwnerPackageNames()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    iget-object v4, p0, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->mContext:Landroid/content/Context;

    const-string v5, "device_policy"

    .line 202
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 203
    .local v3, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v0

    .line 205
    .local v0, "activeAdmins":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/ComponentName;>;"
    if-nez v0, :cond_1

    .line 206
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 218
    :cond_0
    return-object v2

    .line 209
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v2, "deviceOwnerProfileOwnerPackageNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 212
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 213
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 214
    :cond_3
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Landroidx/enterprise/feedback/KeyedAppStatesReporter;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 108
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 111
    :cond_1
    sget-object v0, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->sSingleton:Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;

    if-nez v0, :cond_3

    .line 112
    const-class v1, Landroidx/enterprise/feedback/KeyedAppStatesReporter;

    monitor-enter v1

    .line 113
    :try_start_0
    sget-object v0, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->sSingleton:Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;

    if-nez v0, :cond_2

    .line 114
    invoke-static {}, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->createExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->initializeSingleton(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    .line 116
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_3
    sget-object v0, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->sSingleton:Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;

    return-object v0

    .line 116
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getServiceInfoInPackages(Landroid/content/Intent;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    .local p2, "acceptablePackageNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v4, p0, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 256
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v1, p1, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 258
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v3, "validServiceInfo":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/ServiceInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 260
    .local v0, "i":Landroid/content/pm/ResolveInfo;
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-interface {p2, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 261
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 264
    .end local v0    # "i":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-object v3
.end method

.method public static initialize(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 88
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 91
    :cond_1
    const-class v1, Landroidx/enterprise/feedback/KeyedAppStatesReporter;

    monitor-enter v1

    .line 92
    :try_start_0
    sget-object v0, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->sSingleton:Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;

    if-eqz v0, :cond_2

    .line 93
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "initialize can only be called once and must be called before calling getInstance."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 97
    :cond_2
    :try_start_1
    invoke-static {p0, p1}, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->initializeSingleton(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    .line 98
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    return-void
.end method

.method private static initializeSingleton(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 122
    new-instance v0, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;

    invoke-direct {v0, p0, p1}, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    sput-object v0, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->sSingleton:Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;

    .line 123
    sget-object v0, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->sSingleton:Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;

    invoke-virtual {v0}, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->bind()V

    .line 124
    return-void
.end method

.method private packageNameShouldBeUnbound(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 237
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->mServiceConnections:Ljava/util/Map;

    .line 238
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/enterprise/feedback/BufferedServiceConnection;

    invoke-virtual {v0}, Landroidx/enterprise/feedback/BufferedServiceConnection;->hasBeenDisconnected()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 250
    :goto_0
    return v0

    .line 242
    :cond_0
    iget-object v0, p0, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->mServiceConnections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/enterprise/feedback/BufferedServiceConnection;

    invoke-virtual {v0}, Landroidx/enterprise/feedback/BufferedServiceConnection;->isDead()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 243
    goto :goto_0

    .line 246
    :cond_1
    iget-object v0, p0, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->canPackageReceiveAppStates(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 247
    goto :goto_0

    .line 250
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static resetSingleton()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 128
    const-class v1, Landroidx/enterprise/feedback/KeyedAppStatesReporter;

    monitor-enter v1

    .line 129
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->sSingleton:Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;

    .line 130
    monitor-exit v1

    .line 131
    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setStates(Ljava/util/Collection;Z)V
    .locals 2
    .param p2, "immediate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroidx/enterprise/feedback/KeyedAppState;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "states":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/enterprise/feedback/KeyedAppState;>;"
    iget-object v0, p0, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter$1;

    invoke-direct {v1, p0, p1, p2}, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter$1;-><init>(Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;Ljava/util/Collection;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 157
    return-void
.end method


# virtual methods
.method bind()V
    .locals 2

    .prologue
    .line 166
    invoke-direct {p0}, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->getDeviceOwnerAndProfileOwnerPackageNames()Ljava/util/Collection;

    move-result-object v0

    .line 167
    .local v0, "acceptablePackageNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v1, "com.android.vending"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-direct {p0, v0}, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->bind(Ljava/util/Collection;)V

    .line 169
    return-void
.end method

.method send(Landroid/os/Bundle;Z)V
    .locals 3
    .param p1, "appStatesBundle"    # Landroid/os/Bundle;
    .param p2, "immediate"    # Z

    .prologue
    .line 285
    iget-object v1, p0, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->mServiceConnections:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/enterprise/feedback/BufferedServiceConnection;

    .line 287
    .local v0, "serviceConnection":Landroidx/enterprise/feedback/BufferedServiceConnection;
    invoke-static {p1, p2}, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->createStateMessage(Landroid/os/Bundle;Z)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/enterprise/feedback/BufferedServiceConnection;->send(Landroid/os/Message;)V

    goto :goto_0

    .line 289
    .end local v0    # "serviceConnection":Landroidx/enterprise/feedback/BufferedServiceConnection;
    :cond_0
    return-void
.end method

.method public setStates(Ljava/util/Collection;)V
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroidx/enterprise/feedback/KeyedAppState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "states":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/enterprise/feedback/KeyedAppState;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->setStates(Ljava/util/Collection;Z)V

    .line 141
    return-void
.end method

.method public setStatesImmediate(Ljava/util/Collection;)V
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroidx/enterprise/feedback/KeyedAppState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "states":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/enterprise/feedback/KeyedAppState;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->setStates(Ljava/util/Collection;Z)V

    .line 162
    return-void
.end method

.method unbindOldBindings()V
    .locals 3

    .prologue
    .line 223
    iget-object v2, p0, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->mServiceConnections:Ljava/util/Map;

    .line 224
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 226
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/enterprise/feedback/BufferedServiceConnection;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 228
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/enterprise/feedback/BufferedServiceConnection;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Landroidx/enterprise/feedback/SingletonKeyedAppStatesReporter;->packageNameShouldBeUnbound(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/enterprise/feedback/BufferedServiceConnection;

    invoke-virtual {v2}, Landroidx/enterprise/feedback/BufferedServiceConnection;->unbind()V

    .line 230
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 233
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/enterprise/feedback/BufferedServiceConnection;>;"
    :cond_1
    return-void
.end method
