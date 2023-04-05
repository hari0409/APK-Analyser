.class public Landroidx/preference/Preference;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/Preference$BaseSavedState;,
        Landroidx/preference/Preference$OnPreferenceChangeInternalListener;,
        Landroidx/preference/Preference$OnPreferenceClickListener;,
        Landroidx/preference/Preference$OnPreferenceChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroidx/preference/Preference;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_ORDER:I = 0x7fffffff


# instance fields
.field private mAllowDividerAbove:Z

.field private mAllowDividerBelow:Z

.field private mBaseMethodCalled:Z

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mDefaultValue:Ljava/lang/Object;

.field private mDependencyKey:Ljava/lang/String;

.field private mDependencyMet:Z

.field private mDependents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mExtras:Landroid/os/Bundle;

.field private mFragment:Ljava/lang/String;

.field private mHasId:Z

.field private mHasSingleLineTitleAttr:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mIconSpaceReserved:Z

.field private mId:J

.field private mIntent:Landroid/content/Intent;

.field private mKey:Ljava/lang/String;

.field private mLayoutResId:I

.field private mListener:Landroidx/preference/Preference$OnPreferenceChangeInternalListener;

.field private mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field private mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

.field private mOrder:I

.field private mParentDependencyMet:Z

.field private mParentGroup:Landroidx/preference/PreferenceGroup;

.field private mPersistent:Z

.field private mPreferenceDataStore:Landroidx/preference/PreferenceDataStore;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mPreferenceManager:Landroidx/preference/PreferenceManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mRequiresKey:Z

.field private mSelectable:Z

.field private mShouldDisableView:Z

.field private mSingleLineTitle:Z

.field private mSummary:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;

.field private mViewId:I

.field private mVisible:Z

.field private mWasDetached:Z

