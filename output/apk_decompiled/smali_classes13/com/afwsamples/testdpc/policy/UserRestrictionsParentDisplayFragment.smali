.class public Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;
.super Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;
.source "UserRestrictionsParentDisplayFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "UserRestrictionsParent"


# instance fields
.field private mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;-><init>()V

    return-void
.end method

.method private constrainPreferences()V
    .locals 6

    .prologue
    .line 104
    sget-object v3, Lcom/afwsamples/testdpc/policy/UserRestriction;->PROFILE_OWNER_ORG_OWNED_RESTRICTIONS:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 105
    .local v1, "restriction":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 106
    .local v0, "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    const/16 v5, 0x1e

    invoke-interface {v0, v5}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setMinSdkVersion(I)V

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    .end local v0    # "pref":Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;
    .end local v1    # "restriction":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateAllUserRestrictions()V
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .prologue
    .line 91
    sget-object v2, Lcom/afwsamples/testdpc/policy/UserRestriction;->PROFILE_OWNER_ORG_DEVICE_RESTRICTIONS:[Lcom/afwsamples/testdpc/policy/UserRestriction;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 92
    .local v0, "restriction":Lcom/afwsamples/testdpc/policy/UserRestriction;
    iget-object v4, v0, Lcom/afwsamples/testdpc/policy/UserRestriction;->key:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;->updateUserRestriction(Ljava/lang/String;)V

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "restriction":Lcom/afwsamples/testdpc/policy/UserRestriction;
    :cond_0
    return-void
.end method

.method private updateUserRestriction(Ljava/lang/String;)V
    .locals 3
    .param p1, "userRestriction"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 99
    .local v0, "preference":Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v2}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getUserRestrictions()Ljava/util/Set;

    move-result-object v1

    .line 100
    .local v1, "restrictions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 101
    return-void
.end method


# virtual methods
.method public isAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .prologue
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->forParentProfile(Landroid/content/Context;)Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    .line 35
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0f0379

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 37
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v4

    .line 43
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 42
    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object v2

    .line 44
    .local v2, "preferenceScreen":Landroidx/preference/PreferenceScreen;
    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 46
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 47
    .local v1, "preferenceContext":Landroid/content/Context;
    sget-object v5, Lcom/afwsamples/testdpc/policy/UserRestriction;->PROFILE_OWNER_ORG_DEVICE_RESTRICTIONS:[Lcom/afwsamples/testdpc/policy/UserRestriction;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v3, v5, v4

    .line 48
    .local v3, "restriction":Lcom/afwsamples/testdpc/policy/UserRestriction;
    new-instance v0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-direct {v0, v1}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 49
    .local v0, "preference":Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;
    iget v7, v3, Lcom/afwsamples/testdpc/policy/UserRestriction;->titleResId:I

    invoke-virtual {v0, v7}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setTitle(I)V

    .line 50
    iget-object v7, v3, Lcom/afwsamples/testdpc/policy/UserRestriction;->key:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setKey(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 52
    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 47
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 55
    .end local v0    # "preference":Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;
    .end local v3    # "restriction":Lcom/afwsamples/testdpc/policy/UserRestriction;
    :cond_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;->updateAllUserRestrictions()V

    .line 56
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;->constrainPreferences()V

    .line 57
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroidx/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 74
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "restriction":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 78
    .local v1, "enabled":Z
    :try_start_0
    iget-object v5, p0, Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;->mDevicePolicyManagerGateway:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-interface {v5, v2, v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setUserRestriction(Ljava/lang/String;Z)V

    .line 79
    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;->updateUserRestriction(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return v3

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v5, 0x7f0f0378

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 83
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 84
    const-string v3, "UserRestrictionsParent"

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

    .line 85
    goto :goto_0
.end method

.method public onResume()V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .prologue
    .line 62
    invoke-super {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->onResume()V

    .line 63
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/UserRestrictionsParentDisplayFragment;->updateAllUserRestrictions()V

    .line 64
    return-void
.end method
