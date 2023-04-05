.class public Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;
.super Ljava/lang/Object;
.source "DpcPreferenceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper$UserKind;,
        Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper$AdminKind;
    }
.end annotation


# static fields
.field public static final ADMIN_ANY:I = 0xf

.field public static final ADMIN_BYOD_PROFILE_OWNER:I = 0x4

.field public static final ADMIN_DEFAULT:I = 0xe

.field public static final ADMIN_DEVICE_OWNER:I = 0x2

.field public static final ADMIN_NONE:I = 0x1

.field public static final ADMIN_NOT_NONE:I = 0xe

.field public static final ADMIN_ORG_OWNED_PROFILE_OWNER:I = 0x8

.field public static final ADMIN_PROFILE_OWNER:I = 0xc

.field public static final NO_CUSTOM_CONSTRAINT:I = 0x0

.field private static final NUM_ADMIN_KINDS:I

.field private static final NUM_USER_KINDS:I

.field public static final USER_ANY:I = 0x7

.field public static final USER_DEFAULT:I = 0x7

.field public static final USER_MANAGED_PROFILE:I = 0x4

.field public static final USER_NOT_MANAGED_PROFILE:I = 0x3

.field public static final USER_NOT_PRIMARY_USER:I = 0x6

.field public static final USER_NOT_SECONDARY_USER:I = 0x5

.field public static final USER_PRIMARY_USER:I = 0x1

.field public static final USER_SECONDARY_USER:I = 0x2


# instance fields
.field private mAdminConstraint:I

.field private mConstraintViolationSummary:Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field private mCustomConstraints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/afwsamples/testdpc/common/preference/CustomConstraint;",
            ">;"
        }
    .end annotation
.end field

.field private mDelegationConstraint:Ljava/lang/String;

.field private mMinSdkVersion:I

.field private mPreference:Landroidx/preference/Preference;

.field private mUserConstraint:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    sput v0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->NUM_ADMIN_KINDS:I

    .line 81
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    sput v0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->NUM_USER_KINDS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/preference/Preference;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preference"    # Landroidx/preference/Preference;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mConstraintViolationSummary:Ljava/lang/CharSequence;

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mCustomConstraints:Ljava/util/List;

    .line 94
    iput-object p1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mPreference:Landroidx/preference/Preference;

    .line 97
    sget-object v1, Lcom/afwsamples/testdpc/R$styleable;->DpcPreference:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 99
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mMinSdkVersion:I

    .line 100
    if-nez p3, :cond_0

    .line 102
    const/16 v1, 0x15

    iput v1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mMinSdkVersion:I

    .line 104
    :cond_0
    iget v1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mMinSdkVersion:I

    if-nez v1, :cond_1

    .line 105
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "testdpc:minSdkVersion must be specified."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_1
    const/16 v1, 0xe

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mAdminConstraint:I

    .line 111
    const/4 v1, 0x3

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mUserConstraint:I

    .line 112
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mDelegationConstraint:Ljava/lang/String;

    .line 113
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 114
    return-void
.end method

