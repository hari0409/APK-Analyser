.class public final Lcom/google/common/primitives/Longs;
.super Ljava/lang/Object;
.source "Longs.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Longs$LongArrayAsList;,
        Lcom/google/common/primitives/Longs$LexicographicalComparator;,
        Lcom/google/common/primitives/Longs$LongConverter;,
        Lcom/google/common/primitives/Longs$AsciiDigits;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x8

.field public static final MAX_POWER_OF_TWO:J = 0x4000000000000000L


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([JJII)I
    .locals 1
    .param p0, "x0"    # [J
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 46
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Longs;->indexOf([JJII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([JJII)I
    .locals 1
    .param p0, "x0"    # [J
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 46
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Longs;->lastIndexOf([JJII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([J)Ljava/util/List;
    .locals 1
    .param p0, "backingArray"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 650
    array-length v0, p0

    if-nez v0, :cond_0

    .line 651
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 653
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Longs$LongArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;-><init>([J)V

    goto :goto_0
.end method

.method public static compare(JJ)I
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    .line 93
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, p0, p2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs concat([[J)[J
    .locals 8
    .param p0, "arrays"    # [[J

    .prologue
    const/4 v5, 0x0

    .line 250
    const/4 v1, 0x0

    .line 251
    .local v1, "length":I
    array-length v6, p0

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v0, p0, v4

    .line 252
    .local v0, "array":[J
    array-length v7, v0

    add-int/2addr v1, v7

    .line 251
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 254
    .end local v0    # "array":[J
    :cond_0
    new-array v3, v1, [J

    .line 255
    .local v3, "result":[J
    const/4 v2, 0x0

    .line 256
    .local v2, "pos":I
    array-length v6, p0

    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v0, p0, v4

    .line 257
    .restart local v0    # "array":[J
    array-length v7, v0

    invoke-static {v0, v5, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    array-length v7, v0

    add-int/2addr v2, v7

    .line 256
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 260
    .end local v0    # "array":[J
    :cond_1
    return-object v3
.end method

.method public static constrainToRange(JJJ)J
    .locals 6
    .param p0, "value"    # J
    .param p2, "min"    # J
    .param p4, "max"    # J
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 238
    cmp-long v0, p2, p4

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "min (%s) must be less than or equal to max (%s)"

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;JJ)V

    .line 239
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 238
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([JJ)Z
    .locals 7
    .param p0, "array"    # [J
    .param p1, "target"    # J

    .prologue
    const/4 v2, 0x0

    .line 104
    array-length v4, p0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-wide v0, p0, v3

    .line 105
    .local v0, "value":J
    cmp-long v5, v0, p1

    if-nez v5, :cond_1

    .line 106
    const/4 v2, 0x1

    .line 109
    .end local v0    # "value":J
    :cond_0
    return v2

    .line 104
    .restart local v0    # "value":J
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static ensureCapacity([JII)[J
    .locals 4
    .param p0, "array"    # [J
    .param p1, "minLength"    # I
    .param p2, "padding"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 486
    if-ltz p1, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Invalid minLength: %s"

    invoke-static {v0, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 487
    if-ltz p2, :cond_2

    :goto_1
    const-string v0, "Invalid padding: %s"

    invoke-static {v1, v0, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 488
    array-length v0, p0

    if-ge v0, p1, :cond_0

    add-int v0, p1, p2

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p0

    .end local p0    # "array":[J
    :cond_0
    return-object p0

    .restart local p0    # "array":[J
    :cond_1
    move v0, v2

    .line 486
    goto :goto_0

    :cond_2
    move v1, v2

    .line 487
    goto :goto_1
.end method

.method public static fromByteArray([B)J
    .locals 8
    .param p0, "bytes"    # [B

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 296
    array-length v0, p0

    if-lt v0, v5, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "array too small: %s < %s"

    array-length v4, p0

    invoke-static {v0, v3, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 297
    aget-byte v0, p0, v2

    aget-byte v1, p0, v1

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/4 v3, 0x3

    aget-byte v3, p0, v3

    const/4 v4, 0x4

    aget-byte v4, p0, v4

    const/4 v5, 0x5

    aget-byte v5, p0, v5

    const/4 v6, 0x6

    aget-byte v6, p0, v6

    const/4 v7, 0x7

    aget-byte v7, p0, v7

    invoke-static/range {v0 .. v7}, Lcom/google/common/primitives/Longs;->fromBytes(BBBBBBBB)J

    move-result-wide v0

    return-wide v0

    :cond_0
    move v0, v2

    .line 296
    goto :goto_0
.end method

.method public static fromBytes(BBBBBBBB)J
    .locals 8
    .param p0, "b1"    # B
    .param p1, "b2"    # B
    .param p2, "b3"    # B
    .param p3, "b4"    # B
    .param p4, "b5"    # B
    .param p5, "b6"    # B
    .param p6, "b7"    # B
    .param p7, "b8"    # B

    .prologue
    const-wide/16 v6, 0xff

    .line 309
    int-to-long v0, p0

    and-long/2addr v0, v6

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    int-to-long v2, p1

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p3

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p4

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p5

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p6

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p7

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static hashCode(J)I
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 77
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static indexOf([JJ)I
    .locals 3
    .param p0, "array"    # [J
    .param p1, "target"    # J

    .prologue
    .line 121
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/common/primitives/Longs;->indexOf([JJII)I

    move-result v0

    return v0
.end method

.method private static indexOf([JJII)I
    .locals 5
    .param p0, "array"    # [J
    .param p1, "target"    # J
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 126
    move v0, p3

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_1

    .line 127
    aget-wide v2, p0, v0

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 131
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 126
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static indexOf([J[J)I
    .locals 6
    .param p0, "array"    # [J
    .param p1, "target"    # [J

    .prologue
    .line 145
    const-string v2, "array"

    invoke-static {p0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v2, "target"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    array-length v2, p1

    if-nez v2, :cond_1

    .line 148
    const/4 v0, 0x0

    .line 160
    :cond_0
    :goto_0
    return v0

    .line 152
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_3

    .line 153
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 154
    add-int v2, v0, v1

    aget-wide v2, p0, v2

    aget-wide v4, p1, v1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 153
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 160
    .end local v1    # "j":I
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static varargs join(Ljava/lang/String;[J)Ljava/lang/String;
    .locals 6
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [J

    .prologue
    .line 500
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    array-length v2, p1

    if-nez v2, :cond_0

    .line 502
    const-string v2, ""

    .line 511
    :goto_0
    return-object v2

    .line 506
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0xa

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 507
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget-wide v2, p1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 508
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 509
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-wide v4, p1, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 508
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 511
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static lastIndexOf([JJ)I
    .locals 3
    .param p0, "array"    # [J
    .param p1, "target"    # J

    .prologue
    .line 172
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/common/primitives/Longs;->lastIndexOf([JJII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([JJII)I
    .locals 5
    .param p0, "array"    # [J
    .param p1, "target"    # J
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 177
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p3, :cond_1

    .line 178
    aget-wide v2, p0, v0

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 182
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 177
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 182
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[J>;"
        }
    .end annotation

    .prologue
    .line 528
    sget-object v0, Lcom/google/common/primitives/Longs$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Longs$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([J)J
    .locals 6
    .param p0, "array"    # [J

    .prologue
    const/4 v4, 0x0

    .line 213
    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 214
    aget-wide v2, p0, v4

    .line 215
    .local v2, "max":J
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 216
    aget-wide v4, p0, v0

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    .line 217
    aget-wide v2, p0, v0

    .line 215
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v2    # "max":J
    :cond_1
    move v1, v4

    .line 213
    goto :goto_0

    .line 220
    .restart local v0    # "i":I
    .restart local v2    # "max":J
    :cond_2
    return-wide v2
.end method

.method public static varargs min([J)J
    .locals 6
    .param p0, "array"    # [J

    .prologue
    const/4 v4, 0x0

    .line 194
    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 195
    aget-wide v2, p0, v4

    .line 196
    .local v2, "min":J
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 197
    aget-wide v4, p0, v0

    cmp-long v1, v4, v2

    if-gez v1, :cond_0

    .line 198
    aget-wide v2, p0, v0

    .line 196
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v2    # "min":J
    :cond_1
    move v1, v4

    .line 194
    goto :goto_0

    .line 201
    .restart local v0    # "i":I
    .restart local v2    # "min":J
    :cond_2
    return-wide v2
.end method

.method public static reverse([J)V
    .locals 2
    .param p0, "array"    # [J

    .prologue
    .line 582
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/primitives/Longs;->reverse([JII)V

    .line 584
    return-void
.end method

.method public static reverse([JII)V
    .locals 6
    .param p0, "array"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 597
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    array-length v4, p0

    invoke-static {p1, p2, v4}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 599
    move v0, p1

    .local v0, "i":I
    add-int/lit8 v1, p2, -0x1

    .local v1, "j":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 600
    aget-wide v2, p0, v0

    .line 601
    .local v2, "tmp":J
    aget-wide v4, p0, v1

    aput-wide v4, p0, v0

    .line 602
    aput-wide v2, p0, v1

    .line 599
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 604
    .end local v2    # "tmp":J
    :cond_0
    return-void
.end method

.method public static sortDescending([J)V
    .locals 2
    .param p0, "array"    # [J

    .prologue
    .line 558
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/primitives/Longs;->sortDescending([JII)V

    .line 560
    return-void
.end method

.method public static sortDescending([JII)V
    .locals 1
    .param p0, "array"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 569
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 571
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([JII)V

    .line 572
    invoke-static {p0, p1, p2}, Lcom/google/common/primitives/Longs;->reverse([JII)V

    .line 573
    return-void
.end method

.method public static stringConverter()Lcom/google/common/base/Converter;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Converter",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 469
    sget-object v0, Lcom/google/common/primitives/Longs$LongConverter;->INSTANCE:Lcom/google/common/primitives/Longs$LongConverter;

    return-object v0
.end method

.method public static toArray(Ljava/util/Collection;)[J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 620
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    instance-of v4, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;

    if-eqz v4, :cond_1

    .line 621
    check-cast p0, Lcom/google/common/primitives/Longs$LongArrayAsList;

    .end local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->toLongArray()[J

    move-result-object v0

    .line 631
    .local v0, "array":[J
    .local v1, "boxedArray":[Ljava/lang/Object;
    .local v2, "i":I
    .local v3, "len":I
    .restart local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    :cond_0
    return-object v0

    .line 624
    .end local v0    # "array":[J
    .end local v1    # "boxedArray":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 625
    .restart local v1    # "boxedArray":[Ljava/lang/Object;
    array-length v3, v1

    .line 626
    .restart local v3    # "len":I
    new-array v0, v3, [J

    .line 627
    .restart local v0    # "array":[J
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 629
    aget-object v4, v1, v2

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 627
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static toByteArray(J)[B
    .locals 6
    .param p0, "value"    # J

    .prologue
    const/16 v4, 0x8

    .line 276
    new-array v1, v4, [B

    .line 277
    .local v1, "result":[B
    const/4 v0, 0x7

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 278
    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 279
    shr-long/2addr p0, v4

    .line 277
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 281
    :cond_0
    return-object v1
.end method

.method public static tryParse(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .line 365
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/Longs;->tryParse(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static tryParse(Ljava/lang/String;I)Ljava/lang/Long;
    .locals 14
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const-wide/high16 v12, -0x8000000000000000L

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 390
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v10

    .line 427
    :goto_0
    return-object v8

    .line 393
    :cond_0
    const/4 v8, 0x2

    if-lt p1, v8, :cond_1

    const/16 v8, 0x24

    if-le p1, v8, :cond_2

    .line 394
    :cond_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "radix must be between MIN_RADIX and MAX_RADIX but was "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 397
    :cond_2
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v11, 0x2d

    if-ne v8, v11, :cond_3

    move v7, v5

    .line 398
    .local v7, "negative":Z
    :goto_1
    if-eqz v7, :cond_4

    .line 399
    .local v5, "index":I
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v5, v8, :cond_5

    move-object v8, v10

    .line 400
    goto :goto_0

    .end local v5    # "index":I
    .end local v7    # "negative":Z
    :cond_3
    move v7, v9

    .line 397
    goto :goto_1

    .restart local v7    # "negative":Z
    :cond_4
    move v5, v9

    .line 398
    goto :goto_2

    .line 402
    .restart local v5    # "index":I
    :cond_5
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .local v6, "index":I
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/google/common/primitives/Longs$AsciiDigits;->digit(C)I

    move-result v4

    .line 403
    .local v4, "digit":I
    if-ltz v4, :cond_6

    if-lt v4, p1, :cond_7

    :cond_6
    move-object v8, v10

    .line 404
    goto :goto_0

    .line 406
    :cond_7
    neg-int v8, v4

    int-to-long v0, v8

    .line 408
    .local v0, "accum":J
    int-to-long v8, p1

    div-long v2, v12, v8

    .local v2, "cap":J
    move v5, v6

    .line 410
    .end local v6    # "index":I
    .restart local v5    # "index":I
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_b

    .line 411
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .restart local v6    # "index":I
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/google/common/primitives/Longs$AsciiDigits;->digit(C)I

    move-result v4

    .line 412
    if-ltz v4, :cond_8

    if-ge v4, p1, :cond_8

    cmp-long v8, v0, v2

    if-gez v8, :cond_9

    :cond_8
    move-object v8, v10

    .line 413
    goto :goto_0

    .line 415
    :cond_9
    int-to-long v8, p1

    mul-long/2addr v0, v8

    .line 416
    int-to-long v8, v4

    add-long/2addr v8, v12

    cmp-long v8, v0, v8

    if-gez v8, :cond_a

    move-object v8, v10

    .line 417
    goto :goto_0

    .line 419
    :cond_a
    int-to-long v8, v4

    sub-long/2addr v0, v8

    move v5, v6

    .end local v6    # "index":I
    .restart local v5    # "index":I
    goto :goto_3

    .line 422
    :cond_b
    if-eqz v7, :cond_c

    .line 423
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_0

    .line 424
    :cond_c
    cmp-long v8, v0, v12

    if-nez v8, :cond_d

    move-object v8, v10

    .line 425
    goto/16 :goto_0

    .line 427
    :cond_d
    neg-long v8, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto/16 :goto_0
.end method