.field private mWidgetLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 383
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 384
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 373
    sget v0, Landroidx/preference/R$attr;->preferenceStyle:I

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 375
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 355
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 356
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const v3, 0x7fffffff

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput v3, p0, Landroidx/preference/Preference;->mOrder:I

    .line 125
    iput v5, p0, Landroidx/preference/Preference;->mViewId:I

    .line 137
    iput-boolean v4, p0, Landroidx/preference/Preference;->mEnabled:Z

    .line 138
    iput-boolean v4, p0, Landroidx/preference/Preference;->mSelectable:Z

    .line 140
    iput-boolean v4, p0, Landroidx/preference/Preference;->mPersistent:Z

    .line 143
    iput-boolean v4, p0, Landroidx/preference/Preference;->mDependencyMet:Z

    .line 144
    iput-boolean v4, p0, Landroidx/preference/Preference;->mParentDependencyMet:Z

    .line 145
    iput-boolean v4, p0, Landroidx/preference/Preference;->mVisible:Z

    .line 147
    iput-boolean v4, p0, Landroidx/preference/Preference;->mAllowDividerAbove:Z

    .line 148
    iput-boolean v4, p0, Landroidx/preference/Preference;->mAllowDividerBelow:Z

    .line 150
    iput-boolean v4, p0, Landroidx/preference/Preference;->mSingleLineTitle:Z

    .line 156
    iput-boolean v4, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    .line 158
    sget v1, Landroidx/preference/R$layout;->preference:I

    iput v1, p0, Landroidx/preference/Preference;->mLayoutResId:I

    .line 169
    new-instance v1, Landroidx/preference/Preference$1;

    invoke-direct {v1, p0}, Landroidx/preference/Preference$1;-><init>(Landroidx/preference/Preference;)V

    iput-object v1, p0, Landroidx/preference/Preference;->mClickListener:Landroid/view/View$OnClickListener;

    .line 262
    iput-object p1, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 264
    sget-object v1, Landroidx/preference/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 267
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroidx/preference/R$styleable;->Preference_icon:I

    sget v2, Landroidx/preference/R$styleable;->Preference_android_icon:I

    invoke-static {v0, v1, v2, v5}, Landroidx/core/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroidx/preference/Preference;->mIconResId:I

    .line 270
    sget v1, Landroidx/preference/R$styleable;->Preference_key:I

    sget v2, Landroidx/preference/R$styleable;->Preference_android_key:I

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 273
    sget v1, Landroidx/preference/R$styleable;->Preference_title:I

    sget v2, Landroidx/preference/R$styleable;->Preference_android_title:I

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/TypedArrayUtils;->getText(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 276
    sget v1, Landroidx/preference/R$styleable;->Preference_summary:I

    sget v2, Landroidx/preference/R$styleable;->Preference_android_summary:I

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/TypedArrayUtils;->getText(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroidx/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 279
    sget v1, Landroidx/preference/R$styleable;->Preference_order:I

    sget v2, Landroidx/preference/R$styleable;->Preference_android_order:I

    invoke-static {v0, v1, v2, v3}, Landroidx/core/content/res/TypedArrayUtils;->getInt(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroidx/preference/Preference;->mOrder:I

    .line 282
    sget v1, Landroidx/preference/R$styleable;->Preference_fragment:I

    sget v2, Landroidx/preference/R$styleable;->Preference_android_fragment:I

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/preference/Preference;->mFragment:Ljava/lang/String;

    .line 285
    sget v1, Landroidx/preference/R$styleable;->Preference_layout:I

    sget v2, Landroidx/preference/R$styleable;->Preference_android_layout:I

    sget v3, Landroidx/preference/R$layout;->preference:I

    invoke-static {v0, v1, v2, v3}, Landroidx/core/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroidx/preference/Preference;->mLayoutResId:I

    .line 288
    sget v1, Landroidx/preference/R$styleable;->Preference_widgetLayout:I

    sget v2, Landroidx/preference/R$styleable;->Preference_android_widgetLayout:I

    invoke-static {v0, v1, v2, v5}, Landroidx/core/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroidx/preference/Preference;->mWidgetLayoutResId:I

    .line 291
    sget v1, Landroidx/preference/R$styleable;->Preference_enabled:I

    sget v2, Landroidx/preference/R$styleable;->Preference_android_enabled:I

    invoke-static {v0, v1, v2, v4}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/preference/Preference;->mEnabled:Z

    .line 294
    sget v1, Landroidx/preference/R$styleable;->Preference_selectable:I

    sget v2, Landroidx/preference/R$styleable;->Preference_android_selectable:I

    invoke-static {v0, v1, v2, v4}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/preference/Preference;->mSelectable:Z

    .line 297
    sget v1, Landroidx/preference/R$styleable;->Preference_persistent:I

    sget v2, Landroidx/preference/R$styleable;->Preference_android_persistent:I

    invoke-static {v0, v1, v2, v4}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/preference/Preference;->mPersistent:Z

    .line 300
    sget v1, Landroidx/preference/R$styleable;->Preference_dependency:I

    sget v2, Landroidx/preference/R$styleable;->Preference_android_dependency:I

    invoke-static {v0, v1, v2}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 303
    sget v1, Landroidx/preference/R$styleable;->Preference_allowDividerAbove:I

    sget v2, Landroidx/preference/R$styleable;->Preference_allowDividerAbove:I

    iget-boolean v3, p0, Landroidx/preference/Preference;->mSelectable:Z

    invoke-static {v0, v1, v2, v3}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/preference/Preference;->mAllowDividerAbove:Z

    .line 306
    sget v1, Landroidx/preference/R$styleable;->Preference_allowDividerBelow:I

    sget v2, Landroidx/preference/R$styleable;->Preference_allowDividerBelow:I

    iget-boolean v3, p0, Landroidx/preference/Preference;->mSelectable:Z

    invoke-static {v0, v1, v2, v3}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/preference/Preference;->mAllowDividerBelow:Z

    .line 309
    sget v1, Landroidx/preference/R$styleable;->Preference_defaultValue:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 310
    sget v1, Landroidx/preference/R$styleable;->Preference_defaultValue:I

    invoke-virtual {p0, v0, v1}, Landroidx/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    .line 315
    :cond_0
    :goto_0
    sget v1, Landroidx/preference/R$styleable;->Preference_shouldDisableView:I

    sget v2, Landroidx/preference/R$styleable;->Preference_android_shouldDisableView:I

    .line 316
    invoke-static {v0, v1, v2, v4}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    .line 319
    sget v1, Landroidx/preference/R$styleable;->Preference_singleLineTitle:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/preference/Preference;->mHasSingleLineTitleAttr:Z

    .line 320
    iget-boolean v1, p0, Landroidx/preference/Preference;->mHasSingleLineTitleAttr:Z

    if-eqz v1, :cond_1

    .line 321
    sget v1, Landroidx/preference/R$styleable;->Preference_singleLineTitle:I

    sget v2, Landroidx/preference/R$styleable;->Preference_android_singleLineTitle:I

    invoke-static {v0, v1, v2, v4}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/preference/Preference;->mSingleLineTitle:Z

    .line 325
    :cond_1
    sget v1, Landroidx/preference/R$styleable;->Preference_iconSpaceReserved:I

    sget v2, Landroidx/preference/R$styleable;->Preference_android_iconSpaceReserved:I

    invoke-static {v0, v1, v2, v5}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    .line 328
    sget v1, Landroidx/preference/R$styleable;->Preference_isPreferenceVisible:I

    sget v2, Landroidx/preference/R$styleable;->Preference_isPreferenceVisible:I

    invoke-static {v0, v1, v2, v4}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/preference/Preference;->mVisible:Z

    .line 331
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 332
    return-void

    .line 311
    :cond_2
    sget v1, Landroidx/preference/R$styleable;->Preference_android_defaultValue:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    sget v1, Landroidx/preference/R$styleable;->Preference_android_defaultValue:I

    invoke-virtual {p0, v0, v1}, Landroidx/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    goto :goto_0
.end method

.method private dispatchSetInitialValue()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1554
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1555
    iget-object v1, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v3, v1}, Landroidx/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 1568
    :cond_0
    :goto_0
    return-void

    .line 1560
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    .line 1561
    .local v0, "shouldPersist":Z
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1562
    :cond_2
    iget-object v1, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1563
    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Landroidx/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    goto :goto_0

    .line 1566
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v3, v1}, Landroidx/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    goto :goto_0
.end method

.method private registerDependency()V
    .locals 4

    .prologue
    .line 1365
    iget-object v1, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1374
    :goto_0
    return-void

    .line 1367
    :cond_0
    iget-object v1, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    .line 1368
    .local v0, "preference":Landroidx/preference/Preference;
    if-eqz v0, :cond_1

    .line 1369
    invoke-direct {v0, p0}, Landroidx/preference/Preference;->registerDependent(Landroidx/preference/Preference;)V

    goto :goto_0

    .line 1371
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dependency \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" not found for preference \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" (title: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private registerDependent(Landroidx/preference/Preference;)V
    .locals 1
    .param p1, "dependent"    # Landroidx/preference/Preference;

    .prologue
    .line 1413
    iget-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    .line 1417
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1419
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroidx/preference/Preference;->onDependencyChanged(Landroidx/preference/Preference;Z)V

    .line 1420
    return-void
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 640
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 642
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 643
    check-cast v1, Landroid/view/ViewGroup;

    .line 644
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 645
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Landroidx/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 644
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 648
    .end local v0    # "i":I
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private tryCommit(Landroid/content/SharedPreferences$Editor;)V
    .locals 1
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1612
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->shouldCommit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1613
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1615
    :cond_0
    return-void
.end method

.method private unregisterDependency()V
    .locals 2

    .prologue
    .line 1377
    iget-object v1, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1378
    iget-object v1, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    .line 1379
    .local v0, "oldDependency":Landroidx/preference/Preference;
    if-eqz v0, :cond_0

    .line 1380
    invoke-direct {v0, p0}, Landroidx/preference/Preference;->unregisterDependent(Landroidx/preference/Preference;)V

    .line 1383
    .end local v0    # "oldDependency":Landroidx/preference/Preference;
    :cond_0
    return-void
.end method

.method private unregisterDependent(Landroidx/preference/Preference;)V
    .locals 1
    .param p1, "dependent"    # Landroidx/preference/Preference;

    .prologue
    .line 1429
    iget-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1430
    iget-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1432
    :cond_0
    return-void
.end method


# virtual methods
.method assignParent(Landroidx/preference/PreferenceGroup;)V
    .locals 0
    .param p1, "parentGroup"    # Landroidx/preference/PreferenceGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1318
    iput-object p1, p0, Landroidx/preference/Preference;->mParentGroup:Landroidx/preference/PreferenceGroup;

    .line 1319
    return-void
.end method

.method public callChangeListener(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1101
    iget-object v0, p0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-interface {v0, p0, p1}, Landroidx/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

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

.method public final clearWasDetached()V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1360
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/preference/Preference;->mWasDetached:Z

    .line 1361
    return-void
.end method

.method public compareTo(Landroidx/preference/Preference;)I
    .locals 2
    .param p1, "another"    # Landroidx/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1225
    iget v0, p0, Landroidx/preference/Preference;->mOrder:I

    iget v1, p1, Landroidx/preference/Preference;->mOrder:I

    if-eq v0, v1, :cond_0

    .line 1227
    iget v0, p0, Landroidx/preference/Preference;->mOrder:I

    iget v1, p1, Landroidx/preference/Preference;->mOrder:I

    sub-int/2addr v0, v1

    .line 1237
    :goto_0
    return v0

    .line 1228
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-ne v0, v1, :cond_1

    .line 1230
    const/4 v0, 0x0

    goto :goto_0

    .line 1231
    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 1232
    const/4 v0, 0x1

    goto :goto_0

    .line 1233
    :cond_2
    iget-object v0, p1, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    .line 1234
    const/4 v0, -0x1

    goto :goto_0

    .line 1237
    :cond_3
    iget-object v0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 90
    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result v0

    return v0
.end method

.method dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 2053
    invoke-virtual {p0}, Landroidx/preference/Preference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2054
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 2055
    .local v0, "state":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 2056
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    .line 2057
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2058
    iget-boolean v1, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    if-nez v1, :cond_0

    .line 2059
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2064
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 2000
    invoke-virtual {p0}, Landroidx/preference/Preference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2001
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    .line 2002
    invoke-virtual {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2003
    .local v0, "state":Landroid/os/Parcelable;
    iget-boolean v1, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    if-nez v1, :cond_0

    .line 2004
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2007
    :cond_0
    if-eqz v0, :cond_1

    .line 2008
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2011
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_1
    return-void
.end method

.method protected findPreferenceInHierarchy(Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1396
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-nez v0, :cond_1

    .line 1397
    :cond_0
    const/4 v0, 0x0

    .line 1400
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1193
    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDependency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1520
    iget-object v0, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Landroidx/preference/Preference;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 485
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/preference/Preference;->mExtras:Landroid/os/Bundle;

    .line 487
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method getFilterableStringBuilder()Ljava/lang/StringBuilder;
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 1961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1962
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1963
    .local v2, "title":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1964
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1966
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1967
    .local v1, "summary":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1968
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1970
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1972
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1974
    :cond_2
    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Landroidx/preference/Preference;->mFragment:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 762
    iget-object v0, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/preference/Preference;->mIconResId:I

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    iget v1, p0, Landroidx/preference/Preference;->mIconResId:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 765
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getId()J
    .locals 2

    .prologue
    .line 948
    iget-wide v0, p0, Landroidx/preference/Preference;->mId:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Landroidx/preference/Preference;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getLayoutResource()I
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Landroidx/preference/Preference;->mLayoutResId:I

    return v0
.end method

.method public getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;
    .locals 1

    .prologue
    .line 1122
    iget-object v0, p0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    return-object v0
.end method

.method public getOnPreferenceClickListener()Landroidx/preference/Preference$OnPreferenceClickListener;
    .locals 1

    .prologue
    .line 1140
    iget-object v0, p0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 680
    iget v0, p0, Landroidx/preference/Preference;->mOrder:I

    return v0
.end method

.method public getParent()Landroidx/preference/PreferenceGroup;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 1531
    iget-object v0, p0, Landroidx/preference/Preference;->mParentGroup:Landroidx/preference/PreferenceGroup;

    return-object v0
.end method

.method protected getPersistedBoolean(Z)Z
    .locals 3
    .param p1, "defaultReturnValue"    # Z

    .prologue
    .line 1932
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1941
    .end local p1    # "defaultReturnValue":Z
    :goto_0
    return p1

    .line 1936
    .restart local p1    # "defaultReturnValue":Z
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    .line 1937
    .local v0, "dataStore":Landroidx/preference/PreferenceDataStore;
    if-eqz v0, :cond_1

    .line 1938
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroidx/preference/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0

    .line 1941
    :cond_1
    iget-object v1, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedFloat(F)F
    .locals 3
    .param p1, "defaultReturnValue"    # F

    .prologue
    .line 1822
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1831
    .end local p1    # "defaultReturnValue":F
    :goto_0
    return p1

    .line 1826
    .restart local p1    # "defaultReturnValue":F
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    .line 1827
    .local v0, "dataStore":Landroidx/preference/PreferenceDataStore;
    if-eqz v0, :cond_1

    .line 1828
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroidx/preference/PreferenceDataStore;->getFloat(Ljava/lang/String;F)F

    move-result p1

    goto :goto_0

    .line 1831
    :cond_1
    iget-object v1, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedInt(I)I
    .locals 3
    .param p1, "defaultReturnValue"    # I

    .prologue
    .line 1767
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1776
    .end local p1    # "defaultReturnValue":I
    :goto_0
    return p1

    .line 1771
    .restart local p1    # "defaultReturnValue":I
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    .line 1772
    .local v0, "dataStore":Landroidx/preference/PreferenceDataStore;
    if-eqz v0, :cond_1

    .line 1773
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroidx/preference/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    .line 1776
    :cond_1
    iget-object v1, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedLong(J)J
    .locals 3
    .param p1, "defaultReturnValue"    # J

    .prologue
    .line 1877
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1886
    .end local p1    # "defaultReturnValue":J
    :goto_0
    return-wide p1

    .line 1881
    .restart local p1    # "defaultReturnValue":J
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    .line 1882
    .local v0, "dataStore":Landroidx/preference/PreferenceDataStore;
    if-eqz v0, :cond_1

    .line 1883
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroidx/preference/PreferenceDataStore;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    goto :goto_0

    .line 1886
    :cond_1
    iget-object v1, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    goto :goto_0
.end method

.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "defaultReturnValue"    # Ljava/lang/String;

    .prologue
    .line 1659
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1668
    .end local p1    # "defaultReturnValue":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 1663
    .restart local p1    # "defaultReturnValue":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    .line 1664
    .local v0, "dataStore":Landroidx/preference/PreferenceDataStore;
    if-eqz v0, :cond_1

    .line 1665
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroidx/preference/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1668
    :cond_1
    iget-object v1, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1712
    .local p1, "defaultReturnValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1721
    .end local p1    # "defaultReturnValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    return-object p1

    .line 1716
    .restart local p1    # "defaultReturnValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    .line 1717
    .local v0, "dataStore":Landroidx/preference/PreferenceDataStore;
    if-eqz v0, :cond_1

    .line 1718
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroidx/preference/PreferenceDataStore;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    .line 1721
    :cond_1
    iget-object v1, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v1}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    goto :goto_0
.end method

.method public getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 469
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceDataStore:Landroidx/preference/PreferenceDataStore;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceDataStore:Landroidx/preference/PreferenceDataStore;

    .line 475
    :goto_0
    return-object v0

    .line 471
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-eqz v0, :cond_1

    .line 472
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    goto :goto_0

    .line 475
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreferenceManager()Landroidx/preference/PreferenceManager;
    .locals 1

    .prologue
    .line 1277
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 1209
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1210
    :cond_0
    const/4 v0, 0x0

    .line 1213
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public getShouldDisableView()Z
    .locals 1

    .prologue
    .line 870
    iget-boolean v0, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Landroidx/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getWidgetLayoutResource()I
    .locals 1

    .prologue
    .line 549
    iget v0, p0, Landroidx/preference/Preference;->mWidgetLayoutResId:I

    return v0
.end method

.method public hasKey()Z
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 824
    iget-boolean v0, p0, Landroidx/preference/Preference;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/preference/Preference;->mDependencyMet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/preference/Preference;->mParentDependencyMet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIconSpaceReserved()Z
    .locals 1

    .prologue
    .line 1089
    iget-boolean v0, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    return v0
.end method

.method public isPersistent()Z
    .locals 1

    .prologue
    .line 1015
    iget-boolean v0, p0, Landroidx/preference/Preference;->mPersistent:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 845
    iget-boolean v0, p0, Landroidx/preference/Preference;->mSelectable:Z

    return v0
.end method

.method public final isShown()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 918
    invoke-virtual {p0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 938
    :cond_0
    :goto_0
    return v1

    .line 922
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 927
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/PreferenceManager;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    if-ne p0, v2, :cond_2

    .line 929
    const/4 v1, 0x1

    goto :goto_0

    .line 932
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    .line 933
    .local v0, "parent":Landroidx/preference/PreferenceGroup;
    if-eqz v0, :cond_0

    .line 938
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->isShown()Z

    move-result v1

    goto :goto_0
.end method

.method public isSingleLineTitle()Z
    .locals 1

    .prologue
    .line 1063
    iget-boolean v0, p0, Landroidx/preference/Preference;->mSingleLineTitle:Z

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 906
    iget-boolean v0, p0, Landroidx/preference/Preference;->mVisible:Z

    return v0
.end method

.method protected notifyChanged()V
    .locals 1

    .prologue
    .line 1255
    iget-object v0, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1256
    iget-object v0, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/Preference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Landroidx/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceChange(Landroidx/preference/Preference;)V

    .line 1258
    :cond_0
    return-void
.end method

.method public notifyDependencyChange(Z)V
    .locals 4
    .param p1, "disableDependents"    # Z

    .prologue
    .line 1442
    iget-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    .line 1444
    .local v0, "dependents":Ljava/util/List;, "Ljava/util/List<Landroidx/preference/Preference;>;"
    if-nez v0, :cond_1

    .line 1452
    :cond_0
    return-void

    .line 1448
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1449
    .local v1, "dependentsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1450
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/Preference;

    invoke-virtual {v3, p0, p1}, Landroidx/preference/Preference;->onDependencyChanged(Landroidx/preference/Preference;Z)V

    .line 1449
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected notifyHierarchyChanged()V
    .locals 1

    .prologue
    .line 1266
    iget-object v0, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1267
    iget-object v0, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/Preference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Landroidx/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceHierarchyChange(Landroidx/preference/Preference;)V

    .line 1269
    :cond_0
    return-void
.end method

.method public onAttached()V
    .locals 0

    .prologue
    .line 1330
    invoke-direct {p0}, Landroidx/preference/Preference;->registerDependency()V

    .line 1331
    return-void
.end method

.method protected onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    .locals 2
    .param p1, "preferenceManager"    # Landroidx/preference/PreferenceManager;

    .prologue
    .line 1287
    iput-object p1, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 1289
    iget-boolean v0, p0, Landroidx/preference/Preference;->mHasId:Z

    if-nez v0, :cond_0

    .line 1290
    invoke-virtual {p1}, Landroidx/preference/PreferenceManager;->getNextId()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/preference/Preference;->mId:J

    .line 1293
    :cond_0
    invoke-direct {p0}, Landroidx/preference/Preference;->dispatchSetInitialValue()V

    .line 1294
    return-void
.end method

.method protected onAttachedToHierarchy(Landroidx/preference/PreferenceManager;J)V
    .locals 2
    .param p1, "preferenceManager"    # Landroidx/preference/PreferenceManager;
    .param p2, "id"    # J
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1302
    iput-wide p2, p0, Landroidx/preference/Preference;->mId:J

    .line 1303
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/Preference;->mHasId:Z

    .line 1305
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1307
    iput-boolean v1, p0, Landroidx/preference/Preference;->mHasId:Z

    .line 1309
    return-void

    .line 1307
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Landroidx/preference/Preference;->mHasId:Z

    throw v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 12
    .param p1, "holder"    # Landroidx/preference/PreferenceViewHolder;

    .prologue
    const/4 v8, 0x4

    const/16 v9, 0x8

    const/4 v11, 0x0

    .line 565
    iget-object v7, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-object v10, p0, Landroidx/preference/Preference;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    iget-object v7, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget v10, p0, Landroidx/preference/Preference;->mViewId:I

    invoke-virtual {v7, v10}, Landroid/view/View;->setId(I)V

    .line 568
    const v7, 0x1020016

    invoke-virtual {p1, v7}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 569
    .local v6, "titleView":Landroid/widget/TextView;
    if-eqz v6, :cond_0

    .line 570
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    .line 571
    .local v5, "title":Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 572
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 574
    iget-boolean v7, p0, Landroidx/preference/Preference;->mHasSingleLineTitleAttr:Z

    if-eqz v7, :cond_0

    .line 575
    iget-boolean v7, p0, Landroidx/preference/Preference;->mSingleLineTitle:Z

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 582
    .end local v5    # "title":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    const v7, 0x1020010

    invoke-virtual {p1, v7}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 583
    .local v4, "summaryView":Landroid/widget/TextView;
    if-eqz v4, :cond_1

    .line 584
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    .line 585
    .local v3, "summary":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 586
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 593
    .end local v3    # "summary":Ljava/lang/CharSequence;
    :cond_1
    :goto_1
    const v7, 0x1020006

    invoke-virtual {p1, v7}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 594
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_5

    .line 595
    iget v7, p0, Landroidx/preference/Preference;->mIconResId:I

    if-nez v7, :cond_2

    iget-object v7, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_4

    .line 596
    :cond_2
    iget-object v7, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_3

    .line 597
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v10, p0, Landroidx/preference/Preference;->mIconResId:I

    invoke-static {v7, v10}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 599
    :cond_3
    iget-object v7, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_4

    .line 600
    iget-object v7, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 603
    :cond_4
    iget-object v7, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_a

    .line 604
    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 610
    :cond_5
    :goto_2
    sget v7, Landroidx/preference/R$id;->icon_frame:I

    invoke-virtual {p1, v7}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 611
    .local v0, "imageFrame":Landroid/view/View;
    if-nez v0, :cond_6

    .line 612
    const v7, 0x102003e

    invoke-virtual {p1, v7}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 614
    :cond_6
    if-eqz v0, :cond_7

    .line 615
    iget-object v7, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_c

    .line 616
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 622
    :cond_7
    :goto_3
    iget-boolean v7, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    if-eqz v7, :cond_e

    .line 623
    iget-object v7, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v8

    invoke-direct {p0, v7, v8}, Landroidx/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 628
    :goto_4
    invoke-virtual {p0}, Landroidx/preference/Preference;->isSelectable()Z

    move-result v2

    .line 629
    .local v2, "selectable":Z
    iget-object v7, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 630
    iget-object v7, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->setClickable(Z)V

    .line 632
    iget-boolean v7, p0, Landroidx/preference/Preference;->mAllowDividerAbove:Z

    invoke-virtual {p1, v7}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 633
    iget-boolean v7, p0, Landroidx/preference/Preference;->mAllowDividerBelow:Z

    invoke-virtual {p1, v7}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 634
    return-void

    .line 578
    .end local v0    # "imageFrame":Landroid/view/View;
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v2    # "selectable":Z
    .end local v4    # "summaryView":Landroid/widget/TextView;
    .restart local v5    # "title":Ljava/lang/CharSequence;
    :cond_8
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 589
    .end local v5    # "title":Ljava/lang/CharSequence;
    .restart local v3    # "summary":Ljava/lang/CharSequence;
    .restart local v4    # "summaryView":Landroid/widget/TextView;
    :cond_9
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 606
    .end local v3    # "summary":Ljava/lang/CharSequence;
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    :cond_a
    iget-boolean v7, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    if-eqz v7, :cond_b

    move v7, v8

    :goto_5
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_b
    move v7, v9

    goto :goto_5

    .line 618
    .restart local v0    # "imageFrame":Landroid/view/View;
    :cond_c
    iget-boolean v7, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    if-eqz v7, :cond_d

    :goto_6
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_d
    move v8, v9

    goto :goto_6

    .line 625
    :cond_e
    iget-object v7, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Landroidx/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    goto :goto_4
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 958
    return-void
.end method

.method public onDependencyChanged(Landroidx/preference/Preference;Z)V
    .locals 1
    .param p1, "dependency"    # Landroidx/preference/Preference;
    .param p2, "disableDependent"    # Z

    .prologue
    .line 1461
    iget-boolean v0, p0, Landroidx/preference/Preference;->mDependencyMet:Z

    if-ne v0, p2, :cond_0

    .line 1462
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroidx/preference/Preference;->mDependencyMet:Z

    .line 1465
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    .line 1467
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 1469
    :cond_0
    return-void

    .line 1462
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetached()V
    .locals 1

    .prologue
    .line 1340
    invoke-direct {p0}, Landroidx/preference/Preference;->unregisterDependency()V

    .line 1341
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/Preference;->mWasDetached:Z

    .line 1342
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 400
    const/4 v0, 0x0

    return-object v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0
    .param p1, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 2089
    return-void
.end method

.method public onParentChanged(Landroidx/preference/Preference;Z)V
    .locals 1
    .param p1, "parent"    # Landroidx/preference/Preference;
    .param p2, "disableChild"    # Z

    .prologue
    .line 1478
    iget-boolean v0, p0, Landroidx/preference/Preference;->mParentDependencyMet:Z

    if-ne v0, p2, :cond_0

    .line 1479
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroidx/preference/Preference;->mParentDependencyMet:Z

    .line 1482
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    .line 1484
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 1486
    :cond_0
    return-void

    .line 1479
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPrepareForRemoval()V
    .locals 0

    .prologue
    .line 1540
    invoke-direct {p0}, Landroidx/preference/Preference;->unregisterDependency()V

    .line 1541
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 2077
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    .line 2078
    sget-object v0, Landroidx/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 2079
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong state class -- expecting Preference State"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2081
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 2026
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    .line 2027
    sget-object v0, Landroidx/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method protected onSetInitialValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "defaultValue"    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1609
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1594
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->onSetInitialValue(Ljava/lang/Object;)V

    .line 1595
    return-void
.end method

.method public peekExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Landroidx/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public performClick()V
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1159
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1182
    :cond_0
    :goto_0
    return-void

    .line 1163
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->onClick()V

    .line 1165
    iget-object v3, p0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-interface {v3, p0}, Landroidx/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroidx/preference/Preference;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1169
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v2

    .line 1170
    .local v2, "preferenceManager":Landroidx/preference/PreferenceManager;
    if-eqz v2, :cond_3

    .line 1172
    invoke-virtual {v2}, Landroidx/preference/PreferenceManager;->getOnPreferenceTreeClickListener()Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v1

    .line 1173
    .local v1, "listener":Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;
    if-eqz v1, :cond_3

    invoke-interface {v1, p0}, Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1178
    .end local v1    # "listener":Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;
    :cond_3
    iget-object v3, p0, Landroidx/preference/Preference;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 1179
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1180
    .local v0, "context":Landroid/content/Context;
    iget-object v3, p0, Landroidx/preference/Preference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected performClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1148
    invoke-virtual {p0}, Landroidx/preference/Preference;->performClick()V

    .line 1149
    return-void
.end method

.method protected persistBoolean(Z)Z
    .locals 5
    .param p1, "value"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1901
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v4

    if-nez v4, :cond_1

    move v3, v2

    .line 1918
    :cond_0
    :goto_0
    return v3

    .line 1905
    :cond_1
    if-nez p1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->getPersistedBoolean(Z)Z

    move-result v2

    if-eq p1, v2, :cond_0

    .line 1910
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    .line 1911
    .local v0, "dataStore":Landroidx/preference/PreferenceDataStore;
    if-eqz v0, :cond_3

    .line 1912
    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroidx/preference/PreferenceDataStore;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1914
    :cond_3
    iget-object v2, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v2}, Landroidx/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1915
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1916
    invoke-direct {p0, v1}, Landroidx/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method protected persistFloat(F)Z
    .locals 4
    .param p1, "value"    # F

    .prologue
    const/4 v2, 0x1

    .line 1791
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1792
    const/4 v2, 0x0

    .line 1808
    :cond_0
    :goto_0
    return v2

    .line 1795
    :cond_1
    const/high16 v3, 0x7fc00000    # Float.NaN

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->getPersistedFloat(F)F

    move-result v3

    cmpl-float v3, p1, v3

    if-eqz v3, :cond_0

    .line 1800
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    .line 1801
    .local v0, "dataStore":Landroidx/preference/PreferenceDataStore;
    if-eqz v0, :cond_2

    .line 1802
    iget-object v3, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Landroidx/preference/PreferenceDataStore;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 1804
    :cond_2
    iget-object v3, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v3}, Landroidx/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1805
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1806
    invoke-direct {p0, v1}, Landroidx/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method protected persistInt(I)Z
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/4 v2, 0x1

    .line 1736
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1737
    const/4 v2, 0x0

    .line 1753
    :cond_0
    :goto_0
    return v2

    .line 1740
    :cond_1
    xor-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->getPersistedInt(I)I

    move-result v3

    if-eq p1, v3, :cond_0

    .line 1745
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    .line 1746
    .local v0, "dataStore":Landroidx/preference/PreferenceDataStore;
    if-eqz v0, :cond_2

    .line 1747
    iget-object v3, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Landroidx/preference/PreferenceDataStore;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1749
    :cond_2
    iget-object v3, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v3}, Landroidx/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1750
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1751
    invoke-direct {p0, v1}, Landroidx/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method protected persistLong(J)Z
    .locals 7
    .param p1, "value"    # J

    .prologue
    const/4 v2, 0x1

    .line 1846
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1847
    const/4 v2, 0x0

    .line 1863
    :cond_0
    :goto_0
    return v2

    .line 1850
    :cond_1
    const-wide/16 v4, -0x1

    xor-long/2addr v4, p1

    invoke-virtual {p0, v4, v5}, Landroidx/preference/Preference;->getPersistedLong(J)J

    move-result-wide v4

    cmp-long v3, p1, v4

    if-eqz v3, :cond_0

    .line 1855
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    .line 1856
    .local v0, "dataStore":Landroidx/preference/PreferenceDataStore;
    if-eqz v0, :cond_2

    .line 1857
    iget-object v3, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v3, p1, p2}, Landroidx/preference/PreferenceDataStore;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 1859
    :cond_2
    iget-object v3, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v3}, Landroidx/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1860
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1861
    invoke-direct {p0, v1}, Landroidx/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 1628
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1629
    const/4 v2, 0x0

    .line 1646
    :cond_0
    :goto_0
    return v2

    .line 1633
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1638
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    .line 1639
    .local v0, "dataStore":Landroidx/preference/PreferenceDataStore;
    if-eqz v0, :cond_2

    .line 1640
    iget-object v3, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Landroidx/preference/PreferenceDataStore;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1642
    :cond_2
    iget-object v3, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v3}, Landroidx/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1643
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1644
    invoke-direct {p0, v1}, Landroidx/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method public persistStringSet(Ljava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 1682
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1683
    const/4 v2, 0x0

    .line 1700
    :cond_0
    :goto_0
    return v2

    .line 1687
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1692
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    .line 1693
    .local v0, "dataStore":Landroidx/preference/PreferenceDataStore;
    if-eqz v0, :cond_2

    .line 1694
    iget-object v3, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Landroidx/preference/PreferenceDataStore;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    .line 1696
    :cond_2
    iget-object v3, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v3}, Landroidx/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1697
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1698
    invoke-direct {p0, v1}, Landroidx/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method

