.class public Lcom/android/setupwizardlib/items/RecyclerItemAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RecyclerItemAdapter.java"

# interfaces
.implements Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/items/RecyclerItemAdapter$PatchedLayerDrawable;,
        Lcom/android/setupwizardlib/items/RecyclerItemAdapter$OnItemSelectedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/setupwizardlib/items/ItemViewHolder;",
        ">;",
        "Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecyclerItemAdapter"

.field public static final TAG_NO_BACKGROUND:Ljava/lang/String; = "noBackground"


# instance fields
.field private final mItemHierarchy:Lcom/android/setupwizardlib/items/ItemHierarchy;

.field private mListener:Lcom/android/setupwizardlib/items/RecyclerItemAdapter$OnItemSelectedListener;


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/items/ItemHierarchy;)V
    .locals 1
    .param p1, "hierarchy"    # Lcom/android/setupwizardlib/items/ItemHierarchy;

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->mItemHierarchy:Lcom/android/setupwizardlib/items/ItemHierarchy;

    .line 67
    iget-object v0, p0, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->mItemHierarchy:Lcom/android/setupwizardlib/items/ItemHierarchy;

    invoke-interface {v0, p0}, Lcom/android/setupwizardlib/items/ItemHierarchy;->registerObserver(Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;)V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/setupwizardlib/items/RecyclerItemAdapter;)Lcom/android/setupwizardlib/items/RecyclerItemAdapter$OnItemSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/setupwizardlib/items/RecyclerItemAdapter;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->mListener:Lcom/android/setupwizardlib/items/RecyclerItemAdapter$OnItemSelectedListener;

    return-object v0
.end method


# virtual methods
.method public findItemById(I)Lcom/android/setupwizardlib/items/ItemHierarchy;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->mItemHierarchy:Lcom/android/setupwizardlib/items/ItemHierarchy;

    invoke-interface {v0, p1}, Lcom/android/setupwizardlib/items/ItemHierarchy;->findItemById(I)Lcom/android/setupwizardlib/items/ItemHierarchy;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lcom/android/setupwizardlib/items/IItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->mItemHierarchy:Lcom/android/setupwizardlib/items/ItemHierarchy;

    invoke-interface {v0, p1}, Lcom/android/setupwizardlib/items/ItemHierarchy;->getItemAt(I)Lcom/android/setupwizardlib/items/IItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->mItemHierarchy:Lcom/android/setupwizardlib/items/ItemHierarchy;

    invoke-interface {v0}, Lcom/android/setupwizardlib/items/ItemHierarchy;->getCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 5
    .param p1, "position"    # I

    .prologue
    const-wide/16 v2, -0x1

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->getItem(I)Lcom/android/setupwizardlib/items/IItem;

    move-result-object v1

    .line 82
    .local v1, "mItem":Lcom/android/setupwizardlib/items/IItem;
    instance-of v4, v1, Lcom/android/setupwizardlib/items/AbstractItem;

    if-eqz v4, :cond_0

    .line 83
    check-cast v1, Lcom/android/setupwizardlib/items/AbstractItem;

    .end local v1    # "mItem":Lcom/android/setupwizardlib/items/IItem;
    invoke-virtual {v1}, Lcom/android/setupwizardlib/items/AbstractItem;->getId()I

    move-result v0

    .line 84
    .local v0, "id":I
    if-lez v0, :cond_0

    int-to-long v2, v0

    .line 86
    .end local v0    # "id":I
    :cond_0
    return-wide v2
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->getItem(I)Lcom/android/setupwizardlib/items/IItem;

    move-result-object v0

    .line 156
    .local v0, "item":Lcom/android/setupwizardlib/items/IItem;
    invoke-interface {v0}, Lcom/android/setupwizardlib/items/IItem;->getLayoutResource()I

    move-result v1

    return v1
.end method

