.class public Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;
.super Lcom/afwsamples/testdpc/common/ManageAppFragment;
.source "ManagedConfigurationsFragment.java"

# interfaces
.implements Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment$RestrictionEntryEditDeleteArrayAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/afwsamples/testdpc/common/ManageAppFragment;",
        "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener",
        "<",
        "Landroid/content/RestrictionEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final RESULT_CODE_EDIT_DIALOG:I = 0x1

.field private static final SUPPORTED_TYPES:[I

.field private static final SUPPORTED_TYPES_PRE_M:[I


# instance fields
.field private mAdminComponent:Landroid/content/ComponentName;

.field private mAppRestrictionsArrayAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter",
            "<",
            "Landroid/content/RestrictionEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mEditingRestrictionEntry:Landroid/content/RestrictionEntry;

.field private mLastRestrictionEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/RestrictionEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRestrictionEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/RestrictionEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRestrictionsManager:Landroid/content/RestrictionsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->SUPPORTED_TYPES:[I

    .line 75
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->SUPPORTED_TYPES_PRE_M:[I

    return-void

    .line 67
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data

    .line 75
    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/ManageAppFragment;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mRestrictionEntries:Ljava/util/List;

    .line 400
    return-void
.end method

.method private addBundleArrayToRestrictions(Ljava/util/List;Ljava/lang/String;[Landroid/os/Parcelable;)V
    .locals 4
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # [Landroid/os/Parcelable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/RestrictionEntry;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "restrictionEntries":Ljava/util/List;, "Ljava/util/List<Landroid/content/RestrictionEntry;>;"
    array-length v2, p3

    .line 145
    .local v2, "length":I
    new-array v0, v2, [Landroid/content/RestrictionEntry;

    .line 146
    .local v0, "entriesArray":[Landroid/content/RestrictionEntry;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 147
    aget-object v3, p3, v1

    check-cast v3, Landroid/os/Bundle;

    .line 148
    invoke-virtual {p0, v3}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->convertBundleToRestrictions(Landroid/os/Bundle;)[Landroid/content/RestrictionEntry;

    move-result-object v3

    .line 147
    invoke-static {p2, v3}, Landroid/content/RestrictionEntry;->createBundleEntry(Ljava/lang/String;[Landroid/content/RestrictionEntry;)Landroid/content/RestrictionEntry;

    move-result-object v3

    aput-object v3, v0, v1

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_0
    invoke-static {p2, v0}, Landroid/content/RestrictionEntry;->createBundleArrayEntry(Ljava/lang/String;[Landroid/content/RestrictionEntry;)Landroid/content/RestrictionEntry;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    return-void
.end method

.method private addBundleEntryToRestrictions(Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/RestrictionEntry;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 137
    .line 138
    .local p1, "restrictionEntries":Ljava/util/List;, "Ljava/util/List<Landroid/content/RestrictionEntry;>;"
    invoke-virtual {p0, p3}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->convertBundleToRestrictions(Landroid/os/Bundle;)[Landroid/content/RestrictionEntry;

    move-result-object v0

    .line 137
    invoke-static {p2, v0}, Landroid/content/RestrictionEntry;->createBundleEntry(Ljava/lang/String;[Landroid/content/RestrictionEntry;)Landroid/content/RestrictionEntry;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method private convertTypeChoiceAndNullToString(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/RestrictionEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 364
    .local p1, "restrictionEntries":Ljava/util/List;, "Ljava/util/List<Landroid/content/RestrictionEntry;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/RestrictionEntry;

    .line 365
    .local v0, "entry":Landroid/content/RestrictionEntry;
    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 366
    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getType()I

    move-result v2

    if-nez v2, :cond_0

    .line 367
    :cond_1
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/content/RestrictionEntry;->setType(I)V

    goto :goto_0

    .line 370
    .end local v0    # "entry":Landroid/content/RestrictionEntry;
    :cond_2
    return-void
.end method

.method private getCurrentAppName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 339
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mManagedAppsSpinner:Landroid/widget/Spinner;

    .line 340
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 341
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private getRestrictionEntries(Landroid/content/RestrictionEntry;)[Landroid/content/RestrictionEntry;
    .locals 1
    .param p1, "restrictionEntry"    # Landroid/content/RestrictionEntry;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 397
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getRestrictions()[Landroid/content/RestrictionEntry;

    move-result-object v0

    return-object v0
.end method

.method private getRestrictionTypeFromDialogType(I)I
    .locals 2
    .param p1, "typeIndex"    # I

    .prologue
    .line 285
    packed-switch p1, :pswitch_data_0

    .line 299
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Unknown type index"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 287
    :pswitch_0
    const/4 v0, 0x1

    .line 297
    :goto_0
    return v0

    .line 289
    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 291
    :pswitch_2
    const/4 v0, 0x6

    goto :goto_0

    .line 293
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 295
    :pswitch_4
    const/4 v0, 0x7

    goto :goto_0

    .line 297
    :pswitch_5
    const/16 v0, 0x8

    goto :goto_0

    .line 285
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

.method private getTypeIndexFromRestrictionType(I)I
    .locals 2
    .param p1, "restrictionType"    # I

    .prologue
    .line 210
    packed-switch p1, :pswitch_data_0

    .line 224
    :pswitch_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Unknown restriction type"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 212
    :pswitch_1
    const/4 v0, 0x0

    .line 222
    :goto_0
    return v0

    .line 214
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 216
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 218
    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    .line 220
    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    .line 222
    :pswitch_6
    const/4 v0, 0x5

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private loadManifestAppRestrictions(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 346
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 347
    const/4 v0, 0x0

    .line 349
    .local v0, "manifestRestrictions":Ljava/util/List;, "Ljava/util/List<Landroid/content/RestrictionEntry;>;"
    :try_start_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mRestrictionsManager:Landroid/content/RestrictionsManager;

    invoke-virtual {v1, p1}, Landroid/content/RestrictionsManager;->getManifestRestrictions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 350
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->convertTypeChoiceAndNullToString(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    if-eqz v0, :cond_0

    .line 355
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/content/RestrictionEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/RestrictionEntry;

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->loadAppRestrictionsList([Landroid/content/RestrictionEntry;)V

    .line 358
    .end local v0    # "manifestRestrictions":Ljava/util/List;, "Ljava/util/List<Landroid/content/RestrictionEntry;>;"
    :cond_0
    return-void

    .line 351
    .restart local v0    # "manifestRestrictions":Ljava/util/List;, "Ljava/util/List<Landroid/content/RestrictionEntry;>;"
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private showEditDialog(Landroid/content/RestrictionEntry;)V
    .locals 11
    .param p1, "restrictionEntry"    # Landroid/content/RestrictionEntry;

    .prologue
    const/4 v1, 0x1

    .line 163
    iput-object p1, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mEditingRestrictionEntry:Landroid/content/RestrictionEntry;

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "type":I
    const/4 v3, 0x0

    .line 166
    .local v3, "value":Ljava/lang/Object;
    const-string v2, ""

    .line 167
    .local v2, "key":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 168
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getType()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->getTypeIndexFromRestrictionType(I)I

    move-result v0

    .line 170
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 199
    .end local v3    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    :pswitch_0
    sget v5, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v10, 0x17

    if-ge v5, v10, :cond_2

    sget-object v4, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->SUPPORTED_TYPES_PRE_M:[I

    .line 204
    .local v4, "supportType":[I
    :goto_1
    invoke-direct {p0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->getCurrentAppName()Ljava/lang/String;

    move-result-object v5

    .line 203
    invoke-static/range {v0 .. v5}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->newInstance(IZLjava/lang/String;Ljava/lang/Object;[ILjava/lang/String;)Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    move-result-object v7

    .line 205
    .local v7, "dialogFragment":Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;
    invoke-virtual {v7, p0, v1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 206
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v5, "dialog"

    invoke-virtual {v7, v1, v5}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 207
    return-void

    .line 172
    .end local v4    # "supportType":[I
    .end local v7    # "dialogFragment":Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;
    .restart local v3    # "value":Ljava/lang/Object;
    :pswitch_1
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 173
    .local v3, "value":Ljava/lang/Boolean;
    goto :goto_0

    .line 175
    .local v3, "value":Ljava/lang/Object;
    :pswitch_2
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getIntValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 176
    .local v3, "value":Ljava/lang/Integer;
    goto :goto_0

    .line 178
    .local v3, "value":Ljava/lang/Object;
    :pswitch_3
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getSelectedString()Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, "value":Ljava/lang/String;
    goto :goto_0

    .line 181
    .local v3, "value":Ljava/lang/Object;
    :pswitch_4
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getAllSelectedStrings()[Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "value":[Ljava/lang/String;
    goto :goto_0

    .line 185
    .local v3, "value":Ljava/lang/Object;
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->getRestrictionEntries(Landroid/content/RestrictionEntry;)[Landroid/content/RestrictionEntry;

    move-result-object v5

    .line 184
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/afwsamples/testdpc/common/RestrictionManagerCompat;->convertRestrictionsToBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v3

    .line 186
    .local v3, "value":Landroid/os/Bundle;
    goto :goto_0

    .line 188
    .local v3, "value":Ljava/lang/Object;
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->getRestrictionEntries(Landroid/content/RestrictionEntry;)[Landroid/content/RestrictionEntry;

    move-result-object v9

    .line 189
    .local v9, "restrictionEntries":[Landroid/content/RestrictionEntry;
    array-length v5, v9

    new-array v6, v5, [Landroid/os/Bundle;

    .line 190
    .local v6, "bundles":[Landroid/os/Bundle;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    array-length v5, v9

    if-ge v8, v5, :cond_1

    .line 191
    aget-object v5, v9, v8

    .line 193
    invoke-direct {p0, v5}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->getRestrictionEntries(Landroid/content/RestrictionEntry;)[Landroid/content/RestrictionEntry;

    move-result-object v5

    .line 192
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/afwsamples/testdpc/common/RestrictionManagerCompat;->convertRestrictionsToBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v5

    aput-object v5, v6, v8

    .line 190
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 195
    :cond_1
    move-object v3, v6

    .local v3, "value":[Landroid/os/Bundle;
    goto :goto_0

    .line 199
    .end local v3    # "value":[Landroid/os/Bundle;
    .end local v6    # "bundles":[Landroid/os/Bundle;
    .end local v8    # "i":I
    .end local v9    # "restrictionEntries":[Landroid/content/RestrictionEntry;
    :cond_2
    sget-object v4, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->SUPPORTED_TYPES:[I

    goto :goto_1

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private updateRestrictionEntryFromResultIntent(Landroid/content/RestrictionEntry;Landroid/content/Intent;)V
    .locals 6
    .param p1, "restrictionEntry"    # Landroid/content/RestrictionEntry;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 253
    invoke-virtual {p1}, Landroid/content/RestrictionEntry;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 282
    :goto_0
    :pswitch_0
    return-void

    .line 255
    :pswitch_1
    const-string v4, "value"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {p1, v4}, Landroid/content/RestrictionEntry;->setSelectedState(Z)V

    goto :goto_0

    .line 258
    :pswitch_2
    const-string v4, "value"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/content/RestrictionEntry;->setIntValue(I)V

    goto :goto_0

    .line 261
    :pswitch_3
    const-string v4, "value"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/RestrictionEntry;->setSelectedString(Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :pswitch_4
    const-string v4, "value"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/RestrictionEntry;->setAllSelectedStrings([Ljava/lang/String;)V

    goto :goto_0

    .line 267
    :pswitch_5
    const-string v4, "value"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 268
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->convertBundleToRestrictions(Landroid/os/Bundle;)[Landroid/content/RestrictionEntry;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/RestrictionEntry;->setRestrictions([Landroid/content/RestrictionEntry;)V

    goto :goto_0

    .line 272
    .end local v0    # "bundle":Landroid/os/Bundle;
    :pswitch_6
    const-string v4, "value"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 273
    .local v1, "bundleArray":[Landroid/os/Parcelable;
    array-length v4, v1

    new-array v3, v4, [Landroid/content/RestrictionEntry;

    .line 274
    .local v3, "restrictionEntryArray":[Landroid/content/RestrictionEntry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 275
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aget-object v4, v1, v2

    check-cast v4, Landroid/os/Bundle;

    .line 276
    invoke-virtual {p0, v4}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->convertBundleToRestrictions(Landroid/os/Bundle;)[Landroid/content/RestrictionEntry;

    move-result-object v4

    .line 275
    invoke-static {v5, v4}, Landroid/content/RestrictionEntry;->createBundleEntry(Ljava/lang/String;[Landroid/content/RestrictionEntry;)Landroid/content/RestrictionEntry;

    move-result-object v4

    aput-object v4, v3, v2

    .line 274
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 278
    :cond_0
    invoke-virtual {p1, v3}, Landroid/content/RestrictionEntry;->setRestrictions([Landroid/content/RestrictionEntry;)V

    goto :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method protected addNewRow()V
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->showEditDialog(Landroid/content/RestrictionEntry;)V

    .line 306
    return-void
.end method

.method protected convertBundleToRestrictions(Landroid/os/Bundle;)[Landroid/content/RestrictionEntry;
    .locals 8
    .param p1, "restrictionBundle"    # Landroid/os/Bundle;

    .prologue
    .line 111
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v3, "restrictionEntries":Ljava/util/List;, "Ljava/util/List<Landroid/content/RestrictionEntry;>;"
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 113
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 114
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 115
    .local v4, "value":Ljava/lang/Object;
    instance-of v6, v4, Ljava/lang/Boolean;

    if-eqz v6, :cond_1

    .line 116
    new-instance v6, Landroid/content/RestrictionEntry;

    check-cast v4, Ljava/lang/Boolean;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-direct {v6, v1, v7}, Landroid/content/RestrictionEntry;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v6, v4, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    .line 118
    new-instance v6, Landroid/content/RestrictionEntry;

    check-cast v4, Ljava/lang/Integer;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v1, v7}, Landroid/content/RestrictionEntry;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 119
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 120
    new-instance v0, Landroid/content/RestrictionEntry;

    const/4 v6, 0x6

    invoke-direct {v0, v6, v1}, Landroid/content/RestrictionEntry;-><init>(ILjava/lang/String;)V

    .line 121
    .local v0, "entry":Landroid/content/RestrictionEntry;
    check-cast v4, Ljava/lang/String;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v0, v4}, Landroid/content/RestrictionEntry;->setSelectedString(Ljava/lang/String;)V

    .line 122
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    .end local v0    # "entry":Landroid/content/RestrictionEntry;
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v6, v4, [Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 124
    new-instance v6, Landroid/content/RestrictionEntry;

    check-cast v4, [Ljava/lang/String;

    .end local v4    # "value":Ljava/lang/Object;
    check-cast v4, [Ljava/lang/String;

    invoke-direct {v6, v1, v4}, Landroid/content/RestrictionEntry;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v6, v4, Landroid/os/Bundle;

    if-eqz v6, :cond_5

    .line 126
    check-cast v4, Landroid/os/Bundle;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-direct {p0, v3, v1, v4}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->addBundleEntryToRestrictions(Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 127
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v6, v4, [Landroid/os/Parcelable;

    if-eqz v6, :cond_0

    .line 128
    check-cast v4, [Landroid/os/Parcelable;

    .end local v4    # "value":Ljava/lang/Object;
    check-cast v4, [Landroid/os/Parcelable;

    invoke-direct {p0, v3, v1, v4}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->addBundleArrayToRestrictions(Ljava/util/List;Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_0

    .line 131
    .end local v1    # "key":Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    new-array v5, v5, [Landroid/content/RestrictionEntry;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/RestrictionEntry;

    return-object v5
.end method

.method protected createListAdapter()Landroid/widget/BaseAdapter;
    .locals 6

    .prologue
    .line 319
    new-instance v0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment$RestrictionEntryEditDeleteArrayAdapter;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mRestrictionEntries:Ljava/util/List;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment$RestrictionEntryEditDeleteArrayAdapter;-><init>(Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;Landroid/content/Context;Ljava/util/List;Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mAppRestrictionsArrayAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    .line 321
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mAppRestrictionsArrayAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    return-object v0
.end method

.method protected loadAppRestrictionsList([Landroid/content/RestrictionEntry;)V
    .locals 2
    .param p1, "restrictionEntries"    # [Landroid/content/RestrictionEntry;

    .prologue
    .line 104
    if-eqz p1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mAppRestrictionsArrayAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->clear()V

    .line 106
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mAppRestrictionsArrayAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 108
    :cond_0
    return-void
.end method

.method protected loadDefault()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mManagedAppsSpinner:Landroid/widget/Spinner;

    .line 392
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 391
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->loadManifestAppRestrictions(Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "result"    # Landroid/content/Intent;

    .prologue
    .line 230
    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    .line 246
    :goto_0
    return-void

    .line 234
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 236
    :pswitch_0
    const-string v3, "type"

    const/4 v4, 0x0

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 237
    .local v2, "type":I
    const-string v3, "key"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Landroid/content/RestrictionEntry;

    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->getRestrictionTypeFromDialogType(I)I

    move-result v3

    invoke-direct {v1, v3, v0}, Landroid/content/RestrictionEntry;-><init>(ILjava/lang/String;)V

    .line 240
    .local v1, "newRestrictionEntry":Landroid/content/RestrictionEntry;
    invoke-direct {p0, v1, p3}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->updateRestrictionEntryFromResultIntent(Landroid/content/RestrictionEntry;Landroid/content/Intent;)V

    .line 241
    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mAppRestrictionsArrayAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    iget-object v4, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mEditingRestrictionEntry:Landroid/content/RestrictionEntry;

    invoke-virtual {v3, v4}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 242
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mEditingRestrictionEntry:Landroid/content/RestrictionEntry;

    .line 243
    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mAppRestrictionsArrayAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    invoke-virtual {v3, v1}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/afwsamples/testdpc/common/ManageAppFragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->setRetainInstance(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 88
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "restrictions"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/RestrictionsManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mRestrictionsManager:Landroid/content/RestrictionsManager;

    .line 90
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "delegation-app-restrictions"

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/common/Util;->hasDelegation(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mAdminComponent:Landroid/content/ComponentName;

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/DeviceAdminReceiver;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mAdminComponent:Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 311
    invoke-super {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/common/ManageAppFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 312
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0900eb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 313
    .local v0, "loadDefaultButton":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 314
    return-object v1
.end method

.method public onEditButtonClick(Landroid/content/RestrictionEntry;)V
    .locals 0
    .param p1, "restrictionEntry"    # Landroid/content/RestrictionEntry;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->showEditDialog(Landroid/content/RestrictionEntry;)V

    .line 160
    return-void
.end method

.method public bridge synthetic onEditButtonClick(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 55
    check-cast p1, Landroid/content/RestrictionEntry;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->onEditButtonClick(Landroid/content/RestrictionEntry;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Lcom/afwsamples/testdpc/common/ManageAppFragment;->onResume()V

    .line 100
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0f01c6

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 101
    return-void
.end method

.method protected onSpinnerItemSelected(Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 326
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 327
    .local v1, "pkgName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 328
    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mAdminComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, v1}, Landroid/app/admin/DevicePolicyManager;->getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 330
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->convertBundleToRestrictions(Landroid/os/Bundle;)[Landroid/content/RestrictionEntry;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->loadAppRestrictionsList([Landroid/content/RestrictionEntry;)V

    .line 331
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mRestrictionEntries:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mLastRestrictionEntries:Ljava/util/List;

    .line 333
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onSpinnerItemSelected(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 55
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->onSpinnerItemSelected(Landroid/content/pm/ApplicationInfo;)V

    return-void
.end method

.method protected resetConfig()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mAppRestrictionsArrayAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->clear()V

    .line 386
    iget-object v0, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mAppRestrictionsArrayAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mLastRestrictionEntries:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 387
    return-void
.end method

.method protected saveConfig()V
    .locals 4

    .prologue
    .line 374
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mManagedAppsSpinner:Landroid/widget/Spinner;

    .line 375
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 376
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mAdminComponent:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mRestrictionEntries:Ljava/util/List;

    .line 378
    invoke-static {v3}, Lcom/afwsamples/testdpc/common/RestrictionManagerCompat;->convertRestrictionsToBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v3

    .line 376
    invoke-virtual {v1, v2, v0, v3}, Landroid/app/admin/DevicePolicyManager;->setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 379
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mRestrictionEntries:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->mLastRestrictionEntries:Ljava/util/List;

    .line 380
    const v1, 0x7f0f02d1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->showToast(Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method protected showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/profilepolicy/apprestrictions/ManagedConfigurationsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 155
    return-void
.end method
