.class Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;
.super Ljava/util/AbstractSet;
.source "AbstractDirectedNetworkConnections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/AbstractDirectedNetworkConnections;->incidentEdges()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/graph/AbstractDirectedNetworkConnections;


# direct methods
.method constructor <init>(Lcom/google/common/graph/AbstractDirectedNetworkConnections;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/graph/AbstractDirectedNetworkConnections;

    .prologue
    .line 66
    .local p0, "this":Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;, "Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;"
    iput-object p1, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;->this$0:Lcom/google/common/graph/AbstractDirectedNetworkConnections;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    .line 83
    .local p0, "this":Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;, "Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;"
    iget-object v0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;->this$0:Lcom/google/common/graph/AbstractDirectedNetworkConnections;

    iget-object v0, v0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->inEdgeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;->this$0:Lcom/google/common/graph/AbstractDirectedNetworkConnections;

    iget-object v0, v0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->outEdgeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;, "Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;"
    iget-object v1, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;->this$0:Lcom/google/common/graph/AbstractDirectedNetworkConnections;

    .line 70
    invoke-static {v1}, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->access$000(Lcom/google/common/graph/AbstractDirectedNetworkConnections;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;->this$0:Lcom/google/common/graph/AbstractDirectedNetworkConnections;

    iget-object v1, v1, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->inEdgeMap:Ljava/util/Map;

    .line 71
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;->this$0:Lcom/google/common/graph/AbstractDirectedNetworkConnections;

    iget-object v2, v2, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->outEdgeMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/Iterables;->concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    .line 73
    .local v0, "incidentEdges":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    :goto_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Iterators;->unmodifiableIterator(Ljava/util/Iterator;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    return-object v1

    .line 71
    .end local v0    # "incidentEdges":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    :cond_0
    iget-object v1, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;->this$0:Lcom/google/common/graph/AbstractDirectedNetworkConnections;

    iget-object v1, v1, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->inEdgeMap:Ljava/util/Map;

    .line 72
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;->this$0:Lcom/google/common/graph/AbstractDirectedNetworkConnections;

    iget-object v2, v2, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->outEdgeMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/Sets;->union(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 66
    .local p0, "this":Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;, "Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;"
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 78
    .local p0, "this":Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;, "Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;"
    iget-object v0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;->this$0:Lcom/google/common/graph/AbstractDirectedNetworkConnections;

    iget-object v0, v0, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->inEdgeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;->this$0:Lcom/google/common/graph/AbstractDirectedNetworkConnections;

    iget-object v1, v1, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->outEdgeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;->this$0:Lcom/google/common/graph/AbstractDirectedNetworkConnections;

    invoke-static {v2}, Lcom/google/common/graph/AbstractDirectedNetworkConnections;->access$000(Lcom/google/common/graph/AbstractDirectedNetworkConnections;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/google/common/math/IntMath;->saturatedAdd(II)I

    move-result v0

    return v0
.end method
