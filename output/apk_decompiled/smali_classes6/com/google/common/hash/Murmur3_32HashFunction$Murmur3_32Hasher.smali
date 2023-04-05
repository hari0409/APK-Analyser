.class final Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;
.super Lcom/google/common/hash/AbstractHasher;
.source "Murmur3_32HashFunction.java"


# annotations
.annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Murmur3_32HashFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Murmur3_32Hasher"
.end annotation


# instance fields
.field private buffer:J

.field private h1:I

.field private isDone:Z

.field private length:I

.field private shift:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "seed"    # I

    .prologue
    const/4 v0, 0x0

    .line 265
    invoke-direct {p0}, Lcom/google/common/hash/AbstractHasher;-><init>()V

    .line 266
    iput p1, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->h1:I

    .line 267
    iput v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->length:I

    .line 268
    iput-boolean v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->isDone:Z

    .line 269
    return-void
.end method

.method private update(IJ)V
    .locals 6
    .param p1, "nBytes"    # I
    .param p2, "update"    # J

    .prologue
    const/16 v5, 0x20

    .line 273
    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->buffer:J

    const-wide v2, 0xffffffffL

    and-long/2addr v2, p2

    iget v4, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->shift:I

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->buffer:J

    .line 274
    iget v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->shift:I

    mul-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->shift:I

    .line 275
    iget v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->length:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->length:I

    .line 277
    iget v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->shift:I

    if-lt v0, v5, :cond_0

    .line 278
    iget v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->h1:I

    iget-wide v2, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->buffer:J

    long-to-int v1, v2

    invoke-static {v1}, Lcom/google/common/hash/Murmur3_32HashFunction;->access$000(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction;->access$100(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->h1:I

    .line 279
    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->buffer:J

    ushr-long/2addr v0, v5

    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->buffer:J

    .line 280
    iget v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->shift:I

    add-int/lit8 v0, v0, -0x20

    iput v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->shift:I

    .line 282
    :cond_0
    return-void
.end method


# virtual methods
.method public hash()Lcom/google/common/hash/HashCode;
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 384
    iget-boolean v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->isDone:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 385
    iput-boolean v1, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->isDone:Z

    .line 386
    iget v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->h1:I

    iget-wide v2, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->buffer:J

    long-to-int v1, v2

    invoke-static {v1}, Lcom/google/common/hash/Murmur3_32HashFunction;->access$000(I)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->h1:I

    .line 387
    iget v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->h1:I

    iget v1, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->length:I

    invoke-static {v0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction;->access$600(II)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0

    .line 384
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putByte(B)Lcom/google/common/hash/Hasher;
    .locals 4
    .param p1, "b"    # B

    .prologue
    .line 286
    const/4 v0, 0x1

    and-int/lit16 v1, p1, 0xff

    int-to-long v2, v1

    invoke-direct {p0, v0, v2, v3}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->update(IJ)V

    .line 287
    return-object p0
.end method

.method public bridge synthetic putByte(B)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->putByte(B)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 305
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 306
    .local v0, "bo":Ljava/nio/ByteOrder;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 307
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 308
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->putInt(I)Lcom/google/common/hash/Hasher;

    goto :goto_0

    .line 310
    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 311
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->putByte(B)Lcom/google/common/hash/Hasher;

    goto :goto_1

    .line 313
    :cond_1
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 314
    return-object p0
.end method

.method public putBytes([BII)Lcom/google/common/hash/Hasher;
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 292
    add-int v1, p2, p3

    array-length v2, p1

    invoke-static {p2, v1, v2}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 294
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v1, v0, 0x4

    if-gt v1, p3, :cond_0

    .line 295
    const/4 v1, 0x4

    add-int v2, p2, v0

    invoke-static {p1, v2}, Lcom/google/common/hash/Murmur3_32HashFunction;->access$200([BI)I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->update(IJ)V

    .line 294
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 297
    :cond_0
    :goto_1
    if-ge v0, p3, :cond_1

    .line 298
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->putByte(B)Lcom/google/common/hash/Hasher;

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 300
    :cond_1
    return-object p0
.end method

.method public bridge synthetic putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putBytes([BII)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->putBytes([BII)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putChar(C)Lcom/google/common/hash/Hasher;
    .locals 4
    .param p1, "c"    # C

    .prologue
    .line 332
    const/4 v0, 0x2

    int-to-long v2, p1

    invoke-direct {p0, v0, v2, v3}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->update(IJ)V

    .line 333
    return-object p0
.end method

.method public bridge synthetic putChar(C)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->putChar(C)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putInt(I)Lcom/google/common/hash/Hasher;
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 319
    const/4 v0, 0x4

    int-to-long v2, p1

    invoke-direct {p0, v0, v2, v3}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->update(IJ)V

    .line 320
    return-object p0
.end method

.method public bridge synthetic putInt(I)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->putInt(I)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putLong(J)Lcom/google/common/hash/Hasher;
    .locals 3
    .param p1, "l"    # J

    .prologue
    const/4 v2, 0x4

    .line 325
    long-to-int v0, p1

    int-to-long v0, v0

    invoke-direct {p0, v2, v0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->update(IJ)V

    .line 326
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    invoke-direct {p0, v2, v0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->update(IJ)V

    .line 327
    return-object p0
.end method

.method public bridge synthetic putLong(J)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->putLong(J)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/Hasher;
    .locals 12
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 339
    sget-object v8, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, p2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 340
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 341
    .local v7, "utf16Length":I
    const/4 v6, 0x0

    .line 344
    .local v6, "i":I
    :goto_0
    add-int/lit8 v8, v6, 0x4

    if-gt v8, v7, :cond_0

    .line 345
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 346
    .local v1, "c0":C
    add-int/lit8 v8, v6, 0x1

    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 347
    .local v2, "c1":C
    add-int/lit8 v8, v6, 0x2

    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 348
    .local v3, "c2":C
    add-int/lit8 v8, v6, 0x3

    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 349
    .local v4, "c3":C
    const/16 v8, 0x80

    if-ge v1, v8, :cond_0

    const/16 v8, 0x80

    if-ge v2, v8, :cond_0

    const/16 v8, 0x80

    if-ge v3, v8, :cond_0

    const/16 v8, 0x80

    if-ge v4, v8, :cond_0

    .line 350
    const/4 v8, 0x4

    shl-int/lit8 v9, v2, 0x8

    or-int/2addr v9, v1

    shl-int/lit8 v10, v3, 0x10

    or-int/2addr v9, v10

    shl-int/lit8 v10, v4, 0x18

    or-int/2addr v9, v10

    int-to-long v10, v9

    invoke-direct {p0, v8, v10, v11}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->update(IJ)V

    .line 351
    add-int/lit8 v6, v6, 0x4

    .line 355
    goto :goto_0

    .line 357
    .end local v1    # "c0":C
    .end local v2    # "c1":C
    .end local v3    # "c2":C
    .end local v4    # "c3":C
    :cond_0
    :goto_1
    if-ge v6, v7, :cond_5

    .line 358
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 359
    .local v0, "c":C
    const/16 v8, 0x80

    if-ge v0, v8, :cond_1

    .line 360
    const/4 v8, 0x1

    int-to-long v10, v0

    invoke-direct {p0, v8, v10, v11}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->update(IJ)V

    .line 357
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 361
    :cond_1
    const/16 v8, 0x800

    if-ge v0, v8, :cond_2

    .line 362
    const/4 v8, 0x2

    invoke-static {v0}, Lcom/google/common/hash/Murmur3_32HashFunction;->access$300(C)J

    move-result-wide v10

    invoke-direct {p0, v8, v10, v11}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->update(IJ)V

    goto :goto_2

    .line 363
    :cond_2
    const v8, 0xd800

    if-lt v0, v8, :cond_3

    const v8, 0xdfff

    if-le v0, v8, :cond_4

    .line 364
    :cond_3
    const/4 v8, 0x3

    invoke-static {v0}, Lcom/google/common/hash/Murmur3_32HashFunction;->access$400(C)J

    move-result-wide v10

    invoke-direct {p0, v8, v10, v11}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->update(IJ)V

    goto :goto_2

    .line 366
    :cond_4
    invoke-static {p1, v6}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v5

    .line 367
    .local v5, "codePoint":I
    if-ne v5, v0, :cond_6

    .line 369
    invoke-interface {p1, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->putBytes([B)Lcom/google/common/hash/Hasher;

    .line 378
    .end local v0    # "c":C
    .end local v5    # "codePoint":I
    .end local v6    # "i":I
    .end local v7    # "utf16Length":I
    .end local p0    # "this":Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;
    :cond_5
    :goto_3
    return-object p0

    .line 372
    .restart local v0    # "c":C
    .restart local v5    # "codePoint":I
    .restart local v6    # "i":I
    .restart local v7    # "utf16Length":I
    .restart local p0    # "this":Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 373
    const/4 v8, 0x4

    invoke-static {v5}, Lcom/google/common/hash/Murmur3_32HashFunction;->access$500(I)J

    move-result-wide v10

    invoke-direct {p0, v8, v10, v11}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->update(IJ)V

    goto :goto_2

    .line 378
    .end local v0    # "c":C
    .end local v5    # "codePoint":I
    .end local v6    # "i":I
    .end local v7    # "utf16Length":I
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/google/common/hash/AbstractHasher;->putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/Hasher;

    move-result-object p0

    goto :goto_3
.end method

.method public bridge synthetic putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method
