.class public final Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;
.super Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;
.source "LockScreenPolicyFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$Keys;,
        Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$Container;
    }
.end annotation


# static fields
.field private static final KEYGUARD_FEATURES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 87
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->KEYGUARD_FEATURES:Ljava/util/Map;

    .line 89
    sget-object v0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->KEYGUARD_FEATURES:Ljava/util/Map;

    const-string v1, "keyguard_disable_secure_camera"

    const/4 v2, 0x2

    .line 90
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 89
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->KEYGUARD_FEATURES:Ljava/util/Map;

    const-string v1, "keyguard_disable_secure_notifications"

    const/4 v2, 0x4

    .line 93
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 92
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->KEYGUARD_FEATURES:Ljava/util/Map;

    const-string v1, "keyguard_disable_unredacted_notifications"

    const/16 v2, 0x8

    .line 96
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 95
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->KEYGUARD_FEATURES:Ljava/util/Map;

    const-string v1, "keyguard_disable_trust_agents"

    const/16 v2, 0x10

    .line 99
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 98
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->KEYGUARD_FEATURES:Ljava/util/Map;

    const-string v1, "keyguard_disable_face"

    const/16 v2, 0x80

    .line 102
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 101
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->KEYGUARD_FEATURES:Ljava/util/Map;

    const-string v1, "keyguard_disable_fingerprint"

    const/16 v2, 0x20

    .line 105
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 104
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->KEYGUARD_FEATURES:Ljava/util/Map;

    const-string v1, "keyguard_disable_iris"

    const/16 v2, 0x100

    .line 108
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 107
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->KEYGUARD_FEATURES:Ljava/util/Map;

    const-string v1, "keyguard_disable_remote_input"

    const/16 v2, 0x40

    .line 111
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 110
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;-><init>()V

    .line 58
    return-void
.end method

