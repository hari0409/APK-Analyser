.class Lcom/google/common/graph/AbstractBaseGraph$1;
.super Ljava/util/AbstractSet;
.source "AbstractBaseGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/graph/AbstractBaseGraph;->edges()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Lcom/google/common/graph/EndpointPair",
        "<TN;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/graph/AbstractBaseGraph;


# direct methods
.method constructor <init>(Lcom/google/common/graph/AbstractBaseGraph;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/graph/AbstractBaseGraph;

    .prologue
    .line 61
    .local p0, "this":Lcom/google/common/graph/AbstractBaseGraph$1;, "Lcom/google/common/graph/AbstractBaseGraph$1;"
    iput-object p1, p0, Lcom/google/common/graph/AbstractBaseGraph$1;->this$0:Lcom/google/common/graph/AbstractBaseGraph;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/common/graph/AbstractBaseGraph$1;, "Lcom/google/common/graph/AbstractBaseGraph$1;"
    const/4 v1, 0x0

    .line 78
    instance-of v2, p1, Lcom/google/common/graph/EndpointPair;

    if-nez v2, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 81
    check-cast v0, Lcom/google/common/graph/EndpointPair;

    .line 82
    .local v0, "endpointPair":Lcom/google/common/graph/EndpointPair;, "Lcom/google/common/graph/EndpointPair<*>;"
    iget-object v2, p0, Lcom/google/common/graph/AbstractBaseGraph$1;->this$0:Lcom/google/common/graph/AbstractBaseGraph;

    invoke-virtual {v2}, Lcom/google/common/graph/AbstractBaseGraph;->isDirected()Z

    move-result v2

    invoke-virtual {v0}, Lcom/google/common/graph/EndpointPair;->isOrdered()Z

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/common/graph/AbstractBaseGraph$1;->this$0:Lcom/google/common/graph/AbstractBaseGraph;

    .line 83
    invoke-virtual {v2}, Lcom/google/common/graph/AbstractBaseGraph;->nodes()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/common/graph/AbstractBaseGraph$1;->this$0:Lcom/google/common/graph/AbstractBaseGraph;

    .line 84
    invoke-virtual {v0}, Lcom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/graph/AbstractBaseGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<",
            "Lcom/google/common/graph/EndpointPair",
            "<TN;>;>;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/google/common/graph/AbstractBaseGraph$1;, "Lcom/google/common/graph/AbstractBaseGraph$1;"
    iget-object v0, p0, Lcom/google/common/graph/AbstractBaseGraph$1;->this$0:Lcom/google/common/graph/AbstractBaseGraph;

    invoke-static {v0}, Lcom/google/common/graph/EndpointPairIterator;->of(Lcom/google/common/graph/BaseGraph;)Lcom/google/common/graph/EndpointPairIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lcom/google/common/graph/AbstractBaseGraph$1;, "Lcom/google/common/graph/AbstractBaseGraph$1;"
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractBaseGraph$1;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 69
    .local p0, "this":Lcom/google/common/graph/AbstractBaseGraph$1;, "Lcom/google/common/graph/AbstractBaseGraph$1;"
    iget-object v0, p0, Lcom/google/common/graph/AbstractBaseGraph$1;->this$0:Lcom/google/common/graph/AbstractBaseGraph;

    invoke-virtual {v0}, Lcom/google/common/graph/AbstractBaseGraph;->edgeCount()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method
