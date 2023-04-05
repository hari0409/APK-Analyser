.class public Landroidx/preference/PreferenceGroupAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeInternalListener;
.implements Landroidx/preference/PreferenceGroup$PreferencePositionCallback;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter",
        "<",
        "Landroidx/preference/PreferenceViewHolder;",
        ">;",
        "Landroidx/preference/Preference$OnPreferenceChangeInternalListener;",
        "Landroidx/preference/PreferenceGroup$PreferencePositionCallback;"
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPreferenceGroup:Landroidx/preference/PreferenceGroup;

.field private mPreferenceGroupController:Landroidx/preference/CollapsiblePreferenceGroupController;

.field private mPreferenceLayouts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceListInternal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncRunnable:Ljava/lang/Runnable;

.field private mTempPreferenceLayout:Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceGroup;)V
    .locals 1
    .param p1, "preferenceGroup"    # Landroidx/preference/PreferenceGroup;

    .prologue
    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/preference/PreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;Landroid/os/Handler;)V

    .line 123
    return-void
.end method

.method private constructor <init>(Landroidx/preference/PreferenceGroup;Landroid/os/Handler;)V
    .locals 1
    .param p1, "preferenceGroup"    # Landroidx/preference/PreferenceGroup;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 125
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 74
    new-instance v0, Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {v0}, Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>()V

    iput-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 80
    new-instance v0, Landroidx/preference/PreferenceGroupAdapter$1;

    invoke-direct {v0, p0}, Landroidx/preference/PreferenceGroupAdapter$1;-><init>(Landroidx/preference/PreferenceGroupAdapter;)V

    iput-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    .line 126
    iput-object p1, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    .line 127
    iput-object p2, p0, Landroidx/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    .line 128
    new-instance v0, Landroidx/preference/CollapsiblePreferenceGroupController;

    invoke-direct {v0, p1, p0}, Landroidx/preference/CollapsiblePreferenceGroupController;-><init>(Landroidx/preference/PreferenceGroup;Landroidx/preference/PreferenceGroupAdapter;)V

    iput-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceGroupController:Landroidx/preference/CollapsiblePreferenceGroupController;

    .line 131
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->setOnPreferenceChangeInternalListener(Landroidx/preference/Preference$OnPreferenceChangeInternalListener;)V

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    .line 137
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    instance-of v0, v0, Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    check-cast v0, Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->shouldUseGeneratedIds()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroupAdapter;->setHasStableIds(Z)V

    .line 143
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroupAdapter;->syncMyPreferences()V

    .line 144
    return-void

    .line 140
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroupAdapter;->setHasStableIds(Z)V

    goto :goto_0
.end method

.method private addPreferenceClassName(Landroidx/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroidx/preference/Preference;

    .prologue
    .line 246
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroidx/preference/PreferenceGroupAdapter;->createPreferenceLayout(Landroidx/preference/Preference;Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;)Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;

    move-result-object v0

    .line 247
    .local v0, "pl":Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;
    iget-object v1, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    iget-object v1, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_0
    return-void
.end method

.method static createInstanceWithCustomHandler(Landroidx/preference/PreferenceGroup;Landroid/os/Handler;)Landroidx/preference/PreferenceGroupAdapter;
    .locals 1
    .param p0, "preferenceGroup"    # Landroidx/preference/PreferenceGroup;
    .param p1, "handler"    # Landroid/os/Handler;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 149
    new-instance v0, Landroidx/preference/PreferenceGroupAdapter;

    invoke-direct {v0, p0, p1}, Landroidx/preference/PreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;Landroid/os/Handler;)V

    return-object v0
.end method

.method private createPreferenceLayout(Landroidx/preference/Preference;Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;)Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;
    .locals 2
    .param p1, "preference"    # Landroidx/preference/Preference;
    .param p2, "in"    # Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;

    .prologue
    .line 238
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 239
    .local v0, "pl":Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;->mName:Ljava/lang/String;

    .line 240
    invoke-virtual {p1}, Landroidx/preference/Preference;->getLayoutResource()I

    move-result v1

    iput v1, v0, Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;->mResId:I

    .line 241
    invoke-virtual {p1}, Landroidx/preference/Preference;->getWidgetLayoutResource()I

    move-result v1

    iput v1, v0, Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;->mWidgetResId:I

    .line 242
    return-object v0

    .line 238
    .end local v0    # "pl":Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;
    :cond_0
    new-instance v0, Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {v0}, Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>()V

    goto :goto_0
.end method

