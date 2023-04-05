.class public Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;
.super Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;
.source "ProfilePolicyManagementFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/afwsamples/testdpc/common/ColorPicker$OnColorSelectListener;


# static fields
.field private static final ADD_CROSS_PROFILE_APP_WIDGETS_KEY:Ljava/lang/String; = "add_cross_profile_app_widgets"

.field private static final ADD_CROSS_PROFILE_INTENT_FILTER_PREFERENCE_KEY:Ljava/lang/String; = "add_cross_profile_intent_filter"

.field private static final CLEAR_CROSS_PROFILE_INTENT_FILTERS_PREFERENCE_KEY:Ljava/lang/String; = "clear_cross_profile_intent_filters"

.field private static final DISABLE_BLUETOOTH_CONTACT_SHARING_KEY:Ljava/lang/String; = "disable_bluetooth_contact_sharing"

.field private static final DISABLE_CROSS_PROFILE_CALLER_ID_KEY:Ljava/lang/String; = "disable_cross_profile_caller_id"

.field private static final DISABLE_CROSS_PROFILE_CONTACTS_SEARCH_KEY:Ljava/lang/String; = "disable_cross_profile_contacts_search"

.field public static final FRAGMENT_TAG:Ljava/lang/String; = "ProfilePolicyManagementFragment"

.field private static final ORGANIZATION_COLOR_ID:Ljava/lang/String; = "organizationColor"

.field private static final REMOVE_CROSS_PROFILE_APP_WIDGETS_KEY:Ljava/lang/String; = "remove_cross_profile_app_widgets"

.field private static final REMOVE_PROFILE_KEY:Ljava/lang/String; = "remove_profile"

.field private static final SET_ORGANIZATION_COLOR_KEY:Ljava/lang/String; = "set_organization_color"

.field private static final SET_PROFILE_ORGANIZATION_NAME_KEY:Ljava/lang/String; = "set_profile_organization_name"


# instance fields
.field private mAddCrossProfileAppWidgetsPreference:Landroidx/preference/Preference;

.field private mAddCrossProfileIntentFilterPreference:Landroidx/preference/Preference;

.field private mAdminComponentName:Landroid/content/ComponentName;

.field private mClearCrossProfileIntentFiltersPreference:Landroidx/preference/Preference;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDisableBluetoothContactSharingSwitchPreference:Landroidx/preference/SwitchPreference;

.field private mDisableCrossProfileCallerIdSwitchPreference:Landroidx/preference/SwitchPreference;

.field private mDisableCrossProfileContactsSearchSwitchPreference:Landroidx/preference/SwitchPreference;

.field private mRemoveCrossProfileAppWidgetsPreference:Landroidx/preference/Preference;

.field private mRemoveManagedProfilePreference:Landroidx/preference/Preference;

.field private mSetOrganizationColorPreference:Landroidx/preference/Preference;

