.class Landroidx/preference/PreferenceFragment$DividerDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "PreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DividerDecoration"
.end annotation


# instance fields
.field private mAllowDividerAfterLastItem:Z

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field final synthetic this$0:Landroidx/preference/PreferenceFragment;


# direct methods
.method constructor <init>(Landroidx/preference/PreferenceFragment;)V
    .locals 1

    .prologue
    .line 776
    iput-object p1, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->this$0:Landroidx/preference/PreferenceFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 774
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->mAllowDividerAfterLastItem:Z

    .line 777
    return-void
.end method

.method private shouldDrawDividerBelow(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "parent"    # Landroidx/recyclerview/widget/RecyclerView;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 805
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 806
    .local v1, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    instance-of v8, v1, Landroidx/preference/PreferenceViewHolder;

    if-eqz v8, :cond_0

    check-cast v1, Landroidx/preference/PreferenceViewHolder;

    .line 807
    .end local v1    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Landroidx/preference/PreferenceViewHolder;->isDividerAllowedBelow()Z

    move-result v8

    if-eqz v8, :cond_0

    move v0, v6

    .line 808
    .local v0, "dividerAllowedBelow":Z
    :goto_0
    if-nez v0, :cond_1

    .line 819
    :goto_1
    return v7

    .end local v0    # "dividerAllowedBelow":Z
    :cond_0
    move v0, v7

    .line 807
    goto :goto_0

    .line 811
    .restart local v0    # "dividerAllowedBelow":Z
    :cond_1
    iget-boolean v3, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->mAllowDividerAfterLastItem:Z

    .line 812
    .local v3, "nextAllowed":Z
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 813
    .local v2, "index":I
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v2, v8, :cond_2

    .line 814
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p2, v8}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 815
    .local v5, "nextView":Landroid/view/View;
    invoke-virtual {p2, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    .line 816
    .local v4, "nextHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    instance-of v8, v4, Landroidx/preference/PreferenceViewHolder;

    if-eqz v8, :cond_3

    check-cast v4, Landroidx/preference/PreferenceViewHolder;

    .line 817
    .end local v4    # "nextHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-virtual {v4}, Landroidx/preference/PreferenceViewHolder;->isDividerAllowedAbove()Z

    move-result v8

    if-eqz v8, :cond_3

    move v3, v6

    .end local v5    # "nextView":Landroid/view/View;
    :cond_2
    :goto_2
    move v7, v3

    .line 819
    goto :goto_1

    .restart local v5    # "nextView":Landroid/view/View;
    :cond_3
    move v3, v7

    .line 817
    goto :goto_2
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p4, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .prologue
    .line 799
    invoke-direct {p0, p2, p3}, Landroidx/preference/PreferenceFragment$DividerDecoration;->shouldDrawDividerBelow(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    iget v0, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->mDividerHeight:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 802
    :cond_0
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p3, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;

    .prologue
    .line 781
    iget-object v5, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_1

    .line 794
    :cond_0
    return-void

    .line 784
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    .line 785
    .local v0, "childCount":I
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v4

    .line 786
    .local v4, "width":I
    const/4 v1, 0x0

    .local v1, "childViewIndex":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 787
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 788
    .local v3, "view":Landroid/view/View;
    invoke-direct {p0, v3, p2}, Landroidx/preference/PreferenceFragment$DividerDecoration;->shouldDrawDividerBelow(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 789
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int v2, v5, v6

    .line 790
    .local v2, "top":I
    iget-object v5, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    iget v7, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->mDividerHeight:I

    add-int/2addr v7, v2

    invoke-virtual {v5, v6, v2, v4, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 791
    iget-object v5, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 786
    .end local v2    # "top":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setAllowDividerAfterLastItem(Z)V
    .locals 0
    .param p1, "allowDividerAfterLastItem"    # Z

    .prologue
    .line 838
    iput-boolean p1, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->mAllowDividerAfterLastItem:Z

    .line 839
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 823
    if-eqz p1, :cond_0

    .line 824
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->mDividerHeight:I

    .line 828
    :goto_0
    iput-object p1, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 829
    iget-object v0, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->this$0:Landroidx/preference/PreferenceFragment;

    iget-object v0, v0, Landroidx/preference/PreferenceFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 830
    return-void

    .line 826
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->mDividerHeight:I

    goto :goto_0
.end method

.method public setDividerHeight(I)V
    .locals 1
    .param p1, "dividerHeight"    # I

    .prologue
    .line 833
    iput p1, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->mDividerHeight:I

    .line 834
    iget-object v0, p0, Landroidx/preference/PreferenceFragment$DividerDecoration;->this$0:Landroidx/preference/PreferenceFragment;

    iget-object v0, v0, Landroidx/preference/PreferenceFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 835
    return-void
.end method