.method requireKey()V
    .locals 2

    .prologue
    .line 991
    iget-object v0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 992
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preference does not have a key assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 995
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/Preference;->mRequiresKey:Z

    .line 996
    return-void
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 2039
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2040
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 1986
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 1987
    return-void
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 1550
    iput-object p1, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    .line 1551
    return-void
.end method

.method public setDependency(Ljava/lang/String;)V
    .locals 0
    .param p1, "dependencyKey"    # Ljava/lang/String;

    .prologue
    .line 1506
    invoke-direct {p0}, Landroidx/preference/Preference;->unregisterDependency()V

    .line 1509
    iput-object p1, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 1510
    invoke-direct {p0}, Landroidx/preference/Preference;->registerDependency()V

    .line 1511
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 808
    iget-boolean v0, p0, Landroidx/preference/Preference;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 809
    iput-boolean p1, p0, Landroidx/preference/Preference;->mEnabled:Z

    .line 812
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    .line 814
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 816
    :cond_0
    return-void
.end method

.method public setFragment(Ljava/lang/String;)V
    .locals 0
    .param p1, "fragment"    # Ljava/lang/String;

    .prologue
    .line 428
    iput-object p1, p0, Landroidx/preference/Preference;->mFragment:Ljava/lang/String;

    .line 429
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "iconResId"    # I

    .prologue
    .line 751
    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 752
    iput p1, p0, Landroidx/preference/Preference;->mIconResId:I

    .line 753
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 737
    if-nez p1, :cond_0

    iget-object v0, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 738
    :cond_1
    iput-object p1, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 739
    const/4 v0, 0x0

    iput v0, p0, Landroidx/preference/Preference;->mIconResId:I

    .line 740
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 742
    :cond_2
    return-void
