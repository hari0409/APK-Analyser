.class public Lcom/google/common/collect/ImmutableSortedMultiset$Builder;
.super Lcom/google/common/collect/ImmutableMultiset$Builder;
.source "ImmutableSortedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSortedMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMultiset$Builder",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation
.end field

.field private counts:[I

.field elements:[Ljava/lang/Object;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private forceCopyElements:Z

.field private length:I


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMultiset$Builder;, "Lcom/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    const/4 v1, 0x4

    .line 430
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMultiset$Builder;-><init>(Z)V

    .line 431
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->comparator:Ljava/util/Comparator;

    .line 432
    new-array v0, v1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->elements:[Ljava/lang/Object;

    .line 433
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->counts:[I

    .line 434
    return-void
.end method

.method private dedupAndCoalesce(Z)V
    .locals 8
    .param p1, "maybeExpand"    # Z

    .prologue
    .line 449
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMultiset$Builder;, "Lcom/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    iget v5, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->length:I

    if-nez v5, :cond_0

    .line 480
    :goto_0
    return-void

    .line 452
    :cond_0
    iget-object v5, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->elements:[Ljava/lang/Object;

    iget v6, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->length:I

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    .line 453
    .local v3, "sortedElements":[Ljava/lang/Object;, "[TE;"
    iget-object v5, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->comparator:Ljava/util/Comparator;

    invoke-static {v3, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 454
    const/4 v4, 0x1

    .line 455
    .local v4, "uniques":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_2

    .line 456
    iget-object v5, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->comparator:Ljava/util/Comparator;

    add-int/lit8 v6, v4, -0x1

    aget-object v6, v3, v6

    aget-object v7, v3, v0

    invoke-interface {v5, v6, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_1

    .line 457
    aget-object v5, v3, v0

    aput-object v5, v3, v4

    .line 458
    add-int/lit8 v4, v4, 0x1

    .line 455
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 461
    :cond_2
    iget v5, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->length:I

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 462
    if-eqz p1, :cond_3

    mul-int/lit8 v5, v4, 0x4

    iget v6, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->length:I

    mul-int/lit8 v6, v6, 0x3

    if-le v5, v6, :cond_3

    .line 464
    iget v5, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->length:I

    iget v6, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->length:I

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    .line 465
    invoke-static {v5, v6}, Lcom/google/common/math/IntMath;->saturatedAdd(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    .line 467
    :cond_3
    array-length v5, v3

    new-array v2, v5, [I

    .line 468
    .local v2, "sortedCounts":[I
    const/4 v0, 0x0

    :goto_2
    iget v5, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->length:I

    if-ge v0, v5, :cond_5

    .line 469
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->elements:[Ljava/lang/Object;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->comparator:Ljava/util/Comparator;

    invoke-static {v3, v5, v4, v6, v7}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v1

    .line 470
    .local v1, "index":I
    iget-object v5, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->counts:[I

    aget v5, v5, v0

    if-ltz v5, :cond_4

    .line 471
    aget v5, v2, v1

    iget-object v6, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->counts:[I

    aget v6, v6, v0

    add-int/2addr v5, v6

    aput v5, v2, v1

    .line 468
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 473
    :cond_4
    iget-object v5, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->counts:[I

    aget v5, v5, v0

    xor-int/lit8 v5, v5, -0x1

    aput v5, v2, v1

    goto :goto_3

    .line 477
    .end local v1    # "index":I
    :cond_5
    iput-object v3, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->elements:[Ljava/lang/Object;

    .line 478
    iput-object v2, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->counts:[I

    .line 479
    iput v4, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->length:I

    goto :goto_0
.end method

.method private dedupAndCoalesceAndDeleteEmpty()V
    .locals 6

    .prologue
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMultiset$Builder;, "Lcom/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    const/4 v5, 0x0

    .line 598
    invoke-direct {p0, v5}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->dedupAndCoalesce(Z)V

    .line 601
    const/4 v1, 0x0

    .line 602
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->length:I

    if-ge v0, v2, :cond_1

    .line 603
    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->counts:[I

    aget v2, v2, v0

    if-lez v2, :cond_0

    .line 604
    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->elements:[Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->elements:[Ljava/lang/Object;

    aget-object v3, v3, v0

    aput-object v3, v2, v1

    .line 605
    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->counts:[I

    iget-object v3, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->counts:[I

    aget v3, v3, v0

    aput v3, v2, v1

    .line 606
    add-int/lit8 v1, v1, 0x1

    .line 602
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 609
    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->elements:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->length:I

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 610
    iget-object v2, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->counts:[I

    iget v3, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->length:I

    invoke-static {v2, v1, v3, v5}, Ljava/util/Arrays;->fill([IIII)V

    .line 611
    iput v1, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->length:I

    .line 612
    return-void
.end method

.method private maintenance()V
    .locals 2

    .prologue
    .line 438
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMultiset$Builder;, "Lcom/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    iget v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->length:I

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->elements:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 439
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->dedupAndCoalesce(Z)V

    .line 445
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->forceCopyElements:Z

    .line 446
    return-void

    .line 440
    :cond_1
    iget-boolean v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->forceCopyElements:Z

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->elements:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->elements:[Ljava/lang/Object;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->elements:[Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 402
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMultiset$Builder;, "Lcom/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 402
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMultiset$Builder;, "Lcom/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 402
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMultiset$Builder;, "Lcom/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 402
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMultiset$Builder;, "Lcom/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableSortedMultiset$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 492
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMultiset$Builder;, "Lcom/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->addCopies(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/ImmutableSortedMultiset$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 553
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMultiset$Builder;, "Lcom/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    .local p1, "elements":[Ljava/lang/Object;, "[TE;"
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 554
    .local v0, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;

    .line 553
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 556
    .end local v0    # "element":Ljava/lang/Object;, "TE;"
    :cond_0
    return-object p0
.end method

.method public bridge synthetic addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 402
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMultiset$Builder;, "Lcom/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 402
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMultiset$Builder;, "Lcom/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 402
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMultiset$Builder;, "Lcom/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 402
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMultiset$Builder;, "Lcom/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;
    .locals 5
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedMultiset$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 569
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMultiset$Builder;, "Lcom/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    instance-of v2, p1, Lcom/google/common/collect/Multiset;

    if-eqz v2, :cond_0

    .line 570
    check-cast p1, Lcom/google/common/collect/Multiset;

    .end local p1    # "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Multiset$Entry;

    .line 571
    .local v1, "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<+TE;>;"
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->addCopies(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;

    goto :goto_0

    .line 574
    .end local v1    # "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<+TE;>;"
    .restart local p1    # "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 575
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;

    goto :goto_1

    .line 578
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .end local p1    # "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    :cond_1
    return-object p0
.end method

.method public addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedMultiset$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 591
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMultiset$Builder;, "Lcom/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    .local p1, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;

    goto :goto_0

    .line 594
    :cond_0
    return-object p0
.end method

.method public bridge synthetic addCopies(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 402
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMultiset$Builder;, "Lcom/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->addCopies(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addCopies(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;
    .locals 2
    .param p2, "occurrences"    # I
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lcom/google/common/collect/ImmutableSortedMultiset$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 509
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMultiset$Builder;, "Lcom/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    const-string v0, "occurrences"

    invoke-static {p2, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 511
    if-nez p2, :cond_0

    .line 518
    :goto_0
    return-object p0

    .line 514
    :cond_0
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->maintenance()V

    .line 515
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->length:I

    aput-object p1, v0, v1

    .line 516
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->counts:[I

    iget v1, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->length:I

    aput p2, v0, v1

    .line 517
    iget v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->length:I

    goto :goto_0
.end method

.method public bridge synthetic build()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 402
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMultiset$Builder;, "Lcom/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->build()Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/common/collect/ImmutableMultiset;
    .locals 1

    .prologue
    .line 402
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMultiset$Builder;, "Lcom/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->build()Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 620
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMultiset$Builder;, "Lcom/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->dedupAndCoalesceAndDeleteEmpty()V

    .line 621
    iget v3, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->length:I

    if-nez v3, :cond_0

    .line 622
    iget-object v3, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->comparator:Ljava/util/Comparator;

    invoke-static {v3}, Lcom/google/common/collect/ImmutableSortedMultiset;->emptyMultiset(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v3

    .line 631
    :goto_0
    return-object v3

    .line 624
    :cond_0
    iget-object v3, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->comparator:Ljava/util/Comparator;

    iget v4, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->length:I

    iget-object v5, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->elements:[Ljava/lang/Object;

    .line 625
    invoke-static {v3, v4, v5}, Lcom/google/common/collect/ImmutableSortedSet;->construct(Ljava/util/Comparator;I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/RegularImmutableSortedSet;

    .line 626
    .local v1, "elementSet":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<TE;>;"
    iget v3, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->length:I

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [J

    .line 627
    .local v0, "cumulativeCounts":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v3, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->length:I

    if-ge v2, v3, :cond_1

    .line 628
    add-int/lit8 v3, v2, 0x1

    aget-wide v4, v0, v2

    iget-object v6, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->counts:[I

    aget v6, v6, v2

    int-to-long v6, v6

    add-long/2addr v4, v6

    aput-wide v4, v0, v3

    .line 627
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 630
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->forceCopyElements:Z

    .line 631
    new-instance v3, Lcom/google/common/collect/RegularImmutableSortedMultiset;

    const/4 v4, 0x0

    iget v5, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->length:I

    invoke-direct {v3, v1, v0, v4, v5}, Lcom/google/common/collect/RegularImmutableSortedMultiset;-><init>(Lcom/google/common/collect/RegularImmutableSortedSet;[JII)V

    goto :goto_0
.end method

.method public bridge synthetic setCount(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 402
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMultiset$Builder;, "Lcom/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->setCount(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCount(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;
    .locals 3
    .param p2, "count"    # I
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lcom/google/common/collect/ImmutableSortedMultiset$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 534
    .local p0, "this":Lcom/google/common/collect/ImmutableSortedMultiset$Builder;, "Lcom/google/common/collect/ImmutableSortedMultiset$Builder<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    const-string v0, "count"

    invoke-static {p2, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 536
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->maintenance()V

    .line 537
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->length:I

    aput-object p1, v0, v1

    .line 538
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->counts:[I

    iget v1, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->length:I

    xor-int/lit8 v2, p2, -0x1

    aput v2, v0, v1

    .line 539
    iget v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->length:I

    .line 540
    return-object p0
.end method
