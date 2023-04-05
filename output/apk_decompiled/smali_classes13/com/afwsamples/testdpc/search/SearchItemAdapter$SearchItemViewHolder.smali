.class public Lcom/afwsamples/testdpc/search/SearchItemAdapter$SearchItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SearchItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/search/SearchItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchItemViewHolder"
.end annotation


# instance fields
.field public textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 65
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "itemView":Landroid/view/View;
    iput-object p1, p0, Lcom/afwsamples/testdpc/search/SearchItemAdapter$SearchItemViewHolder;->textView:Landroid/widget/TextView;

    .line 66
    return-void
.end method