.end method

.method public setIconSpaceReserved(Z)V
    .locals 0
    .param p1, "iconSpaceReserved"    # Z

    .prologue
    .line 1076
    iput-boolean p1, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    .line 1077
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 1078
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 410
    iput-object p1, p0, Landroidx/preference/Preference;->mIntent:Landroid/content/Intent;

    .line 411
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 967
    iput-object p1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 969
    iget-boolean v0, p0, Landroidx/preference/Preference;->mRequiresKey:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->hasKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 970
    invoke-virtual {p0}, Landroidx/preference/Preference;->requireKey()V

    .line 972
    :cond_0
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 0
    .param p1, "layoutResId"    # I

    .prologue
    .line 515
    iput p1, p0, Landroidx/preference/Preference;->mLayoutResId:I

    .line 516
    return-void
.end method

.method final setOnPreferenceChangeInternalListener(Landroidx/preference/Preference$OnPreferenceChangeInternalListener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/preference/Preference$OnPreferenceChangeInternalListener;

    .prologue
    .line 1248
    iput-object p1, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/Preference$OnPreferenceChangeInternalListener;

    .line 1249
    return-void
.end method

.method public setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0
    .param p1, "onPreferenceChangeListener"    # Landroidx/preference/Preference$OnPreferenceChangeListener;

    .prologue
    .line 1112
    iput-object p1, p0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    .line 1113
    return-void
.end method

.method public setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V
    .locals 0
    .param p1, "onPreferenceClickListener"    # Landroidx/preference/Preference$OnPreferenceClickListener;

    .prologue
    .line 1131
    iput-object p1, p0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    .line 1132
    return-void
.end method

.method public setOrder(I)V
    .locals 1
    .param p1, "order"    # I

    .prologue
    .line 664
    iget v0, p0, Landroidx/preference/Preference;->mOrder:I

    if-eq p1, v0, :cond_0

    .line 665
    iput p1, p0, Landroidx/preference/Preference;->mOrder:I

    .line 668
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyHierarchyChanged()V

    .line 670
    :cond_0
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0
    .param p1, "persistent"    # Z

    .prologue
    .line 1038
    iput-boolean p1, p0, Landroidx/preference/Preference;->mPersistent:Z

    .line 1039
    return-void
.end method

.method public setPreferenceDataStore(Landroidx/preference/PreferenceDataStore;)V
    .locals 0
    .param p1, "dataStore"    # Landroidx/preference/PreferenceDataStore;

    .prologue
    .line 452
    iput-object p1, p0, Landroidx/preference/Preference;->mPreferenceDataStore:Landroidx/preference/PreferenceDataStore;

    .line 453
    return-void
.end method

.method public setSelectable(Z)V
    .locals 1
    .param p1, "selectable"    # Z

    .prologue
    .line 833
    iget-boolean v0, p0, Landroidx/preference/Preference;->mSelectable:Z

    if-eq v0, p1, :cond_0

    .line 834
    iput-boolean p1, p0, Landroidx/preference/Preference;->mSelectable:Z

    .line 835
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 837
    :cond_0
    return-void
.end method

.method public setShouldDisableView(Z)V
    .locals 0
    .param p1, "shouldDisableView"    # Z

    .prologue
    .line 860
    iput-boolean p1, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    .line 861
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 862
    return-void
.end method

.method public setSingleLineTitle(Z)V
    .locals 1
    .param p1, "singleLineTitle"    # Z

    .prologue
    .line 1050
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/Preference;->mHasSingleLineTitleAttr:Z

    .line 1051
    iput-boolean p1, p0, Landroidx/preference/Preference;->mSingleLineTitle:Z

    .line 1052
    return-void
.end method

.method public setSummary(I)V
    .locals 1
    .param p1, "summaryResId"    # I

    .prologue
    .line 798
    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 799
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 784
    if-nez p1, :cond_0

    iget-object v0, p0, Landroidx/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 785
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 786
    :cond_1
    iput-object p1, p0, Landroidx/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 787
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 789
    :cond_2
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleResId"    # I

    .prologue
    .line 715
    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 716
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 702
    if-nez p1, :cond_0

    iget-object v0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 703
    :cond_1
    iput-object p1, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 704
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 706
    :cond_2
    return-void
.end method

.method public setViewId(I)V
    .locals 0
    .param p1, "viewId"    # I

    .prologue
    .line 690
    iput p1, p0, Landroidx/preference/Preference;->mViewId:I

    .line 691
    return-void
.end method

.method public final setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 887
    iget-boolean v0, p0, Landroidx/preference/Preference;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 888
    iput-boolean p1, p0, Landroidx/preference/Preference;->mVisible:Z

    .line 889
    iget-object v0, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/Preference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Landroidx/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceVisibilityChange(Landroidx/preference/Preference;)V

    .line 893
    :cond_0
    return-void
.end method

.method public setWidgetLayoutResource(I)V
    .locals 0
    .param p1, "widgetLayoutResId"    # I

    .prologue
    .line 540
    iput p1, p0, Landroidx/preference/Preference;->mWidgetLayoutResId:I

    .line 541
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 1495
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldPersist()Z
    .locals 1

    .prologue
    .line 1027
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1946
    invoke-virtual {p0}, Landroidx/preference/Preference;->getFilterableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final wasDetached()Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 1351
    iget-boolean v0, p0, Landroidx/preference/Preference;->mWasDetached:Z

    return v0
.end method
