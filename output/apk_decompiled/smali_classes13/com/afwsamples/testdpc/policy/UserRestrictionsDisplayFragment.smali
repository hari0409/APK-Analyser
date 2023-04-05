.class public Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;
.super Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;
.source "UserRestrictionsDisplayFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "UserRestrictions"


# instance fields
.field private mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;-><init>()V

    return-void
.end method

.method private constrainPreferences()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 129
    sget-object v4, Lcom/afwsamples/testdpc/policy/UserRestriction;->MNC_PLUS_RESTRICTIONS:[Ljava/lang/String;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v4, v3

    .line 130
    .local v1, "restriction":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 131
    .local v0, "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    const/16 v6, 0x17

    invoke-interface {v0, v6}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setMinSdkVersion(I)V

    .line 129
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 133
    .end local v0    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    .end local v1    # "restriction":Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/afwsamples/testdpc/policy/UserRestriction;->NYC_PLUS_RESTRICTIONS:[Ljava/lang/String;

    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v1, v4, v3

    .line 134
    .restart local v1    # "restriction":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 135
    .restart local v0    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    const/16 v6, 0x18

    invoke-interface {v0, v6}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setMinSdkVersion(I)V

    .line 133
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 137
    .end local v0    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    .end local v1    # "restriction":Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/afwsamples/testdpc/policy/UserRestriction;->OC_PLUS_RESTRICTIONS:[Ljava/lang/String;

    array-length v5, v4

    move v3, v2

    :goto_2
    if-ge v3, v5, :cond_2

    aget-object v1, v4, v3

    .line 138
    .restart local v1    # "restriction":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 139
    .restart local v0    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    const/16 v6, 0x1a

    invoke-interface {v0, v6}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setMinSdkVersion(I)V

    .line 137
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 141
    .end local v0    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    .end local v1    # "restriction":Ljava/lang/String;
    :cond_2
    sget-object v4, Lcom/afwsamples/testdpc/policy/UserRestriction;->PIC_PLUS_RESTRICTIONS:[Ljava/lang/String;

    array-length v5, v4

    move v3, v2

    :goto_3
    if-ge v3, v5, :cond_3

    aget-object v1, v4, v3

    .line 142
    .restart local v1    # "restriction":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 143
    .restart local v0    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    const/16 v6, 0x1c

    invoke-interface {v0, v6}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setMinSdkVersion(I)V

    .line 141
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 145
    .end local v0    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    .end local v1    # "restriction":Ljava/lang/String;
    :cond_3
    sget-object v4, Lcom/afwsamples/testdpc/policy/UserRestriction;->QT_PLUS_RESTRICTIONS:[Ljava/lang/String;

    array-length v5, v4

    move v3, v2

    :goto_4
    if-ge v3, v5, :cond_4

    aget-object v1, v4, v3

    .line 146
    .restart local v1    # "restriction":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 147
    .restart local v0    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    const/16 v6, 0x1d

    invoke-interface {v0, v6}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setMinSdkVersion(I)V

    .line 145
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 149
    .end local v0    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    .end local v1    # "restriction":Ljava/lang/String;
    :cond_4
    sget-object v4, Lcom/afwsamples/testdpc/policy/UserRestriction;->SC_PLUS_RESTRICTIONS:[Ljava/lang/String;

    array-length v5, v4

    move v3, v2

    :goto_5
    if-ge v3, v5, :cond_5

    aget-object v1, v4, v3

    .line 150
    .restart local v1    # "restriction":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 151
    .restart local v0    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    const/16 v6, 0x1f

    invoke-interface {v0, v6}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setMinSdkVersion(I)V

    .line 149
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 153
    .end local v0    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    .end local v1    # "restriction":Ljava/lang/String;
    :cond_5
    sget-object v4, Lcom/afwsamples/testdpc/policy/UserRestriction;->PRIMARY_USER_ONLY_RESTRICTIONS:[Ljava/lang/String;

    array-length v5, v4

    move v3, v2

    :goto_6
    if-ge v3, v5, :cond_6

    aget-object v1, v4, v3

    .line 154
    .restart local v1    # "restriction":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 155
    .restart local v0    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setUserConstraint(I)V

    .line 153
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 157
    .end local v0    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    .end local v1    # "restriction":Ljava/lang/String;
    :cond_6
    sget-object v4, Lcom/afwsamples/testdpc/policy/UserRestriction;->DEVICE_OWNER_ONLY_RESTRICTIONS:[Ljava/lang/String;

    array-length v5, v4

    move v3, v2

    :goto_7
    if-ge v3, v5, :cond_7

    aget-object v1, v4, v3

    .line 158
    .restart local v1    # "restriction":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 159
    .restart local v0    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    const/4 v6, 0x2

    invoke-interface {v0, v6}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setAdminConstraint(I)V

    .line 157
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 161
    .end local v0    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    .end local v1    # "restriction":Ljava/lang/String;
    :cond_7
    sget-object v4, Lcom/afwsamples/testdpc/policy/UserRestriction;->MANAGED_PROFILE_ONLY_RESTRICTIONS:[Ljava/lang/String;

    array-length v5, v4

    move v3, v2

    :goto_8
    if-ge v3, v5, :cond_8

    aget-object v1, v4, v3

    .line 162
    .restart local v1    # "restriction":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 163
    .restart local v0    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    const/4 v6, 0x4

    invoke-interface {v0, v6}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setUserConstraint(I)V

    .line 161
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 165
    .end local v0    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    .end local v1    # "restriction":Ljava/lang/String;
    :cond_8
    sget-object v3, Lcom/afwsamples/testdpc/policy/UserRestriction;->NON_MANAGED_PROFILE_RESTRICTIONS:[Ljava/lang/String;

    array-length v4, v3

    :goto_9
    if-ge v2, v4, :cond_9

    aget-object v1, v3, v2

    .line 166
    .restart local v1    # "restriction":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 167
    .restart local v0    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    const/4 v5, 0x3

    invoke-interface {v0, v5}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setUserConstraint(I)V

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 169
    .end local v0    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    .end local v1    # "restriction":Ljava/lang/String;
    :cond_9
    return-void
.end method

.method public static newInstance()Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;

    invoke-direct {v0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;-><init>()V

    .line 47
    .local v0, "fragment":Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;
    return-object v0
.end method

.method private updateAllUserRestrictions()V
    .locals 5

    .prologue
    .line 117
    sget-object v2, Lcom/afwsamples/testdpc/policy/UserRestriction;->ALL_USER_RESTRICTIONS:[Lcom/afwsamples/testdpc/policy/UserRestriction;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 118
    .local v0, "restriction":Lcom/afwsamples/testdpc/policy/UserRestriction;
    iget-object v4, v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->key:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->updateUserRestriction(Ljava/lang/String;)V

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    .end local v0    # "restriction":Lcom/afwsamples/testdpc/policy/UserRestriction;
    :cond_0
    return-void
.end method

.method private updateUserRestriction(Ljava/lang/String;)V
    .locals 3
    .param p1, "userRestriction"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 124
    .local v1, "preference":Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v2, p1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    .line 125
    .local v0, "disallowed":Z
    invoke-virtual {v1, v0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 126
    return-void
.end method


# virtual methods
.method public isAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    new-instance v0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 53
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0f0379

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 55
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "rootkey"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v4

    .line 60
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 59
    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object v2

    .line 61
    .local v2, "preferenceScreen":Landroidx/preference/PreferenceScreen;
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 63
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 64
    .local v1, "preferenceContext":Landroid/content/Context;
    sget-object v5, Lcom/afwsamples/testdpc/policy/UserRestriction;->ALL_USER_RESTRICTIONS:[Lcom/afwsamples/testdpc/policy/UserRestriction;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v3, v5, v4

    .line 65
    .local v3, "restriction":Lcom/afwsamples/testdpc/policy/UserRestriction;
    new-instance v0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-direct {v0, v1}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 66
    .local v0, "preference":Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;
    iget v7, v3, Lcom/afwsamples/testdpc/policy/UserRestriction;->titleResId:I

    invoke-virtual {v0, v7}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setTitle(I)V

    .line 67
    iget-object v7, v3, Lcom/afwsamples/testdpc/policy/UserRestriction;->key:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setKey(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 69
    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 64
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 72
    .end local v0    # "preference":Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;
    .end local v3    # "restriction":Lcom/afwsamples/testdpc/policy/UserRestriction;
    :cond_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->updateAllUserRestrictions()V

    .line 73
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->constrainPreferences()V

    .line 74
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroidx/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 89
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "restriction":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 92
    .local v1, "enabled":Z
    :try_start_0
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v5, v2, v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setUserRestriction(Ljava/lang/String;Z)V

    .line 93
    if-nez v1, :cond_1

    .line 94
    const-string v5, "no_install_unknown_sources"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "no_install_unknown_sources_globally"

    .line 95
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 97
    :cond_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0f0092

    .line 98
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0f0093

    const/4 v7, 0x0

    .line 99
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 100
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 103
    :cond_1
    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->updateUserRestriction(Ljava/lang/String;)V

    .line 104
    const-string v5, "no_unified_password"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 105
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->sendPasswordRequirementsChanged(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_2
    :goto_0
    return v3

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v5, 0x7f0f0378

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 110
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 111
    const-string v3, "UserRestrictions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error occurred while updating user restriction: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v4

    .line 112
    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->onResume()V

    .line 79
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsDisplayFragment;->updateAllUserRestrictions()V

    .line 80
    return-void
.end method
