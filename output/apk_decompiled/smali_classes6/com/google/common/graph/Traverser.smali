.class public abstract Lcom/google/common/graph/Traverser;
.super Ljava/lang/Object;
.source "Traverser.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/Traverser$Order;,
        Lcom/google/common/graph/Traverser$TreeTraverser;,
        Lcom/google/common/graph/Traverser$GraphTraverser;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 243
    .local p0, "this":Lcom/google/common/graph/Traverser;, "Lcom/google/common/graph/Traverser<TN;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/graph/Traverser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/graph/Traverser$1;

    .prologue
    .line 42
    .local p0, "this":Lcom/google/common/graph/Traverser;, "Lcom/google/common/graph/Traverser<TN;>;"
    invoke-direct {p0}, Lcom/google/common/graph/Traverser;-><init>()V

    return-void
.end method

.method public static forGraph(Lcom/google/common/graph/SuccessorsFunction;)Lcom/google/common/graph/Traverser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/SuccessorsFunction",
            "<TN;>;)",
            "Lcom/google/common/graph/Traverser",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "graph":Lcom/google/common/graph/SuccessorsFunction;, "Lcom/google/common/graph/SuccessorsFunction<TN;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Lcom/google/common/graph/Traverser$GraphTraverser;

    invoke-direct {v0, p0}, Lcom/google/common/graph/Traverser$GraphTraverser;-><init>(Lcom/google/common/graph/SuccessorsFunction;)V

    return-object v0
.end method

.method public static forTree(Lcom/google/common/graph/SuccessorsFunction;)Lcom/google/common/graph/Traverser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/SuccessorsFunction",
            "<TN;>;)",
            "Lcom/google/common/graph/Traverser",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "tree":Lcom/google/common/graph/SuccessorsFunction;, "Lcom/google/common/graph/SuccessorsFunction<TN;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    instance-of v0, p0, Lcom/google/common/graph/BaseGraph;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 135
    check-cast v0, Lcom/google/common/graph/BaseGraph;

    invoke-interface {v0}, Lcom/google/common/graph/BaseGraph;->isDirected()Z

    move-result v0

    const-string v1, "Undirected graphs can never be trees."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 137
    :cond_0
    instance-of v0, p0, Lcom/google/common/graph/Network;

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 138
    check-cast v0, Lcom/google/common/graph/Network;

    invoke-interface {v0}, Lcom/google/common/graph/Network;->isDirected()Z

    move-result v0

    const-string v1, "Undirected networks can never be trees."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 140
    :cond_1
    new-instance v0, Lcom/google/common/graph/Traverser$TreeTraverser;

    invoke-direct {v0, p0}, Lcom/google/common/graph/Traverser$TreeTraverser;-><init>(Lcom/google/common/graph/SuccessorsFunction;)V

    return-object v0
.end method


# virtual methods
.method public abstract breadthFirst(Ljava/lang/Object;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/lang/Iterable",
            "<TN;>;"
        }
    .end annotation
.end method

.method public abstract depthFirstPostOrder(Ljava/lang/Object;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/lang/Iterable",
            "<TN;>;"
        }
    .end annotation
.end method

.method public abstract depthFirstPreOrder(Ljava/lang/Object;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/lang/Iterable",
            "<TN;>;"
        }
    .end annotation
.end method
