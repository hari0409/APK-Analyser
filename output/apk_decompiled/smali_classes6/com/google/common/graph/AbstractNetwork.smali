.class public abstract Lcom/google/common/graph/AbstractNetwork;
.super Ljava/lang/Object;
.source "AbstractNetwork.java"

# interfaces
.implements Lcom/google/common/graph/Network;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/graph/Network",
        "<TN;TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    .local p0, "this":Lcom/google/common/graph/AbstractNetwork;, "Lcom/google/common/graph/AbstractNetwork<TN;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private connectedPredicate(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/base/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)",
            "Lcom/google/common/base/Predicate",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lcom/google/common/graph/AbstractNetwork;, "Lcom/google/common/graph/AbstractNetwork<TN;TE;>;"
    .local p1, "nodePresent":Ljava/lang/Object;, "TN;"
    .local p2, "nodeToCheck":Ljava/lang/Object;, "TN;"
    new-instance v0, Lcom/google/common/graph/AbstractNetwork$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/graph/AbstractNetwork$2;-><init>(Lcom/google/common/graph/AbstractNetwork;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static edgeIncidentNodesMap(Lcom/google/common/graph/Network;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/Network",
            "<TN;TE;>;)",
            "Ljava/util/Map",
            "<TE;",
            "Lcom/google/common/graph/EndpointPair",
            "<TN;>;>;"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, "network":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<TN;TE;>;"
    new-instance v0, Lcom/google/common/graph/AbstractNetwork$3;

    invoke-direct {v0, p0}, Lcom/google/common/graph/AbstractNetwork$3;-><init>(Lcom/google/common/graph/Network;)V

    .line 242
    .local v0, "edgeToIncidentNodesFn":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<TE;Lcom/google/common/graph/EndpointPair<TN;>;>;"
    invoke-interface {p0}, Lcom/google/common/graph/Network;->edges()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/Set;Lcom/google/common/base/Function;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public adjacentEdges(Ljava/lang/Object;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "this":Lcom/google/common/graph/AbstractNetwork;, "Lcom/google/common/graph/AbstractNetwork<TN;TE;>;"
    .local p1, "edge":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractNetwork;->incidentNodes(Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v0

    .line 158
    .local v0, "endpointPair":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<TN;>;"
    invoke-virtual {v0}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/common/graph/AbstractNetwork;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/common/graph/AbstractNetwork;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/Sets;->union(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;

    move-result-object v1

    .line 159
    .local v1, "endpointPairIncidentEdges":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/Sets;->difference(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;

    move-result-object v2

    return-object v2
.end method

.method public asGraph()Lcom/google/common/graph/Graph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/Graph",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/google/common/graph/AbstractNetwork;, "Lcom/google/common/graph/AbstractNetwork<TN;TE;>;"
    new-instance v0, Lcom/google/common/graph/AbstractNetwork$1;

    invoke-direct {v0, p0}, Lcom/google/common/graph/AbstractNetwork$1;-><init>(Lcom/google/common/graph/AbstractNetwork;)V

    return-object v0
.end method

.method public degree(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lcom/google/common/graph/AbstractNetwork;, "Lcom/google/common/graph/AbstractNetwork<TN;TE;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractNetwork;->isDirected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractNetwork;->inEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractNetwork;->outEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/math/IntMath;->saturatedAdd(II)I

    move-result v0

    .line 140
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractNetwork;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p0, p1, p1}, Lcom/google/common/graph/AbstractNetwork;->edgesConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/math/IntMath;->saturatedAdd(II)I

    move-result v0

    goto :goto_0
.end method

.method public edgeConnectingOrNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)TE;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .line 183
    .local p0, "this":Lcom/google/common/graph/AbstractNetwork;, "Lcom/google/common/graph/AbstractNetwork<TN;TE;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/graph/AbstractNetwork;->edgesConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 184
    .local v0, "edgesConnecting":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 190
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot call edgeConnecting() when parallel edges exist between %s and %s. Consider calling edgesConnecting() instead."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    :pswitch_0
    const/4 v1, 0x0

    .line 188
    :goto_0
    return-object v1

    :pswitch_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public edgesConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lcom/google/common/graph/AbstractNetwork;, "Lcom/google/common/graph/AbstractNetwork<TN;TE;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractNetwork;->outEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 165
    .local v1, "outEdgesU":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-virtual {p0, p2}, Lcom/google/common/graph/AbstractNetwork;->inEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 166
    .local v0, "inEdgesV":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 167
    invoke-direct {p0, p1, p2}, Lcom/google/common/graph/AbstractNetwork;->connectedPredicate(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/base/Predicate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/Sets;->filter(Ljava/util/Set;Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 166
    :goto_0
    return-object v2

    .line 168
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/google/common/graph/AbstractNetwork;->connectedPredicate(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/base/Predicate;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/collect/Sets;->filter(Ljava/util/Set;Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/common/graph/AbstractNetwork;, "Lcom/google/common/graph/AbstractNetwork<TN;TE;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 201
    if-ne p1, p0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v1

    .line 204
    :cond_1
    instance-of v3, p1, Lcom/google/common/graph/Network;

    if-nez v3, :cond_2

    move v1, v2

    .line 205
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 207
    check-cast v0, Lcom/google/common/graph/Network;

    .line 209
    .local v0, "other":Lcom/google/common/graph/Network;, "Lcom/google/common/graph/Network<**>;"
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractNetwork;->isDirected()Z

    move-result v3

    invoke-interface {v0}, Lcom/google/common/graph/Network;->isDirected()Z

    move-result v4

    if-ne v3, v4, :cond_3

    .line 210
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractNetwork;->nodes()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/common/graph/Network;->nodes()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 211
    invoke-static {p0}, Lcom/google/common/graph/AbstractNetwork;->edgeIncidentNodesMap(Lcom/google/common/graph/Network;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v0}, Lcom/google/common/graph/AbstractNetwork;->edgeIncidentNodesMap(Lcom/google/common/graph/Network;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "this":Lcom/google/common/graph/AbstractNetwork;, "Lcom/google/common/graph/AbstractNetwork<TN;TE;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/graph/AbstractNetwork;->edgesConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 216
    .local p0, "this":Lcom/google/common/graph/AbstractNetwork;, "Lcom/google/common/graph/AbstractNetwork<TN;TE;>;"
    invoke-static {p0}, Lcom/google/common/graph/AbstractNetwork;->edgeIncidentNodesMap(Lcom/google/common/graph/Network;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

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
    .line 146
    .local p0, "this":Lcom/google/common/graph/AbstractNetwork;, "Lcom/google/common/graph/AbstractNetwork<TN;TE;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractNetwork;->isDirected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractNetwork;->inEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractNetwork;->degree(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public outDegree(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lcom/google/common/graph/AbstractNetwork;, "Lcom/google/common/graph/AbstractNetwork<TN;TE;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractNetwork;->isDirected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractNetwork;->outEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/graph/AbstractNetwork;->degree(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 222
    .local p0, "this":Lcom/google/common/graph/AbstractNetwork;, "Lcom/google/common/graph/AbstractNetwork<TN;TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDirected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 223
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractNetwork;->isDirected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowsParallelEdges: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 225
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractNetwork;->allowsParallelEdges()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowsSelfLoops: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 227
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractNetwork;->allowsSelfLoops()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nodes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 229
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractNetwork;->nodes()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", edges: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 231
    invoke-static {p0}, Lcom/google/common/graph/AbstractNetwork;->edgeIncidentNodesMap(Lcom/google/common/graph/Network;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    return-object v0
.end method
