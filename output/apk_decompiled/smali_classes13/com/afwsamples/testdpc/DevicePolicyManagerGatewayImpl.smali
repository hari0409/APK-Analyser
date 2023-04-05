.class public final Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;
.super Ljava/lang/Object;
.source "DevicePolicyManagerGatewayImpl.java"

# interfaces
.implements Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAdminComponentName:Landroid/content/ComponentName;

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/admin/DevicePolicyManager;Landroid/os/UserManager;Landroid/content/pm/PackageManager;Landroid/location/LocationManager;Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "dpm"    # Landroid/app/admin/DevicePolicyManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "um"    # Landroid/os/UserManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "pm"    # Landroid/content/pm/PackageManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "lm"    # Landroid/location/LocationManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "admin"    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 71
    iput-object p2, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mUserManager:Landroid/os/UserManager;

    .line 72
    iput-object p3, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 73
    iput-object p4, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mLocationManager:Landroid/location/LocationManager;

    .line 74
    iput-object p5, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    .line 76
    sget-object v0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "constructor: admin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dpm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 61
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    const-class v0, Landroid/os/UserManager;

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-class v0, Landroid/location/LocationManager;

    .line 64
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager;

    .line 65
    invoke-static {p1}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v5

    move-object v0, p0

    .line 61
    invoke-direct/range {v0 .. v5}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;-><init>(Landroid/app/admin/DevicePolicyManager;Landroid/os/UserManager;Landroid/content/pm/PackageManager;Landroid/location/LocationManager;Landroid/content/ComponentName;)V

    .line 66
    return-void
.end method

