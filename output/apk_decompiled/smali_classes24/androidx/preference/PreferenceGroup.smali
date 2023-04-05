.class public abstract Landroidx/preference/PreferenceGroup;
.super Landroidx/preference/Preference;
.source "PreferenceGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/PreferenceGroup$SavedState;,
        Landroidx/preference/PreferenceGroup$OnExpandButtonClickListener;,
        Landroidx/preference/PreferenceGroup$PreferencePositionCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceGroup"


# instance fields
.field private mAttachedToHierarchy:Z

.field private final mClearRecycleCacheRunnable:Ljava/lang/Runnable;

.field private mCurrentPreferenceOrder:I

.field private final mHandler:Landroid/os/Handler;

.field final mIdRecycleCache:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialExpandedChildrenCount:I

.field private mOnExpandButtonClickListener:Landroidx/preference/PreferenceGroup$OnExpandButtonClickListener;

.field private mOrderingAsAdded:Z

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


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const v4, 0x7fffffff

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    iput-boolean v3, p0, Landroidx/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 68
    iput v1, p0, Landroidx/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    .line 70
    iput-boolean v1, p0, Landroidx/preference/PreferenceGroup;->mAttachedToHierarchy:Z

    .line 72
    iput v4, p0, Landroidx/preference/PreferenceGroup;->mInitialExpandedChildrenCount:I

    .line 74
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/preference/PreferenceGroup;->mOnExpandButtonClickListener:Landroidx/preference/PreferenceGroup$OnExpandButtonClickListener;

    .line 76
    new-instance v1, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v1}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v1, p0, Landroidx/preference/PreferenceGroup;->mIdRecycleCache:Landroidx/collection/SimpleArrayMap;

    .line 78
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Landroidx/preference/PreferenceGroup;->mHandler:Landroid/os/Handler;

    .line 79
    new-instance v1, Landroidx/preference/PreferenceGroup$1;

    invoke-direct {v1, p0}, Landroidx/preference/PreferenceGroup$1;-><init>(Landroidx/preference/PreferenceGroup;)V

    iput-object v1, p0, Landroidx/preference/PreferenceGroup;->mClearRecycleCacheRunnable:Ljava/lang/Runnable;

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    .line 93
    sget-object v1, Landroidx/preference/R$styleable;->PreferenceGroup:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 96
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroidx/preference/R$styleable;->PreferenceGroup_orderingFromXml:I

    sget v2, Landroidx/preference/R$styleable;->PreferenceGroup_orderingFromXml:I

    .line 97
    invoke-static {v0, v1, v2, v3}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 100
    sget v1, Landroidx/preference/R$styleable;->PreferenceGroup_initialExpandedChildrenCount:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    sget v1, Landroidx/preference/R$styleable;->PreferenceGroup_initialExpandedChildrenCount:I

    sget v2, Landroidx/preference/R$styleable;->PreferenceGroup_initialExpandedChildrenCount:I

    invoke-static {v0, v1, v2, v4}, Landroidx/core/content/res/TypedArrayUtils;->getInt(Landroid/content/res/TypedArray;III)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->setInitialExpandedChildrenCount(I)V

    .line 105
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 106
    return-void
.end method

