.class final Lcom/google/common/graph/Traverser$TreeTraverser;
.super Lcom/google/common/graph/Traverser;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/Traverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TreeTraverser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPostOrderIterator;,
        Lcom/google/common/graph/Traverser$TreeTraverser$DepthFirstPreOrderIterator;,
        Lcom/google/common/graph/Traverser$TreeTraverser$BreadthFirstIterator;
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
.field private final tree:Lcom/google/common/graph/SuccessorsFunction;
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
    .line 379
    .local p0, "this":Lcom/google/common/graph/Traverser$TreeTraverser;, "Lcom/google/common/graph/Traverser$TreeTraverser<TN;>;"
    .local p1, "tree":Lcom/google/common/graph/SuccessorsFunction;, "Lcom/google/common/graph/SuccessorsFunction<TN;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/graph/Traverser;-><init>(Lcom/google/common/graph/Traverser$1;)V

    .line 380
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/SuccessorsFunction;

    iput-object v0, p0, Lcom/google/common/graph/Traverser$TreeTraverser;->tree:Lcom/google/common/graph/SuccessorsFunction;

    .line 381
    return-void
.end method

.method static synthetic access$200(Lcom/google/common/graph/Traverser$TreeTraverser;)Lcom/google/common/graph/SuccessorsFunction;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/graph/Traverser$TreeTraverser;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/common/graph/Traverser$TreeTraverser;->tree:Lcom/google/common/graph/SuccessorsFunction;

    return-object v0
.end method

.method private checkThatNodeIsInTree(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .prologue
    .line 423
    .local p0, "this":Lcom/google/common/graph/Traverser$TreeTraverser;, "Lcom/google/common/graph/Traverser$TreeTraverser<TN;>;"
    .local p1, "startNode":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lcom/google/common/graph/Traverser$TreeTraverser;->tree:Lcom/google/common/graph/SuccessorsFunction;

    invoke-interface {v0, p1}, Lcom/google/common/graph/SuccessorsFunction;->successors(Ljava/lang/Object;)Ljava/lang/Iterable;

    .line 424
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
    .line 385
    .local p0, "this":Lcom/google/common/graph/Traverser$TreeTraverser;, "Lcom/google/common/graph/Traverser$TreeTraverser<TN;>;"
    .local p1, "startNode":Ljava/lang/Object;, "TN;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    invoke-direct {p0, p1}, Lcom/google/common/graph/Traverser$TreeTraverser;->checkThatNodeIsInTree(Ljava/lang/Object;)V

    .line 387
    new-instance v0, Lcom/google/common/graph/Traverser$TreeTraverser$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/graph/Traverser$TreeTraverser$1;-><init>(Lcom/google/common/graph/Traverser$TreeTraverser;Ljava/lang/Object;)V

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
    .line 409
    .local p0, "this":Lcom/google/common/graph/Traverser$TreeTraverser;, "Lcom/google/common/graph/Traverser$TreeTraverser<TN;>;"
    .local p1, "startNode":Ljava/lang/Object;, "TN;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    invoke-direct {p0, p1}, Lcom/google/common/graph/Traverser$TreeTraverser;->checkThatNodeIsInTree(Ljava/lang/Object;)V

    .line 411
    new-instance v0, Lcom/google/common/graph/Traverser$TreeTraverser$3;

    invoke-direct {v0, p0, p1}, Lcom/google/common/graph/Traverser$TreeTraverser$3;-><init>(Lcom/google/common/graph/Traverser$TreeTraverser;Ljava/lang/Object;)V

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
    .line 397
    .local p0, "this":Lcom/google/common/graph/Traverser$TreeTraverser;, "Lcom/google/common/graph/Traverser$TreeTraverser<TN;>;"
    .local p1, "startNode":Ljava/lang/Object;, "TN;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    invoke-direct {p0, p1}, Lcom/google/common/graph/Traverser$TreeTraverser;->checkThatNodeIsInTree(Ljava/lang/Object;)V

    .line 399
    new-instance v0, Lcom/google/common/graph/Traverser$TreeTraverser$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/graph/Traverser$TreeTraverser$2;-><init>(Lcom/google/common/graph/Traverser$TreeTraverser;Ljava/lang/Object;)V

    return-object v0
.end method
