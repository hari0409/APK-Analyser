.class public Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;
.super Landroid/app/Activity;
.source "KioskModeActivity.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;
    }
.end annotation


# static fields
.field private static final KIOSK_APPS_KEY:Ljava/lang/String; = "kiosk_apps"

.field private static final KIOSK_PREFERENCE_FILE:Ljava/lang/String; = "kiosk_preference_file"

.field private static final KIOSK_USER_RESTRICTIONS:[Ljava/lang/String;

.field public static final LOCKED_APP_PACKAGE_LIST:Ljava/lang/String; = "com.afwsamples.testdpc.policy.locktask.LOCKED_APP_PACKAGE_LIST"

.field private static final TAG:Ljava/lang/String; = "KioskModeActivity"


# instance fields
.field private mAdminComponentName:Landroid/content/ComponentName;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mKioskPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 78
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "no_safe_boot"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "no_factory_reset"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "no_add_user"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "no_physical_media"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "no_adjust_volume"

    aput-object v2, v0, v1

    sput-object v0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->KIOSK_USER_RESTRICTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 231
    return-void
.end method

.method static synthetic access$000(Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private restorePreviousConfiguration()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 220
    sget v3, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v3, v5, :cond_0

    .line 221
    const-string v3, "kiosk_preference_file"

    invoke-virtual {p0, v3, v4}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 224
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    sget-object v5, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->KIOSK_USER_RESTRICTIONS:[Ljava/lang/String;

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v2, v5, v3

    .line 225
    .local v2, "userRestriction":Ljava/lang/String;
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 226
    .local v0, "prevSettingValue":Z
    invoke-direct {p0, v2, v0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->setUserRestriction(Ljava/lang/String;Z)V

    .line 224
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 229
    .end local v0    # "prevSettingValue":Z
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v2    # "userRestriction":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private saveCurrentConfiguration()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 206
    sget v5, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_1

    .line 207
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/app/admin/DevicePolicyManager;->getUserRestrictions(Landroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v2

    .line 208
    .local v2, "settingsBundle":Landroid/os/Bundle;
    const-string v5, "kiosk_preference_file"

    invoke-virtual {p0, v5, v4}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 209
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 211
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v5, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->KIOSK_USER_RESTRICTIONS:[Ljava/lang/String;

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v3, v5, v4

    .line 212
    .local v3, "userRestriction":Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 213
    .local v0, "currentSettingValue":Z
    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 211
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 215
    .end local v0    # "currentSettingValue":Z
    .end local v3    # "userRestriction":Ljava/lang/String;
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 217
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "settingsBundle":Landroid/os/Bundle;
    :cond_1
    return-void
.end method

.method private setDefaultKioskPolicies(Z)V
    .locals 7
    .param p1, "active"    # Z

    .prologue
    const/4 v6, 0x0

    .line 179
    if-eqz p1, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->saveCurrentConfiguration()V

    .line 181
    const-string v2, "no_safe_boot"

    invoke-direct {p0, v2, p1}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->setUserRestriction(Ljava/lang/String;Z)V

    .line 182
    const-string v2, "no_factory_reset"

    invoke-direct {p0, v2, p1}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->setUserRestriction(Ljava/lang/String;Z)V

    .line 183
    const-string v2, "no_add_user"

    invoke-direct {p0, v2, p1}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->setUserRestriction(Ljava/lang/String;Z)V

    .line 184
    const-string v2, "no_physical_media"

    invoke-direct {p0, v2, p1}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->setUserRestriction(Ljava/lang/String;Z)V

    .line 185
    const-string v2, "no_adjust_volume"

    invoke-direct {p0, v2, p1}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->setUserRestriction(Ljava/lang/String;Z)V

    .line 191
    :goto_0
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mAdminComponentName:Landroid/content/ComponentName;

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mKioskPackages:Ljava/util/ArrayList;

    new-array v5, v6, [Ljava/lang/String;

    .line 192
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 191
    :goto_1
    invoke-virtual {v3, v4, v2}, Landroid/app/admin/DevicePolicyManager;->setLockTaskPackages(Landroid/content/ComponentName;[Ljava/lang/String;)V

    .line 193
    const-string v2, "kiosk_preference_file"

    invoke-virtual {p0, v2, v6}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 195
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 196
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_2

    .line 197
    const-string v2, "kiosk_apps"

    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mKioskPackages:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 201
    :goto_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 202
    return-void

    .line 187
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->restorePreviousConfiguration()V

    goto :goto_0

    .line 192
    :cond_1
    new-array v2, v6, [Ljava/lang/String;

    goto :goto_1

    .line 199
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_2
    const-string v2, "kiosk_apps"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2
.end method

.method private setUserRestriction(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "restriction"    # Ljava/lang/String;
    .param p2, "disallow"    # Z

    .prologue
    .line 170
    if-eqz p2, :cond_0

    .line 171
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->addUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->clearUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onBackdoorClicked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 157
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->stopLockTask()V

    .line 158
    invoke-direct {p0, v4}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->setDefaultKioskPolicies(Z)V

    .line 159
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mAdminComponentName:Landroid/content/ComponentName;

    .line 160
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/content/ComponentName;

    .line 162
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 161
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 165
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->finish()V

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/afwsamples/testdpc/PolicyManagementActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->startActivity(Landroid/content/Intent;)V

    .line 167
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-static {p0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mAdminComponentName:Landroid/content/ComponentName;

    .line 95
    const-string v5, "device_policy"

    invoke-virtual {p0, v5}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    iput-object v5, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 97
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 100
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v7, "com.afwsamples.testdpc.policy.locktask.LOCKED_APP_PACKAGE_LIST"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "packageArray":[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 102
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mKioskPackages:Ljava/util/ArrayList;

    .line 103
    array-length v7, v2

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v3, v2, v5

    .line 104
    .local v3, "pkg":Ljava/lang/String;
    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mKioskPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 106
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mKioskPackages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 107
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mKioskPackages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->setDefaultKioskPolicies(Z)V

    .line 119
    :goto_1
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mKioskPackages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 120
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mKioskPackages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;

    const v5, 0x7f090116

    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mKioskPackages:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v5, v6}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;-><init>(Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;Landroid/content/Context;ILjava/util/List;)V

    .line 125
    .local v0, "kioskAppsArrayAdapter":Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;
    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 126
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    new-instance v5, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$1;

    invoke-direct {v5, p0, v0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$1;-><init>(Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;)V

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 135
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->setContentView(Landroid/view/View;)V

    .line 136
    return-void

    .line 112
    .end local v0    # "kioskAppsArrayAdapter":Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity$KioskAppsArrayAdapter;
    .end local v1    # "listView":Landroid/widget/ListView;
    :cond_1
    const-string v5, "kiosk_preference_file"

    invoke-virtual {p0, v5, v6}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 114
    .local v4, "sharedPreferences":Landroid/content/SharedPreferences;
    new-instance v5, Ljava/util/ArrayList;

    const-string v6, "kiosk_apps"

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, p0, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->mKioskPackages:Ljava/util/ArrayList;

    goto :goto_1
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 143
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 145
    .local v0, "am":Landroid/app/ActivityManager;
    sget v1, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_1

    .line 146
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->startLockTask()V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v1

    if-nez v1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/locktask/KioskModeActivity;->startLockTask()V

    goto :goto_0
.end method
