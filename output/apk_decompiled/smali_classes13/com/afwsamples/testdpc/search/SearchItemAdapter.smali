.class public Lcom/afwsamples/testdpc/search/SearchItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SearchItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/search/SearchItemAdapter$SearchItemViewHolder;,
        Lcom/afwsamples/testdpc/search/SearchItemAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter",
        "<",
        "Lcom/afwsamples/testdpc/search/SearchItemAdapter$SearchItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mOnItemClickListener:Lcom/afwsamples/testdpc/search/SearchItemAdapter$OnItemClickListener;

.field private mPreferenceIndexList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/afwsamples/testdpc/search/PreferenceIndex;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/afwsamples/testdpc/search/SearchItemAdapter$OnItemClickListener;)V
    .locals 1
    .param p1, "onItemClickListener"    # Lcom/afwsamples/testdpc/search/SearchItemAdapter$OnItemClickListener;

    .prologue
    .line 22
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/search/SearchItemAdapter;->mPreferenceIndexList:Ljava/util/List;

    .line 23
    iput-object p1, p0, Lcom/afwsamples/testdpc/search/SearchItemAdapter;->mOnItemClickListener:Lcom/afwsamples/testdpc/search/SearchItemAdapter$OnItemClickListener;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/afwsamples/testdpc/search/SearchItemAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/search/SearchItemAdapter;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/afwsamples/testdpc/search/SearchItemAdapter;->mPreferenceIndexList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/afwsamples/testdpc/search/SearchItemAdapter;)Lcom/afwsamples/testdpc/search/SearchItemAdapter$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/search/SearchItemAdapter;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/afwsamples/testdpc/search/SearchItemAdapter;->mOnItemClickListener:Lcom/afwsamples/testdpc/search/SearchItemAdapter$OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/afwsamples/testdpc/search/SearchItemAdapter;->mPreferenceIndexList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lcom/afwsamples/testdpc/search/SearchItemAdapter$SearchItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/afwsamples/testdpc/search/SearchItemAdapter;->onBindViewHolder(Lcom/afwsamples/testdpc/search/SearchItemAdapter$SearchItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/afwsamples/testdpc/search/SearchItemAdapter$SearchItemViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/afwsamples/testdpc/search/SearchItemAdapter$SearchItemViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 35
    iget-object v1, p0, Lcom/afwsamples/testdpc/search/SearchItemAdapter;->mPreferenceIndexList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/search/PreferenceIndex;

    .line 36
    .local v0, "preferenceIndex":Lcom/afwsamples/testdpc/search/PreferenceIndex;
    iget-object v1, p1, Lcom/afwsamples/testdpc/search/SearchItemAdapter$SearchItemViewHolder;->textView:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/afwsamples/testdpc/search/PreferenceIndex;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v1, p1, Lcom/afwsamples/testdpc/search/SearchItemAdapter$SearchItemViewHolder;->textView:Landroid/widget/TextView;

    new-instance v2, Lcom/afwsamples/testdpc/search/SearchItemAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/search/SearchItemAdapter$1;-><init>(Lcom/afwsamples/testdpc/search/SearchItemAdapter;Lcom/afwsamples/testdpc/search/SearchItemAdapter$SearchItemViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/afwsamples/testdpc/search/SearchItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/afwsamples/testdpc/search/SearchItemAdapter$SearchItemViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/afwsamples/testdpc/search/SearchItemAdapter$SearchItemViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 28
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b006c

    const/4 v3, 0x0

    .line 29
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 30
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, Lcom/afwsamples/testdpc/search/SearchItemAdapter$SearchItemViewHolder;

    invoke-direct {v1, v0}, Lcom/afwsamples/testdpc/search/SearchItemAdapter$SearchItemViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public setSearchResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/afwsamples/testdpc/search/PreferenceIndex;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/search/PreferenceIndex;>;"
    iput-object p1, p0, Lcom/afwsamples/testdpc/search/SearchItemAdapter;->mPreferenceIndexList:Ljava/util/List;

    .line 54
    return-void
.end method
