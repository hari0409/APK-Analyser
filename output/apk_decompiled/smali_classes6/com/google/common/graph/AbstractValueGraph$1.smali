.class Lcom/google/common/graph/AbstractValueGraph$1;
.super Lcom/google/common/graph/AbstractGraph;
.source "AbstractValueGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/AbstractValueGraph;->asGraph()Lcom/google/common/graph/Graph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/graph/AbstractGraph",
        "<TN;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/graph/AbstractValueGraph;


# direct methods
.method constructor <init>(Lcom/google/common/graph/AbstractValueGraph;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/graph/AbstractValueGraph;

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/AbstractValueGraph$1;, "Lcom/google/common/graph/AbstractValueGraph$1;"
    iput-object p1, p0, Lcom/google/common/graph/AbstractValueGraph$1;->this$0:Lcom/google/common/graph/AbstractValueGraph;

    invoke-direct {p0}, Lcom/google/common/graph/AbstractGraph;-><init>()V

    return-void
.end method


# virtual methods
.method public adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/google/common/graph/AbstractValueGraph$1;, "Lcom/google/common/graph/AbstractValueGraph$1;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lcom/google/common/graph/AbstractValueGraph$1;->this$0:Lcom/google/common/graph/AbstractValueGraph;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/AbstractValueGraph;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public allowsSelfLoops()Z
    .locals 1

    .prologue
    .line 62
    .local p0, "this":Lcom/google/common/graph/AbstractValueGraph$1;, "Lcom/google/common/graph/AbstractValueGraph$1;"
    iget-object v0, p0, Lcom/google/common/graph/AbstractValueGraph$1;->this$0:Lcom/google/common/graph/AbstractValueGraph;

    invoke-virtual {v0}, Lcom/google/common/graph/AbstractValueGraph;->allowsSelfLoops()Z

    move-result v0

    return v0
.end method

.method public degree(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/google/common/graph/AbstractValueGraph$1;, "Lcom/google/common/graph/AbstractValueGraph$1;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lcom/google/common/graph/AbstractValueGraph$1;->this$0:Lcom/google/common/graph/AbstractValueGraph;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/AbstractValueGraph;->degree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public edges()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/graph/EndpointPair",
            "<TN;>;>;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/google/common/graph/AbstractValueGraph$1;, "Lcom/google/common/graph/AbstractValueGraph$1;"
    iget-object v0, p0, Lcom/google/common/graph/AbstractValueGraph$1;->this$0:Lcom/google/common/graph/AbstractValueGraph;

    invoke-virtual {v0}, Lcom/google/common/graph/AbstractValueGraph;->edges()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public inDegree(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lcom/google/common/graph/AbstractValueGraph$1;, "Lcom/google/common/graph/AbstractValueGraph$1;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lcom/google/common/graph/AbstractValueGraph$1;->this$0:Lcom/google/common/graph/AbstractValueGraph;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/AbstractValueGraph;->inDegree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDirected()Z
    .locals 1

    .prologue
    .line 57
    .local p0, "this":Lcom/google/common/graph/AbstractValueGraph$1;, "Lcom/google/common/graph/AbstractValueGraph$1;"
    iget-object v0, p0, Lcom/google/common/graph/AbstractValueGraph$1;->this$0:Lcom/google/common/graph/AbstractValueGraph;

    invoke-virtual {v0}, Lcom/google/common/graph/AbstractValueGraph;->isDirected()Z

    move-result v0

    return v0
.end method

.method public nodeOrder()Lcom/google/common/graph/ElementOrder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ElementOrder",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/google/common/graph/AbstractValueGraph$1;, "Lcom/google/common/graph/AbstractValueGraph$1;"
    iget-object v0, p0, Lcom/google/common/graph/AbstractValueGraph$1;->this$0:Lcom/google/common/graph/AbstractValueGraph;

    invoke-virtual {v0}, Lcom/google/common/graph/AbstractValueGraph;->nodeOrder()Lcom/google/common/graph/ElementOrder;

    move-result-object v0

    return-object v0
.end method

.method public nodes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/google/common/graph/AbstractValueGraph$1;, "Lcom/google/common/graph/AbstractValueGraph$1;"
    iget-object v0, p0, Lcom/google/common/graph/AbstractValueGraph$1;->this$0:Lcom/google/common/graph/AbstractValueGraph;

    invoke-virtual {v0}, Lcom/google/common/graph/AbstractValueGraph;->nodes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public outDegree(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/google/common/graph/AbstractValueGraph$1;, "Lcom/google/common/graph/AbstractValueGraph$1;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lcom/google/common/graph/AbstractValueGraph$1;->this$0:Lcom/google/common/graph/AbstractValueGraph;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/AbstractValueGraph;->outDegree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/AbstractValueGraph$1;, "Lcom/google/common/graph/AbstractValueGraph$1;"
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractValueGraph$1;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public predecessors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/google/common/graph/AbstractValueGraph$1;, "Lcom/google/common/graph/AbstractValueGraph$1;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lcom/google/common/graph/AbstractValueGraph$1;->this$0:Lcom/google/common/graph/AbstractValueGraph;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/AbstractValueGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/AbstractValueGraph$1;, "Lcom/google/common/graph/AbstractValueGraph$1;"
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractValueGraph$1;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public successors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lcom/google/common/graph/AbstractValueGraph$1;, "Lcom/google/common/graph/AbstractValueGraph$1;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lcom/google/common/graph/AbstractValueGraph$1;->this$0:Lcom/google/common/graph/AbstractValueGraph;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/AbstractValueGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
