.class Lcom/google/common/graph/Traverser$GraphTraverser$3;
.super Ljava/lang/Object;
.source "Traverser.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/Traverser$GraphTraverser;->depthFirstPostOrder(Ljava/lang/Object;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TN;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/graph/Traverser$GraphTraverser;

.field final synthetic val$startNode:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/graph/Traverser$GraphTraverser;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/graph/Traverser$GraphTraverser;

    .prologue
    .line 280
    .local p0, "this":Lcom/google/common/graph/Traverser$GraphTraverser$3;, "Lcom/google/common/graph/Traverser$GraphTraverser$3;"
    iput-object p1, p0, Lcom/google/common/graph/Traverser$GraphTraverser$3;->this$0:Lcom/google/common/graph/Traverser$GraphTraverser;

    iput-object p2, p0, Lcom/google/common/graph/Traverser$GraphTraverser$3;->val$startNode:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, "this":Lcom/google/common/graph/Traverser$GraphTraverser$3;, "Lcom/google/common/graph/Traverser$GraphTraverser$3;"
    new-instance v0, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;

    iget-object v1, p0, Lcom/google/common/graph/Traverser$GraphTraverser$3;->this$0:Lcom/google/common/graph/Traverser$GraphTraverser;

    iget-object v2, p0, Lcom/google/common/graph/Traverser$GraphTraverser$3;->val$startNode:Ljava/lang/Object;

    sget-object v3, Lcom/google/common/graph/Traverser$Order;->POSTORDER:Lcom/google/common/graph/Traverser$Order;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;-><init>(Lcom/google/common/graph/Traverser$GraphTraverser;Ljava/lang/Object;Lcom/google/common/graph/Traverser$Order;)V

    return-object v0
.end method
