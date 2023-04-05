.class Lcom/google/common/graph/Graphs$TransposedGraph;
.super Lcom/google/common/graph/ForwardingGraph;
.source "Graphs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Graphs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransposedGraph"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/ForwardingGraph",
        "<TN;>;"
    }
.end annotation


# instance fields
.field private final graph:Lcom/google/common/graph/Graph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/Graph",
            "<TN;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/graph/Graph;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/Graph",
            "<TN;>;)V"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedGraph;, "Lcom/google/common/graph/Graphs$TransposedGraph<TN;>;"
    .local p1, "graph":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<TN;>;"
    invoke-direct {p0}, Lcom/google/common/graph/ForwardingGraph;-><init>()V

    .line 270
    iput-object p1, p0, Lcom/google/common/graph/Graphs$TransposedGraph;->graph:Lcom/google/common/graph/Graph;

    .line 271
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/graph/Graphs$TransposedGraph;)Lcom/google/common/graph/Graph;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/graph/Graphs$TransposedGraph;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedGraph;->graph:Lcom/google/common/graph/Graph;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic delegate()Lcom/google/common/graph/BaseGraph;
    .locals 1

    .prologue
    .line 266
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedGraph;, "Lcom/google/common/graph/Graphs$TransposedGraph<TN;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedGraph;->delegate()Lcom/google/common/graph/Graph;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Lcom/google/common/graph/Graph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/Graph",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 275
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedGraph;, "Lcom/google/common/graph/Graphs$TransposedGraph<TN;>;"
    iget-object v0, p0, Lcom/google/common/graph/Graphs$TransposedGraph;->graph:Lcom/google/common/graph/Graph;

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
    .line 300
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedGraph;, "Lcom/google/common/graph/Graphs$TransposedGraph<TN;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedGraph;->delegate()Lcom/google/common/graph/Graph;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/google/common/graph/Graph;->hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    .line 290
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedGraph;, "Lcom/google/common/graph/Graphs$TransposedGraph<TN;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedGraph;->delegate()Lcom/google/common/graph/Graph;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/Graph;->outDegree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public outDegree(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    .prologue
    .line 295
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedGraph;, "Lcom/google/common/graph/Graphs$TransposedGraph<TN;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedGraph;->delegate()Lcom/google/common/graph/Graph;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/Graph;->inDegree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1

    .prologue
    .line 266
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedGraph;, "Lcom/google/common/graph/Graphs$TransposedGraph<TN;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/graph/Graphs$TransposedGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

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
    .line 280
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedGraph;, "Lcom/google/common/graph/Graphs$TransposedGraph<TN;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedGraph;->delegate()Lcom/google/common/graph/Graph;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/Graph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1

    .prologue
    .line 266
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedGraph;, "Lcom/google/common/graph/Graphs$TransposedGraph<TN;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/graph/Graphs$TransposedGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

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
    .line 285
    .local p0, "this":Lcom/google/common/graph/Graphs$TransposedGraph;, "Lcom/google/common/graph/Graphs$TransposedGraph<TN;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lcom/google/common/graph/Graphs$TransposedGraph;->delegate()Lcom/google/common/graph/Graph;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/graph/Graph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