.method public static forParentProfile(Landroid/content/Context;)Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 80
    invoke-static {p0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v5

    .line 81
    .local v5, "admin":Landroid/content/ComponentName;
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 82
    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->getParentProfileInstance(Landroid/content/ComponentName;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    .line 83
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 84
    .local v2, "um":Landroid/os/UserManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 85
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const-class v0, Landroid/location/LocationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager;

    .line 86
    .local v4, "lm":Landroid/location/LocationManager;
    new-instance v0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;

    invoke-direct/range {v0 .. v5}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;-><init>(Landroid/app/admin/DevicePolicyManager;Landroid/os/UserManager;Landroid/content/pm/PackageManager;Landroid/location/LocationManager;Landroid/content/ComponentName;)V

    return-object v0
.end method

.method static final synthetic lambda$getUserRestrictions$7$DevicePolicyManagerGatewayImpl(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 1
    .param p1, "k"    # Ljava/lang/String;

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static final synthetic lambda$setNetworkLogging$10$DevicePolicyManagerGatewayImpl(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 394
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->onSuccessLog(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static final synthetic lambda$setNetworkLogging$11$DevicePolicyManagerGatewayImpl(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 395
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->onErrorLog(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static final synthetic lambda$setPermittedInputMethods$12$DevicePolicyManagerGatewayImpl(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 439
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->onSuccessLog(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static final synthetic lambda$setPermittedInputMethods$13$DevicePolicyManagerGatewayImpl(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 440
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->onErrorLog(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static final synthetic lambda$setUsbDataSignalingEnabled$14$DevicePolicyManagerGatewayImpl(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 476
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->onSuccessLog(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static final synthetic lambda$setUsbDataSignalingEnabled$15$DevicePolicyManagerGatewayImpl(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 477
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->onErrorLog(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static final synthetic lambda$setUserRestriction$8$DevicePolicyManagerGatewayImpl(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 301
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->onSuccessLog(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static final synthetic lambda$setUserRestriction$9$DevicePolicyManagerGatewayImpl(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 302
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->onErrorLog(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static varargs onErrorLog(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "e"    # Ljava/lang/Exception;
    .param p1, "template"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 873
    sget-object v0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1, p2}, Lcom/afwsamples/testdpc/common/Util;->onErrorLog(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 874
    return-void
.end method

.method private static varargs onSuccessLog(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "template"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 869
    sget-object v0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/afwsamples/testdpc/common/Util;->onSuccessLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 870
    return-void
.end method


# virtual methods
.method public clearDeviceOwnerApp(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 516
    .local p1, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Void;>;"
    .local p2, "onError":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    sget-object v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    const-string v2, "clearDeviceOwnerApp()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->clearDeviceOwnerApp(Ljava/lang/String;)V

    .line 520
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :goto_0
    return-void

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public clearProfileOwner(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 528
    .local p1, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Void;>;"
    .local p2, "onError":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    sget-object v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    const-string v2, "clearProfileOwner()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->clearProfileOwner(Landroid/content/ComponentName;)V

    .line 532
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    :goto_0
    return-void

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public createAndManageUser(Ljava/lang/String;ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Consumer",
            "<",
            "Landroid/os/UserHandle;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p3, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/os/UserHandle;>;"
    .local p4, "onError":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    sget-object v0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createAndManageUser("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    const/4 v4, 0x0

    move-object v2, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/app/admin/DevicePolicyManager;->createAndManageUser(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/PersistableBundle;I)Landroid/os/UserHandle;

    move-result-object v7

    .line 150
    .local v7, "userHandle":Landroid/os/UserHandle;
    if-eqz v7, :cond_0

    .line 151
    invoke-interface {p3, v7}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 160
    .end local v7    # "userHandle":Landroid/os/UserHandle;
    :goto_0
    return-void

    .line 153
    .restart local v7    # "userHandle":Landroid/os/UserHandle;
    :cond_0
    new-instance v0, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway$InvalidResultException;

    const-string v1, "null"

    const-string v2, "createAndManageUser(%s, %d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    .line 155
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway$InvalidResultException;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    invoke-interface {p4, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    .end local v7    # "userHandle":Landroid/os/UserHandle;
    :catch_0
    move-exception v6

    .line 158
    .local v6, "e":Ljava/lang/Exception;
    invoke-interface {p4, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public enableSystemApp(Landroid/content/Intent;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 644
    .local p2, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    .local p3, "onError":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    sget-object v2, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableSystemApp("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :try_start_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, p1}, Landroid/app/admin/DevicePolicyManager;->enableSystemApp(Landroid/content/ComponentName;Landroid/content/Intent;)I

    move-result v1

    .line 648
    .local v1, "result":I
    sget-object v2, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "returning "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " activities"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    .end local v1    # "result":I
    :goto_0
    return-void

    .line 650
    :catch_0
    move-exception v0

    .line 651
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public enableSystemApp(Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 631
    .local p2, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Void;>;"
    .local p3, "onError":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    sget-object v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableSystemApp("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p1}, Landroid/app/admin/DevicePolicyManager;->enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 635
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    :goto_0
    return-void

    .line 636
    :catch_0
    move-exception v0

    .line 637
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getAdmin()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getAffiliationIds()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getAffiliationIds(Landroid/content/ComponentName;)Ljava/util/Set;

    move-result-object v0

    .line 268
    .local v0, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAffiliationIds(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-object v0
.end method

.method public getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 744
    iget-object v0, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceOwnerLockScreenInfo()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerLockScreenInfo()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public getDisabledSystemApps()Ljava/util/List;
    .locals 8
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
    .line 658
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 660
    .local v2, "disabledSystemApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x2000

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 662
    .local v0, "allApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v5, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;

    iget-object v6, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v5, v6}, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 664
    iget-object v5, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    .line 665
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    .line 666
    .local v3, "enabledApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 667
    .local v4, "enabledAppsPkgNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 668
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 670
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 672
    .restart local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget v6, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    .line 674
    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 677
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    sget-object v5, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDisabledSystemApps(): returning "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " apps"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    return-object v2
.end method

.method public getKeyguardDisabledFeatures()I
    .locals 4

    .prologue
    .line 857
    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v0

    .line 858
    .local v0, "which":I
    sget-object v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getKeyguardDisabledFeatures(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/afwsamples/testdpc/common/Util;->keyguardDisabledFeaturesToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    return v0
.end method

.method public getLockTaskFeatures()I
    .locals 4

    .prologue
    .line 731
    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getLockTaskFeatures(Landroid/content/ComponentName;)I

    move-result v0

    .line 732
    .local v0, "flags":I
    sget-object v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLockTaskFeatures(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/afwsamples/testdpc/common/Util;->lockTaskFeaturesToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    return v0
.end method

.method public getLockTaskPackages()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 713
    iget-object v0, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getLockTaskPackages(Landroid/content/ComponentName;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrganizationName()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getOrganizationName(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordQuality()I
    .locals 4

    .prologue
    .line 553
    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    .line 554
    .local v0, "quality":I
    sget-object v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordQuality(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    return v0
.end method

.method public getPermissionGrantState(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    .line 787
    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p1, p2}, Landroid/app/admin/DevicePolicyManager;->getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 789
    .local v0, "grantState":I
    sget-object v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPermissionGrantState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 790
    invoke-static {v0}, Lcom/afwsamples/testdpc/common/Util;->grantStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 789
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    return v0
.end method

.method public getPersonalAppsSuspendedReasons()I
    .locals 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPersonalAppsSuspendedReasons(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getRequiredPasswordComplexity()I
    .locals 4

    .prologue
    .line 573
    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getRequiredPasswordComplexity()I

    move-result v0

    .line 574
    .local v0, "complexity":I
    sget-object v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRequiredPasswordComplexity(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    return v0
.end method

.method public getSelfRestrictions()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 749
    iget-object v0, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber(Landroid/os/UserHandle;)J
    .locals 2
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUserControlDisabledPackages()Ljava/util/List;
    .locals 2
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
    .line 431
    iget-object v0, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getUserControlDisabledPackages(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUserHandle(J)Landroid/os/UserHandle;
    .locals 1
    .param p1, "serialNumber"    # J

    .prologue
    .line 175
    iget-object v0, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public getUserRestrictions()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    sget-object v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    const-string v2, "getUserRestrictions()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getUserRestrictions(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v0

    .line 276
    .local v0, "restrictions":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl$$Lambda$0;

    invoke-direct {v2, v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl$$Lambda$0;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 277
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    return-object v1
.end method

.method public hasUserRestriction(Ljava/lang/String;)Z
    .locals 3
    .param p1, "userRestriction"    # Ljava/lang/String;

    .prologue
    .line 307
    sget-object v0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    sget-object v0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasUserRestriction("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAffiliatedUser()Z
    .locals 4

    .prologue
    .line 254
    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->isAffiliatedUser()Z

    move-result v0

    .line 255
    .local v0, "isIt":Z
    sget-object v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAffiliatedUser(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return v0
.end method

.method public isApplicationHidden(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 708
    iget-object v0, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDeviceOwnerApp()Z
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x0

    .line 113
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isHeadlessSystemUserMode()Z
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lcom/afwsamples/testdpc/common/Util;->requireAndroidS()V

    .line 125
    iget-object v0, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v0

    return v0
.end method

.method public isLocationEnabled()Z
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    return v0
.end method

.method public isLockTaskPermitted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 739
    iget-object v0, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOrganizationOwnedDeviceWithManagedProfile()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v0

    return v0
.end method

.method public isPackageSuspended(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 607
    iget-object v0, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->isPackageSuspended(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPreferentialNetworkServiceEnabled()Z
    .locals 1

    .prologue
    .line 497
    invoke-static {}, Lcom/afwsamples/testdpc/common/Util;->requireAndroidS()V

    .line 499
    iget-object v0, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isPreferentialNetworkServiceEnabled()Z

    move-result v0

    return v0
.end method

.method public isProfileOwnerApp()Z
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 104
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isUserForeground()Z
    .locals 1

    .prologue
    .line 130
    invoke-static {}, Lcom/afwsamples/testdpc/common/Util;->requireAndroidS()V

    .line 132
    iget-object v0, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserForeground()Z

    move-result v0

    return v0
.end method

.method public listForegroundAffiliatedUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    invoke-static {}, Lcom/afwsamples/testdpc/common/Util;->requireAndroidS()V

    .line 139
    iget-object v0, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->listForegroundAffiliatedUsers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public lockNow(ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 4
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 327
    .local p2, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Void;>;"
    .local p3, "onError":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    sget-object v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockNow("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManager;->lockNow(I)V

    .line 331
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_0
    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public lockNow(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Void;>;"
    .local p2, "onError":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    sget-object v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    const-string v2, "lockNow()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->lockNow()V

    .line 319
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_0
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public reboot(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 339
    .local p1, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Void;>;"
    .local p2, "onError":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    sget-object v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    const-string v2, "reboot()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->reboot(Landroid/content/ComponentName;)V

    .line 343
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_0
    return-void

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public removeActiveAdmin(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 504
    .local p1, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Void;>;"
    .local p2, "onError":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    sget-object v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    const-string v2, "removeActiveAdmin()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 508
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :goto_0
    return-void

    .line 509
    :catch_0
    move-exception v0

    .line 510
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public removeUser(Landroid/os/UserHandle;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 7
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p2, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Void;>;"
    .local p3, "onError":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    sget-object v2, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeUser("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :try_start_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, p1}, Landroid/app/admin/DevicePolicyManager;->removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v1

    .line 190
    .local v1, "success":Z
    if-eqz v1, :cond_0

    .line 191
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 198
    .end local v1    # "success":Z
    :goto_0
    return-void

    .line 193
    .restart local v1    # "success":Z
    :cond_0
    new-instance v2, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway$InvalidResultException;

    const-string v3, "false"

    const-string v4, "removeUser(%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway$InvalidResultException;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p3, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    .end local v1    # "success":Z
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public requestBugreport(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 363
    .local p1, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Void;>;"
    .local p2, "onError":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    sget-object v2, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    const-string v3, "requestBugreport("

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :try_start_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->requestBugreport(Landroid/content/ComponentName;)Z

    move-result v1

    .line 367
    .local v1, "success":Z
    if-eqz v1, :cond_0

    .line 368
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 375
    .end local v1    # "success":Z
    :goto_0
    return-void

    .line 370
    .restart local v1    # "success":Z
    :cond_0
    new-instance v2, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway$FailedOperationException;

    const-string v3, "requestBugreport()"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway$FailedOperationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 372
    .end local v1    # "success":Z
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setAffiliationIds(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 261
    .local p1, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAffiliationIds("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setAffiliationIds(Landroid/content/ComponentName;Ljava/util/Set;)V

    .line 263
    return-void
.end method

.method public setApplicationHidden(Ljava/lang/String;ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "hidden"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 696
    .local p3, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Void;>;"
    .local p4, "onError":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    sget-object v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setApplicationHidden("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    .line 700
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    :goto_0
    return-void

    .line 701
    :catch_0
    move-exception v0

    .line 702
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p4, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "settings"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 755
    .local p3, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Void;>;"
    .local p4, "onError":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    sget-object v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setApplicationRestrictions("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 759
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    :goto_0
    return-void

    .line 760
    :catch_0
    move-exception v0

    .line 761
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p4, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setDeviceOwnerLockScreenInfo(Ljava/lang/CharSequence;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 4
    .param p1, "info"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 814
    .local p2, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Void;>;"
    .local p3, "onError":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    sget-object v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDeviceOwnerLockScreenInfo("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p1}, Landroid/app/admin/DevicePolicyManager;->setDeviceOwnerLockScreenInfo(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 817
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    :goto_0
    return-void

    .line 818
    :catch_0
    move-exception v0

    .line 819
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setKeyguardDisabled(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 7
    .param p1, "disabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 825
    .local p2, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Void;>;"
    .local p3, "onError":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    sget-object v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyguardDisabled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p1}, Landroid/app/admin/DevicePolicyManager;->setKeyguardDisabled(Landroid/content/ComponentName;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 828
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 836
    :goto_0
    return-void

    .line 830
    :cond_0
    new-instance v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway$InvalidResultException;

    const-string v2, "false"

    const-string v3, "setKeyguardDisabled(%b)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 831
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v1, v2, v3, v4}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway$InvalidResultException;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 830
    invoke-interface {p3, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 833
    :catch_0
    move-exception v0

    .line 834
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setKeyguardDisabledFeatures(ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 5
    .param p1, "which"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 841
    .local p2, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Void;>;"
    .local p3, "onError":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    invoke-static {p1}, Lcom/afwsamples/testdpc/common/Util;->keyguardDisabledFeaturesToString(I)Ljava/lang/String;

    move-result-object v1

    .line 842
    .local v1, "features":Ljava/lang/String;
    sget-object v2, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setKeyguardDisabledFeatures("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :try_start_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, p1}, Landroid/app/admin/DevicePolicyManager;->setKeyguardDisabledFeatures(Landroid/content/ComponentName;I)V

    .line 845
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    :goto_0
    return-void

    .line 846
    :catch_0
    move-exception v0

    .line 847
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setLocationEnabled(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 4
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 797
    .local p2, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Void;>;"
    .local p3, "onError":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    sget-object v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLocationEnabled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p1}, Landroid/app/admin/DevicePolicyManager;->setLocationEnabled(Landroid/content/ComponentName;Z)V

    .line 800
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    :goto_0
    return-void

    .line 801
    :catch_0
    move-exception v0

    .line 802
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setLockTaskFeatures(ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 5
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 719
    .local p2, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Void;>;"
    .local p3, "onError":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    invoke-static {p1}, Lcom/afwsamples/testdpc/common/Util;->lockTaskFeaturesToString(I)Ljava/lang/String;

    move-result-object v1

    .line 720
    .local v1, "features":Ljava/lang/String;
    sget-object v2, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setLockTaskFeatures("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :try_start_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, p1}, Landroid/app/admin/DevicePolicyManager;->setLockTaskFeatures(Landroid/content/ComponentName;I)V

    .line 723
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    :goto_0
    return-void

    .line 724
    :catch_0
    move-exception v0

    .line 725
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setLockTaskPackages([Ljava/lang/String;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 4
    .param p1, "packages"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 684
    .local p2, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Void;>;"
    .local p3, "onError":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    sget-object v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLockTaskPackages("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p1}, Landroid/app/admin/DevicePolicyManager;->setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V

    .line 687
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    :goto_0
    return-void

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setNetworkLogging(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 392
    const-string v1, "setNetworkLogging(%b)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 393
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl$$Lambda$3;

    invoke-direct {v1, v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl$$Lambda$3;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl$$Lambda$4;

    invoke-direct {v2, v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl$$Lambda$4;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->setNetworkLogging(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 396
    return-void
.end method

.method public setNetworkLogging(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 4
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p2, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Void;>;"
    .local p3, "onError":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    sget-object v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNetworkLogging("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p1}, Landroid/app/admin/DevicePolicyManager;->setNetworkLoggingEnabled(Landroid/content/ComponentName;Z)V

    .line 384
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_0
    return-void

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setOrganizationName(Ljava/lang/CharSequence;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 401
    .local p2, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Void;>;"
    .local p3, "onError":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    sget-object v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOrganizationName("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p1}, Landroid/app/admin/DevicePolicyManager;->setOrganizationName(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 405
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :goto_0
    return-void

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setPackagesSuspended([Ljava/lang/String;ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 5
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "suspended"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/function/Consumer",
            "<[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 594
    .local p3, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<[Ljava/lang/String;>;"
    .local p4, "onError":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    sget-object v2, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPackagesSuspended("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :try_start_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setPackagesSuspended(Landroid/content/ComponentName;[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v1

    .line 599
    .local v1, "result":[Ljava/lang/String;
    invoke-interface {p3, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    .end local v1    # "result":[Ljava/lang/String;
    :goto_0
    return-void

    .line 600
    :catch_0
    move-exception v0

    .line 601
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p4, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setPasswordQuality(ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 4
    .param p1, "quality"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 541
    .local p2, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Void;>;"
    .local p3, "onError":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    sget-object v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPasswordQuality("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p1}, Landroid/app/admin/DevicePolicyManager;->setPasswordQuality(Landroid/content/ComponentName;I)V

    .line 545
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    :goto_0
    return-void

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setPermissionGrantState(Ljava/lang/String;Ljava/lang/String;ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "grantState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 768
    .local p4, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Void;>;"
    .local p5, "onError":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    invoke-static {p3}, Lcom/afwsamples/testdpc/common/Util;->grantStateToString(I)Ljava/lang/String;

    move-result-object v1

    .line 769
    .local v1, "stateName":Ljava/lang/String;
    sget-object v3, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPermissionGrantState("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :try_start_0
    iget-object v3, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4, p1, p2, p3}, Landroid/app/admin/DevicePolicyManager;->setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    .line 774
    .local v2, "success":Z
    if-eqz v2, :cond_0

    .line 775
    const/4 v3, 0x0

    invoke-interface {p4, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 783
    .end local v2    # "success":Z
    :goto_0
    return-void

    .line 777
    .restart local v2    # "success":Z
    :cond_0
    new-instance v3, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway$FailedOperationException;

    const-string v4, "setPermissionGrantState(%s, %s, %s)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object v1, v5, v6

    invoke-direct {v3, v4, v5}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway$FailedOperationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p5, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 780
    .end local v2    # "success":Z
    :catch_0
    move-exception v0

    .line 781
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p5, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setPermittedInputMethods(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 436
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    const-string v2, ","

    invoke-static {v2, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "inputMethods":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPermittedInputMethods("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl$$Lambda$5;

    invoke-direct {v2, v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl$$Lambda$5;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl$$Lambda$6;

    invoke-direct {v3, v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl$$Lambda$6;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->setPermittedInputMethods(Ljava/util/List;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Z

    move-result v2

    return v2

    .line 436
    .end local v0    # "inputMethods":Ljava/lang/String;
    .end local v1    # "message":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public setPermittedInputMethods(Ljava/util/List;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 446
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Void;>;"
    .local p3, "onError":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    const/4 v1, 0x0

    .line 448
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    .line 449
    invoke-virtual {v2, v3, p1}, Landroid/app/admin/DevicePolicyManager;->setPermittedInputMethods(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result v1

    .line 450
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    :goto_0
    return v1

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setPersonalAppsSuspended(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 4
    .param p1, "suspended"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 613
    .local p2, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Void;>;"
    .local p3, "onError":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    sget-object v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPersonalAppsSuspended("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p1}, Landroid/app/admin/DevicePolicyManager;->setPersonalAppsSuspended(Landroid/content/ComponentName;Z)V

    .line 617
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    :goto_0
    return-void

    .line 618
    :catch_0
    move-exception v0

    .line 619
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setPreferentialNetworkServiceEnabled(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 4
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 483
    .local p2, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Void;>;"
    .local p3, "onError":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    sget-object v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreferentialNetworkServiceEnabled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-static {}, Lcom/afwsamples/testdpc/common/Util;->requireAndroidS()V

    .line 487
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManager;->setPreferentialNetworkServiceEnabled(Z)V

    .line 488
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :goto_0
    return-void

    .line 489
    :catch_0
    move-exception v0

    .line 490
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    const-string v2, "Error calling setPreferentialNetworkServiceEnabled()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 491
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setRequiredPasswordComplexity(ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 4
    .param p1, "complexity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 561
    .local p2, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Void;>;"
    .local p3, "onError":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    sget-object v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRequiredPasswordComplexity("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManager;->setRequiredPasswordComplexity(I)V

    .line 565
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    :goto_0
    return-void

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setUsbDataSignalingEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 474
    const-string v1, "setUsbDataSignalingEnabled(%b)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl$$Lambda$7;

    invoke-direct {v1, v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl$$Lambda$7;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl$$Lambda$8;

    invoke-direct {v2, v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl$$Lambda$8;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->setUsbDataSignalingEnabled(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 478
    return-void
.end method

.method public setUsbDataSignalingEnabled(ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 460
    .local p2, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Void;>;"
    .local p3, "onError":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    sget-object v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUsbDataSignalingEnabled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-static {}, Lcom/afwsamples/testdpc/common/Util;->requireAndroidS()V

    .line 464
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManager;->setUsbDataSignalingEnabled(Z)V

    .line 465
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :goto_0
    return-void

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    const-string v2, "Error calling setUsbDataSignalingEnabled()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 468
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setUserControlDisabledPackages(Ljava/util/List;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 419
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Void;>;"
    .local p3, "onError":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    sget-object v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUserControlDisabledPackages("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p1}, Landroid/app/admin/DevicePolicyManager;->setUserControlDisabledPackages(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 423
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :goto_0
    return-void

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setUserIcon(Landroid/graphics/Bitmap;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 4
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p2, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Void;>;"
    .local p3, "onError":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    sget-object v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUserIcon("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p1}, Landroid/app/admin/DevicePolicyManager;->setUserIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V

    .line 167
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setUserRestriction(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "userRestriction"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 299
    const-string v1, "setUserRestriction(%s, %b)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl$$Lambda$1;

    invoke-direct {v1, v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl$$Lambda$1;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl$$Lambda$2;

    invoke-direct {v2, v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl$$Lambda$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->setUserRestriction(Ljava/lang/String;ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 303
    return-void
.end method

.method public setUserRestriction(Ljava/lang/String;ZLjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 4
    .param p1, "userRestriction"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p3, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Void;>;"
    .local p4, "onError":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    sget-object v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUserRestriction("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    if-eqz p2, :cond_0

    .line 287
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p1}, Landroid/app/admin/DevicePolicyManager;->addUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 291
    :goto_0
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 295
    :goto_1
    return-void

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p1}, Landroid/app/admin/DevicePolicyManager;->clearUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p4, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public startUserInBackground(Landroid/os/UserHandle;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 6
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p2, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    .local p3, "onError":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    sget-object v2, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startUserInBackground("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :try_start_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, p1}, Landroid/app/admin/DevicePolicyManager;->startUserInBackground(Landroid/content/ComponentName;Landroid/os/UserHandle;)I

    move-result v1

    .line 224
    .local v1, "status":I
    if-nez v1, :cond_0

    .line 225
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 233
    .end local v1    # "status":I
    :goto_0
    return-void

    .line 227
    .restart local v1    # "status":I
    :cond_0
    new-instance v2, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway$FailedUserOperationException;

    const-string v3, "startUserInBackground(%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-direct {v2, v1, v3, v4}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway$FailedUserOperationException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p3, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    .end local v1    # "status":I
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public stopUser(Landroid/os/UserHandle;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 6
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p2, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    .local p3, "onError":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    sget-object v2, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopUser("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :try_start_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, p1}, Landroid/app/admin/DevicePolicyManager;->stopUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)I

    move-result v1

    .line 241
    .local v1, "status":I
    if-nez v1, :cond_0

    .line 242
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 250
    .end local v1    # "status":I
    :goto_0
    return-void

    .line 244
    .restart local v1    # "status":I
    :cond_0
    new-instance v2, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway$FailedUserOperationException;

    const-string v3, "stopUser(%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-direct {v2, v1, v3, v4}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway$FailedUserOperationException;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p3, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    .end local v1    # "status":I
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public switchUser(Landroid/os/UserHandle;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 6
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p2, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Void;>;"
    .local p3, "onError":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    sget-object v2, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchUser("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :try_start_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, p1}, Landroid/app/admin/DevicePolicyManager;->switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v1

    .line 207
    .local v1, "success":Z
    if-eqz v1, :cond_0

    .line 208
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 215
    .end local v1    # "success":Z
    :goto_0
    return-void

    .line 210
    .restart local v1    # "success":Z
    :cond_0
    new-instance v2, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway$FailedOperationException;

    const-string v3, "switchUser(%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway$FailedOperationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p3, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    .end local v1    # "success":Z
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DevicePolicyManagerGatewayImpl["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transferOwnership(Landroid/content/ComponentName;Landroid/os/PersistableBundle;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 4
    .param p1, "target"    # Landroid/content/ComponentName;
    .param p2, "bundle"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/os/PersistableBundle;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 581
    .local p3, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Void;>;"
    .local p4, "onError":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    sget-object v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transferOwnership("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p1, p2}, Landroid/app/admin/DevicePolicyManager;->transferOwnership(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V

    .line 585
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    :goto_0
    return-void

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p4, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public wipeData(ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 4
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 351
    .local p2, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Void;>;"
    .local p3, "onError":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Exception;>;"
    sget-object v1, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wipeData("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManager;->wipeData(I)V

    .line 355
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :goto_0
    return-void

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0
.end method