.method private removePreferenceInt(Landroidx/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroidx/preference/Preference;

    .prologue
    .line 285
    monitor-enter p0

    .line 286
    :try_start_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->onPrepareForRemoval()V

    .line 287
    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 288
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->assignParent(Landroidx/preference/PreferenceGroup;)V

    .line 290
    :cond_0
    iget-object v2, p0, Landroidx/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 291
    .local v1, "success":Z
    if-eqz v1, :cond_2

    .line 303
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 305
    iget-object v2, p0, Landroidx/preference/PreferenceGroup;->mIdRecycleCache:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v2, p0, Landroidx/preference/PreferenceGroup;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroidx/preference/PreferenceGroup;->mClearRecycleCacheRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 307
    iget-object v2, p0, Landroidx/preference/PreferenceGroup;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroidx/preference/PreferenceGroup;->mClearRecycleCacheRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 309
    :cond_1
    iget-boolean v2, p0, Landroidx/preference/PreferenceGroup;->mAttachedToHierarchy:Z

    if-eqz v2, :cond_2

    .line 310
    invoke-virtual {p1}, Landroidx/preference/Preference;->onDetached()V

    .line 314
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    monitor-exit p0

    return v1

    .line 315
    .end local v1    # "success":Z
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public addItemFromInflater(Landroidx/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroidx/preference/Preference;

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 182
    return-void
.end method

.method public addPreference(Landroidx/preference/Preference;)Z
    .locals 10
    .param p1, "preference"    # Landroidx/preference/Preference;

    .prologue
    const/4 v7, 0x1

    .line 210
    iget-object v6, p0, Landroidx/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v7

    .line 269
    :goto_0
    return v6

    .line 213
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 214
    move-object v5, p0

    .line 215
    .local v5, "root":Landroidx/preference/PreferenceGroup;
    :goto_1
    invoke-virtual {v5}, Landroidx/preference/PreferenceGroup;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 216
    invoke-virtual {v5}, Landroidx/preference/PreferenceGroup;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v5

    goto :goto_1

    .line 218
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v5, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 220
    const-string v6, "PreferenceGroup"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found duplicated key: \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\". This can cause unintended behaviour,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " please use unique keys for every preference."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "root":Landroidx/preference/PreferenceGroup;
    :cond_2
    invoke-virtual {p1}, Landroidx/preference/Preference;->getOrder()I

    move-result v6

    const v8, 0x7fffffff

    if-ne v6, v8, :cond_4

    .line 227
    iget-boolean v6, p0, Landroidx/preference/PreferenceGroup;->mOrderingAsAdded:Z

    if-eqz v6, :cond_3

    .line 228
    iget v6, p0, Landroidx/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    add-int/lit8 v8, v6, 0x1

    iput v8, p0, Landroidx/preference/PreferenceGroup;->mCurrentPreferenceOrder:I

    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setOrder(I)V

    .line 231
    :cond_3
    instance-of v6, p1, Landroidx/preference/PreferenceGroup;

    if-eqz v6, :cond_4

    move-object v6, p1

    .line 234
    check-cast v6, Landroidx/preference/PreferenceGroup;

    iget-boolean v8, p0, Landroidx/preference/PreferenceGroup;->mOrderingAsAdded:Z

    invoke-virtual {v6, v8}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 238
    :cond_4
    iget-object v6, p0, Landroidx/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-static {v6, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v2

    .line 239
    .local v2, "insertionIndex":I
    if-gez v2, :cond_5

    .line 240
    mul-int/lit8 v6, v2, -0x1

    add-int/lit8 v2, v6, -0x1

    .line 243
    :cond_5
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->onPrepareAddPreference(Landroidx/preference/Preference;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 244
    const/4 v6, 0x0

    goto :goto_0

    .line 247
    :cond_6
    monitor-enter p0

    .line 248
    :try_start_0
    iget-object v6, p0, Landroidx/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v6, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 249
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v4

    .line 252
    .local v4, "preferenceManager":Landroidx/preference/PreferenceManager;
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 254
    .restart local v3    # "key":Ljava/lang/String;
    if-eqz v3, :cond_8

    iget-object v6, p0, Landroidx/preference/PreferenceGroup;->mIdRecycleCache:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v6, v3}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 255
    iget-object v6, p0, Landroidx/preference/PreferenceGroup;->mIdRecycleCache:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v6, v3}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 256
    .local v0, "id":J
    iget-object v6, p0, Landroidx/preference/PreferenceGroup;->mIdRecycleCache:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v6, v3}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :goto_2
    invoke-virtual {p1, v4, v0, v1}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;J)V

    .line 261
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->assignParent(Landroidx/preference/PreferenceGroup;)V

    .line 263
    iget-boolean v6, p0, Landroidx/preference/PreferenceGroup;->mAttachedToHierarchy:Z

    if-eqz v6, :cond_7

    .line 264
    invoke-virtual {p1}, Landroidx/preference/Preference;->onAttached()V

    .line 267
    :cond_7
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->notifyHierarchyChanged()V

    move v6, v7

    .line 269
    goto/16 :goto_0

    .line 249
    .end local v0    # "id":J
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "preferenceManager":Landroidx/preference/PreferenceManager;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 258
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "preferenceManager":Landroidx/preference/PreferenceManager;
    :cond_8
    invoke-virtual {v4}, Landroidx/preference/PreferenceManager;->getNextId()J

    move-result-wide v0

    .restart local v0    # "id":J
    goto :goto_2
