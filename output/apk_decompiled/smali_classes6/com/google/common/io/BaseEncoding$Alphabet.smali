.class final Lcom/google/common/io/BaseEncoding$Alphabet;
.super Ljava/lang/Object;
.source "BaseEncoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/BaseEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Alphabet"
.end annotation


# instance fields
.field final bitsPerChar:I

.field final bytesPerChunk:I

.field private final chars:[C

.field final charsPerChunk:I

.field private final decodabet:[B

.field final mask:I

.field private final name:Ljava/lang/String;

.field private final validPadding:[Z


# direct methods
.method constructor <init>(Ljava/lang/String;[C)V
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "chars"    # [C

    .prologue
    const/16 v11, 0x8

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v7, 0x1

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->name:Ljava/lang/String;

    .line 432
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [C

    iput-object v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    .line 434
    :try_start_0
    array-length v6, p2

    sget-object v9, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-static {v6, v9}, Lcom/google/common/math/IntMath;->log2(ILjava/math/RoundingMode;)I

    move-result v6

    iput v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    iget v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    invoke-static {v6}, Ljava/lang/Integer;->lowestOneBit(I)I

    move-result v6

    invoke-static {v11, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 445
    .local v3, "gcd":I
    const/16 v6, 0x8

    :try_start_1
    div-int/2addr v6, v3

    iput v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->charsPerChunk:I

    .line 446
    iget v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    div-int/2addr v6, v3

    iput v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->bytesPerChunk:I
    :try_end_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_1

    .line 451
    array-length v6, p2

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->mask:I

    .line 453
    const/16 v6, 0x80

    new-array v1, v6, [B

    .line 454
    .local v1, "decodabet":[B
    invoke-static {v1, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 455
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, p2

    if-ge v4, v6, :cond_2

    .line 456
    aget-char v0, p2, v4

    .line 457
    .local v0, "c":C
    array-length v6, v1

    if-ge v0, v6, :cond_0

    move v6, v7

    :goto_1
    const-string v9, "Non-ASCII character: %s"

    invoke-static {v6, v9, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;C)V

    .line 458
    aget-byte v6, v1, v0

    if-ne v6, v10, :cond_1

    move v6, v7

    :goto_2
    const-string v9, "Duplicate character: %s"

    invoke-static {v6, v9, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;C)V

    .line 459
    int-to-byte v6, v4

    aput-byte v6, v1, v0

    .line 455
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 435
    .end local v0    # "c":C
    .end local v1    # "decodabet":[B
    .end local v3    # "gcd":I
    .end local v4    # "i":I
    :catch_0
    move-exception v2

    .line 436
    .local v2, "e":Ljava/lang/ArithmeticException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Illegal alphabet length "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 447
    .end local v2    # "e":Ljava/lang/ArithmeticException;
    .restart local v3    # "gcd":I
    :catch_1
    move-exception v2

    .line 448
    .restart local v2    # "e":Ljava/lang/ArithmeticException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Illegal alphabet "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, p2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .end local v2    # "e":Ljava/lang/ArithmeticException;
    .restart local v0    # "c":C
    .restart local v1    # "decodabet":[B
    .restart local v4    # "i":I
    :cond_0
    move v6, v8

    .line 457
    goto :goto_1

    :cond_1
    move v6, v8

    .line 458
    goto :goto_2

    .line 461
    .end local v0    # "c":C
    :cond_2
    iput-object v1, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->decodabet:[B

    .line 463
    iget v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->charsPerChunk:I

    new-array v5, v6, [Z

    .line 464
    .local v5, "validPadding":[Z
    const/4 v4, 0x0

    :goto_3
    iget v6, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->bytesPerChunk:I

    if-ge v4, v6, :cond_3

    .line 465
    mul-int/lit8 v6, v4, 0x8

    iget v8, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    sget-object v9, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v6, v8, v9}, Lcom/google/common/math/IntMath;->divide(IILjava/math/RoundingMode;)I

    move-result v6

    aput-boolean v7, v5, v6

    .line 464
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 467
    :cond_3
    iput-object v5, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->validPadding:[Z

    .line 468
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/io/BaseEncoding$Alphabet;)[C
    .locals 1
    .param p0, "x0"    # Lcom/google/common/io/BaseEncoding$Alphabet;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    return-object v0
.end method

.method private hasLowerCase()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 498
    iget-object v3, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-char v0, v3, v2

    .line 499
    .local v0, "c":C
    invoke-static {v0}, Lcom/google/common/base/Ascii;->isLowerCase(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 500
    const/4 v1, 0x1

    .line 503
    .end local v0    # "c":C
    :cond_0
    return v1

    .line 498
    .restart local v0    # "c":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private hasUpperCase()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 507
    iget-object v3, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-char v0, v3, v2

    .line 508
    .local v0, "c":C
    invoke-static {v0}, Lcom/google/common/base/Ascii;->isUpperCase(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 509
    const/4 v1, 0x1

    .line 512
    .end local v0    # "c":C
    :cond_0
    return v1

    .line 507
    .restart local v0    # "c":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method canDecode(C)Z
    .locals 2
    .param p1, "ch"    # C

    .prologue
    .line 479
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->decodabet:[B

    aget-byte v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method decode(C)I
    .locals 4
    .param p1, "ch"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/io/BaseEncoding$DecodingException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x7f

    .line 483
    if-le p1, v2, :cond_0

    .line 484
    new-instance v1, Lcom/google/common/io/BaseEncoding$DecodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized character: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/common/io/BaseEncoding$DecodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 486
    :cond_0
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->decodabet:[B

    aget-byte v0, v1, p1

    .line 487
    .local v0, "result":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 488
    const/16 v1, 0x20

    if-le p1, v1, :cond_1

    if-ne p1, v2, :cond_2

    .line 489
    :cond_1
    new-instance v1, Lcom/google/common/io/BaseEncoding$DecodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized character: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/common/io/BaseEncoding$DecodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 491
    :cond_2
    new-instance v1, Lcom/google/common/io/BaseEncoding$DecodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized character: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/common/io/BaseEncoding$DecodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 494
    :cond_3
    return v0
.end method

.method encode(I)C
    .locals 1
    .param p1, "bits"    # I

    .prologue
    .line 471
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    .line 552
    instance-of v1, p1, Lcom/google/common/io/BaseEncoding$Alphabet;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 553
    check-cast v0, Lcom/google/common/io/BaseEncoding$Alphabet;

    .line 554
    .local v0, "that":Lcom/google/common/io/BaseEncoding$Alphabet;
    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    iget-object v2, v0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v1

    .line 556
    .end local v0    # "that":Lcom/google/common/io/BaseEncoding$Alphabet;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([C)I

    move-result v0

    return v0
.end method

.method isValidPaddingStartPosition(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 475
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->validPadding:[Z

    iget v1, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->charsPerChunk:I

    rem-int v1, p1, v1

    aget-boolean v0, v0, v1

    return v0
.end method

.method lowerCase()Lcom/google/common/io/BaseEncoding$Alphabet;
    .locals 5

    .prologue
    .line 529
    invoke-direct {p0}, Lcom/google/common/io/BaseEncoding$Alphabet;->hasUpperCase()Z

    move-result v2

    if-nez v2, :cond_0

    .line 537
    .end local p0    # "this":Lcom/google/common/io/BaseEncoding$Alphabet;
    :goto_0
    return-object p0

    .line 532
    .restart local p0    # "this":Lcom/google/common/io/BaseEncoding$Alphabet;
    :cond_0
    invoke-direct {p0}, Lcom/google/common/io/BaseEncoding$Alphabet;->hasLowerCase()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    const-string v3, "Cannot call lowerCase() on a mixed-case alphabet"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 533
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    array-length v2, v2

    new-array v1, v2, [C

    .line 534
    .local v1, "lowerCased":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 535
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Lcom/google/common/base/Ascii;->toLowerCase(C)C

    move-result v2

    aput-char v2, v1, v0

    .line 534
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 532
    .end local v0    # "i":I
    .end local v1    # "lowerCased":[C
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 537
    .restart local v0    # "i":I
    .restart local v1    # "lowerCased":[C
    :cond_2
    new-instance v2, Lcom/google/common/io/BaseEncoding$Alphabet;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".lowerCase()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/google/common/io/BaseEncoding$Alphabet;-><init>(Ljava/lang/String;[C)V

    move-object p0, v2

    goto :goto_0
.end method

.method public matches(C)Z
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 542
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->decodabet:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->decodabet:[B

    aget-byte v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->name:Ljava/lang/String;

    return-object v0
.end method

.method upperCase()Lcom/google/common/io/BaseEncoding$Alphabet;
    .locals 5

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/google/common/io/BaseEncoding$Alphabet;->hasLowerCase()Z

    move-result v2

    if-nez v2, :cond_0

    .line 524
    .end local p0    # "this":Lcom/google/common/io/BaseEncoding$Alphabet;
    :goto_0
    return-object p0

    .line 519
    .restart local p0    # "this":Lcom/google/common/io/BaseEncoding$Alphabet;
    :cond_0
    invoke-direct {p0}, Lcom/google/common/io/BaseEncoding$Alphabet;->hasUpperCase()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    const-string v3, "Cannot call upperCase() on a mixed-case alphabet"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 520
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    array-length v2, v2

    new-array v1, v2, [C

    .line 521
    .local v1, "upperCased":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 522
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->chars:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Lcom/google/common/base/Ascii;->toUpperCase(C)C

    move-result v2

    aput-char v2, v1, v0

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 519
    .end local v0    # "i":I
    .end local v1    # "upperCased":[C
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 524
    .restart local v0    # "i":I
    .restart local v1    # "upperCased":[C
    :cond_2
    new-instance v2, Lcom/google/common/io/BaseEncoding$Alphabet;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/common/io/BaseEncoding$Alphabet;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".upperCase()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/google/common/io/BaseEncoding$Alphabet;-><init>(Ljava/lang/String;[C)V

    move-object p0, v2

    goto :goto_0
.end method
