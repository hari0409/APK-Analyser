.class final Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPreOrderIterator;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Traverser$TreeTraverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DepthFirstPreOrderIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<TN;>;"
    }
.end annotation


# instance fields
.field private final stack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Ljava/util/Iterator",
            "<+TN;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/graph/Traverser$TreeTraverser;


# direct methods
.method constructor <init>(Lcom/google/common/graph/Traverser$TreeTraverser;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .prologue
    .line 449
    .local p0, "this":Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPreOrderIterator;, "Lcom/google/common/graph/Traverser$TreeTraverser<TN;>.DepthFirstPreOrderIterator;"
    .local p2, "root":Ljava/lang/Object;, "TN;"
    iput-object p1, p0, Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPreOrderIterator;->this$0:Lcom/google/common/graph/Traverser$TreeTraverser;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 447
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPreOrderIterator;->stack:Ljava/util/Deque;

    .line 450
    iget-object v0, p0, Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPreOrderIterator;->stack:Ljava/util/Deque;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Iterators;->singletonIterator(Ljava/lang/Object;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 451
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 455
    .local p0, "this":Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPreOrderIterator;, "Lcom/google/common/graph/Traverser$TreeTraverser<TN;>.DepthFirstPreOrderIterator;"
    iget-object v0, p0, Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPreOrderIterator;->stack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .prologue
    .line 460
    .local p0, "this":Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPreOrderIterator;, "Lcom/google/common/graph/Traverser$TreeTraverser<TN;>.DepthFirstPreOrderIterator;"
    iget-object v3, p0, Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPreOrderIterator;->stack:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    .line 461
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TN;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 462
    .local v2, "result":Ljava/lang/Object;, "TN;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 463
    iget-object v3, p0, Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPreOrderIterator;->stack:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    .line 465
    :cond_0
    iget-object v3, p0, Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPreOrderIterator;->this$0:Lcom/google/common/graph/Traverser$TreeTraverser;

    invoke-static {v3}, Lcom/google/common/graph/Traverser$TreeTraverser;->access$200(Lcom/google/common/graph/Traverser$TreeTraverser;)Lcom/google/common/graph/SuccessorsFunction;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/google/common/graph/SuccessorsFunction;->successors(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 466
    .local v0, "childIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TN;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 467
    iget-object v3, p0, Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPreOrderIterator;->stack:Ljava/util/Deque;

    invoke-interface {v3, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 469
    :cond_1
    return-object v2
.end method
