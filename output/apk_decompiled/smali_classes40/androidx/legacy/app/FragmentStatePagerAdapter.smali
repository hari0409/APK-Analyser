.class public abstract Landroidx/legacy/app/FragmentStatePagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "FragmentStatePagerAdapter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FragStatePagerAdapter"


# instance fields
.field private mCurTransaction:Landroid/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroid/app/Fragment;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private mFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedState:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment$SavedState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/FragmentManager;)V
    .locals 2
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 77
    iput-object v1, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    .line 81
    iput-object v1, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    .line 88
    iput-object p1, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 89
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 157
    move-object v0, p3

    check-cast v0, Landroid/app/Fragment;

    .line 159
    .local v0, "fragment":Landroid/app/Fragment;
    iget-object v1, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v1, :cond_0

    .line 160
    iget-object v1, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 164
    :cond_0
    :goto_0
    iget-object v1, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, p2, :cond_1

    .line 165
    iget-object v1, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    :cond_1
    iget-object v3, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 168
    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->saveFragmentInstanceState(Landroid/app/Fragment;)Landroid/app/Fragment$SavedState;

    move-result-object v1

    .line 167
    :goto_1
    invoke-virtual {v3, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v1, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v1, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 172
    return-void

    :cond_2
    move-object v1, v2

    .line 168
    goto :goto_1
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 204
    iget-object v0, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 206
    :cond_0
    return-void
.end method

.method public abstract getItem(I)Landroid/app/Fragment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 121
    iget-object v3, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, p2, :cond_0

    .line 122
    iget-object v3, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 123
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 148
    .end local v0    # "f":Landroid/app/Fragment;
    :goto_0
    return-object v0

    .line 128
    :cond_0
    iget-object v3, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v3, :cond_1

    .line 129
    iget-object v3, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    iput-object v3, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 132
    :cond_1
    invoke-virtual {p0, p2}, Landroidx/legacy/app/FragmentStatePagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v1

    .line 134
    .local v1, "fragment":Landroid/app/Fragment;
    iget-object v3, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, p2, :cond_2

    .line 135
    iget-object v3, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment$SavedState;

    .line 136
    .local v2, "fss":Landroid/app/Fragment$SavedState;
    if-eqz v2, :cond_2

    .line 137
    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setInitialSavedState(Landroid/app/Fragment$SavedState;)V

    .line 140
    .end local v2    # "fss":Landroid/app/Fragment$SavedState;
    :cond_2
    :goto_1
    iget-object v3, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, p2, :cond_3

    .line 141
    iget-object v3, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 143
    :cond_3
    invoke-virtual {v1, v5}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 144
    invoke-static {v1, v5}, Landroidx/legacy/app/FragmentCompat;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 145
    iget-object v3, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v3, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v3, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-object v0, v1

    .line 148
    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 214
    check-cast p2, Landroid/app/Fragment;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 11
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 249
    if-eqz p1, :cond_4

    move-object v0, p1

    .line 250
    check-cast v0, Landroid/os/Bundle;

    .line 251
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 252
    const-string v7, "states"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 253
    .local v2, "fss":[Landroid/os/Parcelable;
    iget-object v7, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 254
    iget-object v7, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 255
    if-eqz v2, :cond_0

    .line 256
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_0

    .line 257
    iget-object v8, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    aget-object v7, v2, v3

    check-cast v7, Landroid/app/Fragment$SavedState;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 260
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 261
    .local v6, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 262
    .local v5, "key":Ljava/lang/String;
    const-string v8, "f"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 263
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 264
    .local v4, "index":I
    iget-object v8, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v8, v0, v5}, Landroid/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 265
    .local v1, "f":Landroid/app/Fragment;
    if-eqz v1, :cond_3

    .line 266
    :goto_2
    iget-object v8, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v8, v4, :cond_2

    .line 267
    iget-object v8, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 269
    :cond_2
    const/4 v8, 0x0

    invoke-static {v1, v8}, Landroidx/legacy/app/FragmentCompat;->setMenuVisibility(Landroid/app/Fragment;Z)V

    .line 270
    iget-object v8, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v8, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 272
    :cond_3
    const-string v8, "FragStatePagerAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bad fragment at key "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 277
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "f":Landroid/app/Fragment;
    .end local v2    # "fss":[Landroid/os/Parcelable;
    .end local v4    # "index":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    :cond_4
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 223
    const/4 v4, 0x0

    .line 224
    .local v4, "state":Landroid/os/Bundle;
    iget-object v5, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 225
    new-instance v4, Landroid/os/Bundle;

    .end local v4    # "state":Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 226
    .restart local v4    # "state":Landroid/os/Bundle;
    iget-object v5, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v1, v5, [Landroid/app/Fragment$SavedState;

    .line 227
    .local v1, "fss":[Landroid/app/Fragment$SavedState;
    iget-object v5, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 228
    const-string v5, "states"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 230
    .end local v1    # "fss":[Landroid/app/Fragment$SavedState;
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 231
    iget-object v5, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 232
    .local v0, "f":Landroid/app/Fragment;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 233
    if-nez v4, :cond_1

    .line 234
    new-instance v4, Landroid/os/Bundle;

    .end local v4    # "state":Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 236
    .restart local v4    # "state":Landroid/os/Bundle;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, "key":Ljava/lang/String;
    iget-object v5, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v5, v4, v3, v0}, Landroid/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/app/Fragment;)V

    .line 230
    .end local v3    # "key":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 240
    .end local v0    # "f":Landroid/app/Fragment;
    :cond_3
    return-object v4
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 181
    move-object v0, p3

    check-cast v0, Landroid/app/Fragment;

    .line 182
    .local v0, "fragment":Landroid/app/Fragment;
    iget-object v1, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v0, v1, :cond_2

    .line 183
    iget-object v1, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 185
    iget-object v1, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-static {v1, v2}, Landroidx/legacy/app/FragmentCompat;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 187
    :cond_0
    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {v0, v3}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 189
    invoke-static {v0, v3}, Landroidx/legacy/app/FragmentCompat;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 191
    :cond_1
    iput-object v0, p0, Landroidx/legacy/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    .line 193
    :cond_2
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewPager with adapter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires a view id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    return-void
.end method
