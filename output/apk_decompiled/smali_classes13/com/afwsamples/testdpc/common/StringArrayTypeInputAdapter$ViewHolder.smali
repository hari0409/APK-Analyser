.class public Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StringArrayTypeInputAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public delete:Landroid/widget/ImageView;

.field public stringValue:Landroid/widget/EditText;

.field public textWatcher:Landroid/text/TextWatcher;

.field final synthetic this$0:Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;


# direct methods
.method public constructor <init>(Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;->this$0:Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;

    .line 89
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 90
    const v0, 0x7f090184

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;->stringValue:Landroid/widget/EditText;

    .line 91
    const v0, 0x7f090091

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    .line 92
    return-void
.end method
