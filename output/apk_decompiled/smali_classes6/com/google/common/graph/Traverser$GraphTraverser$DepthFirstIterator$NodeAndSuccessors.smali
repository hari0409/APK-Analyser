.class final Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;
.super Ljava/lang/Object;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NodeAndSuccessors"
.end annotation


# instance fields
.field final node:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field final successorIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TN;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;


# direct methods
.method constructor <init>(Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;Ljava/lang/Object;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Ljava/lang/Iterable",
            "<+TN;>;)V"
        }
    .end annotation

    .prologue
    .line 368
    .local p0, "this":Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;, "Lcom/google/common/graph/Traverser$GraphTraverser<TN;>.DepthFirstIterator.NodeAndSuccessors;"
    .local p2, "node":Ljava/lang/Object;, "TN;"
    .local p3, "successors":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TN;>;"
    iput-object p1, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;->this$1:Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object p2, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;->node:Ljava/lang/Object;

    .line 370
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator$NodeAndSuccessors;->successorIterator:Ljava/util/Iterator;

    .line 371
    return-void
.end method
