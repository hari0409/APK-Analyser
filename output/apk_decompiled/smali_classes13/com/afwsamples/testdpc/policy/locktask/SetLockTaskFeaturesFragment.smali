.class public Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;
.super Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;
.source "SetLockTaskFeaturesFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final FEATURE_FLAGS:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_GLOBAL_ACTIONS:Ljava/lang/String; = "lock_task_feature_global_actions"

.field private static final KEY_HOME:Ljava/lang/String; = "lock_task_feature_home"

.field private static final KEY_KEYGUARD:Ljava/lang/String; = "lock_task_feature_keyguard"

.field private static final KEY_NOTIFICATIONS:Ljava/lang/String; = "lock_task_feature_notifications"

.field private static final KEY_OVERVIEW:Ljava/lang/String; = "lock_task_feature_overview"

.field private static final KEY_SYSTEM_INFO:Ljava/lang/String; = "lock_task_feature_system_info"

.field private static final TAG:Ljava/lang/String; = "SetLockTaskFeatures"


# instance fields
.field private mDpmGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->FEATURE_FLAGS:Landroid/util/ArrayMap;

    .line 68
    sget-object v0, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->FEATURE_FLAGS:Landroid/util/ArrayMap;

    const-string v1, "lock_task_feature_system_info"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->FEATURE_FLAGS:Landroid/util/ArrayMap;

    const-string v1, "lock_task_feature_notifications"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->FEATURE_FLAGS:Landroid/util/ArrayMap;

    const-string v1, "lock_task_feature_home"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->FEATURE_FLAGS:Landroid/util/ArrayMap;

    const-string v1, "lock_task_feature_overview"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->FEATURE_FLAGS:Landroid/util/ArrayMap;

    const-string v1, "lock_task_feature_global_actions"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->FEATURE_FLAGS:Landroid/util/ArrayMap;

    const-string v1, "lock_task_feature_keyguard"

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;-><init>()V

    return-void
.end method

.method private enforceEnablingRestrictions(I)V
    .locals 2
    .param p1, "enabledFeatures"    # I

    .prologue
    .line 147
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 148
    .local v0, "isHomeEnabled":Z
    :goto_0
    const-string v1, "lock_task_feature_overview"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->setPrefEnabledState(Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;Z)V

    .line 149
    const-string v1, "lock_task_feature_notifications"

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-direct {p0, v1, v0}, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->setPrefEnabledState(Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;Z)V

    .line 150
    return-void

    .line 147
    .end local v0    # "isHomeEnabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLockTaskFeatures()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->mDpmGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getLockTaskFeatures()I

    move-result v0

    return v0
.end method

.method static final synthetic lambda$setLockTaskFeatures$198$SetLockTaskFeaturesFragment(Ljava/lang/Void;)V
    .locals 3
    .param p0, "v"    # Ljava/lang/Void;

    .prologue
    .line 167
    const-string v0, "SetLockTaskFeatures"

    const-string v1, "setLockTaskFeatures()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/afwsamples/testdpc/common/Util;->onSuccessLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static final synthetic lambda$setLockTaskFeatures$199$SetLockTaskFeaturesFragment(Ljava/lang/Exception;)V
    .locals 3
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 168
    const-string v0, "SetLockTaskFeatures"

    const-string v1, "setLockTaskFeatures()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v1, v2}, Lcom/afwsamples/testdpc/common/Util;->onErrorLog(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private setLockTaskFeatures(I)V
    .locals 3
    .param p1, "flags"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->mDpmGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    sget-object v1, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment$$Lambda$0;->$instance:Ljava/util/function/Consumer;

    sget-object v2, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment$$Lambda$1;->$instance:Ljava/util/function/Consumer;

    invoke-interface {v0, p1, v1, v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setLockTaskFeatures(ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 169
    return-void
.end method

.method private setPrefEnabledState(Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;Z)V
    .locals 1
    .param p1, "pref"    # Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;
    .param p2, "enabled"    # Z

    .prologue
    .line 153
    invoke-virtual {p1, p2}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setEnabled(Z)V

    .line 154
    invoke-virtual {p1}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 157
    :cond_0
    return-void
.end method


# virtual methods
.method public isAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    new-instance v0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->mDpmGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 82
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0f02e2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 86
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .prologue
    .line 91
    const v1, 0x7f120006

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->addPreferencesFromResource(I)V

    .line 92
    sget-object v1, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->FEATURE_FLAGS:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 95
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "pref"    # Landroidx/preference/Preference;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 110
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "key":Ljava/lang/String;
    sget-object v4, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->FEATURE_FLAGS:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 112
    const-string v4, "SetLockTaskFeatures"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Undefined preference key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 137
    .end local p2    # "val":Ljava/lang/Object;
    :goto_0
    return v4

    .line 116
    .restart local p2    # "val":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->getLockTaskFeatures()I

    move-result v2

    .line 117
    .local v2, "flagsBefore":I
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "val":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->FEATURE_FLAGS:Landroid/util/ArrayMap;

    .line 118
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    or-int v1, v2, v4

    .line 120
    .local v1, "flagsAfter":I
    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-nez v4, :cond_1

    .line 122
    and-int/lit8 v1, v1, -0xb

    .line 124
    :cond_1
    if-eq v1, v2, :cond_3

    .line 125
    const-string v4, "SetLockTaskFeatures"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LockTask feature flags changing from 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 126
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 125
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :try_start_0
    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->setLockTaskFeatures(I)V

    .line 129
    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->enforceEnablingRestrictions(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    const/4 v4, 0x1

    goto :goto_0

    .line 118
    .end local v1    # "flagsAfter":I
    :cond_2
    sget-object v4, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->FEATURE_FLAGS:Landroid/util/ArrayMap;

    .line 119
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    xor-int/lit8 v4, v4, -0x1

    and-int v1, v2, v4

    goto :goto_1

    .line 131
    .restart local v1    # "flagsAfter":I
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v4, "SetLockTaskFeatures"

    const-string v6, "setLockTaskFeatures() can only be called by DO and affiliated PO"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v6, "Requires device owner or affiliated profile owner"

    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 134
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_3
    move v4, v5

    .line 137
    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 99
    invoke-super {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->onResume()V

    .line 100
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->getLockTaskFeatures()I

    move-result v0

    .line 101
    .local v0, "enabledFeatures":I
    sget-object v3, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->FEATURE_FLAGS:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 102
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 103
    .local v2, "pref":Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/2addr v3, v0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 105
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;
    :cond_1
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->enforceEnablingRestrictions(I)V

    .line 106
    return-void
.end method
