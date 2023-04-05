.class public Lcom/afwsamples/testdpc/provision/PostProvisioningTask;
.super Ljava/lang/Object;
.source "PostProvisioningTask.java"


# static fields
.field private static final KEY_POST_PROV_DONE:Ljava/lang/String; = "key_post_prov_done"

.field private static final POST_PROV_PREFS:Ljava/lang/String; = "post_prov_prefs"

.field private static final SETUP_MANAGEMENT_LAUNCH_ACTIVITY:Ljava/lang/String; = "com.afwsamples.testdpc.SetupManagementLaunchActivity"

.field private static final TAG:Ljava/lang/String; = "PostProvisioningTask"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mContext:Landroid/content/Context;

    .line 72
    const-string v0, "device_policy"

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 74
    const-string v0, "post_prov_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 75
    return-void
.end method

.method private autoGrantRequestedPermissionsToSelf()V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 181
    iget-object v5, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "packageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    .line 184
    .local v0, "adminComponentName":Landroid/content/ComponentName;
    iget-object v5, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->getRuntimePermissions(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 185
    .local v3, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 186
    .local v2, "permission":Ljava/lang/String;
    iget-object v6, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v0, v1, v2, v7}, Landroid/app/admin/DevicePolicyManager;->setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    .line 188
    .local v4, "success":Z
    const-string v6, "PostProvisioningTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Auto-granting "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", success: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    if-nez v4, :cond_0

    .line 190
    const-string v6, "PostProvisioningTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to auto grant permission to self: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 193
    .end local v2    # "permission":Ljava/lang/String;
    .end local v4    # "success":Z
    :cond_1
    return-void
.end method

