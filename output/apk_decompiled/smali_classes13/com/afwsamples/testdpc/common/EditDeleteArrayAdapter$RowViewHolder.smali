.class Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder;
.super Ljava/lang/Object;
.source "EditDeleteArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RowViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field entry:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field entryPosition:I

.field restrictionKeyText:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 113
    .local p0, "this":Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder;, "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$1;

    .prologue
    .line 113
    .local p0, "this":Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder;, "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder<TT;>;"
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$RowViewHolder;-><init>()V

    return-void
.end method
