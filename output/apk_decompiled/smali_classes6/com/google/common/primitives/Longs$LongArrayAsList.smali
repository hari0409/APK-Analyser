.class Lcom/google/common/primitives/Longs$LongArrayAsList;
.super Ljava/util/AbstractList;
.source "Longs.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Longs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LongArrayAsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final array:[J

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([J)V
    .locals 2
    .param p1, "array"    # [J

    .prologue
    .line 664
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/primitives/Longs$LongArrayAsList;-><init>([JII)V

    .line 665
    return-void
.end method

.method constructor <init>([JII)V
    .locals 0
    .param p1, "array"    # [J
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 667
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 668
    iput-object p1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    .line 669
    iput p2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    .line 670
    iput p3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    .line 671
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 692
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    check-cast p1, Ljava/lang/Long;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    invoke-static {v0, v2, v3, v1, v4}, Lcom/google/common/primitives/Longs;->access$000([JJII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 740
    if-ne p1, p0, :cond_1

    .line 756
    :cond_0
    :goto_0
    return v3

    .line 743
    :cond_1
    instance-of v5, p1, Lcom/google/common/primitives/Longs$LongArrayAsList;

    if-eqz v5, :cond_4

    move-object v2, p1

    .line 744
    check-cast v2, Lcom/google/common/primitives/Longs$LongArrayAsList;

    .line 745
    .local v2, "that":Lcom/google/common/primitives/Longs$LongArrayAsList;
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v1

    .line 746
    .local v1, "size":I
    invoke-virtual {v2}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v5

    if-eq v5, v1, :cond_2

    move v3, v4

    .line 747
    goto :goto_0

    .line 749
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 750
    iget-object v5, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v6, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/2addr v6, v0

    aget-wide v6, v5, v6

    iget-object v5, v2, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v8, v2, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/2addr v8, v0

    aget-wide v8, v5, v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_3

    move v3, v4

    .line 751
    goto :goto_0

    .line 749
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 756
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "that":Lcom/google/common/primitives/Longs$LongArrayAsList;
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Long;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 686
    iget-object v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/2addr v1, p1

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 656
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Longs$LongArrayAsList;->get(I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 761
    const/4 v1, 0x1

    .line 762
    .local v1, "result":I
    iget v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    if-ge v0, v2, :cond_0

    .line 763
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    aget-wide v4, v3, v0

    invoke-static {v4, v5}, Lcom/google/common/primitives/Longs;->hashCode(J)I

    move-result v3

    add-int v1, v2, v3

    .line 762
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 765
    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 6
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 698
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 699
    iget-object v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    check-cast p1, Ljava/lang/Long;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget v4, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    iget v5, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/common/primitives/Longs;->access$000([JJII)I

    move-result v0

    .line 700
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 701
    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    sub-int v1, v0, v1

    .line 704
    .end local v0    # "i":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 680
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 6
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 710
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 711
    iget-object v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    check-cast p1, Ljava/lang/Long;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget v4, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    iget v5, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/common/primitives/Longs;->access$100([JJII)I

    move-result v0

    .line 712
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 713
    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    sub-int v1, v0, v1

    .line 716
    .end local v0    # "i":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public set(ILjava/lang/Long;)Ljava/lang/Long;
    .locals 8
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Long;

    .prologue
    .line 721
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v2

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 722
    iget-object v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/2addr v3, p1

    aget-wide v0, v2, v3

    .line 724
    .local v0, "oldValue":J
    iget-object v3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int v4, v2, p1

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v3, v4

    .line 725
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 656
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Longs$LongArrayAsList;->set(ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 675
    iget v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v0

    .line 731
    .local v0, "size":I
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 732
    if-ne p1, p2, :cond_0

    .line 733
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 735
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/google/common/primitives/Longs$LongArrayAsList;

    iget-object v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/2addr v3, p1

    iget v4, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/2addr v4, p2

    invoke-direct {v1, v2, v3, v4}, Lcom/google/common/primitives/Longs$LongArrayAsList;-><init>([JII)V

    goto :goto_0
.end method

.method toLongArray()[J
    .locals 3

    .prologue
    .line 779
    iget-object v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v1, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    iget v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 771
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    iget v4, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    aget-wide v4, v3, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 772
    iget v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->start:I

    add-int/lit8 v1, v2, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->end:I

    if-ge v1, v2, :cond_0

    .line 773
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;->array:[J

    aget-wide v4, v3, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 772
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 775
    :cond_0
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