.field private mSetOrganizationNamePreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$100(Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;)Landroid/app/admin/DevicePolicyManager;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private initSwitchPreferences()V
    .locals 1

    .prologue
    .line 256
    const-string v0, "disable_bluetooth_contact_sharing"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDisableBluetoothContactSharingSwitchPreference:Landroidx/preference/SwitchPreference;

    .line 258
    const-string v0, "disable_cross_profile_caller_id"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDisableCrossProfileCallerIdSwitchPreference:Landroidx/preference/SwitchPreference;

    .line 260
    const-string v0, "disable_cross_profile_contacts_search"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDisableCrossProfileContactsSearchSwitchPreference:Landroidx/preference/SwitchPreference;

    .line 262
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDisableBluetoothContactSharingSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 263
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDisableCrossProfileCallerIdSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 264
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDisableCrossProfileContactsSearchSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 265
    invoke-direct {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->reloadBluetoothContactSharing()V

    .line 266
    invoke-direct {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->reloadCrossProfileCallerIdDisableUi()V

    .line 267
    return-void
.end method

.method private initializeOrganizationInfoPreferences()V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 229
    const-string v3, "set_organization_color"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mSetOrganizationColorPreference:Landroidx/preference/Preference;

    .line 230
    const-string v3, "set_profile_organization_name"

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mSetOrganizationNamePreference:Landroidx/preference/Preference;

    .line 232
    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mSetOrganizationColorPreference:Landroidx/preference/Preference;

    invoke-virtual {v3}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mSetOrganizationColorPreference:Landroidx/preference/Preference;

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 234
    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getOrganizationColor(Landroid/content/ComponentName;)I

    move-result v0

    .line 235
    .local v0, "colorValue":I
    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mSetOrganizationColorPreference:Landroidx/preference/Preference;

    const-string v4, "#%08x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 236
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 235
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 239
    .end local v0    # "colorValue":I
    :cond_0
    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mSetOrganizationNamePreference:Landroidx/preference/Preference;

    invoke-virtual {v3}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 240
    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mSetOrganizationNamePreference:Landroidx/preference/Preference;

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 241
    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getOrganizationName(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 243
    .local v2, "organizationName":Ljava/lang/CharSequence;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "name":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mSetOrganizationNamePreference:Landroidx/preference/Preference;

    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 246
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "organizationName":Ljava/lang/CharSequence;
    :cond_1
    return-void

    .line 243
    .restart local v2    # "organizationName":Ljava/lang/CharSequence;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private reloadBluetoothContactSharing()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 271
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDisableBluetoothContactSharingSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1}, Landroidx/preference/SwitchPreference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 279
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 276
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getBluetoothContactSharingDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    .line 277
    .local v0, "isBluetoothContactSharingDisabled":Z
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDisableBluetoothContactSharingSwitchPreference:Landroidx/preference/SwitchPreference;

    .line 278
    invoke-virtual {v1, v0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private reloadCrossProfileCallerIdDisableUi()V
    .locals 3

    .prologue
    .line 282
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDisableCrossProfileCallerIdSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1}, Landroidx/preference/SwitchPreference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 287
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    .line 288
    .local v0, "isCrossProfileCallerIdDisabled":Z
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDisableCrossProfileCallerIdSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private reloadCrossProfileContactsSearchDisableUi()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 294
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDisableCrossProfileContactsSearchSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1}, Landroidx/preference/SwitchPreference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 302
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 299
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    .line 300
    .local v0, "isCrossProfileContactsSearchDisabled":Z
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDisableCrossProfileContactsSearchSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private showAddCrossProfileIntentFilterFragment()V
    .locals 4

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 250
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-class v2, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;

    .line 251
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 250
    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f090078

    new-instance v3, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;

    invoke-direct {v3}, Lcom/afwsamples/testdpc/profilepolicy/crossprofileintentfilter/AddCrossProfileIntentFilterFragment;-><init>()V

    .line 251
    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 252
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 253
    return-void
.end method

.method private showDisabledAppWidgetList()V
    .locals 5

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;->getInstance(Landroid/content/Context;)Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;

    move-result-object v3

    .line 316
    invoke-virtual {v3}, Lcom/afwsamples/testdpc/profilepolicy/crossprofilewidgetprovider/ManageCrossProfileWidgetProviderUtil;->getDisabledCrossProfileWidgetProvidersList()Ljava/util/List;

    move-result-object v2

    .line 317
    .local v2, "disabledCrossProfileWidgetProvidersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 318
    const v3, 0x7f0f0043

    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->showToast(I)V

    goto :goto_0

    .line 320
    :cond_2
    new-instance v0, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b0022

    invoke-direct {v0, v3, v4, v2}, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 322
    .local v0, "appInfoArrayAdapter":Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 323
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0f0038

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 324
    new-instance v3, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment$1;

    invoke-direct {v3, p0, v2}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment$1;-><init>(Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;Ljava/util/List;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 334
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showEnabledAppWidgetList()V
    .locals 5

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 349
    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getCrossProfileWidgetProviders(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v2

    .line 350
    .local v2, "enabledCrossProfileWidgetProvidersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 351
    const v3, 0x7f0f0042

    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->showToast(I)V

    goto :goto_0

    .line 353
    :cond_2
    new-instance v0, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b0022

    invoke-direct {v0, v3, v4, v2}, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 355
    .local v0, "appInfoArrayAdapter":Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 356
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0f027b

    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 357
    new-instance v3, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment$2;

    invoke-direct {v3, p0, v2}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment$2;-><init>(Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;Ljava/util/List;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 367
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showToast(I)V
    .locals 2
    .param p1, "msgId"    # I

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 373
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 381
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public isAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    invoke-static {p1}, Lcom/afwsamples/testdpc/common/Util;->isManagedProfileOwner(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onColorSelected(ILjava/lang/String;)V
    .locals 5
    .param p1, "colorValue"    # I
    .param p2, "id"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 220
    const-string v0, "organizationColor"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->setOrganizationColor(Landroid/content/ComponentName;I)V

    .line 222
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mSetOrganizationColorPreference:Landroidx/preference/Preference;

    const-string v1, "#%08x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 223
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 225
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 101
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 103
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .prologue
    .line 108
    const v0, 0x7f120009

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->addPreferencesFromResource(I)V

    .line 109
    const-string v0, "add_cross_profile_intent_filter"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mAddCrossProfileIntentFilterPreference:Landroidx/preference/Preference;

    .line 111
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mAddCrossProfileIntentFilterPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 112
    const-string v0, "clear_cross_profile_intent_filters"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mClearCrossProfileIntentFiltersPreference:Landroidx/preference/Preference;

    .line 114
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mClearCrossProfileIntentFiltersPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 115
    const-string v0, "remove_profile"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mRemoveManagedProfilePreference:Landroidx/preference/Preference;

    .line 116
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mRemoveManagedProfilePreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 117
    const-string v0, "add_cross_profile_app_widgets"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mAddCrossProfileAppWidgetsPreference:Landroidx/preference/Preference;

    .line 118
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mAddCrossProfileAppWidgetsPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 119
    const-string v0, "remove_cross_profile_app_widgets"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mRemoveCrossProfileAppWidgetsPreference:Landroidx/preference/Preference;

    .line 121
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mRemoveCrossProfileAppWidgetsPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 123
    invoke-direct {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->initSwitchPreferences()V

    .line 124
    invoke-direct {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->initializeOrganizationInfoPreferences()V

    .line 125
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroidx/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 186
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, "key":Ljava/lang/String;
    const/4 v6, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v6, :pswitch_data_0

    .line 214
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_1
    return v4

    .line 187
    .restart local p2    # "newValue":Ljava/lang/Object;
    :sswitch_0
    const-string v7, "disable_bluetooth_contact_sharing"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v6, v4

    goto :goto_0

    :sswitch_1
    const-string v7, "disable_cross_profile_caller_id"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v6, v5

    goto :goto_0

    :sswitch_2
    const-string v7, "disable_cross_profile_contacts_search"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x2

    goto :goto_0

    :sswitch_3
    const-string v7, "set_profile_organization_name"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x3

    goto :goto_0

    .line 189
    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 190
    .local v0, "disableBluetoothContactSharing":Z
    iget-object v4, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v6, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v6, v0}, Landroid/app/admin/DevicePolicyManager;->setBluetoothContactSharingDisabled(Landroid/content/ComponentName;Z)V

    .line 193
    invoke-direct {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->reloadBluetoothContactSharing()V

    move v4, v5

    .line 194
    goto :goto_1

    .line 196
    .end local v0    # "disableBluetoothContactSharing":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :pswitch_1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 197
    .local v1, "disableCrossProfileCallerId":Z
    iget-object v4, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v6, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v6, v1}, Landroid/app/admin/DevicePolicyManager;->setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V

    .line 200
    invoke-direct {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->reloadCrossProfileCallerIdDisableUi()V

    move v4, v5

    .line 201
    goto :goto_1

    .line 203
    .end local v1    # "disableCrossProfileCallerId":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :pswitch_2
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 204
    .local v2, "disableCrossProfileContactsSearch":Z
    iget-object v4, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v6, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v6, v2}, Landroid/app/admin/DevicePolicyManager;->setCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;Z)V

    .line 207
    invoke-direct {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->reloadCrossProfileContactsSearchDisableUi()V

    move v4, v5

    .line 208
    goto :goto_1

    .line 210
    .end local v2    # "disableCrossProfileContactsSearch":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :pswitch_3
    iget-object v6, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v7, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v7, v4}, Landroid/app/admin/DevicePolicyManager;->setOrganizationName(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 211
    iget-object v4, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mSetOrganizationNamePreference:Landroidx/preference/Preference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v4, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move v4, v5

    .line 212
    goto :goto_1

    .line 187
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2d0ab89c -> :sswitch_3
        -0x1b7cbe6b -> :sswitch_0
        0x28c00a3 -> :sswitch_1
        0x62dba668 -> :sswitch_2
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
    .locals 7
    .param p1, "preference"    # Landroidx/preference/Preference;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 145
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "key":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_0

    :goto_1
    move v3, v4

    .line 180
    :goto_2
    return v3

    .line 146
    :sswitch_0
    const-string v6, "add_cross_profile_intent_filter"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v4

    goto :goto_0

    :sswitch_1
    const-string v6, "clear_cross_profile_intent_filters"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v3

    goto :goto_0

    :sswitch_2
    const-string v6, "remove_profile"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x2

    goto :goto_0

    :sswitch_3
    const-string v6, "add_cross_profile_app_widgets"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x3

    goto :goto_0

    :sswitch_4
    const-string v6, "remove_cross_profile_app_widgets"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :sswitch_5
    const-string v6, "set_organization_color"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x5

    goto :goto_0

    .line 148
    :pswitch_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->showAddCrossProfileIntentFilterFragment()V

    goto :goto_2

    .line 151
    :pswitch_1
    iget-object v4, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->clearCrossProfileIntentFilters(Landroid/content/ComponentName;)V

    .line 152
    const v4, 0x7f0f00bb

    invoke-direct {p0, v4}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->showToast(I)V

    goto :goto_2

    .line 155
    :pswitch_2
    iget-object v5, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mRemoveManagedProfilePreference:Landroidx/preference/Preference;

    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 156
    iget-object v5, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5, v4}, Landroid/app/admin/DevicePolicyManager;->wipeData(I)V

    .line 157
    const v4, 0x7f0f0286

    invoke-direct {p0, v4}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->showToast(I)V

    .line 160
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 162
    :pswitch_3
    invoke-direct {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->showDisabledAppWidgetList()V

    goto :goto_2

    .line 165
    :pswitch_4
    invoke-direct {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->showEnabledAppWidgetList()V

    goto :goto_2

    .line 168
    :pswitch_5
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f060076

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 169
    .local v0, "colorValue":I
    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->mSetOrganizationColorPreference:Landroidx/preference/Preference;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    .line 170
    .local v2, "summary":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    .line 172
    :try_start_0
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 177
    :cond_1
    :goto_3
    const-string v3, "ProfilePolicyManagementFragment"

    const-string v5, "organizationColor"

    invoke-static {v0, v3, v5}, Lcom/afwsamples/testdpc/common/ColorPicker;->newInstance(ILjava/lang/String;Ljava/lang/String;)Lcom/afwsamples/testdpc/common/ColorPicker;

    move-result-object v3

    .line 178
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "colorPicker"

    invoke-virtual {v3, v5, v6}, Lcom/afwsamples/testdpc/common/ColorPicker;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 173
    :catch_0
    move-exception v3

    goto :goto_3

    .line 146
    :sswitch_data_0
    .sparse-switch
        -0x784457ac -> :sswitch_5
        -0x29688fa2 -> :sswitch_3
        0x173a64ee -> :sswitch_2
        0x36c2fd08 -> :sswitch_0
        0x4760d63f -> :sswitch_1
        0x6fd20a81 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->onResume()V

    .line 135
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0f0265

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 136
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    const v0, 0x7f0f030e

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->showToast(I)V

    .line 139
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/ProfilePolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 141
    :cond_0
    return-void
.end method
