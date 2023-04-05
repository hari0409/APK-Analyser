.class public final Lcom/google/common/primitives/UnsignedLongs;
.super Ljava/lang/Object;
.source "UnsignedLongs.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;,
        Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;
    }
.end annotation


# static fields
.field public static final MAX_VALUE:J = -0x1L


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(JJ)I
    .locals 4
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    .line 79
    invoke-static {p0, p1}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v0

    invoke-static {p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Longs;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public static decode(Ljava/lang/String;)J
    .locals 6
    .param p0, "stringValue"    # Ljava/lang/String;
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 341
    invoke-static {p0}, Lcom/google/common/primitives/ParseRequest;->fromString(Ljava/lang/String;)Lcom/google/common/primitives/ParseRequest;

    move-result-object v2

    .line 344
    .local v2, "request":Lcom/google/common/primitives/ParseRequest;
    :try_start_0
    iget-object v3, v2, Lcom/google/common/primitives/ParseRequest;->rawValue:Ljava/lang/String;

    iget v4, v2, Lcom/google/common/primitives/ParseRequest;->radix:I

    invoke-static {v3, v4}, Lcom/google/common/primitives/UnsignedLongs;->parseUnsignedLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    return-wide v4

    .line 345
    :catch_0
    move-exception v1

    .line 346
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 348
    .local v0, "decodeException":Ljava/lang/NumberFormatException;
    invoke-virtual {v0, v1}, Ljava/lang/NumberFormatException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 349
    throw v0
.end method

.method public static divide(JJ)J
    .locals 8
    .param p0, "dividend"    # J
    .param p2, "divisor"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    .line 248
    cmp-long v5, p2, v6

    if-gez v5, :cond_1

    .line 249
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v4

    if-gez v4, :cond_0

    move-wide v4, v6

    .line 269
    :goto_0
    return-wide v4

    .line 252
    :cond_0
    const-wide/16 v4, 0x1

    goto :goto_0

    .line 257
    :cond_1
    cmp-long v5, p0, v6

    if-ltz v5, :cond_2

    .line 258
    div-long v4, p0, p2

    goto :goto_0

    .line 267
    :cond_2
    ushr-long v6, p0, v4

    div-long/2addr v6, p2

    shl-long v0, v6, v4

    .line 268
    .local v0, "quotient":J
    mul-long v6, v0, p2

    sub-long v2, p0, v6

    .line 269
    .local v2, "rem":J
    invoke-static {v2, v3, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v5

    if-ltz v5, :cond_3

    :goto_1
    int-to-long v4, v4

    add-long/2addr v4, v0

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static flip(J)J
    .locals 2
    .param p0, "a"    # J

    .prologue
    .line 64
    const-wide/high16 v0, -0x8000000000000000L

    xor-long/2addr v0, p0

    return-wide v0
.end method

.method public static varargs join(Ljava/lang/String;[J)Ljava/lang/String;
    .locals 6
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [J

    .prologue
    .line 131
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    array-length v2, p1

    if-nez v2, :cond_0

    .line 133
    const-string v2, ""

    .line 142
    :goto_0
    return-object v2

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x5

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 138
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget-wide v2, p1, v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 140
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-wide v4, p1, v1

    invoke-static {v4, v5}, Lcom/google/common/primitives/UnsignedLongs;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 142
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
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
    .line 157
    sget-object v0, Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([J)J
    .locals 8
    .param p0, "array"    # [J

    .prologue
    const/4 v6, 0x0

    .line 111
    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 112
    aget-wide v6, p0, v6

    invoke-static {v6, v7}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v2

    .line 113
    .local v2, "max":J
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 114
    aget-wide v6, p0, v0

    invoke-static {v6, v7}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v4

    .line 115
    .local v4, "next":J
    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    .line 116
    move-wide v2, v4

    .line 113
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v2    # "max":J
    .end local v4    # "next":J
    :cond_1
    move v1, v6

    .line 111
    goto :goto_0

    .line 119
    .restart local v0    # "i":I
    .restart local v2    # "max":J
    :cond_2
    invoke-static {v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v6

    return-wide v6
.end method

.method public static varargs min([J)J
    .locals 8
    .param p0, "array"    # [J

    .prologue
    const/4 v6, 0x0

    .line 91
    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 92
    aget-wide v6, p0, v6

    invoke-static {v6, v7}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v2

    .line 93
    .local v2, "min":J
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 94
    aget-wide v6, p0, v0

    invoke-static {v6, v7}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v4

    .line 95
    .local v4, "next":J
    cmp-long v1, v4, v2

    if-gez v1, :cond_0

    .line 96
    move-wide v2, v4

    .line 93
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v2    # "min":J
    .end local v4    # "next":J
    :cond_1
    move v1, v6

    .line 91
    goto :goto_0

    .line 99
    .restart local v0    # "i":I
    .restart local v2    # "min":J
    :cond_2
    invoke-static {v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v6

    return-wide v6
.end method

.method public static parseUnsignedLong(Ljava/lang/String;)J
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 320
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/UnsignedLongs;->parseUnsignedLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseUnsignedLong(Ljava/lang/String;I)J
    .locals 10
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 368
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 370
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string v6, "empty string"

    invoke-direct {v3, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 372
    :cond_0
    const/4 v3, 0x2

    if-lt p1, v3, :cond_1

    const/16 v3, 0x24

    if-le p1, v3, :cond_2

    .line 373
    :cond_1
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "illegal radix: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 376
    :cond_2
    sget-object v3, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->maxSafeDigits:[I

    aget v3, v3, p1

    add-int/lit8 v1, v3, -0x1

    .line 377
    .local v1, "maxSafePos":I
    const-wide/16 v4, 0x0

    .line 378
    .local v4, "value":J
    const/4 v2, 0x0

    .local v2, "pos":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 379
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 380
    .local v0, "digit":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    .line 381
    new-instance v3, Ljava/lang/NumberFormatException;

    invoke-direct {v3, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 383
    :cond_3
    if-le v2, v1, :cond_4

    invoke-static {v4, v5, v0, p1}, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->overflowInParse(JII)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 384
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Too large for unsigned long: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 386
    :cond_4
    int-to-long v6, p1

    mul-long/2addr v6, v4

    int-to-long v8, v0

    add-long v4, v6, v8

    .line 378
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 389
    .end local v0    # "digit":I
    :cond_5
    return-wide v4
.end method

.method public static remainder(JJ)J
    .locals 10
    .param p0, "dividend"    # J
    .param p2, "divisor"    # J

    .prologue
    const/4 v8, 0x1

    const-wide/16 v4, 0x0

    .line 284
    cmp-long v6, p2, v4

    if-gez v6, :cond_1

    .line 285
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v4

    if-gez v4, :cond_0

    .line 305
    .end local p0    # "dividend":J
    .end local p2    # "divisor":J
    :goto_0
    return-wide p0

    .line 288
    .restart local p0    # "dividend":J
    .restart local p2    # "divisor":J
    :cond_0
    sub-long/2addr p0, p2

    goto :goto_0

    .line 293
    :cond_1
    cmp-long v6, p0, v4

    if-ltz v6, :cond_2

    .line 294
    rem-long/2addr p0, p2

    goto :goto_0

    .line 303
    :cond_2
    ushr-long v6, p0, v8

    div-long/2addr v6, p2

    shl-long v0, v6, v8

    .line 304
    .local v0, "quotient":J
    mul-long v6, v0, p2

    sub-long v2, p0, v6

    .line 305
    .local v2, "rem":J
    invoke-static {v2, v3, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v6

    if-ltz v6, :cond_3

    .end local p2    # "divisor":J
    :goto_1
    sub-long p0, v2, p2

    goto :goto_0

    .restart local p2    # "divisor":J
    :cond_3
    move-wide p2, v4

    goto :goto_1
.end method

.method public static sort([J)V
    .locals 2
    .param p0, "array"    # [J

    .prologue
    .line 186
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/primitives/UnsignedLongs;->sort([JII)V

    .line 188
    return-void
.end method

.method public static sort([JII)V
    .locals 4
    .param p0, "array"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 197
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    array-length v1, p0

    invoke-static {p1, p2, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 199
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 200
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v2

    aput-wide v2, p0, v0

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_0
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([JII)V

    .line 203
    move v0, p1

    :goto_1
    if-ge v0, p2, :cond_1

    .line 204
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v2

    aput-wide v2, p0, v0

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 206
    :cond_1
    return-void
.end method

.method public static sortDescending([J)V
    .locals 2
    .param p0, "array"    # [J

    .prologue
    .line 215
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/primitives/UnsignedLongs;->sortDescending([JII)V

    .line 217
    return-void
.end method

.method public static sortDescending([JII)V
    .locals 6
    .param p0, "array"    # [J
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    .line 226
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    array-length v1, p0

    invoke-static {p1, p2, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 228
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 229
    aget-wide v2, p0, v0

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_0
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([JII)V

    .line 232
    move v0, p1

    :goto_1
    if-ge v0, p2, :cond_1

    .line 233
    aget-wide v2, p0, v0

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 235
    :cond_1
    return-void
.end method

.method public static toString(J)Ljava/lang/String;
    .locals 2
    .param p0, "x"    # J

    .prologue
    .line 442
    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Lcom/google/common/primitives/UnsignedLongs;->toString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(JI)Ljava/lang/String;
    .locals 12
    .param p0, "x"    # J
    .param p2, "radix"    # I

    .prologue
    .line 457
    const/4 v8, 0x2

    if-lt p2, v8, :cond_0

    const/16 v8, 0x24

    if-gt p2, v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    const-string v9, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX"

    invoke-static {v8, v9, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 461
    const-wide/16 v8, 0x0

    cmp-long v8, p0, v8

    if-nez v8, :cond_1

    .line 463
    const-string v8, "0"

    .line 497
    :goto_1
    return-object v8

    .line 457
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 464
    :cond_1
    const-wide/16 v8, 0x0

    cmp-long v8, p0, v8

    if-lez v8, :cond_2

    .line 465
    invoke-static {p0, p1, p2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 467
    :cond_2
    const/16 v8, 0x40

    new-array v0, v8, [C

    .line 468
    .local v0, "buf":[C
    array-length v1, v0

    .line 469
    .local v1, "i":I
    add-int/lit8 v8, p2, -0x1

    and-int/2addr v8, p2

    if-nez v8, :cond_5

    .line 471
    invoke-static {p2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    .line 472
    .local v3, "shift":I
    add-int/lit8 v2, p2, -0x1

    .line 474
    .local v2, "mask":I
    :cond_3
    add-int/lit8 v1, v1, -0x1

    long-to-int v8, p0

    and-int/2addr v8, v2

    invoke-static {v8, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    aput-char v8, v0, v1

    .line 475
    ushr-long/2addr p0, v3

    .line 476
    const-wide/16 v8, 0x0

    cmp-long v8, p0, v8

    if-nez v8, :cond_3

    .line 497
    .end local v2    # "mask":I
    .end local v3    # "shift":I
    :cond_4
    new-instance v8, Ljava/lang/String;

    array-length v9, v0

    sub-int/2addr v9, v1

    invoke-direct {v8, v0, v1, v9}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1

    .line 481
    :cond_5
    and-int/lit8 v8, p2, 0x1

    if-nez v8, :cond_6

    .line 483
    const/4 v8, 0x1

    ushr-long v8, p0, v8

    ushr-int/lit8 v10, p2, 0x1

    int-to-long v10, v10

    div-long v4, v8, v10

    .line 487
    .local v4, "quotient":J
    :goto_2
    int-to-long v8, p2

    mul-long/2addr v8, v4

    sub-long v6, p0, v8

    .line 488
    .local v6, "rem":J
    add-int/lit8 v1, v1, -0x1

    long-to-int v8, v6

    invoke-static {v8, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    aput-char v8, v0, v1

    .line 489
    move-wide p0, v4

    .line 491
    :goto_3
    const-wide/16 v8, 0x0

    cmp-long v8, p0, v8

    if-lez v8, :cond_4

    .line 492
    add-int/lit8 v1, v1, -0x1

    int-to-long v8, p2

    rem-long v8, p0, v8

    long-to-int v8, v8

    invoke-static {v8, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    aput-char v8, v0, v1

    .line 493
    int-to-long v8, p2

    div-long/2addr p0, v8

    goto :goto_3

    .line 485
    .end local v4    # "quotient":J
    .end local v6    # "rem":J
    :cond_6
    int-to-long v8, p2

    invoke-static {p0, p1, v8, v9}, Lcom/google/common/primitives/UnsignedLongs;->divide(JJ)J

    move-result-wide v4

    .restart local v4    # "quotient":J
    goto :goto_2
.end method
