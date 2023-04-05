.class public Lcom/afwsamples/testdpc/search/PolicySearchFragment;
.super Landroid/app/Fragment;
.source "PolicySearchFragment.java"

# interfaces
.implements Lcom/afwsamples/testdpc/search/SearchItemAdapter$OnItemClickListener;


# static fields
.field private static final MIN_LENGTH_TO_SEARCH:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PolicySearchFragment"


# instance fields
.field private mAdapter:Lcom/afwsamples/testdpc/search/SearchItemAdapter;

.field private mAvailableFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchView:Landroid/widget/SearchView;

.field private mSqliteOpenHelper:Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/afwsamples/testdpc/search/PolicySearchFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/search/PolicySearchFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->doSearchAsync(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/afwsamples/testdpc/search/PolicySearchFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/search/PolicySearchFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->mAvailableFragments:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/afwsamples/testdpc/search/PolicySearchFragment;)Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/search/PolicySearchFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->mSqliteOpenHelper:Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/afwsamples/testdpc/search/PolicySearchFragment;)Lcom/afwsamples/testdpc/search/SearchItemAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/search/PolicySearchFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->mAdapter:Lcom/afwsamples/testdpc/search/SearchItemAdapter;

    return-object v0
.end method

.method private doSearchAsync(Ljava/lang/String;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 103
    new-instance v0, Lcom/afwsamples/testdpc/search/PolicySearchFragment$3;

    invoke-direct {v0, p0, p1}, Lcom/afwsamples/testdpc/search/PolicySearchFragment$3;-><init>(Lcom/afwsamples/testdpc/search/PolicySearchFragment;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 114
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/search/PolicySearchFragment$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 115
    return-void
.end method

.method private getAvailableFragments()Ljava/util/List;
    .locals 5
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
    .line 142
    invoke-static {}, Lcom/afwsamples/testdpc/search/IndexableFragments;->values()Ljava/util/List;

    move-result-object v2

    .line 143
    .local v2, "fragments":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/search/BaseIndexableFragment;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v0, "availableFragments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/afwsamples/testdpc/search/BaseIndexableFragment;

    .line 145
    .local v1, "fragment":Lcom/afwsamples/testdpc/search/BaseIndexableFragment;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/afwsamples/testdpc/search/BaseIndexableFragment;->isAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 146
    iget-object v4, v1, Lcom/afwsamples/testdpc/search/BaseIndexableFragment;->fragmentName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    .end local v1    # "fragment":Lcom/afwsamples/testdpc/search/BaseIndexableFragment;
    :cond_1
    return-object v0
.end method

.method public static newInstance()Lcom/afwsamples/testdpc/search/PolicySearchFragment;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/afwsamples/testdpc/search/PolicySearchFragment;

    invoke-direct {v0}, Lcom/afwsamples/testdpc/search/PolicySearchFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->setHasOptionsMenu(Z)V

    .line 46
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->getInstance(Landroid/content/Context;)Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->mSqliteOpenHelper:Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;

    .line 47
    new-instance v0, Lcom/afwsamples/testdpc/search/SearchItemAdapter;

    invoke-direct {v0, p0}, Lcom/afwsamples/testdpc/search/SearchItemAdapter;-><init>(Lcom/afwsamples/testdpc/search/SearchItemAdapter$OnItemClickListener;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->mAdapter:Lcom/afwsamples/testdpc/search/SearchItemAdapter;

    .line 48
    invoke-direct {p0}, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->getAvailableFragments()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->mAvailableFragments:Ljava/util/List;

    .line 49
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 64
    const v2, 0x7f090026

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 65
    .local v1, "showSearchMenu":Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 66
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 68
    :cond_0
    const v2, 0x7f0c0001

    invoke-virtual {p2, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 69
    const v2, 0x7f090025

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 70
    .local v0, "searchItem":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 71
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->mSearchView:Landroid/widget/SearchView;

    .line 72
    iget-object v2, p0, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v3, Lcom/afwsamples/testdpc/search/PolicySearchFragment$1;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/search/PolicySearchFragment$1;-><init>(Lcom/afwsamples/testdpc/search/PolicySearchFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 88
    new-instance v2, Lcom/afwsamples/testdpc/search/PolicySearchFragment$2;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/search/PolicySearchFragment$2;-><init>(Lcom/afwsamples/testdpc/search/PolicySearchFragment;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 100
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 55
    const v1, 0x7f0b006b

    const/4 v2, 0x0

    .line 56
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 57
    .local v0, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 58
    iget-object v1, p0, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->mAdapter:Lcom/afwsamples/testdpc/search/SearchItemAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 59
    return-object v0
.end method

.method public onItemClick(Lcom/afwsamples/testdpc/search/PreferenceIndex;)V
    .locals 6
    .param p1, "preferenceIndex"    # Lcom/afwsamples/testdpc/search/PreferenceIndex;

    .prologue
    .line 121
    :try_start_0
    iget-object v3, p1, Lcom/afwsamples/testdpc/search/PreferenceIndex;->fragmentClass:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 122
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 123
    .local v2, "fragment":Landroid/app/Fragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 124
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v3, "preference_key"

    iget-object v4, p1, Lcom/afwsamples/testdpc/search/PreferenceIndex;->key:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v2, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 127
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    .line 128
    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f090078

    .line 129
    invoke-virtual {v3, v4, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "search_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 130
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 131
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 136
    .end local v0    # "arguments":Landroid/os/Bundle;
    .end local v2    # "fragment":Landroid/app/Fragment;
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v1

    .line 134
    .local v1, "ex":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v3, "PolicySearchFragment"

    const-string v4, "Fail to create the target fragment: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 132
    .end local v1    # "ex":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1
.end method
