.class public Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxyHandler;
.super Landroid/os/Handler;
.source "AppRestrictionsProxyHandler.java"


# static fields
.field private static final APPLICATION_RESTRICTIONS_MANAGING_PACKAGE_KEY:Ljava/lang/String; = "application_restrictions_managing_package"

.field private static final APPLICATION_RESTRICTIONS_MANAGING_PACKAGE_SIGNATURES_KEY:Ljava/lang/String; = "application_restrictions_managing_package_signatures"

.field public static final KEY_APPLICATION_RESTRICTIONS:Ljava/lang/String; = "applicationRestrictions"

.field public static final KEY_CAN_SET_APPLICATION_RESTRICTIONS:Ljava/lang/String; = "canSetApplicationRestrictions"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final MSG_CAN_SET_APPLICATION_RESTRICTIONS:I = 0x2

.field private static final MSG_GET_APPLICATION_RESTRICTIONS:I = 0x3

.field private static final MSG_SET_APPLICATION_RESTRICTIONS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AppRestrictionsProxy"


# instance fields
.field private final mAdmin:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "admin"    # Landroid/content/ComponentName;

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxyHandler;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxyHandler;->mAdmin:Landroid/content/ComponentName;

    .line 67
    return-void
.end method

.method private getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 190
    if-nez p1, :cond_0

    .line 191
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "packageName cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxyHandler;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    .line 194
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 195
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxyHandler;->mAdmin:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1
.end method

.method public static getApplicationRestrictionsManagingPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 170
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "application_restrictions_managing_package"

    const/4 v2, 0x0

    .line 171
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isCallerAuthorized(I)Z
    .locals 16
    .param p1, "callerUid"    # I

    .prologue
    .line 207
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxyHandler;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxyHandler;->getApplicationRestrictionsManagingPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "appRestrictionsManagingPackage":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 209
    const-string v12, "AppRestrictionsProxy"

    const-string v13, "There is no app restrictions managing package"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v12, 0x0

    .line 253
    :goto_0
    return v12

    .line 212
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 213
    .local v9, "packageManager":Landroid/content/pm/PackageManager;
    move/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "callingPackageName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 215
    const-string v12, "AppRestrictionsProxy"

    const-string v13, "Caller is not app restrictions managing package"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v12, 0x0

    goto :goto_0

    .line 219
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxyHandler;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v13, "application_restrictions_managing_package_signatures"

    const/4 v14, 0x0

    .line 220
    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v11

    .line 221
    .local v11, "storedSignatures":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v11, :cond_2

    .line 222
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "App restrictions managing package signatures have not been stored."

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 227
    :cond_2
    const/16 v12, 0x40

    .line 228
    :try_start_0
    invoke-virtual {v9, v2, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 229
    .local v8, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v8, :cond_3

    .line 230
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Package info could not be retrieved for package "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .end local v8    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v5

    .line 239
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v12, Ljava/lang/IllegalArgumentException;

    invoke-direct {v12, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 233
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v8    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_3
    :try_start_1
    iget-object v3, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 234
    .local v3, "callingPackageSignatures":[Landroid/content/pm/Signature;
    if-nez v3, :cond_4

    .line 235
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Package info did not contain signatures for package "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 241
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v12

    invoke-direct {v7, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 242
    .local v7, "expectedSignatures":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/Signature;>;"
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 243
    .local v10, "signatureString":Ljava/lang/String;
    new-instance v13, Landroid/content/pm/Signature;

    invoke-direct {v13, v10}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 245
    .end local v10    # "signatureString":Ljava/lang/String;
    :cond_5
    array-length v13, v3

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v13, :cond_8

    aget-object v4, v3, v12

    .line 246
    .local v4, "callingSignature":Landroid/content/pm/Signature;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/Signature;

    .line 247
    .local v6, "expectedSignature":Landroid/content/pm/Signature;
    invoke-virtual {v6, v4}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 248
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 245
    .end local v6    # "expectedSignature":Landroid/content/pm/Signature;
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 252
    .end local v4    # "callingSignature":Landroid/content/pm/Signature;
    :cond_8
    const-string v12, "AppRestrictionsProxy"

    const-string v13, "Calling package signature doesn\'t match"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method private setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appRestrictions"    # Landroid/os/Bundle;

    .prologue
    .line 175
    if-nez p1, :cond_0

    .line 176
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "packageName cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_0
    if-nez p2, :cond_1

    .line 179
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "applicationRestrictions bundle cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_1
    const-string v1, "AppRestrictionsProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting application restrictions for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxyHandler;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    .line 184
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 185
    .local v0, "devicePolicyManager":Landroid/app/admin/DevicePolicyManager;
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxyHandler;->mAdmin:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 187
    return-void
.end method

.method public static setApplicationRestrictionsManagingPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 128
    if-nez p1, :cond_0

    .line 129
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "application_restrictions_managing_package_signatures"

    .line 130
    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "application_restrictions_managing_package"

    .line 131
    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 132
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 163
    :goto_0
    return-void

    .line 137
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 138
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v6, 0x40

    .line 139
    invoke-virtual {v2, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 140
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_1

    .line 141
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package info could not be retrieved for package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot set "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " as application "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "restriction managing package as it is not installed."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 144
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_1
    :try_start_1
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 145
    .local v5, "signatures":[Landroid/content/pm/Signature;
    if-nez v5, :cond_2

    .line 146
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package info did not contain signatures for package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 153
    :cond_2
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 154
    .local v4, "signatureSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v7, v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_3

    aget-object v3, v5, v6

    .line 155
    .local v3, "signature":Landroid/content/pm/Signature;
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 158
    .end local v3    # "signature":Landroid/content/pm/Signature;
    :cond_3
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "application_restrictions_managing_package_signatures"

    .line 159
    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "application_restrictions_managing_package"

    .line 161
    invoke-interface {v6, v7, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 162
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 71
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 112
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown \'what\': "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 73
    :pswitch_0
    iget v5, p1, Landroid/os/Message;->sendingUid:I

    invoke-direct {p0, v5}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxyHandler;->isCallerAuthorized(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "packageName"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "applicationRestrictions"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 78
    .local v0, "appRestrictions":Landroid/os/Bundle;
    invoke-direct {p0, v2, v0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxyHandler;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 82
    .end local v0    # "appRestrictions":Landroid/os/Bundle;
    .end local v2    # "packageName":Ljava/lang/String;
    :pswitch_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 83
    .local v4, "responseBundle":Landroid/os/Bundle;
    const-string v5, "canSetApplicationRestrictions"

    iget v6, p1, Landroid/os/Message;->sendingUid:I

    .line 84
    invoke-direct {p0, v6}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxyHandler;->isCallerAuthorized(I)Z

    move-result v6

    .line 83
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 86
    .local v3, "response":Landroid/os/Message;
    invoke-virtual {v3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 88
    :try_start_0
    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v5, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "AppRestrictionsProxy"

    const-string v6, "Unable to respond to canSetApplicationRestrictions."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 95
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "response":Landroid/os/Message;
    .end local v4    # "responseBundle":Landroid/os/Bundle;
    :pswitch_2
    iget v5, p1, Landroid/os/Message;->sendingUid:I

    invoke-direct {p0, v5}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxyHandler;->isCallerAuthorized(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 98
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "packageName"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    .restart local v2    # "packageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/AppRestrictionsProxyHandler;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 100
    .restart local v0    # "appRestrictions":Landroid/os/Bundle;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 101
    .restart local v4    # "responseBundle":Landroid/os/Bundle;
    const-string v5, "applicationRestrictions"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 102
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 103
    .restart local v3    # "response":Landroid/os/Message;
    invoke-virtual {v3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 105
    :try_start_1
    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v5, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 106
    :catch_1
    move-exception v1

    .line 107
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v5, "AppRestrictionsProxy"

    const-string v6, "Unable to respond to getApplicationRestrictions."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
