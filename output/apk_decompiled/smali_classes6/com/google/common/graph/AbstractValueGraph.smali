.class public abstract Lcom/google/common/graph/AbstractValueGraph;
.super Lcom/google/common/graph/AbstractBaseGraph;
.source "AbstractValueGraph.java"

# interfaces
.implements Lcom/google/common/graph/ValueGraph;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/AbstractBaseGraph",
        "<TN;>;",
        "Lcom/google/common/graph/ValueGraph",
        "<TN;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    .local p0, "this":Lcom/google/common/graph/AbstractValueGraph;, "Lcom/google/common/graph/AbstractValueGraph<TN;TV;>;"
    invoke-direct {p0}, Lcom/google/common/graph/AbstractBaseGraph;-><init>()V

    return-void
.end method

.method private static edgeValueMap(Lcom/google/common/graph/ValueGraph;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/ValueGraph",
            "<TN;TV;>;)",
            "Ljava/util/Map",
            "<",
            "Lcom/google/common/graph/EndpointPair",
            "<TN;>;TV;>;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "graph":Lcom/google/common/graph/ValueGraph;, "Lcom/google/common/graph/ValueGraph<TN;TV;>;"
    new-instance v0, Lcom/google/common/graph/AbstractValueGraph$2;

    invoke-direct {v0, p0}, Lcom/google/common/graph/AbstractValueGraph$2;-><init>(Lcom/google/common/graph/ValueGraph;)V

    .line 143
    .local v0, "edgeToValueFn":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<Lcom/google/common/graph/EndpointPair<TN;>;TV;>;"
    invoke-interface {p0}, Lcom/google/common/graph/ValueGraph;->edges()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->asMap(Ljava/util/Set;Lcom/google/common/base/Function;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method


# virtual methods
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
    .line 44
    .local p0, "this":Lcom/google/common/graph/AbstractValueGraph;, "Lcom/google/common/graph/AbstractValueGraph<TN;TV;>;"
    new-instance v0, Lcom/google/common/graph/AbstractValueGraph$1;

    invoke-direct {v0, p0}, Lcom/google/common/graph/AbstractValueGraph$1;-><init>(Lcom/google/common/graph/AbstractValueGraph;)V

    return-object v0
.end method

.method public bridge synthetic degree(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Lcom/google/common/graph/AbstractValueGraph;, "Lcom/google/common/graph/AbstractValueGraph<TN;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph;->degree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic edges()Ljava/util/Set;
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Lcom/google/common/graph/AbstractValueGraph;, "Lcom/google/common/graph/AbstractValueGraph<TN;TV;>;"
    invoke-super {p0}, Lcom/google/common/graph/AbstractBaseGraph;->edges()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/common/graph/AbstractValueGraph;, "Lcom/google/common/graph/AbstractValueGraph<TN;TV;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 104
    if-ne p1, p0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v1

    .line 107
    :cond_1
    instance-of v3, p1, Lcom/google/common/graph/ValueGraph;

    if-nez v3, :cond_2

    move v1, v2

    .line 108
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 110
    check-cast v0, Lcom/google/common/graph/ValueGraph;

    .line 112
    .local v0, "other":Lcom/google/common/graph/ValueGraph;, "Lcom/google/common/graph/ValueGraph<**>;"
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractValueGraph;->isDirected()Z

    move-result v3

    invoke-interface {v0}, Lcom/google/common/graph/ValueGraph;->isDirected()Z

    move-result v4

    if-ne v3, v4, :cond_3

    .line 113
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractValueGraph;->nodes()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/common/graph/ValueGraph;->nodes()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 114
    invoke-static {p0}, Lcom/google/common/graph/AbstractValueGraph;->edgeValueMap(Lcom/google/common/graph/ValueGraph;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v0}, Lcom/google/common/graph/AbstractValueGraph;->edgeValueMap(Lcom/google/common/graph/ValueGraph;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Lcom/google/common/graph/AbstractValueGraph;, "Lcom/google/common/graph/AbstractValueGraph<TN;TV;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/graph/AbstractBaseGraph;->hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 119
    .local p0, "this":Lcom/google/common/graph/AbstractValueGraph;, "Lcom/google/common/graph/AbstractValueGraph<TN;TV;>;"
    invoke-static {p0}, Lcom/google/common/graph/AbstractValueGraph;->edgeValueMap(Lcom/google/common/graph/ValueGraph;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic inDegree(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Lcom/google/common/graph/AbstractValueGraph;, "Lcom/google/common/graph/AbstractValueGraph<TN;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph;->inDegree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic outDegree(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Lcom/google/common/graph/AbstractValueGraph;, "Lcom/google/common/graph/AbstractValueGraph<TN;TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph;->outDegree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    .local p0, "this":Lcom/google/common/graph/AbstractValueGraph;, "Lcom/google/common/graph/AbstractValueGraph<TN;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDirected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 126
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractValueGraph;->isDirected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowsSelfLoops: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 128
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractValueGraph;->allowsSelfLoops()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nodes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 130
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractValueGraph;->nodes()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", edges: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    invoke-static {p0}, Lcom/google/common/graph/AbstractValueGraph;->edgeValueMap(Lcom/google/common/graph/ValueGraph;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    return-object v0
.end method
