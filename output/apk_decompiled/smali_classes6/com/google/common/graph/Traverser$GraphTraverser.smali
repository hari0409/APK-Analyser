.class final Lcom/google/common/graph/Traverser$GraphTraverser;
.super Lcom/google/common/graph/Traverser;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Traverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GraphTraverser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;,
        Lcom/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/Traverser",
        "<TN;>;"
    }
.end annotation


# instance fields
.field private final graph:Lcom/google/common/graph/SuccessorsFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/SuccessorsFunction",
            "<TN;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/graph/SuccessorsFunction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/SuccessorsFunction",
            "<TN;>;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "this":Lcom/google/common/graph/Traverser$GraphTraverser;, "Lcom/google/common/graph/Traverser$GraphTraverser<TN;>;"
    .local p1, "graph":Lcom/google/common/graph/SuccessorsFunction;, "Lcom/google/common/graph/SuccessorsFunction<TN;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/graph/Traverser;-><init>(Lcom/google/common/graph/Traverser$1;)V

    .line 249
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/SuccessorsFunction;

    iput-object v0, p0, Lcom/google/common/graph/Traverser$GraphTraverser;->graph:Lcom/google/common/graph/SuccessorsFunction;

    .line 250
    return-void
.end method

.method static synthetic access$100(Lcom/google/common/graph/Traverser$GraphTraverser;)Lcom/google/common/graph/SuccessorsFunction;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/graph/Traverser$GraphTraverser;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/common/graph/Traverser$GraphTraverser;->graph:Lcom/google/common/graph/SuccessorsFunction;

    return-object v0
.end method

.method private checkThatNodeIsInGraph(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p0, "this":Lcom/google/common/graph/Traverser$GraphTraverser;, "Lcom/google/common/graph/Traverser$GraphTraverser<TN;>;"
    .local p1, "startNode":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lcom/google/common/graph/Traverser$GraphTraverser;->graph:Lcom/google/common/graph/SuccessorsFunction;

    invoke-interface {v0, p1}, Lcom/google/common/graph/SuccessorsFunction;->successors(Ljava/lang/Object;)Ljava/lang/Iterable;

    .line 293
    return-void
.end method


# virtual methods
.method public breadthFirst(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/lang/Iterable",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 254
    .local p0, "this":Lcom/google/common/graph/Traverser$GraphTraverser;, "Lcom/google/common/graph/Traverser$GraphTraverser<TN;>;"
    .local p1, "startNode":Ljava/lang/Object;, "TN;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-direct {p0, p1}, Lcom/google/common/graph/Traverser$GraphTraverser;->checkThatNodeIsInGraph(Ljava/lang/Object;)V

    .line 256
    new-instance v0, Lcom/google/common/graph/Traverser$GraphTraverser$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/graph/Traverser$GraphTraverser$1;-><init>(Lcom/google/common/graph/Traverser$GraphTraverser;Ljava/lang/Object;)V

    return-object v0
.end method

.method public depthFirstPostOrder(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/lang/Iterable",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 278
    .local p0, "this":Lcom/google/common/graph/Traverser$GraphTraverser;, "Lcom/google/common/graph/Traverser$GraphTraverser<TN;>;"
    .local p1, "startNode":Ljava/lang/Object;, "TN;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-direct {p0, p1}, Lcom/google/common/graph/Traverser$GraphTraverser;->checkThatNodeIsInGraph(Ljava/lang/Object;)V

    .line 280
    new-instance v0, Lcom/google/common/graph/Traverser$GraphTraverser$3;

    invoke-direct {v0, p0, p1}, Lcom/google/common/graph/Traverser$GraphTraverser$3;-><init>(Lcom/google/common/graph/Traverser$GraphTraverser;Ljava/lang/Object;)V

    return-object v0
.end method

.method public depthFirstPreOrder(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/lang/Iterable",
            "<TN;>;"
        }
    .end annotation

    .prologue
    .line 266
    .local p0, "this":Lcom/google/common/graph/Traverser$GraphTraverser;, "Lcom/google/common/graph/Traverser$GraphTraverser<TN;>;"
    .local p1, "startNode":Ljava/lang/Object;, "TN;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-direct {p0, p1}, Lcom/google/common/graph/Traverser$GraphTraverser;->checkThatNodeIsInGraph(Ljava/lang/Object;)V

    .line 268
    new-instance v0, Lcom/google/common/graph/Traverser$GraphTraverser$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/graph/Traverser$GraphTraverser$2;-><init>(Lcom/google/common/graph/Traverser$GraphTraverser;Ljava/lang/Object;)V

    return-object v0
.end method
