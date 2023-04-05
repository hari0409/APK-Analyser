.class Lcom/google/common/collect/Sets$5$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Sets$5;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator",
        "<",
        "Ljava/util/Set",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final bits:Ljava/util/BitSet;

.field final synthetic this$0:Lcom/google/common/collect/Sets$5;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Sets$5;)V
    .locals 2
    .param p1, "this$0"    # Lcom/google/common/collect/Sets$5;

    .prologue
    .line 1553
    iput-object p1, p0, Lcom/google/common/collect/Sets$5$1;->this$0:Lcom/google/common/collect/Sets$5;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 1554
    new-instance v0, Ljava/util/BitSet;

    iget-object v1, p0, Lcom/google/common/collect/Sets$5$1;->this$0:Lcom/google/common/collect/Sets$5;

    iget-object v1, v1, Lcom/google/common/collect/Sets$5;->val$index:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/collect/Sets$5$1;->bits:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1553
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$5$1;->computeNext()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1558
    iget-object v3, p0, Lcom/google/common/collect/Sets$5$1;->bits:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1559
    iget-object v3, p0, Lcom/google/common/collect/Sets$5$1;->bits:Ljava/util/BitSet;

    iget-object v4, p0, Lcom/google/common/collect/Sets$5$1;->this$0:Lcom/google/common/collect/Sets$5;

    iget v4, v4, Lcom/google/common/collect/Sets$5;->val$size:I

    invoke-virtual {v3, v5, v4}, Ljava/util/BitSet;->set(II)V

    .line 1584
    :goto_0
    iget-object v3, p0, Lcom/google/common/collect/Sets$5$1;->bits:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    .line 1585
    .local v1, "copy":Ljava/util/BitSet;
    new-instance v3, Lcom/google/common/collect/Sets$5$1$1;

    invoke-direct {v3, p0, v1}, Lcom/google/common/collect/Sets$5$1$1;-><init>(Lcom/google/common/collect/Sets$5$1;Ljava/util/BitSet;)V

    .end local v1    # "copy":Ljava/util/BitSet;
    :goto_1
    return-object v3

    .line 1561
    :cond_0
    iget-object v3, p0, Lcom/google/common/collect/Sets$5$1;->bits:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v2

    .line 1562
    .local v2, "firstSetBit":I
    iget-object v3, p0, Lcom/google/common/collect/Sets$5$1;->bits:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v0

    .line 1564
    .local v0, "bitToFlip":I
    iget-object v3, p0, Lcom/google/common/collect/Sets$5$1;->this$0:Lcom/google/common/collect/Sets$5;

    iget-object v3, v3, Lcom/google/common/collect/Sets$5;->val$index:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 1565
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$5$1;->endOfData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    goto :goto_1

    .line 1580
    :cond_1
    iget-object v3, p0, Lcom/google/common/collect/Sets$5$1;->bits:Ljava/util/BitSet;

    sub-int v4, v0, v2

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v5, v4}, Ljava/util/BitSet;->set(II)V

    .line 1581
    iget-object v3, p0, Lcom/google/common/collect/Sets$5$1;->bits:Ljava/util/BitSet;

    sub-int v4, v0, v2

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4, v0}, Ljava/util/BitSet;->clear(II)V

    .line 1582
    iget-object v3, p0, Lcom/google/common/collect/Sets$5$1;->bits:Ljava/util/BitSet;

    invoke-virtual {v3, v0}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method