.method private flattenPreferenceGroup(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V
    .locals 5
    .param p2, "group"    # Landroidx/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/preference/Preference;",
            ">;",
            "Landroidx/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, "preferences":Ljava/util/List;, "Ljava/util/List<Landroidx/preference/Preference;>;"
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->sortPreferences()V

    .line 213
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 214
    .local v0, "groupSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 215
    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 217
    .local v2, "preference":Landroidx/preference/Preference;
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-direct {p0, v2}, Landroidx/preference/PreferenceGroupAdapter;->addPreferenceClassName(Landroidx/preference/Preference;)V

    .line 221
    instance-of v4, v2, Landroidx/preference/PreferenceGroup;

    if-eqz v4, :cond_0

    move-object v3, v2

    .line 222
    check-cast v3, Landroidx/preference/PreferenceGroup;

    .line 223
    .local v3, "preferenceAsGroup":Landroidx/preference/PreferenceGroup;
    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->isOnSameScreenAsChildren()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 224
    invoke-direct {p0, p1, v3}, Landroidx/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V

    .line 228
    .end local v3    # "preferenceAsGroup":Landroidx/preference/PreferenceGroup;
    :cond_0
    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeInternalListener(Landroidx/preference/Preference$OnPreferenceChangeInternalListener;)V

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    .end local v2    # "preference":Landroidx/preference/Preference;
    :cond_1
    return-void
.end method


# virtual methods
.method public getItem(I)Landroidx/preference/Preference;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 258
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroupAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 259
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 264
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroupAdapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    const-wide/16 v0, -0x1

    .line 267
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/Preference;->getId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 333
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object v0

    .line 335
    .local v0, "preference":Landroidx/preference/Preference;
    iget-object v4, p0, Landroidx/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {p0, v0, v4}, Landroidx/preference/PreferenceGroupAdapter;->createPreferenceLayout(Landroidx/preference/Preference;Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;)Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;

    move-result-object v4

    iput-object v4, p0, Landroidx/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 337
    iget-object v4, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    iget-object v5, p0, Landroidx/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 338
    .local v1, "viewType":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    move v2, v1

    .end local v1    # "viewType":I
    .local v2, "viewType":I
    move v3, v1

    .line 343
    .end local v2    # "viewType":I
    .local v3, "viewType":I
    :goto_0
    return v3

    .line 341
    .end local v3    # "viewType":I
    .restart local v1    # "viewType":I
    :cond_0
    iget-object v4, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 342
    iget-object v4, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    new-instance v5, Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;

    iget-object v6, p0, Landroidx/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {v5, v6}, Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>(Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v1

    .end local v1    # "viewType":I
    .restart local v2    # "viewType":I
    move v3, v1

    .line 343
    .end local v2    # "viewType":I
    .restart local v3    # "viewType":I
    goto :goto_0
.end method

.method public getPreferenceAdapterPosition(Landroidx/preference/Preference;)I
    .locals 4
    .param p1, "preference"    # Landroidx/preference/Preference;

    .prologue
    .line 398
    iget-object v3, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 399
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 400
    iget-object v3, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    .line 401
    .local v0, "candidate":Landroidx/preference/Preference;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 405
    .end local v0    # "candidate":Landroidx/preference/Preference;
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 399
    .restart local v0    # "candidate":Landroidx/preference/Preference;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 405
    .end local v0    # "candidate":Landroidx/preference/Preference;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getPreferenceAdapterPosition(Ljava/lang/String;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 386
    iget-object v3, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 387
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 388
    iget-object v3, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    .line 389
    .local v0, "candidate":Landroidx/preference/Preference;
    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 393
    .end local v0    # "candidate":Landroidx/preference/Preference;
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 387
    .restart local v0    # "candidate":Landroidx/preference/Preference;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 393
    .end local v0    # "candidate":Landroidx/preference/Preference;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Landroidx/preference/PreferenceViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 380
    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object v0

    .line 381
    .local v0, "preference":Landroidx/preference/Preference;
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 382
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 45
    check-cast p1, Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceGroupAdapter;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/preference/PreferenceViewHolder;
    .locals 9
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 349
    iget-object v6, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 350
    .local v3, "pl":Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 352
    .local v2, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    sget-object v8, Landroidx/preference/R$styleable;->BackgroundStyle:[I

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 353
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v6, Landroidx/preference/R$styleable;->BackgroundStyle_android_selectableItemBackground:I

    .line 354
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 355
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 356
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x1080062

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 359
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 361
    iget v6, v3, Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;->mResId:I

    const/4 v7, 0x0

    invoke-virtual {v2, v6, p1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 362
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_1

    .line 363
    invoke-static {v4, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 366
    :cond_1
    const v6, 0x1020018

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 367
    .local v5, "widgetFrame":Landroid/view/ViewGroup;
    if-eqz v5, :cond_2

    .line 368
    iget v6, v3, Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;->mWidgetResId:I

    if-eqz v6, :cond_3

    .line 369
    iget v6, v3, Landroidx/preference/PreferenceGroupAdapter$PreferenceLayout;->mWidgetResId:I

    invoke-virtual {v2, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 375
    :cond_2
    :goto_0
    new-instance v6, Landroidx/preference/PreferenceViewHolder;

    invoke-direct {v6, v4}, Landroidx/preference/PreferenceViewHolder;-><init>(Landroid/view/View;)V

    return-object v6

    .line 371
    :cond_3
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceGroupAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/preference/PreferenceViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroidx/preference/Preference;

    .prologue
    .line 272
    iget-object v1, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 274
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 276
    invoke-virtual {p0, v0, p1}, Landroidx/preference/PreferenceGroupAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 278
    :cond_0
    return-void
.end method

.method public onPreferenceHierarchyChange(Landroidx/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroidx/preference/Preference;

    .prologue
    .line 282
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 283
    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 284
    return-void
.end method

.method public onPreferenceVisibilityChange(Landroidx/preference/Preference;)V
    .locals 6
    .param p1, "preference"    # Landroidx/preference/Preference;

    .prologue
    .line 288
    iget-object v4, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v4, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceGroupController:Landroidx/preference/CollapsiblePreferenceGroupController;

    invoke-virtual {v4, p1}, Landroidx/preference/CollapsiblePreferenceGroupController;->onPreferenceVisibilityChange(Landroidx/preference/Preference;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 294
    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 298
    const/4 v2, -0x1

    .line 299
    .local v2, "previousVisibleIndex":I
    iget-object v4, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 300
    .local v1, "pref":Landroidx/preference/Preference;
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 308
    .end local v1    # "pref":Landroidx/preference/Preference;
    :cond_3
    iget-object v4, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v4, v5, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 310
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Landroidx/preference/PreferenceGroupAdapter;->notifyItemInserted(I)V

    goto :goto_0

    .line 303
    .restart local v1    # "pref":Landroidx/preference/Preference;
    :cond_4
    invoke-virtual {v1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 304
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 315
    .end local v1    # "pref":Landroidx/preference/Preference;
    .end local v2    # "previousVisibleIndex":I
    :cond_5
    iget-object v4, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 316
    .local v0, "listSize":I
    const/4 v3, 0x0

    .local v3, "removalIndex":I
    :goto_2
    if-ge v3, v0, :cond_6

    .line 317
    iget-object v4, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 326
    :cond_6
    iget-object v4, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 327
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceGroupAdapter;->notifyItemRemoved(I)V

    goto :goto_0

    .line 319
    :cond_7
    add-int/lit8 v4, v0, -0x1

    if-eq v3, v4, :cond_0

    .line 316
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method syncMyPreferences()V
    .locals 9

    .prologue
    .line 154
    iget-object v7, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/Preference;

    .line 157
    .local v3, "preference":Landroidx/preference/Preference;
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroidx/preference/Preference;->setOnPreferenceChangeInternalListener(Landroidx/preference/Preference$OnPreferenceChangeInternalListener;)V

    goto :goto_0

    .line 159
    .end local v3    # "preference":Landroidx/preference/Preference;
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v7, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 160
    .local v1, "fullPreferenceList":Ljava/util/List;, "Ljava/util/List<Landroidx/preference/Preference;>;"
    iget-object v7, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-direct {p0, v1, v7}, Landroidx/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V

    .line 162
    iget-object v7, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceGroupController:Landroidx/preference/CollapsiblePreferenceGroupController;

    iget-object v8, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    .line 163
    invoke-virtual {v7, v8}, Landroidx/preference/CollapsiblePreferenceGroupController;->createVisiblePreferencesList(Landroidx/preference/PreferenceGroup;)Ljava/util/List;

    move-result-object v6

    .line 165
    .local v6, "visiblePreferenceList":Ljava/util/List;, "Ljava/util/List<Landroidx/preference/Preference;>;"
    iget-object v2, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 166
    .local v2, "oldVisibleList":Ljava/util/List;, "Ljava/util/List<Landroidx/preference/Preference;>;"
    iput-object v6, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 167
    iput-object v1, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceListInternal:Ljava/util/List;

    .line 169
    iget-object v7, p0, Landroidx/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v7}, Landroidx/preference/PreferenceGroup;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v4

    .line 170
    .local v4, "preferenceManager":Landroidx/preference/PreferenceManager;
    if-eqz v4, :cond_1

    .line 171
    invoke-virtual {v4}, Landroidx/preference/PreferenceManager;->getPreferenceComparisonCallback()Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 173
    invoke-virtual {v4}, Landroidx/preference/PreferenceManager;->getPreferenceComparisonCallback()Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;

    move-result-object v0

    .line 174
    .local v0, "comparisonCallback":Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;
    new-instance v7, Landroidx/preference/PreferenceGroupAdapter$2;

    invoke-direct {v7, p0, v2, v6, v0}, Landroidx/preference/PreferenceGroupAdapter$2;-><init>(Landroidx/preference/PreferenceGroupAdapter;Ljava/util/List;Ljava/util/List;Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;)V

    invoke-static {v7}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v5

    .line 200
    .local v5, "result":Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    invoke-virtual {v5, p0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 205
    .end local v0    # "comparisonCallback":Landroidx/preference/PreferenceManager$PreferenceComparisonCallback;
    .end local v5    # "result":Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/Preference;

    .line 206
    .restart local v3    # "preference":Landroidx/preference/Preference;
    invoke-virtual {v3}, Landroidx/preference/Preference;->clearWasDetached()V

    goto :goto_2

    .line 202
    .end local v3    # "preference":Landroidx/preference/Preference;
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroupAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 208
    :cond_2
    return-void
.end method
