.class Lcom/google/common/collect/CompactHashSet$1;
.super Ljava/lang/Object;
.source "CompactHashSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/CompactHashSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field index:I

.field indexToRemove:I

.field final synthetic this$0:Lcom/google/common/collect/CompactHashSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/CompactHashSet;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/common/collect/CompactHashSet;

    .prologue
    .line 424
    .local p0, "this":Lcom/google/common/collect/CompactHashSet$1;, "Lcom/google/common/collect/CompactHashSet$1;"
    iput-object p1, p0, Lcom/google/common/collect/CompactHashSet$1;->this$0:Lcom/google/common/collect/CompactHashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet$1;->this$0:Lcom/google/common/collect/CompactHashSet;

    iget v0, v0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    iput v0, p0, Lcom/google/common/collect/CompactHashSet$1;->expectedModCount:I

    .line 426
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet$1;->this$0:Lcom/google/common/collect/CompactHashSet;

    invoke-virtual {v0}, Lcom/google/common/collect/CompactHashSet;->firstEntryIndex()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/CompactHashSet$1;->index:I

    .line 427
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/CompactHashSet$1;->indexToRemove:I

    return-void
.end method

.method private checkForConcurrentModification()V
    .locals 2

    .prologue
    .line 458
    .local p0, "this":Lcom/google/common/collect/CompactHashSet$1;, "Lcom/google/common/collect/CompactHashSet$1;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet$1;->this$0:Lcom/google/common/collect/CompactHashSet;

    iget v0, v0, Lcom/google/common/collect/CompactHashSet;->modCount:I

    iget v1, p0, Lcom/google/common/collect/CompactHashSet$1;->expectedModCount:I

    if-eq v0, v1, :cond_0

    .line 459
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 461
    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 431
    .local p0, "this":Lcom/google/common/collect/CompactHashSet$1;, "Lcom/google/common/collect/CompactHashSet$1;"
    iget v0, p0, Lcom/google/common/collect/CompactHashSet$1;->index:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 437
    .local p0, "this":Lcom/google/common/collect/CompactHashSet$1;, "Lcom/google/common/collect/CompactHashSet$1;"
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet$1;->checkForConcurrentModification()V

    .line 438
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet$1;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 439
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 441
    :cond_0
    iget v1, p0, Lcom/google/common/collect/CompactHashSet$1;->index:I

    iput v1, p0, Lcom/google/common/collect/CompactHashSet$1;->indexToRemove:I

    .line 442
    iget-object v1, p0, Lcom/google/common/collect/CompactHashSet$1;->this$0:Lcom/google/common/collect/CompactHashSet;

    iget-object v1, v1, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/CompactHashSet$1;->index:I

    aget-object v0, v1, v2

    .line 443
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/google/common/collect/CompactHashSet$1;->this$0:Lcom/google/common/collect/CompactHashSet;

    iget v2, p0, Lcom/google/common/collect/CompactHashSet$1;->index:I

    invoke-virtual {v1, v2}, Lcom/google/common/collect/CompactHashSet;->getSuccessor(I)I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/CompactHashSet$1;->index:I

    .line 444
    return-object v0
.end method

.method public remove()V
    .locals 4

    .prologue
    .line 449
    .local p0, "this":Lcom/google/common/collect/CompactHashSet$1;, "Lcom/google/common/collect/CompactHashSet$1;"
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet$1;->checkForConcurrentModification()V

    .line 450
    iget v0, p0, Lcom/google/common/collect/CompactHashSet$1;->indexToRemove:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 451
    iget v0, p0, Lcom/google/common/collect/CompactHashSet$1;->expectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/CompactHashSet$1;->expectedModCount:I

    .line 452
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet$1;->this$0:Lcom/google/common/collect/CompactHashSet;

    iget-object v1, p0, Lcom/google/common/collect/CompactHashSet$1;->this$0:Lcom/google/common/collect/CompactHashSet;

    iget-object v1, v1, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/CompactHashSet$1;->indexToRemove:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/google/common/collect/CompactHashSet$1;->this$0:Lcom/google/common/collect/CompactHashSet;

    invoke-static {v2}, Lcom/google/common/collect/CompactHashSet;->access$000(Lcom/google/common/collect/CompactHashSet;)[J

    move-result-object v2

    iget v3, p0, Lcom/google/common/collect/CompactHashSet$1;->indexToRemove:I

    aget-wide v2, v2, v3

    invoke-static {v2, v3}, Lcom/google/common/collect/CompactHashSet;->access$100(J)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/CompactHashSet;->access$200(Lcom/google/common/collect/CompactHashSet;Ljava/lang/Object;I)Z

    .line 453
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet$1;->this$0:Lcom/google/common/collect/CompactHashSet;

    iget v1, p0, Lcom/google/common/collect/CompactHashSet$1;->index:I

    iget v2, p0, Lcom/google/common/collect/CompactHashSet$1;->indexToRemove:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/CompactHashSet;->adjustAfterRemove(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/CompactHashSet$1;->index:I

    .line 454
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/CompactHashSet$1;->indexToRemove:I

    .line 455
    return-void

    .line 450
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
