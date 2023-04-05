.class public Lcom/google/common/collect/ImmutableSet$Builder;
.super Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSet;
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
        "Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private hashCode:I

.field hashTable:[Ljava/lang/Object;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 456
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<TE;>;"
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;-><init>(I)V

    .line 457
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 460
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<TE;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;-><init>(I)V

    .line 461
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    .line 462
    return-void
.end method

.method private addDeduping(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 488
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    iget-object v4, p0, Lcom/google/common/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v2, v4, -0x1

    .line 489
    .local v2, "mask":I
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 490
    .local v0, "hash":I
    invoke-static {v0}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v1

    .line 491
    .local v1, "i":I
    :goto_0
    and-int/2addr v1, v2

    .line 492
    iget-object v4, p0, Lcom/google/common/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    aget-object v3, v4, v1

    .line 493
    .local v3, "previous":Ljava/lang/Object;
    if-nez v3, :cond_1

    .line 494
    iget-object v4, p0, Lcom/google/common/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    aput-object p1, v4, v1

    .line 495
    iget v4, p0, Lcom/google/common/collect/ImmutableSet$Builder;->hashCode:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/google/common/collect/ImmutableSet$Builder;->hashCode:I

    .line 496
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;

    .line 499
    :cond_0
    return-void

    .line 498
    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 490
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 447
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 447
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 447
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 476
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->size:I

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    array-length v1, v1

    if-gt v0, v1, :cond_0

    .line 478
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->addDeduping(Ljava/lang/Object;)V

    .line 483
    :goto_0
    return-object p0

    .line 481
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    .line 482
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;

    goto :goto_0
.end method

.method public varargs add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/ImmutableSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 515
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<TE;>;"
    .local p1, "elements":[Ljava/lang/Object;, "[TE;"
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 516
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    .line 517
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 516
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 520
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;

    .line 522
    :cond_1
    return-object p0
.end method

.method public bridge synthetic addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 447
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 447
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSet$Builder;->addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 3
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 536
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<TE;>;"
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 538
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 539
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    goto :goto_0

    .line 542
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$ArrayBasedBuilder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$Builder;

    .line 544
    :cond_1
    return-object p0
.end method

.method public addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 558
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<TE;>;"
    .local p1, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 560
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    goto :goto_0

    .line 562
    :cond_0
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 447
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/common/collect/ImmutableSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 571
    .local p0, "this":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<TE;>;"
    iget v2, p0, Lcom/google/common/collect/ImmutableSet$Builder;->size:I

    packed-switch v2, :pswitch_data_0

    .line 578
    iget-object v2, p0, Lcom/google/common/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/google/common/collect/ImmutableSet$Builder;->size:I

    invoke-static {v2}, Lcom/google/common/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/common/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    array-length v3, v3

    if-ne v2, v3, :cond_1

    .line 579
    iget v2, p0, Lcom/google/common/collect/ImmutableSet$Builder;->size:I

    iget-object v3, p0, Lcom/google/common/collect/ImmutableSet$Builder;->contents:[Ljava/lang/Object;

    array-length v3, v3

    .line 580
    invoke-static {v2, v3}, Lcom/google/common/collect/ImmutableSet;->access$000(II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/ImmutableSet$Builder;->contents:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/common/collect/ImmutableSet$Builder;->size:I

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 581
    .local v1, "uniqueElements":[Ljava/lang/Object;
    :goto_0
    new-instance v0, Lcom/google/common/collect/RegularImmutableSet;

    iget v2, p0, Lcom/google/common/collect/ImmutableSet$Builder;->hashCode:I

    iget-object v3, p0, Lcom/google/common/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/common/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/google/common/collect/ImmutableSet$Builder;->size:I

    invoke-direct/range {v0 .. v5}, Lcom/google/common/collect/RegularImmutableSet;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 590
    .end local v1    # "uniqueElements":[Ljava/lang/Object;
    .local v0, "result":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<TE;>;"
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/common/collect/ImmutableSet$Builder;->forceCopy:Z

    .line 591
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/common/collect/ImmutableSet$Builder;->hashTable:[Ljava/lang/Object;

    .line 592
    .end local v0    # "result":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<TE;>;"
    :goto_2
    return-object v0

    .line 573
    :pswitch_0
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_2

    .line 575
    :pswitch_1
    iget-object v2, p0, Lcom/google/common/collect/ImmutableSet$Builder;->contents:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_2

    .line 580
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSet$Builder;->contents:[Ljava/lang/Object;

    goto :goto_0

    .line 585
    :cond_1
    iget v2, p0, Lcom/google/common/collect/ImmutableSet$Builder;->size:I

    iget-object v3, p0, Lcom/google/common/collect/ImmutableSet$Builder;->contents:[Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/common/collect/ImmutableSet;->access$100(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 588
    .restart local v0    # "result":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<TE;>;"
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v2

    iput v2, p0, Lcom/google/common/collect/ImmutableSet$Builder;->size:I

    goto :goto_1

    .line 571
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
