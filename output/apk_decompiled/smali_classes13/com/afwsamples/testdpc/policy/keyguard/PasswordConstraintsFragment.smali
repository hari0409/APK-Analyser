.class public final Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;
.super Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;
.source "PasswordConstraintsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment$Keys;,
        Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment$Container;
    }
.end annotation


# static fields
.field private static final PASSWORD_QUALITIES:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMinLength:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

.field private mMinLetters:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

.field private mMinLower:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

.field private mMinNonLetter:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

.field private mMinNumeric:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

.field private mMinSymbols:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

.field private mMinUpper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v4, 0x7

    .line 103
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    sput-object v3, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->PASSWORD_QUALITIES:Ljava/util/TreeMap;

    .line 106
    new-array v1, v4, [I

    fill-array-data v1, :array_0

    .line 116
    .local v1, "policyIds":[I
    new-array v2, v4, [I

    fill-array-data v2, :array_1

    .line 125
    .local v2, "policyNames":[I
    array-length v3, v1

    array-length v4, v2

    if-eq v3, v4, :cond_0

    .line 126
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "Number of items in policyIds and policyNames do not match"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 128
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 129
    sget-object v3, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->PASSWORD_QUALITIES:Ljava/util/TreeMap;

    aget v4, v1, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget v5, v2, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_1
    return-void

    .line 106
    nop

    :array_0
    .array-data 4
        0x0
        0x10000
        0x20000
        0x30000
        0x40000
        0x50000
        0x60000
    .end array-data

    .line 116
    :array_1
    .array-data 4
        0x7f0f0248
        0x7f0f0247
        0x7f0f0245
        0x7f0f0246
        0x7f0f0242
        0x7f0f0243
        0x7f0f0244
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;-><init>()V

    .line 87
    return-void
.end method

.method private refreshPreferences()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinLength:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->refreshEnabledState()V

    .line 287
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinLetters:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->refreshEnabledState()V

    .line 288
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinNumeric:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->refreshEnabledState()V

    .line 289
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinLower:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->refreshEnabledState()V

    .line 290
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinUpper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->refreshEnabledState()V

    .line 291
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinSymbols:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->refreshEnabledState()V

    .line 292
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinNonLetter:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->refreshEnabledState()V

    .line 293
    return-void
.end method

.method private setPreferencesConstraint()V
    .locals 3

    .prologue
    .line 267
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinLength:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    new-instance v2, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment$$Lambda$2;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment$$Lambda$2;-><init>(Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;)V

    invoke-interface {v1, v2}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 273
    new-instance v0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment$$Lambda$3;

    invoke-direct {v0, p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment$$Lambda$3;-><init>(Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;)V

    .line 277
    .local v0, "constraint":Lcom/afwsamples/testdpc/common/preference/CustomConstraint;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinLetters:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    invoke-interface {v1, v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 278
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinNumeric:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    invoke-interface {v1, v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 279
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinLower:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    invoke-interface {v1, v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 280
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinUpper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    invoke-interface {v1, v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 281
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinSymbols:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    invoke-interface {v1, v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 282
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinNonLetter:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    invoke-interface {v1, v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;->setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 283
    return-void
.end method

.method private setup(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "adminSetting"    # Ljava/lang/Object;

    .prologue
    .line 300
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 301
    .local v0, "field":Landroidx/preference/Preference;
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 303
    if-nez p2, :cond_0

    .line 319
    :goto_0
    return-void

    .line 307
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, "stringSetting":Ljava/lang/String;
    move-object v3, v2

    .line 310
    .local v3, "summary":Ljava/lang/CharSequence;
    instance-of v4, v0, Landroidx/preference/EditTextPreference;

    if-eqz v4, :cond_2

    move-object v1, v0

    .line 311
    check-cast v1, Landroidx/preference/EditTextPreference;

    .line 312
    .local v1, "p":Landroidx/preference/EditTextPreference;
    invoke-virtual {v1, v2}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 318
    .end local v1    # "p":Landroidx/preference/EditTextPreference;
    :cond_1
    :goto_1
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 313
    :cond_2
    instance-of v4, v0, Landroidx/preference/ListPreference;

    if-eqz v4, :cond_1

    move-object v1, v0

    .line 314
    check-cast v1, Landroidx/preference/ListPreference;

    .line 315
    .local v1, "p":Landroidx/preference/ListPreference;
    invoke-virtual {v1, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v1}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_1
.end method

.method private updateExpirationTimes()V
    .locals 4

    .prologue
    .line 325
    const-string v2, "password_expiration_time"

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 326
    .local v0, "byAdmin":Landroidx/preference/Preference;
    const-string v2, "password_expiration_aggregate"

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 328
    .local v1, "byAll":Landroidx/preference/Preference;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/common/Util;->formatTimestamp(J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 329
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/common/Util;->formatTimestamp(J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 330
    return-void
.end method


# virtual methods
.method public isAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method final synthetic lambda$onPreferenceChange$205$PasswordConstraintsFragment(Ljava/lang/Void;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 227
    const-string v0, "setPasswordQuality"

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->onSuccessLog(Ljava/lang/String;)V

    return-void
.end method

.method final synthetic lambda$onPreferenceChange$206$PasswordConstraintsFragment(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 228
    const-string v0, "setPasswordQuality"

    invoke-virtual {p0, v0, p1}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->onErrorLog(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method final synthetic lambda$setPreferencesConstraint$207$PasswordConstraintsFragment()I
    .locals 2

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpmGateway()Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    move-result-object v0

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getPasswordQuality()I

    move-result v0

    const/high16 v1, 0x20000

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0f020a

    goto :goto_0
.end method

.method final synthetic lambda$setPreferencesConstraint$208$PasswordConstraintsFragment()I
    .locals 2

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpmGateway()Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    move-result-object v0

    invoke-interface {v0}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getPasswordQuality()I

    move-result v0

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0f020a

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0f0231

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 141
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->onCreate(Landroid/os/Bundle;)V

    .line 142
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "rootKey"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 146
    const v4, 0x7f120008

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->addPreferencesFromResource(I)V

    .line 148
    const-string v4, "password_min_length"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinLength:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 149
    const-string v4, "password_min_letters"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinLetters:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 150
    const-string v4, "password_min_numeric"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinNumeric:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 151
    const-string v4, "password_min_lowercase"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinLower:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 152
    const-string v4, "password_min_uppercase"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinUpper:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 153
    const-string v4, "password_min_symbols"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinSymbols:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 154
    const-string v4, "password_min_nonletter"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    iput-object v4, p0, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->mMinNonLetter:Lcom/afwsamples/testdpc/common/preference/DpcPreferenceBase;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    sget-object v4, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->PASSWORD_QUALITIES:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 161
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    const-string v4, "minimum_password_quality"

    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/ListPreference;

    .line 165
    .local v2, "quality":Landroidx/preference/ListPreference;
    new-array v4, v6, [Ljava/lang/CharSequence;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 166
    new-array v4, v6, [Ljava/lang/CharSequence;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 169
    const-string v4, "password_expiration_time"

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->setup(Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    const-string v4, "password_history_length"

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->setup(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    const-string v4, "minimum_password_quality"

    sget-object v5, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->PASSWORD_QUALITIES:Ljava/util/TreeMap;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpmGateway()Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    move-result-object v6

    invoke-interface {v6}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->getPasswordQuality()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/TreeMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->setup(Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    const-string v4, "password_min_length"

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->setup(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    const-string v4, "password_min_letters"

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->setup(Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    const-string v4, "password_min_numeric"

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->setup(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    const-string v4, "password_min_lowercase"

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->setup(Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    const-string v4, "password_min_uppercase"

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->setup(Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    const-string v4, "password_min_symbols"

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->setup(Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    const-string v4, "password_min_nonletter"

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->setup(Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->setPreferencesConstraint()V

    .line 185
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 12
    .param p1, "preference"    # Landroidx/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 198
    instance-of v6, p2, Ljava/lang/String;

    if-eqz v6, :cond_1

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 200
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 210
    .local v5, "value":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, "summary":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    const/4 v6, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v6, :pswitch_data_0

    move v6, v7

    .line 259
    .end local v4    # "summary":Ljava/lang/CharSequence;
    .end local v5    # "value":I
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_2
    return v6

    .line 201
    .restart local p2    # "newValue":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 202
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v8, 0x7f0f020c

    invoke-static {v6, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    move v6, v7

    .line 203
    goto :goto_2

    .line 206
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "value":I
    goto :goto_0

    .line 212
    .restart local v4    # "summary":Ljava/lang/CharSequence;
    :sswitch_0
    const-string v10, "password_expiration_time"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v6, v7

    goto :goto_1

    :sswitch_1
    const-string v10, "password_history_length"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v6, v8

    goto :goto_1

    :sswitch_2
    const-string v10, "minimum_password_quality"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v6, 0x2

    goto :goto_1

    :sswitch_3
    const-string v10, "password_min_length"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v6, 0x3

    goto :goto_1

    :sswitch_4
    const-string v10, "password_min_letters"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v6, 0x4

    goto :goto_1

    :sswitch_5
    const-string v10, "password_min_numeric"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v6, 0x5

    goto :goto_1

    :sswitch_6
    const-string v10, "password_min_lowercase"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v6, 0x6

    goto :goto_1

    :sswitch_7
    const-string v10, "password_min_uppercase"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v6, 0x7

    goto :goto_1

    :sswitch_8
    const-string v10, "password_min_symbols"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v6, 0x8

    goto :goto_1

    :sswitch_9
    const-string v10, "password_min_nonletter"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v6, 0x9

    goto :goto_1

    .line 214
    :pswitch_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v7

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v10, v5

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    invoke-virtual {v6, v7, v10, v11}, Landroid/app/admin/DevicePolicyManager;->setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V

    .line 215
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->updateExpirationTimes()V

    move v6, v8

    .line 216
    goto/16 :goto_2

    .line 219
    :pswitch_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/app/admin/DevicePolicyManager;->setPasswordHistoryLength(Landroid/content/ComponentName;I)V

    .line 257
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_3
    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 258
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->sendPasswordRequirementsChanged(Landroid/content/Context;)V

    move v6, v8

    .line 259
    goto/16 :goto_2

    .restart local p2    # "newValue":Ljava/lang/Object;
    :pswitch_2
    move-object v3, p1

    .line 222
    check-cast v3, Landroidx/preference/ListPreference;

    .line 224
    .local v3, "list":Landroidx/preference/ListPreference;
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v3, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v3}, Landroidx/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    .line 226
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpmGateway()Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    move-result-object v6

    new-instance v7, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment$$Lambda$0;

    invoke-direct {v7, p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment$$Lambda$0;-><init>(Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;)V

    new-instance v9, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment$$Lambda$1;

    invoke-direct {v9, p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment$$Lambda$1;-><init>(Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;)V

    invoke-interface {v6, v5, v7, v9}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->setPasswordQuality(ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 229
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->refreshPreferences()V

    goto :goto_3

    .line 233
    .end local v3    # "list":Landroidx/preference/ListPreference;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :pswitch_3
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    goto :goto_3

    .line 236
    :pswitch_4
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumLetters(Landroid/content/ComponentName;I)V

    goto :goto_3

    .line 239
    :pswitch_5
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumNumeric(Landroid/content/ComponentName;I)V

    goto :goto_3

    .line 242
    :pswitch_6
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;I)V

    goto :goto_3

    .line 245
    :pswitch_7
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;I)V

    goto :goto_3

    .line 248
    :pswitch_8
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumSymbols(Landroid/content/ComponentName;I)V

    goto :goto_3

    .line 251
    :pswitch_9
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getDpm()Landroid/app/admin/DevicePolicyManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->getAdmin()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V

    goto/16 :goto_3

    .line 212
    nop

    :sswitch_data_0
    .sparse-switch
        -0x63c10184 -> :sswitch_5
        -0x546fdeb6 -> :sswitch_8
        -0x2bde7894 -> :sswitch_2
        0x1a50160 -> :sswitch_6
        0x901ad97 -> :sswitch_3
        0x178e447c -> :sswitch_4
        0x2da27681 -> :sswitch_7
        0x3b8a90b9 -> :sswitch_0
        0x48cc8f15 -> :sswitch_1
        0x595884e2 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 189
    invoke-super {p0}, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;->onResume()V

    .line 192
    invoke-direct {p0}, Lcom/afwsamples/testdpc/policy/keyguard/PasswordConstraintsFragment;->updateExpirationTimes()V

    .line 193
    return-void
.end method
