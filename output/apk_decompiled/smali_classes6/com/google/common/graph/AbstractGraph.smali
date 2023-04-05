.class public abstract Lcom/google/common/graph/AbstractGraph;
.super Lcom/google/common/graph/AbstractBaseGraph;
.source "AbstractGraph.java"

# interfaces
.implements Lcom/google/common/graph/Graph;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/AbstractBaseGraph",
        "<TN;>;",
        "Lcom/google/common/graph/Graph",
        "<TN;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    .local p0, "this":Lcom/google/common/graph/AbstractGraph;, "Lcom/google/common/graph/AbstractGraph<TN;>;"
    invoke-direct {p0}, Lcom/google/common/graph/AbstractBaseGraph;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic degree(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Lcom/google/common/graph/AbstractGraph;, "Lcom/google/common/graph/AbstractGraph<TN;>;"
    invoke-super {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph;->degree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic edges()Ljava/util/Set;
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Lcom/google/common/graph/AbstractGraph;, "Lcom/google/common/graph/AbstractGraph<TN;>;"
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
    .local p0, "this":Lcom/google/common/graph/AbstractGraph;, "Lcom/google/common/graph/AbstractGraph<TN;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 35
    if-ne p1, p0, :cond_1

    .line 43
    :cond_0
    :goto_0
    return v1

    .line 38
    :cond_1
    instance-of v3, p1, Lcom/google/common/graph/Graph;

    if-nez v3, :cond_2

    move v1, v2

    .line 39
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 41
    check-cast v0, Lcom/google/common/graph/Graph;

    .line 43
    .local v0, "other":Lcom/google/common/graph/Graph;, "Lcom/google/common/graph/Graph<*>;"
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractGraph;->isDirected()Z

    move-result v3

    invoke-interface {v0}, Lcom/google/common/graph/Graph;->isDirected()Z

    move-result v4

    if-ne v3, v4, :cond_3

    .line 44
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractGraph;->nodes()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 45
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractGraph;->edges()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/common/graph/Graph;->edges()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public bridge synthetic hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Lcom/google/common/graph/AbstractGraph;, "Lcom/google/common/graph/AbstractGraph<TN;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/graph/AbstractBaseGraph;->hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 50
    .local p0, "this":Lcom/google/common/graph/AbstractGraph;, "Lcom/google/common/graph/AbstractGraph<TN;>;"
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractGraph;->edges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic inDegree(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Lcom/google/common/graph/AbstractGraph;, "Lcom/google/common/graph/AbstractGraph<TN;>;"
    invoke-super {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph;->inDegree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic outDegree(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Lcom/google/common/graph/AbstractGraph;, "Lcom/google/common/graph/AbstractGraph<TN;>;"
    invoke-super {p0, p1}, Lcom/google/common/graph/AbstractBaseGraph;->outDegree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    .local p0, "this":Lcom/google/common/graph/AbstractGraph;, "Lcom/google/common/graph/AbstractGraph<TN;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDirected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 57
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractGraph;->isDirected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowsSelfLoops: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 59
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractGraph;->allowsSelfLoops()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nodes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractGraph;->nodes()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", edges: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractGraph;->edges()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    return-object v0
.end method
