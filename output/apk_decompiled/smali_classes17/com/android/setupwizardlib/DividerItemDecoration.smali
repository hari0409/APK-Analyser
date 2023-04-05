.class public Lcom/android/setupwizardlib/DividerItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "DividerItemDecoration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/DividerItemDecoration$DividerCondition;,
        Lcom/android/setupwizardlib/DividerItemDecoration$DividedViewHolder;
    }
.end annotation


# static fields
.field public static final DIVIDER_CONDITION_BOTH:I = 0x1

.field public static final DIVIDER_CONDITION_EITHER:I


# instance fields
.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerCondition:I

.field private mDividerHeight:I

.field private mDividerIntrinsicHeight:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 92
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 93
    sget-object v4, Lcom/android/setupwizardlib/R$styleable;->SuwDividerItemDecoration:[I

    invoke-virtual {p1, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 94
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v4, Lcom/android/setupwizardlib/R$styleable;->SuwDividerItemDecoration_android_listDivider:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 96
    .local v1, "divider":Landroid/graphics/drawable/Drawable;
    sget v4, Lcom/android/setupwizardlib/R$styleable;->SuwDividerItemDecoration_android_dividerHeight:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 98
    .local v3, "dividerHeight":I
    sget v4, Lcom/android/setupwizardlib/R$styleable;->SuwDividerItemDecoration_suwDividerCondition:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 101
    .local v2, "dividerCondition":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/DividerItemDecoration;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 104
    invoke-virtual {p0, v3}, Lcom/android/setupwizardlib/DividerItemDecoration;->setDividerHeight(I)V

    .line 105
    invoke-virtual {p0, v2}, Lcom/android/setupwizardlib/DividerItemDecoration;->setDividerCondition(I)V

    .line 106
    return-void
.end method

.method public static getDefault(Landroid/content/Context;)Lcom/android/setupwizardlib/DividerItemDecoration;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lcom/android/setupwizardlib/DividerItemDecoration;

    invoke-direct {v0, p0}, Lcom/android/setupwizardlib/DividerItemDecoration;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private shouldDrawDividerBelow(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 135
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 136
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    .line 137
    .local v1, "index":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .line 138
    .local v2, "lastItemIndex":I
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/DividerItemDecoration;->isDividerAllowedBelow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 139
    iget v6, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerCondition:I

    if-nez v6, :cond_3

    .line 160
    :cond_0
    :goto_0
    return v4

    .line 144
    :cond_1
    iget v6, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerCondition:I

    if-eq v6, v4, :cond_2

    if-ne v1, v2, :cond_3

    :cond_2
    move v4, v5

    .line 149
    goto :goto_0

    .line 152
    :cond_3
    if-ge v1, v2, :cond_0

    .line 153
    add-int/lit8 v6, v1, 0x1

    .line 154
    invoke-virtual {p2, v6}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 155
    .local v3, "nextHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, v3}, Lcom/android/setupwizardlib/DividerItemDecoration;->isDividerAllowedAbove(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v6

    if-nez v6, :cond_0

    move v4, v5

    .line 157
    goto :goto_0
.end method


# virtual methods
.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerCondition()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerCondition:I

    return v0
.end method

.method public getDividerHeight()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerHeight:I

    return v0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 129
    invoke-direct {p0, p2, p3}, Lcom/android/setupwizardlib/DividerItemDecoration;->shouldDrawDividerBelow(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget v0, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerHeight:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerHeight:I

    :goto_0
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 132
    :cond_0
    return-void

    .line 130
    :cond_1
    iget v0, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerIntrinsicHeight:I

    goto :goto_0
.end method

.method protected isDividerAllowedAbove(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 173
    instance-of v0, p1, Lcom/android/setupwizardlib/DividerItemDecoration$DividedViewHolder;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/setupwizardlib/DividerItemDecoration$DividedViewHolder;

    .line 174
    .end local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-interface {p1}, Lcom/android/setupwizardlib/DividerItemDecoration$DividedViewHolder;->isDividerAllowedAbove()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 173
    :goto_0
    return v0

    .line 174
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isDividerAllowedBelow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 187
    instance-of v0, p1, Lcom/android/setupwizardlib/DividerItemDecoration$DividedViewHolder;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/setupwizardlib/DividerItemDecoration$DividedViewHolder;

    .line 188
    .end local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-interface {p1}, Lcom/android/setupwizardlib/DividerItemDecoration$DividedViewHolder;->isDividerAllowedBelow()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 187
    :goto_0
    return v0

    .line 188
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 9
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 110
    iget-object v6, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_1

    .line 124
    :cond_0
    return-void

    .line 113
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    .line 114
    .local v0, "childCount":I
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v5

    .line 115
    .local v5, "width":I
    iget v6, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerHeight:I

    if-eqz v6, :cond_3

    iget v2, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerHeight:I

    .line 116
    .local v2, "dividerHeight":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "childViewIndex":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 117
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 118
    .local v4, "view":Landroid/view/View;
    invoke-direct {p0, v4, p2}, Lcom/android/setupwizardlib/DividerItemDecoration;->shouldDrawDividerBelow(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 119
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getY(Landroid/view/View;)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int v3, v6, v7

    .line 120
    .local v3, "top":I
    iget-object v6, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    add-int v8, v3, v2

    invoke-virtual {v6, v7, v3, v5, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 121
    iget-object v6, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 116
    .end local v3    # "top":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 115
    .end local v1    # "childViewIndex":I
    .end local v2    # "dividerHeight":I
    .end local v4    # "view":Landroid/view/View;
    :cond_3
    iget v2, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerIntrinsicHeight:I

    goto :goto_0
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 195
    if-eqz p1, :cond_0

    .line 196
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerIntrinsicHeight:I

    .line 200
    :goto_0
    iput-object p1, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 201
    return-void

    .line 198
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerIntrinsicHeight:I

    goto :goto_0
.end method

.method public setDividerCondition(I)V
    .locals 0
    .param p1, "dividerCondition"    # I

    .prologue
    .line 230
    iput p1, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerCondition:I

    .line 231
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 0
    .param p1, "dividerHeight"    # I

    .prologue
    .line 214
    iput p1, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerHeight:I

    .line 215
    return-void
.end method