.method private findConstraintViolation()Ljava/lang/CharSequence;
    .locals 7

    .prologue
    .line 231
    sget v2, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    iget v3, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mMinSdkVersion:I

    if-ge v2, v3, :cond_0

    .line 232
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0295

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mMinSdkVersion:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 249
    :goto_0
    return-object v2

    .line 235
    :cond_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->getCurrentAdmin()I

    move-result v2

    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->getCurrentDelegations()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->isSufficientlyPrivileged(ILjava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 236
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->getAdminConstraintSummary()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 239
    :cond_1
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->getCurrentUser()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->isEnabledForUser(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 240
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->getUserConstraintSummary()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 243
    :cond_2
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mCustomConstraints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/preference/CustomConstraint;

    .line 244
    .local v0, "customConstraint":Lcom/afwsamples/testdpc/common/preference/CustomConstraint;
    invoke-interface {v0}, Lcom/afwsamples/testdpc/common/preference/CustomConstraint;->validateConstraint()I

    move-result v1

    .line 245
    .local v1, "strRes":I
    if-eqz v1, :cond_3

    .line 246
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 249
    .end local v0    # "customConstraint":Lcom/afwsamples/testdpc/common/preference/CustomConstraint;
    .end local v1    # "strRes":I
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getAdminConstraintSummary()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0xc

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    sget v1, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->NUM_ADMIN_KINDS:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 315
    .local v0, "admins":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->isEnabledForAdmin(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0f00e2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_0
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->isEnabledForAdmin(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 321
    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->isEnabledForAdmin(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 322
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0f021d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mDelegationConstraint:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 327
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mDelegationConstraint:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_2
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->joinRequirementList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 323
    :cond_3
    invoke-direct {p0, v3}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->isEnabledForAdmin(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0268

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getCurrentAdmin()I
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 253
    iget-object v4, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mContext:Landroid/content/Context;

    const-string v5, "device_policy"

    .line 254
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 255
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    iget-object v4, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 258
    const/4 v3, 0x2

    .line 269
    :cond_0
    :goto_0
    return v3

    .line 260
    :cond_1
    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 261
    sget v4, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v5, 0x1e

    if-lt v4, v5, :cond_2

    .line 262
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 261
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 263
    .local v1, "orgOwned":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 264
    const/16 v3, 0x8

    goto :goto_0

    .line 262
    .end local v1    # "orgOwned":Ljava/lang/Boolean;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 266
    .restart local v1    # "orgOwned":Ljava/lang/Boolean;
    :cond_3
    const/16 v3, 0xc

    goto :goto_0
.end method

.method private getCurrentDelegations()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    sget v2, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_0

    .line 274
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 280
    :goto_0
    return-object v2

    .line 277
    :cond_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    .line 278
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 279
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyManager;->getDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method private getCurrentUser()I
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/afwsamples/testdpc/common/Util;->isPrimaryUser(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    const/4 v0, 0x1

    .line 293
    :goto_0
    return v0

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/afwsamples/testdpc/common/Util;->isManagedProfileOwner(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    const/4 v0, 0x4

    goto :goto_0

    .line 293
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getUserConstraintSummary()Ljava/lang/String;
    .locals 3

    .prologue
    .line 333
    new-instance v0, Ljava/util/ArrayList;

    sget v1, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->NUM_USER_KINDS:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 335
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->isEnabledForUser(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0f025f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_0
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->isEnabledForUser(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 339
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0f02ba

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_1
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->isEnabledForUser(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 342
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mContext:Landroid/content/Context;

    const v2, 0x7f0f01c7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_2
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->joinRequirementList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private hasDelegation(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 305
    .local p1, "delegations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mDelegationConstraint:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isEnabledForAdmin(I)Z
    .locals 1
    .param p1, "admin"    # I

    .prologue
    .line 301
    iget v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mAdminConstraint:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEnabledForUser(I)Z
    .locals 1
    .param p1, "user"    # I

    .prologue
    .line 309
    iget v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mUserConstraint:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSufficientlyPrivileged(ILjava/util/List;)Z
    .locals 1
    .param p1, "admin"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 297
    .local p2, "delegations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->isEnabledForAdmin(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->hasDelegation(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private joinRequirementList(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 349
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0294

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 351
    .local v0, "lastItem":Ljava/lang/String;
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0296

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 353
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mContext:Landroid/content/Context;

    const v3, 0x7f0f029b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public addCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V
    .locals 1
    .param p1, "customConstraint"    # Lcom/afwsamples/testdpc/common/preference/CustomConstraint;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mCustomConstraints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->disableIfConstraintsNotMet()V

    .line 207
    return-void
.end method

.method public clearAdminConstraint()V
    .locals 1

    .prologue
    .line 153
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->setAdminConstraint(I)V

    .line 154
    return-void
.end method

.method public clearCustomConstraints()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mCustomConstraints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 217
    return-void
.end method

.method public clearNonCustomConstraints()V
    .locals 0

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->clearAdminConstraint()V

    .line 180
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->clearUserConstraint()V

    .line 181
    return-void
.end method

.method public clearUserConstraint()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->setUserConstraint(I)V

    .line 171
    return-void
.end method

.method public constraintsMet()Z
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mConstraintViolationSummary:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public disableIfConstraintsNotMet()V
    .locals 2

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->findConstraintViolation()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mConstraintViolationSummary:Ljava/lang/CharSequence;

    .line 221
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->constraintsMet()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 222
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroidx/preference/PreferenceViewHolder;

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->constraintsMet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 122
    .local v0, "summaryView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 123
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mConstraintViolationSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    .end local v0    # "summaryView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setAdminConstraint(I)V
    .locals 0
    .param p1, "adminConstraint"    # I

    .prologue
    .line 145
    iput p1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mAdminConstraint:I

    .line 146
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->disableIfConstraintsNotMet()V

    .line 147
    return-void
.end method

.method public setCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V
    .locals 0
    .param p1, "customConstraint"    # Lcom/afwsamples/testdpc/common/preference/CustomConstraint;

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->clearCustomConstraints()V

    .line 192
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->addCustomConstraint(Lcom/afwsamples/testdpc/common/preference/CustomConstraint;)V

    .line 193
    return-void
.end method

.method public setMinSdkVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mMinSdkVersion:I

    .line 136
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->disableIfConstraintsNotMet()V

    .line 137
    return-void
.end method

.method public setUserConstraint(I)V
    .locals 0
    .param p1, "userConstraint"    # I

    .prologue
    .line 162
    iput p1, p0, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->mUserConstraint:I

    .line 163
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/preference/DpcPreferenceHelper;->disableIfConstraintsNotMet()V

    .line 164
    return-void
.end method