.method public getRootItemHierarchy()Lcom/android/setupwizardlib/items/ItemHierarchy;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->mItemHierarchy:Lcom/android/setupwizardlib/items/ItemHierarchy;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Lcom/android/setupwizardlib/items/ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->onBindViewHolder(Lcom/android/setupwizardlib/items/ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/setupwizardlib/items/ItemViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/android/setupwizardlib/items/ItemViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 145
    invoke-virtual {p0, p2}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->getItem(I)Lcom/android/setupwizardlib/items/IItem;

    move-result-object v0

    .line 146
    .local v0, "item":Lcom/android/setupwizardlib/items/IItem;
    invoke-interface {v0}, Lcom/android/setupwizardlib/items/IItem;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/setupwizardlib/items/ItemViewHolder;->setEnabled(Z)V

    .line 147
    invoke-virtual {p1, v0}, Lcom/android/setupwizardlib/items/ItemViewHolder;->setItem(Lcom/android/setupwizardlib/items/IItem;)V

    .line 148
    iget-object v1, p1, Lcom/android/setupwizardlib/items/ItemViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/setupwizardlib/items/IItem;->onBindView(Landroid/view/View;)V

    .line 149
    return-void
.end method

.method public onChanged(Lcom/android/setupwizardlib/items/ItemHierarchy;)V
    .locals 0
    .param p1, "hierarchy"    # Lcom/android/setupwizardlib/items/ItemHierarchy;

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->notifyDataSetChanged()V

    .line 162
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/setupwizardlib/items/ItemViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/setupwizardlib/items/ItemViewHolder;
    .locals 11
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    const/4 v10, 0x0

    .line 97
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 98
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v1, p2, p1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 99
    .local v5, "view":Landroid/view/View;
    new-instance v6, Lcom/android/setupwizardlib/items/ItemViewHolder;

    invoke-direct {v6, v5}, Lcom/android/setupwizardlib/items/ItemViewHolder;-><init>(Landroid/view/View;)V

    .line 101
    .local v6, "viewHolder":Lcom/android/setupwizardlib/items/ItemViewHolder;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    .line 102
    .local v7, "viewTag":Ljava/lang/Object;
    const-string v8, "noBackground"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 103
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    sget-object v9, Lcom/android/setupwizardlib/R$styleable;->SuwRecyclerItemAdapter:[I

    .line 104
    invoke-virtual {v8, v9}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 105
    .local v4, "typedArray":Landroid/content/res/TypedArray;
    sget v8, Lcom/android/setupwizardlib/R$styleable;->SuwRecyclerItemAdapter_android_selectableItemBackground:I

    invoke-virtual {v4, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 107
    .local v3, "selectableItemBackground":Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_0

    .line 108
    sget v8, Lcom/android/setupwizardlib/R$styleable;->SuwRecyclerItemAdapter_selectableItemBackground:I

    invoke-virtual {v4, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 112
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 113
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 114
    sget v8, Lcom/android/setupwizardlib/R$styleable;->SuwRecyclerItemAdapter_android_colorBackground:I

    invoke-virtual {v4, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 118
    :cond_1
    if-eqz v3, :cond_2

    if-nez v0, :cond_4

    .line 119
    :cond_2
    const-string v8, "RecyclerItemAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot resolve required attributes. selectableItemBackground="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " background="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_0
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 130
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v3    # "selectableItemBackground":Landroid/graphics/drawable/Drawable;
    .end local v4    # "typedArray":Landroid/content/res/TypedArray;
    :cond_3
    new-instance v8, Lcom/android/setupwizardlib/items/RecyclerItemAdapter$1;

    invoke-direct {v8, p0, v6}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter$1;-><init>(Lcom/android/setupwizardlib/items/RecyclerItemAdapter;Lcom/android/setupwizardlib/items/ItemViewHolder;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-object v6

    .line 123
    .restart local v0    # "background":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "selectableItemBackground":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "typedArray":Landroid/content/res/TypedArray;
    :cond_4
    const/4 v8, 0x2

    new-array v2, v8, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v2, v10

    const/4 v8, 0x1

    aput-object v3, v2, v8

    .line 124
    .local v2, "layers":[Landroid/graphics/drawable/Drawable;
    new-instance v8, Lcom/android/setupwizardlib/items/RecyclerItemAdapter$PatchedLayerDrawable;

    invoke-direct {v8, v2}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter$PatchedLayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onItemRangeChanged(Lcom/android/setupwizardlib/items/ItemHierarchy;II)V
    .locals 0
    .param p1, "itemHierarchy"    # Lcom/android/setupwizardlib/items/ItemHierarchy;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 166
    invoke-virtual {p0, p2, p3}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->notifyItemRangeChanged(II)V

    .line 167
    return-void
.end method

.method public onItemRangeInserted(Lcom/android/setupwizardlib/items/ItemHierarchy;II)V
    .locals 0
    .param p1, "itemHierarchy"    # Lcom/android/setupwizardlib/items/ItemHierarchy;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 171
    invoke-virtual {p0, p2, p3}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->notifyItemRangeInserted(II)V

    .line 172
    return-void
.end method

.method public onItemRangeMoved(Lcom/android/setupwizardlib/items/ItemHierarchy;III)V
    .locals 2
    .param p1, "itemHierarchy"    # Lcom/android/setupwizardlib/items/ItemHierarchy;
    .param p2, "fromPosition"    # I
    .param p3, "toPosition"    # I
    .param p4, "itemCount"    # I

    .prologue
    .line 179
    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    .line 180
    invoke-virtual {p0, p2, p3}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->notifyItemMoved(II)V

    .line 190
    :goto_0
    return-void

    .line 187
    :cond_0
    const-string v0, "RecyclerItemAdapter"

    const-string v1, "onItemRangeMoved with more than one item"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onItemRangeRemoved(Lcom/android/setupwizardlib/items/ItemHierarchy;II)V
    .locals 0
    .param p1, "itemHierarchy"    # Lcom/android/setupwizardlib/items/ItemHierarchy;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 194
    invoke-virtual {p0, p2, p3}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->notifyItemRangeRemoved(II)V

    .line 195
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/android/setupwizardlib/items/RecyclerItemAdapter$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/setupwizardlib/items/RecyclerItemAdapter$OnItemSelectedListener;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->mListener:Lcom/android/setupwizardlib/items/RecyclerItemAdapter$OnItemSelectedListener;

    .line 220
    return-void
.end method
