.class final Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;
.super Lcom/google/common/collect/AbstractIterator;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Traverser$GraphTraverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DepthFirstIterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator",
        "<TN;>;"
    }
.end annotation


# instance fields
.field private final order:Lcom/google/common/graph/Traverser$Order;

.field private final stack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/google/common/graph/Traverser$GraphTraverser",
            "<TN;>.DepthFirstIterator.NodeAndSuccessors;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/graph/Traverser$GraphTraverser;

.field private final visited:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TN;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/graph/Traverser$GraphTraverser;Ljava/lang/Object;Lcom/google/common/graph/Traverser$Order;)V
    .locals 2
    .param p3, "order"    # Lcom/google/common/graph/Traverser$Order;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Lcom/google/common/graph/Traverser$Order;",
            ")V"
        }
    .end annotation

    .prologue
    .line 326
    .local p0, "this":Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;, "Lcom/google/common/graph/Traverser$GraphTraverser<TN;>.DepthFirstIterator;"
    .local p2, "root":Ljava/lang/Object;, "TN;"
    iput-object p1, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->this$0:Lcom/google/common/graph/Traverser$GraphTraverser;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 322
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->stack:Ljava/util/Deque;

    .line 323
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->visited:Ljava/util/Set;

    .line 329
    iget-object v0, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->stack:Ljava/util/Deque;

    invoke-virtual {p0, p2}, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->withSuccessors(Ljava/lang/Object;)Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 330
    iput-object p3, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->order:Lcom/google/common/graph/Traverser$Order;

    .line 331
    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;, "Lcom/google/common/graph/Traverser$GraphTraverser<TN;>.DepthFirstIterator;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 336
    :cond_0
    iget-object v7, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->stack:Ljava/util/Deque;

    invoke-interface {v7}, Ljava/util/Deque;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 337
    invoke-virtual {p0}, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->endOfData()Ljava/lang/Object;

    move-result-object v5

    .line 354
    :goto_0
    return-object v5

    .line 339
    :cond_1
    iget-object v7, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->stack:Ljava/util/Deque;

    invoke-interface {v7}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;

    .line 340
    .local v2, "node":Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;, "Lcom/google/common/graph/Traverser$GraphTraverser<TN;>.DepthFirstIterator.NodeAndSuccessors;"
    iget-object v7, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->visited:Ljava/util/Set;

    iget-object v8, v2, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;->node:Ljava/lang/Object;

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 341
    .local v0, "firstVisit":Z
    iget-object v7, v2, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;->successorIterator:Ljava/util/Iterator;

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    move v1, v5

    .line 342
    .local v1, "lastVisit":Z
    :goto_1
    if-eqz v0, :cond_2

    iget-object v7, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->order:Lcom/google/common/graph/Traverser$Order;

    sget-object v8, Lcom/google/common/graph/Traverser$Order;->PREORDER:Lcom/google/common/graph/Traverser$Order;

    if-eq v7, v8, :cond_3

    :cond_2
    if-eqz v1, :cond_6

    iget-object v7, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->order:Lcom/google/common/graph/Traverser$Order;

    sget-object v8, Lcom/google/common/graph/Traverser$Order;->POSTORDER:Lcom/google/common/graph/Traverser$Order;

    if-ne v7, v8, :cond_6

    :cond_3
    move v3, v5

    .line 344
    .local v3, "produceNode":Z
    :goto_2
    if-eqz v1, :cond_7

    .line 345
    iget-object v7, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->stack:Ljava/util/Deque;

    invoke-interface {v7}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 353
    :cond_4
    :goto_3
    if-eqz v3, :cond_0

    .line 354
    iget-object v5, v2, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;->node:Ljava/lang/Object;

    goto :goto_0

    .end local v1    # "lastVisit":Z
    .end local v3    # "produceNode":Z
    :cond_5
    move v1, v6

    .line 341
    goto :goto_1

    .restart local v1    # "lastVisit":Z
    :cond_6
    move v3, v6

    .line 342
    goto :goto_2

    .line 348
    .restart local v3    # "produceNode":Z
    :cond_7
    iget-object v7, v2, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;->successorIterator:Ljava/util/Iterator;

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 349
    .local v4, "successor":Ljava/lang/Object;, "TN;"
    iget-object v7, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->visited:Ljava/util/Set;

    invoke-interface {v7, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 350
    iget-object v7, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->stack:Ljava/util/Deque;

    invoke-virtual {p0, v4}, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->withSuccessors(Ljava/lang/Object;)Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    goto :goto_3
.end method

.method withSuccessors(Ljava/lang/Object;)Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/google/common/graph/Traverser$GraphTraverser",
            "<TN;>.DepthFirstIterator.NodeAndSuccessors;"
        }
    .end annotation

    .prologue
    .line 360
    .local p0, "this":Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;, "Lcom/google/common/graph/Traverser$GraphTraverser<TN;>.DepthFirstIterator;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    new-instance v0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;

    iget-object v1, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;->this$0:Lcom/google/common/graph/Traverser$GraphTraverser;

    invoke-static {v1}, Lcom/google/common/graph/Traverser$GraphTraverser;->access$100(Lcom/google/common/graph/Traverser$GraphTraverser;)Lcom/google/common/graph/SuccessorsFunction;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/common/graph/SuccessorsFunction;->successors(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;-><init>(Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;Ljava/lang/Object;Ljava/lang/Iterable;)V

    return-object v0
.end method
