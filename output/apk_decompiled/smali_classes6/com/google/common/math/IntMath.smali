.class public final Lcom/google/common/math/IntMath;
.super Ljava/lang/Object;
.source "IntMath.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field static final FLOOR_SQRT_MAX_INT:I = 0xb504
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_POWER_OF_SQRT2_UNSIGNED:I = -0x4afb0ccd
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_SIGNED_POWER_OF_TWO:I = 0x40000000
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static biggestBinomials:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final factorials:[I

.field static final halfPowersOf10:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final maxLog10ForLeadingZeros:[B
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final powersOf10:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 201
    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/common/math/IntMath;->maxLog10ForLeadingZeros:[B

    .line 207
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/common/math/IntMath;->powersOf10:[I

    .line 213
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/common/math/IntMath;->halfPowersOf10:[I

    .line 627
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/common/math/IntMath;->factorials:[I

    .line 676
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/common/math/IntMath;->biggestBinomials:[I

    return-void

    .line 201
    :array_0
    .array-data 1
        0x9t
        0x9t
        0x9t
        0x8t
        0x8t
        0x8t
        0x7t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 207
    nop

    :array_1
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data

    .line 213
    :array_2
    .array-data 4
        0x3
        0x1f
        0x13c
        0xc5a
        0x7b86
        0x4d343
        0x3040a5
        0x1e28678
        0x12d940b6
        0x7fffffff
    .end array-data

    .line 627
    :array_3
    .array-data 4
        0x1
        0x1
        0x2
        0x6
        0x18
        0x78
        0x2d0
        0x13b0
        0x9d80
        0x58980
        0x375f00
        0x2611500
        0x1c8cfc00
    .end array-data

    .line 676
    :array_4
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x10000
        0x929
        0x1dd
        0xc1
        0x6e
        0x4b
        0x3a
        0x31
        0x2b
        0x27
        0x25
        0x23
        0x22
        0x22
        0x21
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomial(II)I
    .locals 6
    .param p0, "n"    # I
    .param p1, "k"    # I

    .prologue
    const/4 v4, 0x1

    .line 650
    const-string v1, "n"

    invoke-static {v1, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 651
    const-string v1, "k"

    invoke-static {v1, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 652
    if-gt p1, p0, :cond_2

    move v1, v4

    :goto_0
    const-string v5, "k (%s) > n (%s)"

    invoke-static {v1, v5, p1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 653
    shr-int/lit8 v1, p0, 0x1

    if-le p1, v1, :cond_0

    .line 654
    sub-int p1, p0, p1

    .line 656
    :cond_0
    sget-object v1, Lcom/google/common/math/IntMath;->biggestBinomials:[I

    array-length v1, v1

    if-ge p1, v1, :cond_1

    sget-object v1, Lcom/google/common/math/IntMath;->biggestBinomials:[I

    aget v1, v1, p1

    if-le p0, v1, :cond_3

    .line 657
    :cond_1
    const v4, 0x7fffffff

    .line 670
    :goto_1
    :pswitch_0
    return v4

    .line 652
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 659
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 665
    const-wide/16 v2, 0x1

    .line 666
    .local v2, "result":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, p1, :cond_4

    .line 667
    sub-int v1, p0, v0

    int-to-long v4, v1

    mul-long/2addr v2, v4

    .line 668
    add-int/lit8 v1, v0, 0x1

    int-to-long v4, v1

    div-long/2addr v2, v4

    .line 666
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    .end local v2    # "result":J
    :pswitch_1
    move v4, p0

    .line 663
    goto :goto_1

    .line 670
    .restart local v0    # "i":I
    .restart local v2    # "result":J
    :cond_4
    long-to-int v4, v2

    goto :goto_1

    .line 659
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static ceilingPowerOfTwo(I)I
    .locals 3
    .param p0, "x"    # I
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 67
    const-string v0, "x"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 68
    const/high16 v0, 0x40000000    # 2.0f

    if-le p0, v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ceilingPowerOfTwo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") not representable as an int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    const/4 v0, 0x1

    add-int/lit8 v1, p0, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    neg-int v1, v1

    shl-int/2addr v0, v1

    return v0
.end method

.method public static checkedAdd(II)I
    .locals 6
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 455
    int-to-long v2, p0

    int-to-long v4, p1

    add-long v0, v2, v4

    .line 456
    .local v0, "result":J
    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 457
    long-to-int v2, v0

    return v2

    .line 456
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static checkedMultiply(II)I
    .locals 6
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 477
    int-to-long v2, p0

    int-to-long v4, p1

    mul-long v0, v2, v4

    .line 478
    .local v0, "result":J
    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 479
    long-to-int v2, v0

    return v2

    .line 478
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static checkedPow(II)I
    .locals 5
    .param p0, "b"    # I
    .param p1, "k"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 491
    const-string v4, "exponent"

    invoke-static {v4, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 492
    packed-switch p0, :pswitch_data_0

    .line 508
    const/4 v0, 0x1

    .line 510
    .local v0, "accum":I
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 516
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_1

    .line 517
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    move-result v0

    .line 519
    :cond_1
    shr-int/lit8 p1, p1, 0x1

    .line 520
    if-lez p1, :cond_0

    .line 521
    const v3, -0xb504

    if-gt v3, p0, :cond_7

    move v4, v1

    :goto_1
    const v3, 0xb504

    if-gt p0, v3, :cond_8

    move v3, v1

    :goto_2
    and-int/2addr v3, v4

    invoke-static {v3}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 522
    mul-int/2addr p0, p0

    goto :goto_0

    .line 494
    .end local v0    # "accum":I
    :pswitch_0
    if-nez p1, :cond_3

    .line 514
    :cond_2
    :goto_3
    :pswitch_1
    return v1

    :cond_3
    move v1, v2

    .line 494
    goto :goto_3

    .line 498
    :pswitch_2
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2

    move v1, v3

    goto :goto_3

    .line 500
    :pswitch_3
    const/16 v3, 0x1f

    if-ge p1, v3, :cond_4

    move v2, v1

    :cond_4
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 501
    shl-int/2addr v1, p1

    goto :goto_3

    .line 503
    :pswitch_4
    const/16 v4, 0x20

    if-ge p1, v4, :cond_5

    move v2, v1

    :cond_5
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 504
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_6

    shl-int/2addr v1, p1

    goto :goto_3

    :cond_6
    shl-int v1, v3, p1

    goto :goto_3

    .restart local v0    # "accum":I
    :pswitch_5
    move v1, v0

    .line 512
    goto :goto_3

    .line 514
    :pswitch_6
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    move-result v1

    goto :goto_3

    :cond_7
    move v4, v2

    .line 521
    goto :goto_1

    :cond_8
    move v3, v2

    goto :goto_2

    .line 492
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 510
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static checkedSubtract(II)I
    .locals 6
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 466
    int-to-long v2, p0

    int-to-long v4, p1

    sub-long v0, v2, v4

    .line 467
    .local v0, "result":J
    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 468
    long-to-int v2, v0

    return v2

    .line 467
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static divide(IILjava/math/RoundingMode;)I
    .locals 10
    .param p0, "p"    # I
    .param p1, "q"    # I
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 317
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    if-nez p1, :cond_0

    .line 319
    new-instance v6, Ljava/lang/ArithmeticException;

    const-string v7, "/ by zero"

    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 321
    :cond_0
    div-int v2, p0, p1

    .line 322
    .local v2, "div":I
    mul-int v8, p1, v2

    sub-int v4, p0, v8

    .line 324
    .local v4, "rem":I
    if-nez v4, :cond_2

    .line 369
    .end local v2    # "div":I
    :cond_1
    :goto_0
    return v2

    .line 335
    .restart local v2    # "div":I
    :cond_2
    xor-int v8, p0, p1

    shr-int/lit8 v8, v8, 0x1f

    or-int/lit8 v5, v8, 0x1

    .line 337
    .local v5, "signum":I
    sget-object v8, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 367
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 339
    :pswitch_0
    if-nez v4, :cond_3

    :goto_1
    invoke-static {v6}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 342
    :pswitch_1
    const/4 v3, 0x0

    .line 369
    .local v3, "increment":Z
    :goto_2
    if-eqz v3, :cond_1

    add-int/2addr v2, v5

    goto :goto_0

    .end local v3    # "increment":Z
    :cond_3
    move v6, v7

    .line 339
    goto :goto_1

    .line 345
    :pswitch_2
    const/4 v3, 0x1

    .line 346
    .restart local v3    # "increment":Z
    goto :goto_2

    .line 348
    .end local v3    # "increment":Z
    :pswitch_3
    if-lez v5, :cond_4

    move v3, v6

    .line 349
    .restart local v3    # "increment":Z
    :goto_3
    goto :goto_2

    .end local v3    # "increment":Z
    :cond_4
    move v3, v7

    .line 348
    goto :goto_3

    .line 351
    :pswitch_4
    if-gez v5, :cond_5

    move v3, v6

    .line 352
    .restart local v3    # "increment":Z
    :goto_4
    goto :goto_2

    .end local v3    # "increment":Z
    :cond_5
    move v3, v7

    .line 351
    goto :goto_4

    .line 356
    :pswitch_5
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 357
    .local v0, "absRem":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    sub-int/2addr v8, v0

    sub-int v1, v0, v8

    .line 360
    .local v1, "cmpRemToHalfDivisor":I
    if-nez v1, :cond_a

    .line 361
    sget-object v8, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-eq p2, v8, :cond_6

    sget-object v8, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne p2, v8, :cond_7

    move v9, v6

    :goto_5
    and-int/lit8 v8, v2, 0x1

    if-eqz v8, :cond_8

    move v8, v6

    :goto_6
    and-int/2addr v8, v9

    if-eqz v8, :cond_9

    :cond_6
    move v3, v6

    .restart local v3    # "increment":Z
    :goto_7
    goto :goto_2

    .end local v3    # "increment":Z
    :cond_7
    move v9, v7

    goto :goto_5

    :cond_8
    move v8, v7

    goto :goto_6

    :cond_9
    move v3, v7

    goto :goto_7

    .line 363
    :cond_a
    if-lez v1, :cond_b

    move v3, v6

    .line 365
    .restart local v3    # "increment":Z
    :goto_8
    goto :goto_2

    .end local v3    # "increment":Z
    :cond_b
    move v3, v7

    .line 363
    goto :goto_8

    .line 337
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static factorial(I)I
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 623
    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 624
    sget-object v0, Lcom/google/common/math/IntMath;->factorials:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/google/common/math/IntMath;->factorials:[I

    aget v0, v0, p0

    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public static floorPowerOfTwo(I)I
    .locals 1
    .param p0, "x"    # I
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 83
    const-string v0, "x"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 84
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    return v0
.end method

.method public static gcd(II)I
    .locals 6
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 410
    const-string v5, "a"

    invoke-static {v5, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 411
    const-string v5, "b"

    invoke-static {v5, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 412
    if-nez p0, :cond_0

    move v1, p1

    .end local p1    # "b":I
    .local v1, "b":I
    move p0, p1

    .line 446
    .end local p0    # "a":I
    :goto_0
    return p0

    .line 416
    .end local v1    # "b":I
    .restart local p0    # "a":I
    .restart local p1    # "b":I
    :cond_0
    if-nez p1, :cond_1

    move v1, p1

    .line 417
    .end local p1    # "b":I
    .restart local v1    # "b":I
    goto :goto_0

    .line 423
    .end local v1    # "b":I
    .restart local p1    # "b":I
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    .line 424
    .local v0, "aTwos":I
    shr-int/2addr p0, v0

    .line 425
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    .line 426
    .local v2, "bTwos":I
    shr-int/2addr p1, v2

    .line 427
    :goto_1
    if-eq p0, p1, :cond_2

    .line 435
    sub-int v3, p0, p1

    .line 437
    .local v3, "delta":I
    shr-int/lit8 v5, v3, 0x1f

    and-int v4, v3, v5

    .line 440
    .local v4, "minDeltaOrZero":I
    sub-int v5, v3, v4

    sub-int p0, v5, v4

    .line 443
    add-int/2addr p1, v4

    .line 444
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v5

    shr-int/2addr p0, v5

    .line 445
    goto :goto_1

    .line 446
    .end local v3    # "delta":I
    .end local v4    # "minDeltaOrZero":I
    :cond_2
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    shl-int/2addr p0, v5

    move v1, p1

    .end local p1    # "b":I
    .restart local v1    # "b":I
    goto :goto_0
.end method

.method public static isPowerOfTwo(I)Z
    .locals 4
    .param p0, "x"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 94
    if-lez p0, :cond_0

    move v2, v0

    :goto_0
    add-int/lit8 v3, p0, -0x1

    and-int/2addr v3, p0

    if-nez v3, :cond_1

    :goto_1
    and-int/2addr v0, v2

    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static isPrime(I)Z
    .locals 2
    .param p0, "n"    # I
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    .line 724
    int-to-long v0, p0

    invoke-static {v0, v1}, Lcom/google/common/math/LongMath;->isPrime(J)Z

    move-result v0

    return v0
.end method

.method static lessThanBranchFree(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 106
    sub-int v0, p0, p1

    xor-int/lit8 v0, v0, -0x1

    xor-int/lit8 v0, v0, -0x1

    ushr-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public static log10(ILjava/math/RoundingMode;)I
    .locals 4
    .param p0, "x"    # I
    .param p1, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    .line 160
    const-string v2, "x"

    invoke-static {v2, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 161
    invoke-static {p0}, Lcom/google/common/math/IntMath;->log10Floor(I)I

    move-result v1

    .line 162
    .local v1, "logFloor":I
    sget-object v2, Lcom/google/common/math/IntMath;->powersOf10:[I

    aget v0, v2, v1

    .line 163
    .local v0, "floorPow":I
    sget-object v2, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 179
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 165
    :pswitch_0
    if-ne p0, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 177
    .end local v1    # "logFloor":I
    :goto_1
    :pswitch_1
    return v1

    .line 165
    .restart local v1    # "logFloor":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 172
    :pswitch_2
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 177
    :pswitch_3
    sget-object v2, Lcom/google/common/math/IntMath;->halfPowersOf10:[I

    aget v2, v2, v1

    invoke-static {v2, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static log10Floor(I)I
    .locals 3
    .param p0, "x"    # I

    .prologue
    .line 191
    sget-object v1, Lcom/google/common/math/IntMath;->maxLog10ForLeadingZeros:[B

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v2

    aget-byte v0, v1, v2

    .line 196
    .local v0, "y":I
    sget-object v1, Lcom/google/common/math/IntMath;->powersOf10:[I

    aget v1, v1, v0

    invoke-static {p0, v1}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v1

    sub-int v1, v0, v1

    return v1
.end method

.method public static log2(ILjava/math/RoundingMode;)I
    .locals 5
    .param p0, "x"    # I
    .param p1, "mode"    # Ljava/math/RoundingMode;

    .prologue
    .line 119
    const-string v3, "x"

    invoke-static {v3, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 120
    sget-object v3, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 143
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 122
    :pswitch_0
    invoke-static {p0}, Lcom/google/common/math/IntMath;->isPowerOfTwo(I)Z

    move-result v3

    invoke-static {v3}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 126
    :pswitch_1
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1f

    .line 140
    :goto_0
    return v3

    .line 130
    :pswitch_2
    add-int/lit8 v3, p0, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x20

    goto :goto_0

    .line 136
    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    .line 137
    .local v1, "leadingZeros":I
    const v3, -0x4afb0ccd

    ushr-int v0, v3, v1

    .line 139
    .local v0, "cmp":I
    rsub-int/lit8 v2, v1, 0x1f

    .line 140
    .local v2, "logFloor":I
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v3

    add-int/2addr v3, v2

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static mean(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 706
    and-int v0, p0, p1

    xor-int v1, p0, p1

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public static mod(II)I
    .locals 4
    .param p0, "x"    # I
    .param p1, "m"    # I

    .prologue
    .line 391
    if-gtz p1, :cond_0

    .line 392
    new-instance v1, Ljava/lang/ArithmeticException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Modulus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must be > 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 394
    :cond_0
    rem-int v0, p0, p1

    .line 395
    .local v0, "result":I
    if-ltz v0, :cond_1

    .end local v0    # "result":I
    :goto_0
    return v0

    .restart local v0    # "result":I
    :cond_1
    add-int/2addr v0, p1

    goto :goto_0
.end method

.method public static pow(II)I
    .locals 5
    .param p0, "b"    # I
    .param p1, "k"    # I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    const/16 v4, 0x20

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 228
    const-string v3, "exponent"

    invoke-static {v3, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 229
    packed-switch p0, :pswitch_data_0

    .line 247
    const/4 v0, 0x1

    .line 248
    .local v0, "accum":I
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 254
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_5

    move v2, v1

    :goto_1
    mul-int/2addr v0, v2

    .line 255
    mul-int/2addr p0, p0

    .line 247
    shr-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 231
    .end local v0    # "accum":I
    :pswitch_0
    if-nez p1, :cond_1

    .line 252
    :cond_0
    :goto_2
    :pswitch_1
    return v1

    :cond_1
    move v1, v2

    .line 231
    goto :goto_2

    .line 235
    :pswitch_2
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_0

    const/4 v1, -0x1

    goto :goto_2

    .line 237
    :pswitch_3
    if-ge p1, v4, :cond_2

    shl-int v2, v1, p1

    :cond_2
    move v1, v2

    goto :goto_2

    .line 239
    :pswitch_4
    if-ge p1, v4, :cond_4

    .line 240
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_3

    shl-int/2addr v1, p1

    goto :goto_2

    :cond_3
    shl-int/2addr v1, p1

    neg-int v1, v1

    goto :goto_2

    :cond_4
    move v1, v2

    .line 242
    goto :goto_2

    .restart local v0    # "accum":I
    :pswitch_5
    move v1, v0

    .line 250
    goto :goto_2

    .line 252
    :pswitch_6
    mul-int v1, p0, v0

    goto :goto_2

    :cond_5
    move v2, p0

    .line 254
    goto :goto_1

    .line 229
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 248
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static saturatedAdd(II)I
    .locals 4
    .param p0, "a"    # I
    .param p1, "b"    # I
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 536
    int-to-long v0, p0

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method public static saturatedMultiply(II)I
    .locals 4
    .param p0, "a"    # I
    .param p1, "b"    # I
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 558
    int-to-long v0, p0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method public static saturatedPow(II)I
    .locals 6
    .param p0, "b"    # I
    .param p1, "k"    # I
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    const/4 v4, -0x1

    const v1, 0x7fffffff

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 569
    const-string v5, "exponent"

    invoke-static {v5, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 570
    packed-switch p0, :pswitch_data_0

    .line 590
    const/4 v0, 0x1

    .line 592
    .local v0, "accum":I
    ushr-int/lit8 v4, p0, 0x1f

    and-int/lit8 v5, p1, 0x1

    and-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 594
    .local v1, "limit":I
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 600
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_1

    .line 601
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->saturatedMultiply(II)I

    move-result v0

    .line 603
    :cond_1
    shr-int/lit8 p1, p1, 0x1

    .line 604
    if-lez p1, :cond_0

    .line 605
    const v4, -0xb504

    if-le v4, p0, :cond_6

    move v5, v2

    :goto_1
    const v4, 0xb504

    if-le p0, v4, :cond_7

    move v4, v2

    :goto_2
    or-int/2addr v4, v5

    if-eqz v4, :cond_8

    move v2, v1

    .line 606
    .end local v0    # "accum":I
    .end local v1    # "limit":I
    :cond_2
    :goto_3
    :pswitch_0
    return v2

    .line 572
    :pswitch_1
    if-eqz p1, :cond_2

    move v2, v3

    goto :goto_3

    .line 576
    :pswitch_2
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_2

    move v2, v4

    goto :goto_3

    .line 578
    :pswitch_3
    const/16 v3, 0x1f

    if-lt p1, v3, :cond_3

    move v2, v1

    .line 579
    goto :goto_3

    .line 581
    :cond_3
    shl-int/2addr v2, p1

    goto :goto_3

    .line 583
    :pswitch_4
    const/16 v3, 0x20

    if-lt p1, v3, :cond_4

    .line 584
    and-int/lit8 v2, p1, 0x1

    add-int/2addr v2, v1

    goto :goto_3

    .line 586
    :cond_4
    and-int/lit8 v3, p1, 0x1

    if-nez v3, :cond_5

    shl-int/2addr v2, p1

    goto :goto_3

    :cond_5
    shl-int v2, v4, p1

    goto :goto_3

    .restart local v0    # "accum":I
    .restart local v1    # "limit":I
    :pswitch_5
    move v2, v0

    .line 596
    goto :goto_3

    .line 598
    :pswitch_6
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->saturatedMultiply(II)I

    move-result v2

    goto :goto_3

    :cond_6
    move v5, v3

    .line 605
    goto :goto_1

    :cond_7
    move v4, v3

    goto :goto_2

    .line 608
    :cond_8
    mul-int/2addr p0, p0

    goto :goto_0

    .line 570
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 594
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static saturatedSubtract(II)I
    .locals 4
    .param p0, "a"    # I
    .param p1, "b"    # I
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 547
    int-to-long v0, p0

    int-to-long v2, p1

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method public static sqrt(ILjava/math/RoundingMode;)I
    .locals 4
    .param p0, "x"    # I
    .param p1, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    .line 270
    const-string v2, "x"

    invoke-static {v2, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 271
    invoke-static {p0}, Lcom/google/common/math/IntMath;->sqrtFloor(I)I

    move-result v1

    .line 272
    .local v1, "sqrtFloor":I
    sget-object v2, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 298
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 274
    :pswitch_0
    mul-int v2, v1, v1

    if-ne v2, p0, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 296
    .end local v1    # "sqrtFloor":I
    :goto_1
    :pswitch_1
    return v1

    .line 274
    .restart local v1    # "sqrtFloor":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 280
    :pswitch_2
    mul-int v2, v1, v1

    invoke-static {v2, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 284
    :pswitch_3
    mul-int v2, v1, v1

    add-int v0, v2, v1

    .line 296
    .local v0, "halfSquare":I
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 272
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static sqrtFloor(I)I
    .locals 2
    .param p0, "x"    # I

    .prologue
    .line 305
    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method
