.class Lcom/google/common/primitives/Bytes$ByteArrayAsList;
.super Ljava/util/AbstractList;
.source "Bytes.java"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Bytes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteArrayAsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Byte;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final array:[B

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([B)V
    .locals 2
    .param p1, "array"    # [B

    .prologue
    .line 247
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;-><init>([BII)V

    .line 248
    return-void
.end method

.method constructor <init>([BII)V
    .locals 0
    .param p1, "array"    # [B
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 251
    iput-object p1, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    .line 252
    iput p2, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    .line 253
    iput p3, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->end:I

    .line 254
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 275
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    check-cast p1, Ljava/lang/Byte;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    iget v3, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Bytes;->access$000([BBII)I

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
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 323
    if-ne p1, p0, :cond_1

    .line 339
    :cond_0
    :goto_0
    return v3

    .line 326
    :cond_1
    instance-of v5, p1, Lcom/google/common/primitives/Bytes$ByteArrayAsList;

    if-eqz v5, :cond_4

    move-object v2, p1

    .line 327
    check-cast v2, Lcom/google/common/primitives/Bytes$ByteArrayAsList;

    .line 328
    .local v2, "that":Lcom/google/common/primitives/Bytes$ByteArrayAsList;
    invoke-virtual {p0}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->size()I

    move-result v1

    .line 329
    .local v1, "size":I
    invoke-virtual {v2}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->size()I

    move-result v5

    if-eq v5, v1, :cond_2

    move v3, v4

    .line 330
    goto :goto_0

    .line 332
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 333
    iget-object v5, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    iget v6, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    add-int/2addr v6, v0

    aget-byte v5, v5, v6

    iget-object v6, v2, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    iget v7, v2, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    add-int/2addr v7, v0

    aget-byte v6, v6, v7

    if-eq v5, v6, :cond_3

    move v3, v4

    .line 334
    goto :goto_0

    .line 332
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 339
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "that":Lcom/google/common/primitives/Bytes$ByteArrayAsList;
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Byte;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 269
    iget-object v0, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    iget v1, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->get(I)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 344
    const/4 v1, 0x1

    .line 345
    .local v1, "result":I
    iget v0, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->end:I

    if-ge v0, v2, :cond_0

    .line 346
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    aget-byte v3, v3, v0

    invoke-static {v3}, Lcom/google/common/primitives/Bytes;->hashCode(B)I

    move-result v3

    add-int v1, v2, v3

    .line 345
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 281
    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    check-cast p1, Ljava/lang/Byte;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    iget v3, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->end:I

    invoke-static {v1, v2, v3, v4}, Lcom/google/common/primitives/Bytes;->access$000([BBII)I

    move-result v0

    .line 283
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 284
    iget v1, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    sub-int v1, v0, v1

    .line 287
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
    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 293
    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    check-cast p1, Ljava/lang/Byte;

    .end local p1    # "target":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    iget v3, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->end:I

    invoke-static {v1, v2, v3, v4}, Lcom/google/common/primitives/Bytes;->access$100([BBII)I

    move-result v0

    .line 295
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 296
    iget v1, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    sub-int v1, v0, v1

    .line 299
    .end local v0    # "i":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public set(ILjava/lang/Byte;)Ljava/lang/Byte;
    .locals 4
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Byte;

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->size()I

    move-result v1

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 305
    iget-object v1, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    iget v2, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    add-int/2addr v2, p1

    aget-byte v0, v1, v2

    .line 307
    .local v0, "oldValue":B
    iget-object v2, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    iget v1, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    add-int v3, v1, p1

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    aput-byte v1, v2, v3

    .line 308
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 239
    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->set(ILjava/lang/Byte;)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 258
    iget v0, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->end:I

    iget v1, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

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
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->size()I

    move-result v0

    .line 314
    .local v0, "size":I
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 315
    if-ne p1, p2, :cond_0

    .line 316
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 318
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/google/common/primitives/Bytes$ByteArrayAsList;

    iget-object v2, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    iget v3, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    add-int/2addr v3, p1

    iget v4, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    add-int/2addr v4, p2

    invoke-direct {v1, v2, v3, v4}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;-><init>([BII)V

    goto :goto_0
.end method

.method toByteArray()[B
    .locals 3

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    iget v1, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    iget v2, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->end:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 354
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    iget v4, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    aget-byte v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 355
    iget v2, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->start:I

    add-int/lit8 v1, v2, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->end:I

    if-ge v1, v2, :cond_0

    .line 356
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->array:[B

    aget-byte v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 358
    :cond_0
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
