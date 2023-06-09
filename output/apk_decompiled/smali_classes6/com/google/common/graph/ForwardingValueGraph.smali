.class abstract Lcom/google/common/graph/ForwardingValueGraph;
.super Lcom/google/common/graph/AbstractValueGraph;
.source "ForwardingValueGraph.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/AbstractValueGraph",
        "<TN;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    .local p0, "this":Lcom/google/common/graph/ForwardingValueGraph;, "Lcom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    invoke-direct {p0}, Lcom/google/common/graph/AbstractValueGraph;-><init>()V

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
    .line 64
    .local p0, "this":Lcom/google/common/graph/ForwardingValueGraph;, "Lcom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/ValueGraph;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public allowsSelfLoops()Z
    .locals 1

    .prologue
    .line 54
    .local p0, "this":Lcom/google/common/graph/ForwardingValueGraph;, "Lcom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/ValueGraph;->allowsSelfLoops()Z

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
    .line 79
    .local p0, "this":Lcom/google/common/graph/ForwardingValueGraph;, "Lcom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/ValueGraph;->degree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected abstract delegate()Lcom/google/common/graph/ValueGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/ValueGraph",
            "<TN;TV;>;"
        }
    .end annotation
.end method

.method protected edgeCount()J
    .locals 2

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/graph/ForwardingValueGraph;, "Lcom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/ValueGraph;->edges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TV;)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lcom/google/common/graph/ForwardingValueGraph;, "Lcom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/graph/ValueGraph;->edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lcom/google/common/graph/ForwardingValueGraph;, "Lcom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/graph/ValueGraph;->hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public inDegree(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lcom/google/common/graph/ForwardingValueGraph;, "Lcom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/ValueGraph;->inDegree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDirected()Z
    .locals 1

    .prologue
    .line 49
    .local p0, "this":Lcom/google/common/graph/ForwardingValueGraph;, "Lcom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/ValueGraph;->isDirected()Z

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
    .line 59
    .local p0, "this":Lcom/google/common/graph/ForwardingValueGraph;, "Lcom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/ValueGraph;->nodeOrder()Lcom/google/common/graph/ElementOrder;

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
    .line 35
    .local p0, "this":Lcom/google/common/graph/ForwardingValueGraph;, "Lcom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/graph/ValueGraph;->nodes()Ljava/util/Set;

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
    .line 89
    .local p0, "this":Lcom/google/common/graph/ForwardingValueGraph;, "Lcom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/ValueGraph;->outDegree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lcom/google/common/graph/ForwardingValueGraph;, "Lcom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/graph/ForwardingValueGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

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
    .line 69
    .local p0, "this":Lcom/google/common/graph/ForwardingValueGraph;, "Lcom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/ValueGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lcom/google/common/graph/ForwardingValueGraph;, "Lcom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/graph/ForwardingValueGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

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
    .line 74
    .local p0, "this":Lcom/google/common/graph/ForwardingValueGraph;, "Lcom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lcom/google/common/graph/ForwardingValueGraph;->delegate()Lcom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/ValueGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
