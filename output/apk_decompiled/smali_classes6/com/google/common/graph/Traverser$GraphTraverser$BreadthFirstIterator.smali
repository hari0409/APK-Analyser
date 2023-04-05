.class final Lcom/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Traverser$GraphTraverser;
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
.method constructor <init>(Lcom/google/common/graph/Traverser$GraphTraverser;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, "this":Lcom/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;, "Lcom/google/common/graph/Traverser$GraphTraverser<TN;>.BreadthFirstIterator;"
    .local p2, "root":Ljava/lang/Object;, "TN;"
    iput-object p1, p0, Lcom/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;->this$0:Lcom/google/common/graph/Traverser$GraphTraverser;

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 296
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    .line 297
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;->visited:Ljava/util/Set;

    .line 300
    iget-object v0, p0, Lcom/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v0, p0, Lcom/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;->visited:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 302
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 306
    .local p0, "this":Lcom/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;, "Lcom/google/common/graph/Traverser$GraphTraverser<TN;>.BreadthFirstIterator;"
    iget-object v0, p0, Lcom/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .prologue
    .line 311
    .local p0, "this":Lcom/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;, "Lcom/google/common/graph/Traverser$GraphTraverser<TN;>.BreadthFirstIterator;"
    iget-object v2, p0, Lcom/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    .line 312
    .local v0, "current":Ljava/lang/Object;, "TN;"
    iget-object v2, p0, Lcom/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;->this$0:Lcom/google/common/graph/Traverser$GraphTraverser;

    invoke-static {v2}, Lcom/google/common/graph/Traverser$GraphTraverser;->access$100(Lcom/google/common/graph/Traverser$GraphTraverser;)Lcom/google/common/graph/SuccessorsFunction;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/common/graph/SuccessorsFunction;->successors(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 313
    .local v1, "neighbor":Ljava/lang/Object;, "TN;"
    iget-object v3, p0, Lcom/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;->visited:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 314
    iget-object v3, p0, Lcom/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    invoke-interface {v3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 317
    .end local v1    # "neighbor":Ljava/lang/Object;, "TN;"
    :cond_1
    return-object v0
.end method
