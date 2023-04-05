.class public abstract Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "EditDeleteArrayAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;,
        Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;,
        Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mOnDeleteButtonClickListener:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;

.field private mOnEditButtonClickListener:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "onEditButtonClickListener"    # Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;
    .param p4, "onDeleteButtonClickListener"    # Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;",
            "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;, "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter<TT;>;"
    .local p2, "entries":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 47
    iput-object p2, p0, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->mEntries:Ljava/util/List;

    .line 48
    iput-object p3, p0, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->mOnEditButtonClickListener:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;

    .line 49
    iput-object p4, p0, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->mOnDeleteButtonClickListener:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;

    .line 50
    return-void
.end method


# virtual methods
.method protected abstract getDisplayName(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 55
    .local p0, "this":Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;, "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter<TT;>;"
    if-nez p2, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0031

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 58
    const v1, 0x7f0900a2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v1, 0x7f090091

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    new-instance v0, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder;-><init>(Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$1;)V

    .line 62
    .local v0, "viewHolder":Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder;, "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder<TT;>;"
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 63
    const v1, 0x7f09013c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder;->restrictionKeyText:Landroid/widget/TextView;

    .line 68
    :goto_0
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder;->entry:Ljava/lang/Object;

    .line 69
    iget-object v1, v0, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder;->restrictionKeyText:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder;->entry:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->getDisplayName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iput p1, v0, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder;->entryPosition:I

    .line 71
    return-object p2

    .line 66
    .end local v0    # "viewHolder":Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder;, "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder<TT;>;"
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder;

    .restart local v0    # "viewHolder":Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder;, "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder<TT;>;"
    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 95
    .local p0, "this":Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;, "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter<TT;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->mEntries:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->mEntries:Ljava/util/List;

    new-instance v1, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$1;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$1;-><init>(Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 103
    :cond_0
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 104
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 76
    .local p0, "this":Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;, "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter<TT;>;"
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 77
    .local v1, "parentView":Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 91
    .end local v1    # "parentView":Landroid/view/ViewParent;
    :cond_0
    :goto_0
    return-void

    .line 80
    .restart local v1    # "parentView":Landroid/view/ViewParent;
    :cond_1
    check-cast v1, Landroid/view/View;

    .line 81
    .end local v1    # "parentView":Landroid/view/ViewParent;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder;

    .line 82
    .local v2, "viewHolder":Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder;, "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder<TT;>;"
    iget-object v0, v2, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder;->entry:Ljava/lang/Object;

    .line 83
    .local v0, "entry":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0900a2

    if-ne v3, v4, :cond_2

    .line 84
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->mOnEditButtonClickListener:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;

    invoke-interface {v3, v0}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;->onEditButtonClick(Ljava/lang/Object;)V

    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f090091

    if-ne v3, v4, :cond_0

    .line 86
    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 87
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->mOnDeleteButtonClickListener:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;

    if-eqz v3, :cond_0

    .line 88
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->mOnDeleteButtonClickListener:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;

    invoke-interface {v3, v0}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnDeleteButtonClickListener;->onDeleteButtonClick(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public set(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;, "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter<TT;>;"
    .local p2, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->mEntries:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->notifyDataSetChanged()V

    .line 109
    return-void
.end method
