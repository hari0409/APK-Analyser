.class final Lcom/google/common/collect/TreeMultiset$AvlNode;
.super Lcom/google/common/collect/Multisets$AbstractEntry;
.source "TreeMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AvlNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Multisets$AbstractEntry",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private distinctElements:I

.field private final elem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private elemCount:I

.field private height:I

.field private left:Lcom/google/common/collect/TreeMultiset$AvlNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation
.end field

.field private pred:Lcom/google/common/collect/TreeMultiset$AvlNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation
.end field

.field private right:Lcom/google/common/collect/TreeMultiset$AvlNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation
.end field

.field private succ:Lcom/google/common/collect/TreeMultiset$AvlNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation
.end field

.field private totalCount:J


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2, "elemCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .local p1, "elem":Ljava/lang/Object;, "TE;"
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 533
    invoke-direct {p0}, Lcom/google/common/collect/Multisets$AbstractEntry;-><init>()V

    .line 534
    if-lez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 535
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elem:Ljava/lang/Object;

    .line 536
    iput p2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    .line 537
    int-to-long v2, p2

    iput-wide v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 538
    iput v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 539
    iput v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->height:I

    .line 540
    iput-object v4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 541
    iput-object v4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 542
    return-void

    .line 534
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/google/common/collect/TreeMultiset$AvlNode;Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset$AvlNode;
    .param p1, "x1"    # Ljava/util/Comparator;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 519
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->floor(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset$AvlNode;

    .prologue
    .line 519
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->pred:Lcom/google/common/collect/TreeMultiset$AvlNode;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .locals 0
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset$AvlNode;
    .param p1, "x1"    # Lcom/google/common/collect/TreeMultiset$AvlNode;

    .prologue
    .line 519
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->pred:Lcom/google/common/collect/TreeMultiset$AvlNode;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/common/collect/TreeMultiset$AvlNode;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset$AvlNode;

    .prologue
    .line 519
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/common/collect/TreeMultiset$AvlNode;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset$AvlNode;

    .prologue
    .line 519
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/google/common/collect/TreeMultiset$AvlNode;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset$AvlNode;

    .prologue
    .line 519
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/common/collect/TreeMultiset$AvlNode;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset$AvlNode;

    .prologue
    .line 519
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elem:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset$AvlNode;

    .prologue
    .line 519
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset$AvlNode;

    .prologue
    .line 519
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/common/collect/TreeMultiset$AvlNode;Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset$AvlNode;
    .param p1, "x1"    # Ljava/util/Comparator;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 519
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->ceiling(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset$AvlNode;

    .prologue
    .line 519
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->succ:Lcom/google/common/collect/TreeMultiset$AvlNode;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .locals 0
    .param p0, "x0"    # Lcom/google/common/collect/TreeMultiset$AvlNode;
    .param p1, "x1"    # Lcom/google/common/collect/TreeMultiset$AvlNode;

    .prologue
    .line 519
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->succ:Lcom/google/common/collect/TreeMultiset$AvlNode;

    return-object p1
.end method

.method private addLeftChild(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .locals 4
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 565
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 566
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->pred:Lcom/google/common/collect/TreeMultiset$AvlNode;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v0, v1, p0}, Lcom/google/common/collect/TreeMultiset;->access$1700(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)V

    .line 567
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->height:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->height:I

    .line 568
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 569
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 570
    return-object p0
.end method

.method private addRightChild(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .locals 4
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 556
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 557
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->succ:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {p0, v0, v1}, Lcom/google/common/collect/TreeMultiset;->access$1700(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)V

    .line 558
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->height:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->height:I

    .line 559
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 560
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 561
    return-object p0
.end method

.method private balanceFactor()I
    .locals 2

    .prologue
    .line 866
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->height(Lcom/google/common/collect/TreeMultiset$AvlNode;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->height(Lcom/google/common/collect/TreeMultiset$AvlNode;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private ceiling(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;TE;)",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .line 903
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elem:Ljava/lang/Object;

    invoke-interface {p1, p2, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 904
    .local v0, "cmp":I
    if-gez v0, :cond_2

    .line 905
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez v1, :cond_1

    .line 909
    .end local p0    # "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_0
    :goto_0
    return-object p0

    .line 905
    .restart local p0    # "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v1, p1, p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->ceiling(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-object p0, v1

    goto :goto_0

    .line 906
    :cond_2
    if-eqz v0, :cond_0

    .line 909
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    :goto_1
    move-object p0, v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v1, p1, p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->ceiling(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    goto :goto_1
.end method

.method private deleteMe()Lcom/google/common/collect/TreeMultiset$AvlNode;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 783
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    iget v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    .line 784
    .local v1, "oldElemCount":I
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    .line 785
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->pred:Lcom/google/common/collect/TreeMultiset$AvlNode;

    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->succ:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v2, v3}, Lcom/google/common/collect/TreeMultiset;->access$1800(Lcom/google/common/collect/TreeMultiset$AvlNode;Lcom/google/common/collect/TreeMultiset$AvlNode;)V

    .line 786
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez v2, :cond_0

    .line 787
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 804
    :goto_0
    return-object v2

    .line 788
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez v2, :cond_1

    .line 789
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    goto :goto_0

    .line 790
    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    iget v2, v2, Lcom/google/common/collect/TreeMultiset$AvlNode;->height:I

    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    iget v3, v3, Lcom/google/common/collect/TreeMultiset$AvlNode;->height:I

    if-lt v2, v3, :cond_2

    .line 791
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->pred:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 793
    .local v0, "newTop":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v2, v0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->removeMax(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v2

    iput-object v2, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 794
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    iput-object v2, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 795
    iget v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 796
    iget-wide v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 797
    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rebalance()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v2

    goto :goto_0

    .line 799
    .end local v0    # "newTop":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->succ:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 800
    .restart local v0    # "newTop":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v2, v0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->removeMin(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v2

    iput-object v2, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 801
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    iput-object v2, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 802
    iget v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 803
    iget-wide v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 804
    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rebalance()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v2

    goto :goto_0
.end method

.method private floor(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;TE;)",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .line 915
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elem:Ljava/lang/Object;

    invoke-interface {p1, p2, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 916
    .local v0, "cmp":I
    if-lez v0, :cond_2

    .line 917
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez v1, :cond_1

    .line 921
    .end local p0    # "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_0
    :goto_0
    return-object p0

    .line 917
    .restart local p0    # "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v1, p1, p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->floor(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-object p0, v1

    goto :goto_0

    .line 918
    :cond_2
    if-eqz v0, :cond_0

    .line 921
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    :goto_1
    move-object p0, v1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v1, p1, p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->floor(Ljava/util/Comparator;Ljava/lang/Object;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    goto :goto_1
.end method

.method private static height(Lcom/google/common/collect/TreeMultiset$AvlNode;)I
    .locals 1
    .param p0    # Lcom/google/common/collect/TreeMultiset$AvlNode;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 898
    .local p0, "node":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<*>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->height:I

    goto :goto_0
.end method

.method private rebalance()Lcom/google/common/collect/TreeMultiset$AvlNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 848
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->balanceFactor()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 860
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->recomputeHeight()V

    .line 861
    .end local p0    # "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :goto_0
    return-object p0

    .line 850
    .restart local p0    # "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :sswitch_0
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->balanceFactor()I

    move-result v0

    if-lez v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rotateRight()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 853
    :cond_0
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rotateLeft()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    goto :goto_0

    .line 855
    :sswitch_1
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->balanceFactor()I

    move-result v0

    if-gez v0, :cond_1

    .line 856
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rotateLeft()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 858
    :cond_1
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rotateRight()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    goto :goto_0

    .line 848
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_0
        0x2 -> :sswitch_1
    .end sparse-switch
.end method

.method private recompute()V
    .locals 0

    .prologue
    .line 843
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->recomputeMultiset()V

    .line 844
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->recomputeHeight()V

    .line 845
    return-void
.end method

.method private recomputeHeight()V
    .locals 2

    .prologue
    .line 839
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->height(Lcom/google/common/collect/TreeMultiset$AvlNode;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->height(Lcom/google/common/collect/TreeMultiset$AvlNode;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->height:I

    .line 840
    return-void
.end method

.method private recomputeMultiset()V
    .locals 4

    .prologue
    .line 833
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 834
    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset;->distinctElements(Lcom/google/common/collect/TreeMultiset$AvlNode;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset;->distinctElements(Lcom/google/common/collect/TreeMultiset$AvlNode;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 835
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount(Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount(Lcom/google/common/collect/TreeMultiset$AvlNode;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 836
    return-void
.end method

.method private removeMax(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;)",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 822
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .local p1, "node":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 828
    :goto_0
    return-object v0

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v0, p1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->removeMax(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 826
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 827
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    iget v2, p1, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 828
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rebalance()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v0

    goto :goto_0
.end method

.method private removeMin(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;)",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 810
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .local p1, "node":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 816
    :goto_0
    return-object v0

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {v0, p1}, Lcom/google/common/collect/TreeMultiset$AvlNode;->removeMin(Lcom/google/common/collect/TreeMultiset$AvlNode;)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 814
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 815
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    iget v2, p1, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 816
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rebalance()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v0

    goto :goto_0
.end method

.method private rotateLeft()Lcom/google/common/collect/TreeMultiset$AvlNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 870
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 871
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 872
    .local v0, "newTop":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    iget-object v1, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    iput-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 873
    iput-object p0, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 874
    iget-wide v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    iput-wide v2, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 875
    iget v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    iput v1, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 876
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->recompute()V

    .line 877
    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->recomputeHeight()V

    .line 878
    return-object v0

    .line 870
    .end local v0    # "newTop":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private rotateRight()Lcom/google/common/collect/TreeMultiset$AvlNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 882
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 883
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 884
    .local v0, "newTop":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    iget-object v1, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    iput-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 885
    iput-object p0, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 886
    iget-wide v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    iput-wide v2, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 887
    iget v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    iput v1, v0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 888
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->recompute()V

    .line 889
    invoke-direct {v0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->recomputeHeight()V

    .line 890
    return-object v0

    .line 882
    .end local v0    # "newTop":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static totalCount(Lcom/google/common/collect/TreeMultiset$AvlNode;)J
    .locals 2
    .param p0    # Lcom/google/common/collect/TreeMultiset$AvlNode;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<*>;)J"
        }
    .end annotation

    .prologue
    .line 894
    .local p0, "node":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<*>;"
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    goto :goto_0
.end method


# virtual methods
.method add(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .locals 10
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3, "count"    # I
    .param p4, "result"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;TE;I[I)",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 578
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    iget-object v6, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elem:Ljava/lang/Object;

    invoke-interface {p1, p2, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 579
    .local v0, "cmp":I
    if-gez v0, :cond_3

    .line 580
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 581
    .local v2, "initLeft":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    if-nez v2, :cond_1

    .line 582
    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, p4, v6

    .line 583
    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/TreeMultiset$AvlNode;->addLeftChild(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    .line 615
    .end local v2    # "initLeft":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .end local p0    # "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_0
    :goto_0
    return-object p0

    .line 585
    .restart local v2    # "initLeft":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .restart local p0    # "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_1
    iget v1, v2, Lcom/google/common/collect/TreeMultiset$AvlNode;->height:I

    .line 587
    .local v1, "initHeight":I
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$AvlNode;->add(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 588
    const/4 v6, 0x0

    aget v6, p4, v6

    if-nez v6, :cond_2

    .line 589
    iget v6, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 591
    :cond_2
    iget-wide v6, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    int-to-long v8, p3

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 592
    iget-object v6, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    iget v6, v6, Lcom/google/common/collect/TreeMultiset$AvlNode;->height:I

    if-eq v6, v1, :cond_0

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rebalance()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    goto :goto_0

    .line 593
    .end local v1    # "initHeight":I
    .end local v2    # "initLeft":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_3
    if-lez v0, :cond_6

    .line 594
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 595
    .local v3, "initRight":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    if-nez v3, :cond_4

    .line 596
    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, p4, v6

    .line 597
    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/TreeMultiset$AvlNode;->addRightChild(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    goto :goto_0

    .line 599
    :cond_4
    iget v1, v3, Lcom/google/common/collect/TreeMultiset$AvlNode;->height:I

    .line 601
    .restart local v1    # "initHeight":I
    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$AvlNode;->add(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v6

    iput-object v6, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 602
    const/4 v6, 0x0

    aget v6, p4, v6

    if-nez v6, :cond_5

    .line 603
    iget v6, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 605
    :cond_5
    iget-wide v6, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    int-to-long v8, p3

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 606
    iget-object v6, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    iget v6, v6, Lcom/google/common/collect/TreeMultiset$AvlNode;->height:I

    if-eq v6, v1, :cond_0

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rebalance()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    goto :goto_0

    .line 610
    .end local v1    # "initHeight":I
    .end local v3    # "initRight":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_6
    const/4 v6, 0x0

    iget v7, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    aput v7, p4, v6

    .line 611
    iget v6, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    int-to-long v6, v6

    int-to-long v8, p3

    add-long v4, v6, v8

    .line 612
    .local v4, "resultCount":J
    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v4, v6

    if-gtz v6, :cond_7

    const/4 v6, 0x1

    :goto_1
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 613
    iget v6, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    add-int/2addr v6, p3

    iput v6, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    .line 614
    iget-wide v6, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    int-to-long v8, p3

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    goto :goto_0

    .line 612
    :cond_7
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public count(Ljava/util/Comparator;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;TE;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x0

    .line 545
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elem:Ljava/lang/Object;

    invoke-interface {p1, p2, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 546
    .local v0, "cmp":I
    if-gez v0, :cond_2

    .line 547
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-nez v2, :cond_1

    .line 551
    :cond_0
    :goto_0
    return v1

    .line 547
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-virtual {v1, p1, p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->count(Ljava/util/Comparator;Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    .line 548
    :cond_2
    if-lez v0, :cond_3

    .line 549
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    invoke-virtual {v1, p1, p2}, Lcom/google/common/collect/TreeMultiset$AvlNode;->count(Ljava/util/Comparator;Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    .line 551
    :cond_3
    iget v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 932
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    iget v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    return v0
.end method

.method public getElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 927
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elem:Ljava/lang/Object;

    return-object v0
.end method

.method remove(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .locals 9
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3, "count"    # I
    .param p4, "result"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;TE;I[I)",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    const/4 v8, 0x0

    .line 620
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elem:Ljava/lang/Object;

    invoke-interface {p1, p2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 621
    .local v0, "cmp":I
    if-gez v0, :cond_4

    .line 622
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 623
    .local v1, "initLeft":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    if-nez v1, :cond_1

    .line 624
    aput v8, p4, v8

    .line 666
    .end local v1    # "initLeft":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .end local p0    # "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_0
    :goto_0
    return-object p0

    .line 628
    .restart local v1    # "initLeft":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .restart local p0    # "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_1
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$AvlNode;->remove(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v3

    iput-object v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 630
    aget v3, p4, v8

    if-lez v3, :cond_2

    .line 631
    aget v3, p4, v8

    if-lt p3, v3, :cond_3

    .line 632
    iget v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 633
    iget-wide v4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    aget v3, p4, v8

    int-to-long v6, v3

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 638
    :cond_2
    :goto_1
    aget v3, p4, v8

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rebalance()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    goto :goto_0

    .line 635
    :cond_3
    iget-wide v4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    int-to-long v6, p3

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    goto :goto_1

    .line 639
    .end local v1    # "initLeft":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_4
    if-lez v0, :cond_8

    .line 640
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 641
    .local v2, "initRight":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    if-nez v2, :cond_5

    .line 642
    aput v8, p4, v8

    goto :goto_0

    .line 646
    :cond_5
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$AvlNode;->remove(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v3

    iput-object v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 648
    aget v3, p4, v8

    if-lez v3, :cond_6

    .line 649
    aget v3, p4, v8

    if-lt p3, v3, :cond_7

    .line 650
    iget v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 651
    iget-wide v4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    aget v3, p4, v8

    int-to-long v6, v3

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 656
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rebalance()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    goto :goto_0

    .line 653
    :cond_7
    iget-wide v4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    int-to-long v6, p3

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    goto :goto_2

    .line 660
    .end local v2    # "initRight":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_8
    iget v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    aput v3, p4, v8

    .line 661
    iget v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    if-lt p3, v3, :cond_9

    .line 662
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->deleteMe()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    goto :goto_0

    .line 664
    :cond_9
    iget v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    sub-int/2addr v3, p3

    iput v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    .line 665
    iget-wide v4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    int-to-long v6, p3

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    goto :goto_0
.end method

.method setCount(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .locals 9
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3, "expectedCount"    # I
    .param p4, "newCount"    # I
    .param p5, "result"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;TE;II[I)",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    const/4 v8, 0x0

    .line 725
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elem:Ljava/lang/Object;

    invoke-interface {p1, p2, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    .line 726
    .local v7, "cmp":I
    if-gez v7, :cond_5

    .line 727
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 728
    .local v0, "initLeft":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    if-nez v0, :cond_1

    .line 729
    aput v8, p5, v8

    .line 730
    if-nez p3, :cond_0

    if-lez p4, :cond_0

    .line 731
    invoke-direct {p0, p2, p4}, Lcom/google/common/collect/TreeMultiset$AvlNode;->addLeftChild(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    .line 779
    .end local v0    # "initLeft":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .end local p0    # "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_0
    :goto_0
    return-object p0

    .restart local v0    # "initLeft":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .restart local p0    # "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_1
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 736
    invoke-virtual/range {v0 .. v5}, Lcom/google/common/collect/TreeMultiset$AvlNode;->setCount(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 738
    aget v2, p5, v8

    if-ne v2, p3, :cond_3

    .line 739
    if-nez p4, :cond_4

    aget v2, p5, v8

    if-eqz v2, :cond_4

    .line 740
    iget v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 744
    :cond_2
    :goto_1
    iget-wide v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    aget v4, p5, v8

    sub-int v4, p4, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 746
    :cond_3
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rebalance()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    goto :goto_0

    .line 741
    :cond_4
    if-lez p4, :cond_2

    aget v2, p5, v8

    if-nez v2, :cond_2

    .line 742
    iget v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    goto :goto_1

    .line 747
    .end local v0    # "initLeft":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_5
    if-lez v7, :cond_a

    .line 748
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 749
    .local v1, "initRight":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    if-nez v1, :cond_6

    .line 750
    aput v8, p5, v8

    .line 751
    if-nez p3, :cond_0

    if-lez p4, :cond_0

    .line 752
    invoke-direct {p0, p2, p4}, Lcom/google/common/collect/TreeMultiset$AvlNode;->addRightChild(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    goto :goto_0

    :cond_6
    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 757
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/collect/TreeMultiset$AvlNode;->setCount(Ljava/util/Comparator;Ljava/lang/Object;II[I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 759
    aget v2, p5, v8

    if-ne v2, p3, :cond_8

    .line 760
    if-nez p4, :cond_9

    aget v2, p5, v8

    if-eqz v2, :cond_9

    .line 761
    iget v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 765
    :cond_7
    :goto_2
    iget-wide v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    aget v4, p5, v8

    sub-int v4, p4, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 767
    :cond_8
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rebalance()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    goto :goto_0

    .line 762
    :cond_9
    if-lez p4, :cond_7

    aget v2, p5, v8

    if-nez v2, :cond_7

    .line 763
    iget v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    goto :goto_2

    .line 771
    .end local v1    # "initRight":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_a
    iget v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    aput v2, p5, v8

    .line 772
    iget v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    if-ne p3, v2, :cond_0

    .line 773
    if-nez p4, :cond_b

    .line 774
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->deleteMe()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    goto/16 :goto_0

    .line 776
    :cond_b
    iget-wide v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    iget v4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    sub-int v4, p4, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 777
    iput p4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    goto/16 :goto_0
.end method

.method setCount(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$AvlNode;
    .locals 8
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3, "count"    # I
    .param p4, "result"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;TE;I[I)",
            "Lcom/google/common/collect/TreeMultiset$AvlNode",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    const/4 v6, 0x0

    .line 672
    iget-object v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elem:Ljava/lang/Object;

    invoke-interface {p1, p2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 673
    .local v0, "cmp":I
    if-gez v0, :cond_4

    .line 674
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 675
    .local v1, "initLeft":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    if-nez v1, :cond_1

    .line 676
    aput v6, p4, v6

    .line 677
    if-lez p3, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/TreeMultiset$AvlNode;->addLeftChild(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    .line 716
    .end local v1    # "initLeft":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .end local p0    # "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_0
    :goto_0
    return-object p0

    .line 680
    .restart local v1    # "initLeft":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    .restart local p0    # "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_1
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$AvlNode;->setCount(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v3

    iput-object v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->left:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 682
    if-nez p3, :cond_3

    aget v3, p4, v6

    if-eqz v3, :cond_3

    .line 683
    iget v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 688
    :cond_2
    :goto_1
    iget-wide v4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    aget v3, p4, v6

    sub-int v3, p3, v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 689
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rebalance()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    goto :goto_0

    .line 684
    :cond_3
    if-lez p3, :cond_2

    aget v3, p4, v6

    if-nez v3, :cond_2

    .line 685
    iget v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    goto :goto_1

    .line 690
    .end local v1    # "initLeft":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_4
    if-lez v0, :cond_8

    .line 691
    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 692
    .local v2, "initRight":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    if-nez v2, :cond_5

    .line 693
    aput v6, p4, v6

    .line 694
    if-lez p3, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/TreeMultiset$AvlNode;->addRightChild(Ljava/lang/Object;I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    goto :goto_0

    .line 697
    :cond_5
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/google/common/collect/TreeMultiset$AvlNode;->setCount(Ljava/util/Comparator;Ljava/lang/Object;I[I)Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v3

    iput-object v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->right:Lcom/google/common/collect/TreeMultiset$AvlNode;

    .line 699
    if-nez p3, :cond_7

    aget v3, p4, v6

    if-eqz v3, :cond_7

    .line 700
    iget v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    .line 705
    :cond_6
    :goto_2
    iget-wide v4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    aget v3, p4, v6

    sub-int v3, p3, v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 706
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->rebalance()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    goto :goto_0

    .line 701
    :cond_7
    if-lez p3, :cond_6

    aget v3, p4, v6

    if-nez v3, :cond_6

    .line 702
    iget v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->distinctElements:I

    goto :goto_2

    .line 710
    .end local v2    # "initRight":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    :cond_8
    iget v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    aput v3, p4, v6

    .line 711
    if-nez p3, :cond_9

    .line 712
    invoke-direct {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->deleteMe()Lcom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object p0

    goto :goto_0

    .line 714
    :cond_9
    iget-wide v4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    iget v3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    sub-int v3, p3, v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->totalCount:J

    .line 715
    iput p3, p0, Lcom/google/common/collect/TreeMultiset$AvlNode;->elemCount:I

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 937
    .local p0, "this":Lcom/google/common/collect/TreeMultiset$AvlNode;, "Lcom/google/common/collect/TreeMultiset$AvlNode<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->getElement()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$AvlNode;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
