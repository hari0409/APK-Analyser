.class final Lcom/google/common/graph/Traverser$TreeTraverser$BreadthFirstIterator;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Traverser$TreeTraverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BreadthFirstIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableIterator",
        "<TN;>;"
    }
.end annotation


# instance fields
.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TN;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/graph/Traverser$TreeTraverser;


# direct methods
.method constructor <init>(Lcom/google/common/graph/Traverser$TreeTraverser;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .prologue
    .line 429
    .local p0, "this":Lcom/google/common/graph/Traverser$TreeTraverser$BreadthFirstIterator;, "Lcom/google/common/graph/Traverser$TreeTraverser<TN;>.BreadthFirstIterator;"
    .local p2, "root":Ljava/lang/Object;, "TN;"
    iput-object p1, p0, Lcom/google/common/graph/Traverser$TreeTraverser$BreadthFirstIterator;->this$0:Lcom/google/common/graph/Traverser$TreeTraverser;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 427
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/common/graph/Traverser$TreeTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    .line 430
    iget-object v0, p0, Lcom/google/common/graph/Traverser$TreeTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 431
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 435
    .local p0, "this":Lcom/google/common/graph/Traverser$TreeTraverser$BreadthFirstIterator;, "Lcom/google/common/graph/Traverser$TreeTraverser<TN;>.BreadthFirstIterator;"
    iget-object v0, p0, Lcom/google/common/graph/Traverser$TreeTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .prologue
    .line 440
    .local p0, "this":Lcom/google/common/graph/Traverser$TreeTraverser$BreadthFirstIterator;, "Lcom/google/common/graph/Traverser$TreeTraverser<TN;>.BreadthFirstIterator;"
    iget-object v1, p0, Lcom/google/common/graph/Traverser$TreeTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    .line 441
    .local v0, "current":Ljava/lang/Object;, "TN;"
    iget-object v1, p0, Lcom/google/common/graph/Traverser$TreeTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    iget-object v2, p0, Lcom/google/common/graph/Traverser$TreeTraverser$BreadthFirstIterator;->this$0:Lcom/google/common/graph/Traverser$TreeTraverser;

    invoke-static {v2}, Lcom/google/common/graph/Traverser$TreeTraverser;->access$200(Lcom/google/common/graph/Traverser$TreeTraverser;)Lcom/google/common/graph/SuccessorsFunction;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/common/graph/SuccessorsFunction;->successors(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 442
    return-object v0
.end method