.method private disableIncompatibleManagementOptionsInCurrentProfile()V
    .locals 4

    .prologue
    .line 315
    sget v1, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    .line 316
    sget-object v1, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->KEYGUARD_FEATURES:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 317
    .local v0, "preference":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    const/4 v3, 0x2

    .line 318
    invoke-interface {v1, v3}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setAdminConstraint(I)V

    goto :goto_0

    .line 321
    .end local v0    # "preference":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static final synthetic lambda$setLockScreenMessage$200$LockScreenPolicyFragment(Landroidx/preference/Preference;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 0
    .param p2, "v"    # Ljava/lang/Void;

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private parseInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 324
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 328
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private setLockScreenMessage(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 3
    .param p1, "preference"    # Landroidx/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getDpmGateway()Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    move-result-object v0

    new-instance v1, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$Lambda$0;

    invoke-direct {v1, p1, p2}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$Lambda$0;-><init>(Landroidx/preference/Preference;Ljava/lang/String;)V

    new-instance v2, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$Lambda$1;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$Lambda$1;-><init>(Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;)V

    invoke-interface {v0, p2, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setDeviceOwnerLockScreenInfo(Ljava/lang/CharSequence;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 229
    return-void
.end method

.method private setup(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "adminSetting"    # Ljava/lang/Object;

    .prologue
    .line 281
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .local v1, "pref":Landroidx/preference/Preference;
    move-object v0, v1

    .line 282
    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 285
    .local v0, "dpcPref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    new-instance v3, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$Lambda$4;

    invoke-direct {v3, p0, p1}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$Lambda$4;-><init>(Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 292
    sget v3, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v4, 0x18

    if-ge v3, v4, :cond_0

    const-string v3, "key_set_trust_agent_config"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 293
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setAdminConstraint(I)V

    .line 312
    .end local p2    # "adminSetting":Ljava/lang/Object;
    :goto_0
    return-void

    .line 298
    .restart local p2    # "adminSetting":Ljava/lang/Object;
    :cond_0
    instance-of v3, v1, Landroidx/preference/EditTextPreference;

    if-eqz v3, :cond_4

    .line 299
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "stringValue":Ljava/lang/String;
    :goto_1
    instance-of v3, p2, Ljava/lang/Number;

    if-eqz v3, :cond_1

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 301
    const/4 v2, 0x0

    :cond_1
    move-object v3, v1

    .line 303
    check-cast v3, Landroidx/preference/EditTextPreference;

    invoke-virtual {v3, v2}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 310
    .end local v2    # "stringValue":Ljava/lang/String;
    .end local p2    # "adminSetting":Ljava/lang/Object;
    :cond_2
    :goto_2
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 311
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 299
    .restart local p2    # "adminSetting":Ljava/lang/Object;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 305
    :cond_4
    instance-of v3, v1, Landroidx/preference/TwoStatePreference;

    if-eqz v3, :cond_2

    move-object v3, v1

    .line 306
    check-cast v3, Landroidx/preference/TwoStatePreference;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "adminSetting":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2
.end method

.method private setupAll()V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 263
    const-string v3, "key_lock_screen_message"

    sget v1, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v1, v4, :cond_1

    .line 264
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->isDeviceOwner()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getDpmGateway()Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    move-result-object v1

    invoke-interface {v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getDeviceOwnerLockScreenInfo()Ljava/lang/CharSequence;

    move-result-object v1

    .line 263
    :goto_0
    invoke-direct {p0, v3, v1}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->setup(Ljava/lang/String;Ljava/lang/Object;)V

    .line 266
    const-string v1, "key_max_fails_before_wipe"

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->setup(Ljava/lang/String;Ljava/lang/Object;)V

    .line 267
    const-string v1, "key_max_time_screen_lock"

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 268
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 267
    invoke-direct {p0, v1, v3}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->setup(Ljava/lang/String;Ljava/lang/Object;)V

    .line 269
    const-string v1, "key_set_trust_agent_config"

    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->setup(Ljava/lang/String;Ljava/lang/Object;)V

    .line 271
    const-string v1, "key_strong_auth_timeout"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 272
    .local v0, "strongAuthPref":Landroidx/preference/Preference;
    const-string v1, "key_strong_auth_timeout"

    .line 273
    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 274
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getRequiredStrongAuthTimeout(Landroid/content/ComponentName;)J

    move-result-wide v4

    .line 273
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 272
    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->setup(Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    return-void

    .end local v0    # "strongAuthPref":Landroidx/preference/Preference;
    :cond_1
    move-object v1, v2

    .line 265
    goto :goto_0
.end method

.method private showSetTrustAgentFragment()V
    .locals 5

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->isParentProfileInstance()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    .line 212
    .local v2, "type":I
    :goto_0
    invoke-static {v2}, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;->newInstance(I)Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;

    move-result-object v1

    .line 213
    .local v1, "fragment":Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 214
    .local v0, "containerFragment":Landroid/app/Fragment;
    if-nez v0, :cond_0

    .line 215
    move-object v0, p0

    .line 217
    :cond_0
    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const-class v4, Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;

    .line 218
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 219
    invoke-virtual {v3, v0}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f090078

    .line 220
    invoke-virtual {v3, v4, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 221
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 222
    return-void

    .line 211
    .end local v0    # "containerFragment":Landroid/app/Fragment;
    .end local v1    # "fragment":Lcom/afwsamples/testdpc/policy/keyguard/SetTrustAgentConfigFragment;
    .end local v2    # "type":I
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private showToast(I)V
    .locals 2
    .param p1, "titleId"    # I

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 333
    return-void
.end method

.method private updateAggregates()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 248
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v0

    .line 249
    .local v0, "maxFailedPasswords":I
    const-string v1, "key_max_fails_before_wipe_aggregate"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    if-eqz v0, :cond_1

    .line 251
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 249
    :goto_0
    invoke-virtual {v5, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 254
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v2

    .line 255
    .local v2, "maxTimeToLock":J
    const-string v1, "key_max_time_screen_lock_aggregate"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-eqz v5, :cond_0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 257
    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 255
    :cond_0
    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 259
    return-void

    .end local v2    # "maxTimeToLock":J
    :cond_1
    move-object v1, v4

    .line 251
    goto :goto_0
.end method

.method private updateKeyguardFeatures(IZ)Z
    .locals 5
    .param p1, "flag"    # I
    .param p2, "newValue"    # Z

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getDpmGateway()Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    move-result-object v2

    invoke-interface {v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getKeyguardDisabledFeatures()I

    move-result v0

    .line 233
    .local v0, "disabledFeatures":I
    if-eqz p2, :cond_0

    .line 234
    or-int/2addr v0, p1

    .line 238
    :goto_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getDpmGateway()Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    move-result-object v2

    new-instance v3, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$Lambda$2;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$Lambda$2;-><init>(Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;)V

    new-instance v4, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$Lambda$3;

    invoke-direct {v4, p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$$Lambda$3;-><init>(Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;)V

    invoke-interface {v2, v0, v3, v4}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setKeyguardDisabledFeatures(ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 243
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getDpmGateway()Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    move-result-object v2

    invoke-interface {v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getKeyguardDisabledFeatures()I

    move-result v1

    .line 244
    .local v1, "newDisabledFeatures":I
    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 236
    .end local v1    # "newDisabledFeatures":I
    :cond_0
    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v0, v2

    goto :goto_0

    .line 244
    .restart local v1    # "newDisabledFeatures":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public isAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method final synthetic lambda$setLockScreenMessage$201$LockScreenPolicyFragment(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 228
    const-string v0, "setDeviceOwnerLockScreenInfo"

    invoke-virtual {p0, v0, p1}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->onErrorLog(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method final synthetic lambda$setup$204$LockScreenPolicyFragment(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 286
    sget-object v0, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment$Keys;->NOT_APPLICABLE_TO_PARENT:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->isParentProfileInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f0209

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final synthetic lambda$updateKeyguardFeatures$202$LockScreenPolicyFragment(Ljava/lang/Void;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 239
    const-string v0, "setKeyguardDisabledFeatures"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->onSuccessLog(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic lambda$updateKeyguardFeatures$203$LockScreenPolicyFragment(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 240
    const-string v0, "setKeyguardDisabledFeatures"

    invoke-virtual {p0, v0, p1}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->onErrorLog(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0f01b3

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 117
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .prologue
    .line 122
    const v2, 0x7f120005

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->addPreferencesFromResource(I)V

    .line 123
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->setupAll()V

    .line 124
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->disableIncompatibleManagementOptionsInCurrentProfile()V

    .line 125
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getDpmGateway()Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    move-result-object v2

    invoke-interface {v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getKeyguardDisabledFeatures()I

    move-result v0

    .line 126
    .local v0, "disabledFeatures":I
    sget-object v2, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->KEYGUARD_FEATURES:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 127
    .local v1, "flag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/2addr v3, v0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->setup(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 129
    .end local v1    # "flag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 13
    .param p1, "preference"    # Landroidx/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    const/4 v6, 0x0

    const v12, 0x7f0f020c

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 152
    sget-object v7, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->KEYGUARD_FEATURES:Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 153
    sget-object v4, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->KEYGUARD_FEATURES:Ljava/util/Map;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 154
    .local v1, "featureFlag":I
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {p0, v1, v4}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->updateKeyguardFeatures(IZ)Z

    move-result v4

    .line 197
    .end local v1    # "featureFlag":I
    :goto_0
    return v4

    .line 157
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    const/4 v7, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v7, :pswitch_data_0

    move v4, v5

    .line 193
    goto :goto_0

    .line 157
    :sswitch_0
    const-string v9, "key_lock_screen_message"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v7, v5

    goto :goto_1

    :sswitch_1
    const-string v9, "key_max_fails_before_wipe"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v7, v4

    goto :goto_1

    :sswitch_2
    const-string v9, "key_strong_auth_timeout"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v7, 0x2

    goto :goto_1

    :sswitch_3
    const-string v9, "key_max_time_screen_lock"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v7, 0x3

    goto :goto_1

    .line 159
    :pswitch_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->setLockScreenMessage(Landroidx/preference/Preference;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    .restart local p2    # "newValue":Ljava/lang/Object;
    :pswitch_1
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 164
    .local v2, "setting":I
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Landroid/app/admin/DevicePolicyManager;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V

    .line 165
    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    :cond_2
    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v2    # "setting":I
    :goto_2
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->updateAggregates()V

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-direct {p0, v12}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->showToast(I)V

    move v4, v5

    .line 168
    goto :goto_0

    .line 173
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :pswitch_2
    :try_start_1
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 174
    .local v2, "setting":J
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setRequiredStrongAuthTimeout(Landroid/content/ComponentName;J)V

    .line 175
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 176
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/admin/DevicePolicyManager;->getRequiredStrongAuthTimeout(Landroid/content/ComponentName;)J

    move-result-wide v8

    .line 175
    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 177
    .end local v2    # "setting":J
    :catch_1
    move-exception v0

    .line 178
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-direct {p0, v12}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->showToast(I)V

    move v4, v5

    .line 179
    goto/16 :goto_0

    .line 184
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :pswitch_3
    :try_start_2
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 185
    .restart local v2    # "setting":J
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v8

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    invoke-virtual {v7, v8, v10, v11}, Landroid/app/admin/DevicePolicyManager;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V

    .line 186
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-eqz v7, :cond_3

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    :cond_3
    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 187
    .end local v2    # "setting":J
    :catch_2
    move-exception v0

    .line 188
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    invoke-direct {p0, v12}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->showToast(I)V

    move v4, v5

    .line 189
    goto/16 :goto_0

    .line 157
    :sswitch_data_0
    .sparse-switch
        -0x75713118 -> :sswitch_0
        -0x5ba2cf1e -> :sswitch_1
        -0x545dc9f9 -> :sswitch_3
        0x4fac9092 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroidx/preference/Preference;

    .prologue
    const/4 v0, 0x0

    .line 202
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 207
    :goto_1
    return v0

    .line 202
    :pswitch_0
    const-string v3, "key_set_trust_agent_config"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    .line 204
    :pswitch_1
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->showSetTrustAgentFragment()V

    .line 205
    const/4 v0, 0x1

    goto :goto_1

    .line 202
    :pswitch_data_0
    .packed-switch -0x267666e0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 139
    invoke-super {p0}, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->onResume()V

    .line 140
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->updateAggregates()V

    .line 142
    const-string v1, "key_strong_auth_timeout"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 143
    .local v0, "pref":Landroidx/preference/Preference;
    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 145
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/LockScreenPolicyFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getRequiredStrongAuthTimeout(Landroid/content/ComponentName;)J

    move-result-wide v2

    .line 144
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 147
    :cond_0
    return-void
.end method