.end method

.method protected dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 487
    invoke-super {p0, p1}, Landroidx/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 490
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 491
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 492
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 491
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 494
    :cond_0
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 476
    invoke-super {p0, p1}, Landroidx/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 479
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 480
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 481
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 480
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 483
    :cond_0
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;
    .locals 6
    .param p1, "key"    # Ljava/lang/CharSequence;

    .prologue
    .line 356
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 377
    .end local p0    # "this":Landroidx/preference/PreferenceGroup;
    :goto_0
    return-object p0

    .line 359
    .restart local p0    # "this":Landroidx/preference/PreferenceGroup;
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    .line 360
    .local v3, "preferenceCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 361
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 362
    .local v2, "preference":Landroidx/preference/Preference;
    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "curKey":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object p0, v2

    .line 365
    goto :goto_0

    .line 368
    :cond_1
    instance-of v5, v2, Landroidx/preference/PreferenceGroup;

    if-eqz v5, :cond_2

    .line 369
    check-cast v2, Landroidx/preference/PreferenceGroup;

    .line 370
    .end local v2    # "preference":Landroidx/preference/Preference;
    invoke-virtual {v2, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    .line 371
    .local v4, "returnedPreference":Landroidx/preference/Preference;
    if-eqz v4, :cond_2

    move-object p0, v4

    .line 372
    goto :goto_0

    .line 360
    .end local v4    # "returnedPreference":Landroidx/preference/Preference;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 377
    .end local v0    # "curKey":Ljava/lang/String;
    :cond_3
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public getInitialExpandedChildrenCount()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Landroidx/preference/PreferenceGroup;->mInitialExpandedChildrenCount:I

    return v0
.end method

.method public getOnExpandButtonClickListener()Landroidx/preference/PreferenceGroup$OnExpandButtonClickListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 424
    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->mOnExpandButtonClickListener:Landroidx/preference/PreferenceGroup$OnExpandButtonClickListener;

    return-object v0
.end method

.method public getPreference(I)Landroidx/preference/Preference;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 199
    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    return-object v0
.end method

.method public getPreferenceCount()I
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isAttached()Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 397
    iget-boolean v0, p0, Landroidx/preference/PreferenceGroup;->mAttachedToHierarchy:Z

    return v0
.end method

.method protected isOnSameScreenAsChildren()Z
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x1

    return v0
.end method

.method public isOrderingAsAdded()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Landroidx/preference/PreferenceGroup;->mOrderingAsAdded:Z

    return v0
.end method

.method public notifyDependencyChange(Z)V
    .locals 3
    .param p1, "disableDependents"    # Z

    .prologue
    .line 458
    invoke-super {p0, p1}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    .line 462
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 463
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 464
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Landroidx/preference/Preference;->onParentChanged(Landroidx/preference/Preference;Z)V

    .line 463
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 466
    :cond_0
    return-void
.end method

.method public onAttached()V
    .locals 3

    .prologue
    .line 429
    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    .line 433
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/preference/PreferenceGroup;->mAttachedToHierarchy:Z

    .line 436
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 437
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 438
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/Preference;->onAttached()V

    .line 437
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 440
    :cond_0
    return-void
.end method

.method public onDetached()V
    .locals 3

    .prologue
    .line 444
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    .line 447
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/preference/PreferenceGroup;->mAttachedToHierarchy:Z

    .line 450
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 451
    .local v1, "preferenceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 452
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/Preference;->onDetached()V

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 454
    :cond_0
    return-void
.end method

.method protected onPrepareAddPreference(Landroidx/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroidx/preference/Preference;

    .prologue
    .line 338
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroidx/preference/Preference;->onParentChanged(Landroidx/preference/Preference;Z)V

    .line 339
    const/4 v0, 0x1

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 504
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroidx/preference/PreferenceGroup$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 506
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 512
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 509
    check-cast v0, Landroidx/preference/PreferenceGroup$SavedState;

    .line 510
    .local v0, "groupState":Landroidx/preference/PreferenceGroup$SavedState;
    iget v1, v0, Landroidx/preference/PreferenceGroup$SavedState;->mInitialExpandedChildrenCount:I

    iput v1, p0, Landroidx/preference/PreferenceGroup;->mInitialExpandedChildrenCount:I

    .line 511
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 498
    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 499
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroidx/preference/PreferenceGroup$SavedState;

    iget v2, p0, Landroidx/preference/PreferenceGroup;->mInitialExpandedChildrenCount:I

    invoke-direct {v1, v0, v2}, Landroidx/preference/PreferenceGroup$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v1
.end method

.method public removeAll()V
    .locals 3

    .prologue
    .line 322
    monitor-enter p0

    .line 323
    :try_start_0
    iget-object v1, p0, Landroidx/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    .line 324
    .local v1, "preferenceList":Ljava/util/List;, "Ljava/util/List<Landroidx/preference/Preference;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 325
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    invoke-direct {p0, v2}, Landroidx/preference/PreferenceGroup;->removePreferenceInt(Landroidx/preference/Preference;)Z

    .line 324
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 327
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->notifyHierarchyChanged()V

    .line 329
    return-void

    .line 327
    .end local v0    # "i":I
    .end local v1    # "preferenceList":Ljava/util/List;, "Ljava/util/List<Landroidx/preference/Preference;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public removePreference(Landroidx/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroidx/preference/Preference;

    .prologue
    .line 279
    invoke-direct {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreferenceInt(Landroidx/preference/Preference;)Z

    move-result v0

    .line 280
    .local v0, "returnValue":Z
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->notifyHierarchyChanged()V

    .line 281
    return v0
.end method

.method public setInitialExpandedChildrenCount(I)V
    .locals 3
    .param p1, "expandedCount"    # I

    .prologue
    .line 159
    const v0, 0x7fffffff

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->hasKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    const-string v0, "PreferenceGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should have a key defined if it contains an expandable preference"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    iput p1, p0, Landroidx/preference/PreferenceGroup;->mInitialExpandedChildrenCount:I

    .line 164
    return-void
.end method

.method public setOnExpandButtonClickListener(Landroidx/preference/PreferenceGroup$OnExpandButtonClickListener;)V
    .locals 0
    .param p1, "onExpandButtonClickListener"    # Landroidx/preference/PreferenceGroup$OnExpandButtonClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 411
    iput-object p1, p0, Landroidx/preference/PreferenceGroup;->mOnExpandButtonClickListener:Landroidx/preference/PreferenceGroup$OnExpandButtonClickListener;

    .line 412
    return-void
.end method

.method public setOrderingAsAdded(Z)V
    .locals 0
    .param p1, "orderingAsAdded"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Landroidx/preference/PreferenceGroup;->mOrderingAsAdded:Z

    .line 129
    return-void
.end method

.method sortPreferences()V
    .locals 1

    .prologue
    .line 469
    monitor-enter p0

    .line 470
    :try_start_0
    iget-object v0, p0, Landroidx/preference/PreferenceGroup;->mPreferenceList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 471
    monitor-exit p0

    .line 472
    return-void

    .line 471
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
