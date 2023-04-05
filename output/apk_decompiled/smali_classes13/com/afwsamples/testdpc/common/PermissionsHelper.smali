.class public Lcom/afwsamples/testdpc/common/PermissionsHelper;
.super Ljava/lang/Object;
.source "PermissionsHelper.java"


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "PermissionsHelper"

    sput-object v0, Lcom/afwsamples/testdpc/common/PermissionsHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureRequiredPermissions([Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/Context;)Z
    .locals 8
    .param p0, "requiredPermissions"    # [Ljava/lang/String;
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "context"    # Landroid/content/Context;
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 49
    .line 51
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 52
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1000

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 57
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 58
    .local v2, "manifestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v6, p0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v1, p0, v5

    .line 59
    .local v1, "expectedPermission":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 60
    sget-object v5, Lcom/afwsamples/testdpc/common/PermissionsHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing required permission from manifest: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .end local v1    # "expectedPermission":Ljava/lang/String;
    .end local v2    # "manifestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_1
    return v4

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v5, Lcom/afwsamples/testdpc/common/PermissionsHelper;->TAG:Ljava/lang/String;

    const-string v6, "Could not find own package."

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 63
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "expectedPermission":Ljava/lang/String;
    .restart local v2    # "manifestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    invoke-static {v1, p1, p2}, Lcom/afwsamples/testdpc/common/PermissionsHelper;->maybeGrantDangerousPermission(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 58
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 67
    .end local v1    # "expectedPermission":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private static hasPermissionGranted(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "componentName"    # Landroid/content/ComponentName;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "permission"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 100
    const-class v2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 102
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2, p2}, Landroid/app/admin/DevicePolicyManager;->getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isPermissionDangerous(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 6
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 109
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v5}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 114
    .local v1, "permissionInfo":Landroid/content/pm/PermissionInfo;
    if-eqz v1, :cond_0

    iget v4, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v4, v4, 0xf

    if-ne v4, v2, :cond_0

    .end local v1    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    :goto_0
    return v2

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/afwsamples/testdpc/common/PermissionsHelper;->TAG:Ljava/lang/String;

    const-string v4, "Failed to look up permission."

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    .line 112
    goto :goto_0

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    :cond_0
    move v2, v3

    .line 114
    goto :goto_0
.end method

.method private static maybeGrantDangerousPermission(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/Context;)Z
    .locals 3
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "context"    # Landroid/content/Context;
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 77
    invoke-static {p0, p2}, Lcom/afwsamples/testdpc/common/PermissionsHelper;->isPermissionDangerous(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v1

    .line 80
    :cond_1
    invoke-static {p2}, Lcom/afwsamples/testdpc/common/ProvisioningStateUtil;->isManagedByTestDPC(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 81
    const/4 v1, 0x0

    goto :goto_0

    .line 83
    :cond_2
    invoke-static {p1, p2, p0}, Lcom/afwsamples/testdpc/common/PermissionsHelper;->hasPermissionGranted(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    const-string v2, "device_policy"

    .line 87
    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 90
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-virtual {v0, p1, v2, p0, v1}, Landroid/app/admin/DevicePolicyManager;->setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0
.end method
