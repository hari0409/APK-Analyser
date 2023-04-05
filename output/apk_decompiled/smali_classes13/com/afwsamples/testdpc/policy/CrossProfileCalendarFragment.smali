.class public Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;
.super Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;
.source "CrossProfileCalendarFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1d
.end annotation


# static fields
.field private static final CROSS_PROFILE_CALENDAR_ALLOW_ALL_PACKAGES_KEY:Ljava/lang/String; = "cross_profile_calendar_allow_all_packages"

.field private static final CROSS_PROFILE_CALENDAR_SET_ALLOWED_PACKAGES_KEY:Ljava/lang/String; = "cross_profile_calendar_set_allowed_packages"


# instance fields
.field private mAdminComponentName:Landroid/content/ComponentName;

.field private mAllowAllPackagesPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mSetAllowedPackagesPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;-><init>()V

    return-void
.end method

.method private reloadAllowAllPackagesUi()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 107
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 108
    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->getCrossProfileCalendarPackages(Landroid/content/ComponentName;)Ljava/util/Set;

    move-result-object v0

    .line 109
    .local v0, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->mAllowAllPackagesPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setChecked(Z)V

    .line 110
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->mSetAllowedPackagesPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->mAllowAllPackagesPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v4}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setEnabled(Z)V

    .line 111
    return-void

    :cond_0
    move v1, v3

    .line 109
    goto :goto_0

    :cond_1
    move v2, v3

    .line 110
    goto :goto_1
.end method

.method private showSetPackagesDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 117
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b0076

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 123
    .local v0, "dialogView":Landroid/view/View;
    const v2, 0x7f0900d8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 126
    .local v1, "setPackagesEditText":Landroid/widget/EditText;
    const-string v2, ","

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 127
    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getCrossProfileCalendarPackages(Landroid/content/ComponentName;)Ljava/util/Set;

    move-result-object v3

    .line 126
    invoke-static {v2, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 129
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f00ba

    .line 130
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 131
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment$$Lambda$0;

    invoke-direct {v4, p0, v1}, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment$$Lambda$0;-><init>(Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;Landroid/widget/EditText;)V

    .line 132
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    .line 141
    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 142
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method


# virtual methods
.method public isAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method final synthetic lambda$showSetPackagesDialog$188$CrossProfileCalendarFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 4
    .param p2, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p3, "i"    # I

    .prologue
    .line 133
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "packageNamesString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 138
    .local v0, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->mAdminComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, v0}, Landroid/app/admin/DevicePolicyManager;->setCrossProfileCalendarPackages(Landroid/content/ComponentName;Ljava/util/Set;)V

    .line 140
    return-void

    .line 135
    .end local v0    # "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    const-string v2, " "

    const-string v3, ""

    .line 137
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 57
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->mAdminComponentName:Landroid/content/ComponentName;

    .line 58
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0f00b7

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 59
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .prologue
    .line 64
    const v0, 0x7f120001

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->addPreferencesFromResource(I)V

    .line 66
    const-string v0, "cross_profile_calendar_set_allowed_packages"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->mSetAllowedPackagesPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    .line 68
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->mSetAllowedPackagesPreference:Lcom/afwsamples/testdpc/common/preference/DpcPreference;

    invoke-virtual {v0, p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 70
    const-string v0, "cross_profile_calendar_allow_all_packages"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->mAllowAllPackagesPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    .line 72
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->mAllowAllPackagesPreference:Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/afwsamples/testdpc/common/preference/DpcSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 74
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->reloadAllowAllPackagesUi()V

    .line 75
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroidx/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "key":Ljava/lang/String;
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 102
    :goto_1
    return v2

    .line 96
    :pswitch_0
    const-string v3, "cross_profile_calendar_allow_all_packages"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 98
    :pswitch_1
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->mAdminComponentName:Landroid/content/ComponentName;

    const/4 v1, 0x1

    .line 99
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 98
    :goto_2
    invoke-virtual {v3, v4, v1}, Landroid/app/admin/DevicePolicyManager;->setCrossProfileCalendarPackages(Landroid/content/ComponentName;Ljava/util/Set;)V

    .line 100
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->reloadAllowAllPackagesUi()V

    goto :goto_1

    .line 99
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_2

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x6f8dcf8d
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroidx/preference/Preference;

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "key":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_1

    .line 90
    :goto_1
    return v1

    .line 85
    :pswitch_0
    const-string v3, "cross_profile_calendar_set_allowed_packages"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    goto :goto_0

    .line 87
    :pswitch_1
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->showSetPackagesDialog()V

    .line 88
    const/4 v1, 0x1

    goto :goto_1

    .line 85
    :pswitch_data_0
    .packed-switch -0x5c3d0293
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