.method private getRuntimePermissions(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v4, 0x1000

    .line 200
    :try_start_0
    invoke-virtual {p1, p2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 206
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_1

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 207
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v3, v5, v4

    .line 208
    .local v3, "requestedPerm":Ljava/lang/String;
    invoke-direct {p0, p1, v3}, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->isRuntimePermission(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 209
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 201
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "requestedPerm":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "PostProvisioningTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not retrieve info about the package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    return-object v2
.end method

.method private isPostProvisioningDone()Z
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "key_post_prov_done"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isRuntimePermission(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 218
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1, p2, v4}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v1

    .line 219
    .local v1, "pInfo":Landroid/content/pm/PermissionInfo;
    if-eqz v1, :cond_0

    .line 220
    iget v4, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v4, v4, 0xf

    if-ne v4, v2, :cond_0

    .line 228
    .end local v1    # "pInfo":Landroid/content/pm/PermissionInfo;
    :goto_0
    return v2

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "PostProvisioningTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not retrieve info about the permission: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move v2, v3

    .line 228
    goto :goto_0
.end method

.method private markPostProvisioningDone()V
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_post_prov_done"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 160
    return-void
.end method

.method private maybeSetAffiliationIds(Landroid/os/PersistableBundle;)V
    .locals 4
    .param p1, "extras"    # Landroid/os/PersistableBundle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 168
    if-nez p1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    const-string v1, "affiliation_id"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "affiliationId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 173
    iget-object v1, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mContext:Landroid/content/Context;

    .line 174
    invoke-static {v2}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    .line 175
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    .line 173
    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setAffiliationIds(Landroid/content/ComponentName;Ljava/util/Set;)V

    goto :goto_0
.end method


# virtual methods
.method public getPostProvisioningLaunchIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v13, 0x10000000

    .line 111
    const-string v11, "android.app.extra.PROVISIONING_ADMIN_EXTRAS_BUNDLE"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/PersistableBundle;

    .line 113
    .local v5, "extras":Landroid/os/PersistableBundle;
    iget-object v11, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 114
    .local v9, "packageName":Ljava/lang/String;
    invoke-static {v5}, Lcom/afwsamples/testdpc/common/LaunchIntentUtil;->isSynchronousAuthLaunch(Landroid/os/PersistableBundle;)Z

    move-result v10

    .line 115
    .local v10, "synchronousAuthLaunch":Z
    invoke-static {v5}, Lcom/afwsamples/testdpc/common/LaunchIntentUtil;->isCosuLaunch(Landroid/os/PersistableBundle;)Z

    move-result v4

    .line 116
    .local v4, "cosuLaunch":Z
    iget-object v11, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v11, v9}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v7

    .line 117
    .local v7, "isProfileOwner":Z
    iget-object v11, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v11, v9}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v6

    .line 120
    .local v6, "isDeviceOwner":Z
    if-nez v7, :cond_0

    if-nez v6, :cond_0

    .line 121
    const/4 v3, 0x0

    .line 155
    :goto_0
    return-object v3

    .line 124
    :cond_0
    if-eqz v4, :cond_2

    .line 125
    new-instance v8, Landroid/content/Intent;

    iget-object v11, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mContext:Landroid/content/Context;

    const-class v12, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-direct {v8, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    .local v8, "launch":Landroid/content/Intent;
    const-string v11, "android.app.extra.PROVISIONING_ADMIN_EXTRAS_BUNDLE"

    invoke-virtual {v8, v11, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 131
    :goto_1
    if-eqz v10, :cond_1

    .line 132
    invoke-static {v5}, Lcom/afwsamples/testdpc/common/LaunchIntentUtil;->getAddedAccountName(Landroid/os/PersistableBundle;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "accountName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 134
    const-string v11, "account_name"

    invoke-virtual {v8, v11, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    .end local v1    # "accountName":Ljava/lang/String;
    :cond_1
    if-nez v10, :cond_3

    if-nez v4, :cond_3

    .line 143
    iget-object v11, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 144
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v2

    .line 145
    .local v2, "accounts":[Landroid/accounts/Account;
    if-eqz v2, :cond_3

    array-length v11, v2

    if-nez v11, :cond_3

    .line 147
    new-instance v3, Landroid/content/Intent;

    iget-object v11, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mContext:Landroid/content/Context;

    const-class v12, Lcom/afwsamples/testdpc/AddAccountActivity;

    invoke-direct {v3, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    .local v3, "addAccountIntent":Landroid/content/Intent;
    invoke-virtual {v3, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 149
    const-string v11, "nextActivityIntent"

    invoke-virtual {v3, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 128
    .end local v0    # "accountManager":Landroid/accounts/AccountManager;
    .end local v2    # "accounts":[Landroid/accounts/Account;
    .end local v3    # "addAccountIntent":Landroid/content/Intent;
    .end local v8    # "launch":Landroid/content/Intent;
    :cond_2
    new-instance v8, Landroid/content/Intent;

    iget-object v11, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mContext:Landroid/content/Context;

    const-class v12, Lcom/afwsamples/testdpc/FinalizeActivity;

    invoke-direct {v8, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v8    # "launch":Landroid/content/Intent;
    goto :goto_1

    .line 154
    :cond_3
    invoke-virtual {v8, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object v3, v8

    .line 155
    goto :goto_0
.end method

.method public performPostProvisioningOperations(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 78
    invoke-direct {p0}, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->isPostProvisioningDone()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    const/4 v1, 0x0

    .line 102
    :goto_0
    return v1

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->markPostProvisioningDone()V

    .line 85
    sget v2, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    .line 86
    invoke-direct {p0}, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->autoGrantRequestedPermissionsToSelf()V

    .line 91
    :cond_1
    const-string v2, "android.app.extra.PROVISIONING_ADMIN_EXTRAS_BUNDLE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    .line 93
    .local v0, "extras":Landroid/os/PersistableBundle;
    sget v2, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_2

    .line 94
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->maybeSetAffiliationIds(Landroid/os/PersistableBundle;)V

    .line 98
    :cond_2
    iget-object v2, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/afwsamples/testdpc/provision/PostProvisioningTask;->mContext:Landroid/content/Context;

    const-string v5, "com.afwsamples.testdpc.SetupManagementLaunchActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_0
.end method
