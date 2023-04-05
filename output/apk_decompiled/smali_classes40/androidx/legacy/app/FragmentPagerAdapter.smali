.class public abstract Landroidx/legacy/app/FragmentPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "FragmentPagerAdapter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FragmentPagerAdapter"


# instance fields
.field private mCurTransaction:Landroid/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroid/app/Fragment;

.field private final mFragmentManager:Landroid/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroid/app/FragmentManager;)V
    .locals 1
    .param p1, "fm"    # Landroid/app/FragmentManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 74
    iput-object v0, p0, Landroidx/legacy/app/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 75
    iput-object v0, p0, Landroidx/legacy/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    .line 82
    iput-object p1, p0, Landroidx/legacy/app/FragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    .line 83
    return-void
.end method

.method private static makeFragmentName(IJ)Ljava/lang/String;
    .locals 3
    .param p0, "viewId"    # I
    .param p1, "id"    # J

    .prologue
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Landroidx/legacy/app/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Landroidx/legacy/app/FragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Landroidx/legacy/app/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 149
    :cond_0
    iget-object v0, p0, Landroidx/legacy/app/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    check-cast p3, Landroid/app/Fragment;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 150
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Landroidx/legacy/app/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Landroidx/legacy/app/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/legacy/app/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 182
    iget-object v0, p0, Landroidx/legacy/app/FragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 184
    :cond_0
    return-void
.end method

.method public abstract getItem(I)Landroid/app/Fragment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 225
    int-to-long v0, p1

    return-wide v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 112
    iget-object v4, p0, Landroidx/legacy/app/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    if-nez v4, :cond_0

    .line 113
    iget-object v4, p0, Landroidx/legacy/app/FragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    iput-object v4, p0, Landroidx/legacy/app/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    .line 116
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/legacy/app/FragmentPagerAdapter;->getItemId(I)J

    move-result-wide v2

    .line 119
    .local v2, "itemId":J
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v4

    invoke-static {v4, v2, v3}, Landroidx/legacy/app/FragmentPagerAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "name":Ljava/lang/String;
    iget-object v4, p0, Landroidx/legacy/app/FragmentPagerAdapter;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v4, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 121
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_2

    .line 123
    iget-object v4, p0, Landroidx/legacy/app/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {v4, v0}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 130
    :goto_0
    iget-object v4, p0, Landroidx/legacy/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v0, v4, :cond_1

    .line 131
    invoke-virtual {v0, v7}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 132
    invoke-static {v0, v7}, Landroidx/legacy/app/FragmentCompat;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 135
    :cond_1
    return-object v0

    .line 125
    :cond_2
    invoke-virtual {p0, p2}, Landroidx/legacy/app/FragmentPagerAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    .line 127
    iget-object v4, p0, Landroidx/legacy/app/FragmentPagerAdapter;->mCurTransaction:Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v5

    .line 128
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v6

    invoke-static {v6, v2, v3}, Landroidx/legacy/app/FragmentPagerAdapter;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v6

    .line 127
    invoke-virtual {v4, v5, v0, v6}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 192
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
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 210
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 201
    const/4 v0, 0x0

    return-object v0
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

    .line 159
    move-object v0, p3

    check-cast v0, Landroid/app/Fragment;

    .line 160
    .local v0, "fragment":Landroid/app/Fragment;
    iget-object v1, p0, Landroidx/legacy/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eq v0, v1, :cond_2

    .line 161
    iget-object v1, p0, Landroidx/legacy/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Landroidx/legacy/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 163
    iget-object v1, p0, Landroidx/legacy/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    invoke-static {v1, v2}, Landroidx/legacy/app/FragmentCompat;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 165
    :cond_0
    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {v0, v3}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 167
    invoke-static {v0, v3}, Landroidx/legacy/app/FragmentCompat;->setUserVisibleHint(Landroid/app/Fragment;Z)V

    .line 169
    :cond_1
    iput-object v0, p0, Landroidx/legacy/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Landroid/app/Fragment;

    .line 171
    :cond_2
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 100
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

    .line 103
    :cond_0
    return-void
.end method
