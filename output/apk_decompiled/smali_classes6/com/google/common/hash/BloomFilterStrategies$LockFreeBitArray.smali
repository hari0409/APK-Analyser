.class final Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;
.super Ljava/lang/Object;
.source "BloomFilterStrategies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/BloomFilterStrategies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LockFreeBitArray"
.end annotation


# static fields
.field private static final LONG_ADDRESSABLE_BITS:I = 0x6


# instance fields
.field private final bitCount:Lcom/google/common/hash/LongAddable;

.field final data:Ljava/util/concurrent/atomic/AtomicLongArray;


# direct methods
.method constructor <init>(J)V
    .locals 3
    .param p1, "bits"    # J

    .prologue
    .line 154
    const-wide/16 v0, 0x40

    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v0

    new-array v0, v0, [J

    invoke-direct {p0, v0}, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;-><init>([J)V

    .line 155
    return-void
.end method

.method constructor <init>([J)V
    .locals 8
    .param p1, "data"    # [J

    .prologue
    const/4 v5, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    array-length v4, p1

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    const-string v6, "data length is zero!"

    invoke-static {v4, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 160
    new-instance v4, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-direct {v4, p1}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>([J)V

    iput-object v4, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 161
    invoke-static {}, Lcom/google/common/hash/LongAddables;->create()Lcom/google/common/hash/LongAddable;

    move-result-object v4

    iput-object v4, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->bitCount:Lcom/google/common/hash/LongAddable;

    .line 162
    const-wide/16 v0, 0x0

    .line 163
    .local v0, "bitCount":J
    array-length v4, p1

    :goto_1
    if-ge v5, v4, :cond_1

    aget-wide v2, p1, v5

    .line 164
    .local v2, "value":J
    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v0, v6

    .line 163
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v0    # "bitCount":J
    .end local v2    # "value":J
    :cond_0
    move v4, v5

    .line 159
    goto :goto_0

    .line 166
    .restart local v0    # "bitCount":J
    :cond_1
    iget-object v4, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->bitCount:Lcom/google/common/hash/LongAddable;

    invoke-interface {v4, v0, v1}, Lcom/google/common/hash/LongAddable;->add(J)V

    .line 167
    return-void
.end method

.method public static toPlainArray(Ljava/util/concurrent/atomic/AtomicLongArray;)[J
    .locals 4
    .param p0, "atomicLongArray"    # Ljava/util/concurrent/atomic/AtomicLongArray;

    .prologue
    .line 203
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v2

    new-array v0, v2, [J

    .line 204
    .local v0, "array":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 205
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    :cond_0
    return-object v0
.end method


# virtual methods
.method bitCount()J
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->bitCount:Lcom/google/common/hash/LongAddable;

    invoke-interface {v0}, Lcom/google/common/hash/LongAddable;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method bitSize()J
    .locals 4

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x40

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method copy()Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;
    .locals 2

    .prologue
    .line 228
    new-instance v0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;

    iget-object v1, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {v1}, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->toPlainArray(Ljava/util/concurrent/atomic/AtomicLongArray;)[J

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;-><init>([J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    .line 270
    instance-of v1, p1, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 271
    check-cast v0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;

    .line 273
    .local v0, "lockFreeBitArray":Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;
    iget-object v1, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {v1}, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->toPlainArray(Ljava/util/concurrent/atomic/AtomicLongArray;)[J

    move-result-object v1

    iget-object v2, v0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {v2}, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->toPlainArray(Ljava/util/concurrent/atomic/AtomicLongArray;)[J

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    .line 275
    .end local v0    # "lockFreeBitArray":Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method get(J)Z
    .locals 5
    .param p1, "bitIndex"    # J

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    const/4 v1, 0x6

    ushr-long v2, p1, v1

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    long-to-int v4, p1

    shl-long/2addr v2, v4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {v0}, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->toPlainArray(Ljava/util/concurrent/atomic/AtomicLongArray;)[J

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    return v0
.end method

.method putAll(Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;)V
    .locals 13
    .param p1, "other"    # Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 242
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v0

    iget-object v10, p1, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v10

    if-ne v0, v10, :cond_2

    const/4 v0, 0x1

    :goto_0
    const-string v10, "BitArrays must be of equal length (%s != %s)"

    iget-object v11, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 244
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v11

    iget-object v12, p1, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 245
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v12

    .line 241
    invoke-static {v0, v10, v11, v12}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 246
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLongArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 247
    iget-object v0, p1, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v8

    .line 251
    .local v8, "otherLong":J
    const/4 v7, 0x1

    .line 253
    .local v7, "changedAnyBits":Z
    :cond_0
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v2

    .line 254
    .local v2, "ourLongOld":J
    or-long v4, v2, v8

    .line 255
    .local v4, "ourLongNew":J
    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 256
    const/4 v7, 0x0

    .line 261
    :goto_2
    if-eqz v7, :cond_1

    .line 262
    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v10

    sub-int v6, v0, v10

    .line 263
    .local v6, "bitsAdded":I
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->bitCount:Lcom/google/common/hash/LongAddable;

    int-to-long v10, v6

    invoke-interface {v0, v10, v11}, Lcom/google/common/hash/LongAddable;->add(J)V

    .line 246
    .end local v6    # "bitsAdded":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 242
    .end local v1    # "i":I
    .end local v2    # "ourLongOld":J
    .end local v4    # "ourLongNew":J
    .end local v7    # "changedAnyBits":Z
    .end local v8    # "otherLong":J
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 259
    .restart local v1    # "i":I
    .restart local v2    # "ourLongOld":J
    .restart local v4    # "ourLongNew":J
    .restart local v7    # "changedAnyBits":Z
    .restart local v8    # "otherLong":J
    :cond_3
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 266
    .end local v2    # "ourLongOld":J
    .end local v4    # "ourLongNew":J
    .end local v7    # "changedAnyBits":Z
    .end local v8    # "otherLong":J
    :cond_4
    return-void
.end method

.method set(J)Z
    .locals 13
    .param p1, "bitIndex"    # J

    .prologue
    const/4 v8, 0x0

    .line 171
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->get(J)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    .line 190
    :goto_0
    return v0

    .line 175
    :cond_0
    const/4 v0, 0x6

    ushr-long v10, p1, v0

    long-to-int v1, v10

    .line 176
    .local v1, "longIndex":I
    const-wide/16 v10, 0x1

    long-to-int v0, p1

    shl-long v6, v10, v0

    .line 181
    .local v6, "mask":J
    :cond_1
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongArray;->get(I)J

    move-result-wide v2

    .line 182
    .local v2, "oldValue":J
    or-long v4, v2, v6

    .line 183
    .local v4, "newValue":J
    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    move v0, v8

    .line 184
    goto :goto_0

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->data:Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongArray;->compareAndSet(IJJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$LockFreeBitArray;->bitCount:Lcom/google/common/hash/LongAddable;

    invoke-interface {v0}, Lcom/google/common/hash/LongAddable;->increment()V

    .line 190
    const/4 v0, 0x1

    goto :goto_0
.end method
