.class public final Lcom/google/common/math/LongMath;
.super Ljava/lang/Object;
.source "LongMath.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/LongMath$MillerRabinTester;
    }
.end annotation


# static fields
.field static final FLOOR_SQRT_MAX_LONG:J = 0xb504f333L
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_POWER_OF_SQRT2_UNSIGNED:J = -0x4afb0ccc06219b7cL
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MAX_SIGNED_POWER_OF_TWO:J = 0x4000000000000000L
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final SIEVE_30:I = -0x208a2883

.field static final biggestBinomials:[I

.field static final biggestSimpleBinomials:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final factorials:[J

.field static final halfPowersOf10:[J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final maxLog10ForLeadingZeros:[B
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final millerRabinBaseSets:[[J

.field static final powersOf10:[J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 205
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/common/math/LongMath;->maxLog10ForLeadingZeros:[B

    .line 213
    const/16 v0, 0x13

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/common/math/LongMath;->powersOf10:[J

    .line 238
    const/16 v0, 0x13

    new-array v0, v0, [J

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/common/math/LongMath;->halfPowersOf10:[J

    .line 778
    const/16 v0, 0x15

    new-array v0, v0, [J

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/common/math/LongMath;->factorials:[J

    .line 884
    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/common/math/LongMath;->biggestBinomials:[I

    .line 926
    const/16 v0, 0x1f

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/common/math/LongMath;->biggestSimpleBinomials:[I

    .line 1041
    const/4 v0, 0x7

    new-array v0, v0, [[J

    const/4 v1, 0x0

    new-array v2, v3, [J

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v4, [J

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    new-array v1, v5, [J

    fill-array-data v1, :array_8

    aput-object v1, v0, v3

    new-array v1, v6, [J

    fill-array-data v1, :array_9

    aput-object v1, v0, v4

    new-array v1, v7, [J

    fill-array-data v1, :array_a

    aput-object v1, v0, v5

    const/4 v1, 0x7

    new-array v1, v1, [J

    fill-array-data v1, :array_b

    aput-object v1, v0, v6

    const/16 v1, 0x8

    new-array v1, v1, [J

    fill-array-data v1, :array_c

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/common/math/LongMath;->millerRabinBaseSets:[[J

    return-void

    .line 205
    nop

    :array_0
    .array-data 1
        0x13t
        0x12t
        0x12t
        0x12t
        0x12t
        0x11t
        0x11t
        0x11t
        0x10t
        0x10t
        0x10t
        0xft
        0xft
        0xft
        0xft
        0xet
        0xet
        0xet
        0xdt
        0xdt
        0xdt
        0xct
        0xct
        0xct
        0xct
        0xbt
        0xbt
        0xbt
        0xat
        0xat
        0xat
        0x9t
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
    .end array-data

    .line 213
    :array_1
    .array-data 8
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
        0x2540be400L
        0x174876e800L
        0xe8d4a51000L
        0x9184e72a000L
        0x5af3107a4000L
        0x38d7ea4c68000L
        0x2386f26fc10000L
        0x16345785d8a0000L
        0xde0b6b3a7640000L
    .end array-data

    .line 238
    :array_2
    .array-data 8
        0x3
        0x1f
        0x13c
        0xc5a
        0x7b86
        0x4d343
        0x3040a5
        0x1e28678
        0x12d940b6
        0xbc7c871cL
        0x75cdd4719L
        0x49a0a4c700L
        0x2e0466fc608L
        0x1cc2c05dbc53L
        0x11f9b83a95b45L
        0xb3c13249d90bbL
        0x7058bf6e27a751L
        0x463777a4d8c892dL
        0x2be2aac7077d5bc3L    # 2.731041190138108E-97
    .end array-data

    .line 778
    :array_3
    .array-data 8
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
        0x17328cc00L
        0x144c3b2800L
        0x13077775800L
        0x130777758000L
        0x1437eeecd8000L
        0x16beecca730000L
        0x1b02b9306890000L
        0x21c3677c82b40000L
    .end array-data

    .line 884
    :array_4
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x3a25db
        0x1dc79
        0x3f2f
        0x10f1
        0x6c5
        0x377
        0x216
        0x169
        0x109
        0xce
        0xa9
        0x8f
        0x7d
        0x6f
        0x65
        0x5e
        0x58
        0x53
        0x4f
        0x4c
        0x4a
        0x48
        0x46
        0x45
        0x44
        0x43
        0x43
        0x42
        0x42
        0x42
        0x42
    .end array-data

    .line 926
    :array_5
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x285146
        0x150eb
        0x2dcc
        0xc92
        0x521
        0x2ac
        0x1a3
        0x11f
        0xd6
        0xa9
        0x8b
        0x77
        0x69
        0x5f
        0x57
        0x51
        0x4c
        0x49
        0x46
        0x44
        0x42
        0x40
        0x3f
        0x3e
        0x3e
        0x3d
        0x3d
        0x3d
    .end array-data

    .line 1041
    :array_6
    .array-data 8
        0x473f6
        0x1c1111acd0b9428L    # 3.1855675420061E-300
    .end array-data

    :array_7
    .array-data 8
        0x34c91838
        0xa10ad7d5c6610c1L
        0x318a8c12ce9c70e7L    # 4.808051585655767E-70
    .end array-data

    :array_8
    .array-data 8
        0x3fc6e038e0L
        0xf
        0x1b6ebec62L
        0x386c87553e12cL
    .end array-data

    :array_9
    .array-data 8
        0x2b5343fd6a30L
        0x2
        0x273abc
        0xca2b9d9
        0xdf8286ccL
    .end array-data

    :array_a
    .array-data 8
        0x1c6b470864f682L
        0x2
        0x3c1c7396f6dL
        0x2142e2e3f22de5cL
        0x297105b6b7b29ddL
        0x370eb221a5f176ddL    # 1.7205605495331308E-43
    .end array-data

    :array_b
    .array-data 8
        0x81f23f390affe88L
        0x2
        0x70722e8f5cd0L
        0x20cd6bd5ace2d1L
        0x9bbc940c751630L
        0xa90404784bfcb4dL    # 8.45563543651314E-258
        0x1189b3f265c2b0c7L
    .end array-data

    :array_c
    .array-data 8
        0x7fffffffffffffffL
        0x2
        0x145
        0x249f
        0x6e12
        0x6e0d7
        0x953d18
        0x6b0191fe
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomial(II)J
    .locals 18
    .param p0, "n"    # I
    .param p1, "k"    # I

    .prologue
    .line 809
    const-string v12, "n"

    move/from16 v0, p0

    invoke-static {v12, v0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 810
    const-string v12, "k"

    move/from16 v0, p1

    invoke-static {v12, v0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 811
    move/from16 v0, p1

    move/from16 v1, p0

    if-gt v0, v1, :cond_2

    const/4 v12, 0x1

    :goto_0
    const-string v13, "k (%s) > n (%s)"

    move/from16 v0, p1

    move/from16 v1, p0

    invoke-static {v12, v13, v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 812
    shr-int/lit8 v12, p0, 0x1

    move/from16 v0, p1

    if-le v0, v12, :cond_0

    .line 813
    sub-int p1, p0, p1

    .line 815
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 821
    sget-object v12, Lcom/google/common/math/LongMath;->factorials:[J

    array-length v12, v12

    move/from16 v0, p0

    if-ge v0, v12, :cond_3

    .line 822
    sget-object v12, Lcom/google/common/math/LongMath;->factorials:[J

    aget-wide v12, v12, p0

    sget-object v14, Lcom/google/common/math/LongMath;->factorials:[J

    aget-wide v14, v14, p1

    sget-object v16, Lcom/google/common/math/LongMath;->factorials:[J

    sub-int v17, p0, p1

    aget-wide v16, v16, v17

    mul-long v14, v14, v16

    div-long v2, v12, v14

    .line 863
    :cond_1
    :goto_1
    return-wide v2

    .line 811
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 817
    :pswitch_0
    const-wide/16 v2, 0x1

    goto :goto_1

    .line 819
    :pswitch_1
    move/from16 v0, p0

    int-to-long v2, v0

    goto :goto_1

    .line 823
    :cond_3
    sget-object v12, Lcom/google/common/math/LongMath;->biggestBinomials:[I

    array-length v12, v12

    move/from16 v0, p1

    if-ge v0, v12, :cond_4

    sget-object v12, Lcom/google/common/math/LongMath;->biggestBinomials:[I

    aget v12, v12, p1

    move/from16 v0, p0

    if-le v0, v12, :cond_5

    .line 824
    :cond_4
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_1

    .line 825
    :cond_5
    sget-object v12, Lcom/google/common/math/LongMath;->biggestSimpleBinomials:[I

    array-length v12, v12

    move/from16 v0, p1

    if-ge v0, v12, :cond_6

    sget-object v12, Lcom/google/common/math/LongMath;->biggestSimpleBinomials:[I

    aget v12, v12, p1

    move/from16 v0, p0

    if-gt v0, v12, :cond_6

    .line 827
    add-int/lit8 v9, p0, -0x1

    .end local p0    # "n":I
    .local v9, "n":I
    move/from16 v0, p0

    int-to-long v2, v0

    .line 828
    .local v2, "result":J
    const/4 v8, 0x2

    .local v8, "i":I
    move/from16 p0, v9

    .end local v9    # "n":I
    .restart local p0    # "n":I
    :goto_2
    move/from16 v0, p1

    if-gt v8, v0, :cond_1

    .line 829
    move/from16 v0, p0

    int-to-long v12, v0

    mul-long/2addr v2, v12

    .line 830
    int-to-long v12, v8

    div-long/2addr v2, v12

    .line 828
    add-int/lit8 p0, p0, -0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 834
    .end local v2    # "result":J
    .end local v8    # "i":I
    :cond_6
    move/from16 v0, p0

    int-to-long v12, v0

    sget-object v14, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v12, v13, v14}, Lcom/google/common/math/LongMath;->log2(JLjava/math/RoundingMode;)I

    move-result v10

    .line 836
    .local v10, "nBits":I
    const-wide/16 v2, 0x1

    .line 837
    .restart local v2    # "result":J
    add-int/lit8 v9, p0, -0x1

    .end local p0    # "n":I
    .restart local v9    # "n":I
    move/from16 v0, p0

    int-to-long v4, v0

    .line 838
    .local v4, "numerator":J
    const-wide/16 v6, 0x1

    .line 840
    .local v6, "denominator":J
    move v11, v10

    .line 848
    .local v11, "numeratorBits":I
    const/4 v8, 0x2

    .restart local v8    # "i":I
    move/from16 p0, v9

    .end local v9    # "n":I
    .restart local p0    # "n":I
    :goto_3
    move/from16 v0, p1

    if-gt v8, v0, :cond_8

    .line 849
    add-int v12, v11, v10

    const/16 v13, 0x3f

    if-ge v12, v13, :cond_7

    .line 851
    move/from16 v0, p0

    int-to-long v12, v0

    mul-long/2addr v4, v12

    .line 852
    int-to-long v12, v8

    mul-long/2addr v6, v12

    .line 853
    add-int/2addr v11, v10

    .line 848
    :goto_4
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 p0, p0, -0x1

    goto :goto_3

    .line 857
    :cond_7
    invoke-static/range {v2 .. v7}, Lcom/google/common/math/LongMath;->multiplyFraction(JJJ)J

    move-result-wide v2

    .line 858
    move/from16 v0, p0

    int-to-long v4, v0

    .line 859
    int-to-long v6, v8

    .line 860
    move v11, v10

    goto :goto_4

    .line 863
    :cond_8
    invoke-static/range {v2 .. v7}, Lcom/google/common/math/LongMath;->multiplyFraction(JJJ)J

    move-result-wide v2

    goto :goto_1

    .line 815
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static ceilingPowerOfTwo(J)J
    .locals 4
    .param p0, "x"    # J
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    const-wide/16 v2, 0x1

    .line 67
    const-string v0, "x"

    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;J)J

    .line 68
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ceilingPowerOfTwo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not representable as a long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    sub-long v0, p0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    neg-int v0, v0

    shl-long v0, v2, v0

    return-wide v0
.end method

.method public static checkedAdd(JJ)J
    .locals 10
    .param p0, "a"    # J
    .param p2, "b"    # J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 546
    add-long v0, p0, p2

    .line 547
    .local v0, "result":J
    xor-long v4, p0, p2

    cmp-long v4, v4, v8

    if-gez v4, :cond_0

    move v4, v2

    :goto_0
    xor-long v6, p0, v0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_1

    :goto_1
    or-int/2addr v2, v4

    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 548
    return-wide v0

    :cond_0
    move v4, v3

    .line 547
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public static checkedMultiply(JJ)J
    .locals 12
    .param p0, "a"    # J
    .param p2, "b"    # J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const-wide/16 v8, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 571
    .line 572
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    xor-long v6, p0, v8

    .line 573
    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v6

    add-int/2addr v1, v6

    .line 574
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v6

    add-int/2addr v1, v6

    xor-long v6, p2, v8

    .line 575
    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v6

    add-int v0, v1, v6

    .line 586
    .local v0, "leadingZeros":I
    const/16 v1, 0x41

    if-le v0, v1, :cond_0

    .line 587
    mul-long v2, p0, p2

    .line 593
    :goto_0
    return-wide v2

    .line 589
    :cond_0
    const/16 v1, 0x40

    if-lt v0, v1, :cond_3

    move v1, v4

    :goto_1
    invoke-static {v1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 590
    cmp-long v1, p0, v10

    if-ltz v1, :cond_4

    move v6, v4

    :goto_2
    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v1, p2, v8

    if-eqz v1, :cond_5

    move v1, v4

    :goto_3
    or-int/2addr v1, v6

    invoke-static {v1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 591
    mul-long v2, p0, p2

    .line 592
    .local v2, "result":J
    cmp-long v1, p0, v10

    if-eqz v1, :cond_1

    div-long v6, v2, p0

    cmp-long v1, v6, p2

    if-nez v1, :cond_2

    :cond_1
    move v5, v4

    :cond_2
    invoke-static {v5}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    goto :goto_0

    .end local v2    # "result":J
    :cond_3
    move v1, v5

    .line 589
    goto :goto_1

    :cond_4
    move v6, v5

    .line 590
    goto :goto_2

    :cond_5
    move v1, v5

    goto :goto_3
.end method

.method public static checkedPow(JI)J
    .locals 12
    .param p0, "b"    # J
    .param p2, "k"    # I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    const-wide/16 v2, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 604
    const-string v8, "exponent"

    invoke-static {v8, p2}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 605
    const-wide/16 v8, -0x2

    cmp-long v8, p0, v8

    if-ltz v8, :cond_0

    move v9, v6

    :goto_0
    const-wide/16 v10, 0x2

    cmp-long v8, p0, v10

    if-gtz v8, :cond_1

    move v8, v6

    :goto_1
    and-int/2addr v8, v9

    if-eqz v8, :cond_7

    .line 606
    long-to-int v8, p0

    packed-switch v8, :pswitch_data_0

    .line 620
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    move v9, v7

    .line 605
    goto :goto_0

    :cond_1
    move v8, v7

    goto :goto_1

    .line 608
    :pswitch_0
    if-nez p2, :cond_3

    .line 629
    :cond_2
    :goto_2
    :pswitch_1
    return-wide v2

    .line 608
    :cond_3
    const-wide/16 v2, 0x0

    goto :goto_2

    .line 612
    :pswitch_2
    and-int/lit8 v6, p2, 0x1

    if-eqz v6, :cond_2

    move-wide v2, v4

    goto :goto_2

    .line 614
    :pswitch_3
    const/16 v4, 0x3f

    if-ge p2, v4, :cond_4

    move v4, v6

    :goto_3
    invoke-static {v4}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 615
    shl-long/2addr v2, p2

    goto :goto_2

    :cond_4
    move v4, v7

    .line 614
    goto :goto_3

    .line 617
    :pswitch_4
    const/16 v8, 0x40

    if-ge p2, v8, :cond_5

    :goto_4
    invoke-static {v6}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 618
    and-int/lit8 v6, p2, 0x1

    if-nez v6, :cond_6

    shl-long/2addr v2, p2

    goto :goto_2

    :cond_5
    move v6, v7

    .line 617
    goto :goto_4

    .line 618
    :cond_6
    shl-long v2, v4, p2

    goto :goto_2

    .line 623
    :cond_7
    const-wide/16 v0, 0x1

    .line 625
    .local v0, "accum":J
    :cond_8
    :goto_5
    packed-switch p2, :pswitch_data_1

    .line 631
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_9

    .line 632
    invoke-static {v0, v1, p0, p1}, Lcom/google/common/math/LongMath;->checkedMultiply(JJ)J

    move-result-wide v0

    .line 634
    :cond_9
    shr-int/lit8 p2, p2, 0x1

    .line 635
    if-lez p2, :cond_8

    .line 636
    const-wide v2, -0xb504f333L

    cmp-long v2, v2, p0

    if-gtz v2, :cond_a

    const-wide v2, 0xb504f333L

    cmp-long v2, p0, v2

    if-gtz v2, :cond_a

    move v2, v6

    :goto_6
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 637
    mul-long/2addr p0, p0

    goto :goto_5

    :pswitch_5
    move-wide v2, v0

    .line 627
    goto :goto_2

    .line 629
    :pswitch_6
    invoke-static {v0, v1, p0, p1}, Lcom/google/common/math/LongMath;->checkedMultiply(JJ)J

    move-result-wide v2

    goto :goto_2

    :cond_a
    move v2, v7

    .line 636
    goto :goto_6

    .line 606
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 625
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static checkedSubtract(JJ)J
    .locals 10
    .param p0, "a"    # J
    .param p2, "b"    # J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 558
    sub-long v0, p0, p2

    .line 559
    .local v0, "result":J
    xor-long v4, p0, p2

    cmp-long v4, v4, v8

    if-ltz v4, :cond_0

    move v4, v2

    :goto_0
    xor-long v6, p0, v0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_1

    :goto_1
    or-int/2addr v2, v4

    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(Z)V

    .line 560
    return-wide v0

    :cond_0
    move v4, v3

    .line 559
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public static divide(JJLjava/math/RoundingMode;)J
    .locals 20
    .param p0, "p"    # J
    .param p2, "q"    # J
    .param p4, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    .line 385
    invoke-static/range {p4 .. p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    div-long v6, p0, p2

    .line 387
    .local v6, "div":J
    mul-long v12, p2, v6

    sub-long v10, p0, v12

    .line 389
    .local v10, "rem":J
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-nez v12, :cond_1

    .line 434
    .end local v6    # "div":J
    :cond_0
    :goto_0
    return-wide v6

    .line 400
    .restart local v6    # "div":J
    :cond_1
    xor-long v12, p0, p2

    const/16 v14, 0x3f

    shr-long/2addr v12, v14

    long-to-int v12, v12

    or-int/lit8 v9, v12, 0x1

    .line 402
    .local v9, "signum":I
    sget-object v12, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual/range {p4 .. p4}, Ljava/math/RoundingMode;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 432
    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 404
    :pswitch_0
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-nez v12, :cond_2

    const/4 v12, 0x1

    :goto_1
    invoke-static {v12}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 407
    :pswitch_1
    const/4 v8, 0x0

    .line 434
    .local v8, "increment":Z
    :goto_2
    if-eqz v8, :cond_0

    int-to-long v12, v9

    add-long/2addr v6, v12

    goto :goto_0

    .line 404
    .end local v8    # "increment":Z
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 410
    :pswitch_2
    const/4 v8, 0x1

    .line 411
    .restart local v8    # "increment":Z
    goto :goto_2

    .line 413
    .end local v8    # "increment":Z
    :pswitch_3
    if-lez v9, :cond_3

    const/4 v8, 0x1

    .line 414
    .restart local v8    # "increment":Z
    :goto_3
    goto :goto_2

    .line 413
    .end local v8    # "increment":Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    .line 416
    :pswitch_4
    if-gez v9, :cond_4

    const/4 v8, 0x1

    .line 417
    .restart local v8    # "increment":Z
    :goto_4
    goto :goto_2

    .line 416
    .end local v8    # "increment":Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_4

    .line 421
    :pswitch_5
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 422
    .local v2, "absRem":J
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    sub-long/2addr v12, v2

    sub-long v4, v2, v12

    .line 425
    .local v4, "cmpRemToHalfDivisor":J
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-nez v12, :cond_8

    .line 426
    sget-object v12, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    move-object/from16 v0, p4

    if-ne v0, v12, :cond_5

    const/4 v12, 0x1

    :goto_5
    sget-object v13, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    move-object/from16 v0, p4

    if-ne v0, v13, :cond_6

    const/4 v13, 0x1

    move v14, v13

    :goto_6
    const-wide/16 v16, 0x1

    and-long v16, v16, v6

    const-wide/16 v18, 0x0

    cmp-long v13, v16, v18

    if-eqz v13, :cond_7

    const/4 v13, 0x1

    :goto_7
    and-int/2addr v13, v14

    or-int v8, v12, v13

    .restart local v8    # "increment":Z
    goto :goto_2

    .end local v8    # "increment":Z
    :cond_5
    const/4 v12, 0x0

    goto :goto_5

    :cond_6
    const/4 v13, 0x0

    move v14, v13

    goto :goto_6

    :cond_7
    const/4 v13, 0x0

    goto :goto_7

    .line 428
    :cond_8
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-lez v12, :cond_9

    const/4 v8, 0x1

    .line 430
    .restart local v8    # "increment":Z
    :goto_8
    goto :goto_2

    .line 428
    .end local v8    # "increment":Z
    :cond_9
    const/4 v8, 0x0

    goto :goto_8

    .line 402
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

.method public static factorial(I)J
    .locals 2
    .param p0, "n"    # I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    .line 774
    const-string v0, "n"

    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 775
    sget-object v0, Lcom/google/common/math/LongMath;->factorials:[J

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/google/common/math/LongMath;->factorials:[J

    aget-wide v0, v0, p0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method static fitsInInt(J)Z
    .locals 2
    .param p0, "x"    # J

    .prologue
    .line 963
    long-to-int v0, p0

    int-to-long v0, v0

    cmp-long v0, v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static floorPowerOfTwo(J)J
    .locals 4
    .param p0, "x"    # J
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 83
    const-string v0, "x"

    invoke-static {v0, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;J)J

    .line 87
    const-wide/16 v0, 0x1

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x3f

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public static gcd(JJ)J
    .locals 12
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    const-wide/16 v10, 0x0

    .line 500
    const-string v8, "a"

    invoke-static {v8, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    .line 501
    const-string v8, "b"

    invoke-static {v8, p2, p3}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    .line 502
    cmp-long v8, p0, v10

    if-nez v8, :cond_0

    move-wide v2, p2

    .end local p2    # "b":J
    .local v2, "b":J
    move-wide p0, p2

    .line 536
    .end local p0    # "a":J
    :goto_0
    return-wide p0

    .line 506
    .end local v2    # "b":J
    .restart local p0    # "a":J
    .restart local p2    # "b":J
    :cond_0
    cmp-long v8, p2, v10

    if-nez v8, :cond_1

    move-wide v2, p2

    .line 507
    .end local p2    # "b":J
    .restart local v2    # "b":J
    goto :goto_0

    .line 513
    .end local v2    # "b":J
    .restart local p2    # "b":J
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    .line 514
    .local v0, "aTwos":I
    shr-long/2addr p0, v0

    .line 515
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v1

    .line 516
    .local v1, "bTwos":I
    shr-long/2addr p2, v1

    .line 517
    :goto_1
    cmp-long v8, p0, p2

    if-eqz v8, :cond_2

    .line 525
    sub-long v4, p0, p2

    .line 527
    .local v4, "delta":J
    const/16 v8, 0x3f

    shr-long v8, v4, v8

    and-long v6, v4, v8

    .line 530
    .local v6, "minDeltaOrZero":J
    sub-long v8, v4, v6

    sub-long p0, v8, v6

    .line 533
    add-long/2addr p2, v6

    .line 534
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v8

    shr-long/2addr p0, v8

    .line 535
    goto :goto_1

    .line 536
    .end local v4    # "delta":J
    .end local v6    # "minDeltaOrZero":J
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    shl-long/2addr p0, v8

    move-wide v2, p2

    .end local p2    # "b":J
    .restart local v2    # "b":J
    goto :goto_0
.end method

.method public static isPowerOfTwo(J)Z
    .locals 8
    .param p0, "x"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 97
    cmp-long v2, p0, v6

    if-lez v2, :cond_0

    move v2, v0

    :goto_0
    const-wide/16 v4, 0x1

    sub-long v4, p0, v4

    and-long/2addr v4, p0

    cmp-long v3, v4, v6

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

.method public static isPrime(J)Z
    .locals 12
    .param p0, "n"    # J
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    const-wide/16 v10, 0x7

    const-wide/16 v6, 0x2

    const-wide/16 v8, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1003
    cmp-long v4, p0, v6

    if-gez v4, :cond_1

    .line 1004
    const-string v3, "n"

    invoke-static {v3, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    .line 1028
    :cond_0
    :goto_0
    return v2

    .line 1007
    :cond_1
    cmp-long v4, p0, v6

    if-eqz v4, :cond_2

    const-wide/16 v4, 0x3

    cmp-long v4, p0, v4

    if-eqz v4, :cond_2

    const-wide/16 v4, 0x5

    cmp-long v4, p0, v4

    if-eqz v4, :cond_2

    cmp-long v4, p0, v10

    if-eqz v4, :cond_2

    const-wide/16 v4, 0xb

    cmp-long v4, p0, v4

    if-eqz v4, :cond_2

    const-wide/16 v4, 0xd

    cmp-long v4, p0, v4

    if-nez v4, :cond_3

    :cond_2
    move v2, v3

    .line 1008
    goto :goto_0

    .line 1011
    :cond_3
    const v4, -0x208a2883

    const-wide/16 v6, 0x1e

    rem-long v6, p0, v6

    long-to-int v5, v6

    shl-int v5, v3, v5

    and-int/2addr v4, v5

    if-nez v4, :cond_0

    .line 1014
    rem-long v4, p0, v10

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    const-wide/16 v4, 0xb

    rem-long v4, p0, v4

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    const-wide/16 v4, 0xd

    rem-long v4, p0, v4

    cmp-long v4, v4, v8

    if-eqz v4, :cond_0

    .line 1017
    const-wide/16 v4, 0x121

    cmp-long v4, p0, v4

    if-gez v4, :cond_4

    move v2, v3

    .line 1018
    goto :goto_0

    .line 1021
    :cond_4
    sget-object v5, Lcom/google/common/math/LongMath;->millerRabinBaseSets:[[J

    array-length v6, v5

    move v4, v2

    :goto_1
    if-ge v4, v6, :cond_7

    aget-object v0, v5, v4

    .line 1022
    .local v0, "baseSet":[J
    aget-wide v8, v0, v2

    cmp-long v7, p0, v8

    if-gtz v7, :cond_6

    .line 1023
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2
    array-length v4, v0

    if-ge v1, v4, :cond_5

    .line 1024
    aget-wide v4, v0, v1

    invoke-static {v4, v5, p0, p1}, Lcom/google/common/math/LongMath$MillerRabinTester;->test(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1023
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move v2, v3

    .line 1028
    goto :goto_0

    .line 1021
    .end local v1    # "i":I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1031
    .end local v0    # "baseSet":[J
    :cond_7
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method static lessThanBranchFree(JJ)I
    .locals 4
    .param p0, "x"    # J
    .param p2, "y"    # J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 108
    sub-long v0, p0, p2

    xor-long/2addr v0, v2

    xor-long/2addr v0, v2

    const/16 v2, 0x3f

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static log10(JLjava/math/RoundingMode;)I
    .locals 6
    .param p0, "x"    # J
    .param p2, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    .line 163
    const-string v3, "x"

    invoke-static {v3, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;J)J

    .line 164
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->log10Floor(J)I

    move-result v2

    .line 165
    .local v2, "logFloor":I
    sget-object v3, Lcom/google/common/math/LongMath;->powersOf10:[J

    aget-wide v0, v3, v2

    .line 166
    .local v0, "floorPow":J
    sget-object v3, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 182
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 168
    :pswitch_0
    cmp-long v3, p0, v0

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 180
    .end local v2    # "logFloor":I
    :goto_1
    :pswitch_1
    return v2

    .line 168
    .restart local v2    # "logFloor":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 175
    :pswitch_2
    invoke-static {v0, v1, p0, p1}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 180
    :pswitch_3
    sget-object v3, Lcom/google/common/math/LongMath;->halfPowersOf10:[J

    aget-wide v4, v3, v2

    invoke-static {v4, v5, p0, p1}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 166
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

.method static log10Floor(J)I
    .locals 4
    .param p0, "x"    # J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    .line 195
    sget-object v1, Lcom/google/common/math/LongMath;->maxLog10ForLeadingZeros:[B

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v2

    aget-byte v0, v1, v2

    .line 200
    .local v0, "y":I
    sget-object v1, Lcom/google/common/math/LongMath;->powersOf10:[J

    aget-wide v2, v1, v0

    invoke-static {p0, p1, v2, v3}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result v1

    sub-int v1, v0, v1

    return v1
.end method

.method public static log2(JLjava/math/RoundingMode;)I
    .locals 6
    .param p0, "x"    # J
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .prologue
    .line 121
    const-string v4, "x"

    invoke-static {v4, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;J)J

    .line 122
    sget-object v4, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 145
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "impossible"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 124
    :pswitch_0
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->isPowerOfTwo(J)Z

    move-result v4

    invoke-static {v4}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 128
    :pswitch_1
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x3f

    .line 142
    :goto_0
    return v4

    .line 132
    :pswitch_2
    const-wide/16 v4, 0x1

    sub-long v4, p0, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x40

    goto :goto_0

    .line 138
    :pswitch_3
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v2

    .line 139
    .local v2, "leadingZeros":I
    const-wide v4, -0x4afb0ccc06219b7cL    # -2.734104117489491E-53

    ushr-long v0, v4, v2

    .line 141
    .local v0, "cmp":J
    rsub-int/lit8 v3, v2, 0x3f

    .line 142
    .local v3, "logFloor":I
    invoke-static {v0, v1, p0, p1}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result v4

    add-int/2addr v4, v3

    goto :goto_0

    .line 122
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

.method public static mean(JJ)J
    .locals 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    .prologue
    .line 976
    and-long v0, p0, p2

    xor-long v2, p0, p2

    const/4 v4, 0x1

    shr-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static mod(JI)I
    .locals 2
    .param p0, "x"    # J
    .param p2, "m"    # I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    .line 458
    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/math/LongMath;->mod(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static mod(JJ)J
    .locals 6
    .param p0, "x"    # J
    .param p2, "m"    # J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 481
    cmp-long v2, p2, v4

    if-gtz v2, :cond_0

    .line 482
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "Modulus must be positive"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 484
    :cond_0
    rem-long v0, p0, p2

    .line 485
    .local v0, "result":J
    cmp-long v2, v0, v4

    if-ltz v2, :cond_1

    .end local v0    # "result":J
    :goto_0
    return-wide v0

    .restart local v0    # "result":J
    :cond_1
    add-long/2addr v0, p2

    goto :goto_0
.end method

.method static multiplyFraction(JJJ)J
    .locals 4
    .param p0, "x"    # J
    .param p2, "numerator"    # J
    .param p4, "denominator"    # J

    .prologue
    .line 870
    const-wide/16 v2, 0x1

    cmp-long v2, p0, v2

    if-nez v2, :cond_0

    .line 871
    div-long v2, p2, p4

    .line 878
    :goto_0
    return-wide v2

    .line 873
    :cond_0
    invoke-static {p0, p1, p4, p5}, Lcom/google/common/math/LongMath;->gcd(JJ)J

    move-result-wide v0

    .line 874
    .local v0, "commonDivisor":J
    div-long/2addr p0, v0

    .line 875
    div-long/2addr p4, v0

    .line 878
    div-long v2, p2, p4

    mul-long/2addr v2, p0

    goto :goto_0
.end method

.method public static pow(JI)J
    .locals 10
    .param p0, "b"    # J
    .param p2, "k"    # I
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    const/16 v8, 0x40

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x1

    .line 269
    const-string v6, "exponent"

    invoke-static {v6, p2}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 270
    const-wide/16 v6, -0x2

    cmp-long v6, v6, p0

    if-gtz v6, :cond_5

    const-wide/16 v6, 0x2

    cmp-long v6, p0, v6

    if-gtz v6, :cond_5

    .line 271
    long-to-int v6, p0

    packed-switch v6, :pswitch_data_0

    .line 287
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 273
    :pswitch_0
    if-nez p2, :cond_1

    .line 295
    :cond_0
    :goto_0
    :pswitch_1
    return-wide v2

    :cond_1
    move-wide v2, v4

    .line 273
    goto :goto_0

    .line 277
    :pswitch_2
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_0

    const-wide/16 v2, -0x1

    goto :goto_0

    .line 279
    :pswitch_3
    if-ge p2, v8, :cond_2

    shl-long v4, v2, p2

    :cond_2
    move-wide v2, v4

    goto :goto_0

    .line 281
    :pswitch_4
    if-ge p2, v8, :cond_4

    .line 282
    and-int/lit8 v4, p2, 0x1

    if-nez v4, :cond_3

    shl-long/2addr v2, p2

    goto :goto_0

    :cond_3
    shl-long/2addr v2, p2

    neg-long v2, v2

    goto :goto_0

    :cond_4
    move-wide v2, v4

    .line 284
    goto :goto_0

    .line 290
    :cond_5
    const-wide/16 v0, 0x1

    .line 291
    .local v0, "accum":J
    :goto_1
    packed-switch p2, :pswitch_data_1

    .line 297
    and-int/lit8 v4, p2, 0x1

    if-nez v4, :cond_6

    move-wide v4, v2

    :goto_2
    mul-long/2addr v0, v4

    .line 298
    mul-long/2addr p0, p0

    .line 290
    shr-int/lit8 p2, p2, 0x1

    goto :goto_1

    :pswitch_5
    move-wide v2, v0

    .line 293
    goto :goto_0

    .line 295
    :pswitch_6
    mul-long v2, v0, p0

    goto :goto_0

    :cond_6
    move-wide v4, p0

    .line 297
    goto :goto_2

    .line 271
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 291
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static saturatedAdd(JJ)J
    .locals 10
    .param p0, "a"    # J
    .param p2, "b"    # J
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 651
    add-long v0, p0, p2

    .line 652
    .local v0, "naiveSum":J
    xor-long v4, p0, p2

    cmp-long v4, v4, v8

    if-gez v4, :cond_0

    move v4, v2

    :goto_0
    xor-long v6, p0, v0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_1

    :goto_1
    or-int/2addr v2, v4

    if-eqz v2, :cond_2

    .line 658
    .end local v0    # "naiveSum":J
    :goto_2
    return-wide v0

    .restart local v0    # "naiveSum":J
    :cond_0
    move v4, v3

    .line 652
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 658
    :cond_2
    const-wide v2, 0x7fffffffffffffffL

    const/16 v4, 0x3f

    ushr-long v4, v0, v4

    const-wide/16 v6, 0x1

    xor-long/2addr v4, v6

    add-long v0, v2, v4

    goto :goto_2
.end method

.method public static saturatedMultiply(JJ)J
    .locals 10
    .param p0, "a"    # J
    .param p2, "b"    # J
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 688
    .line 689
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    const-wide/16 v6, -0x1

    xor-long/2addr v6, p0

    .line 690
    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v6

    add-int/2addr v1, v6

    .line 691
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v6

    add-int/2addr v1, v6

    const-wide/16 v6, -0x1

    xor-long/2addr v6, p2

    .line 692
    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v6

    add-int v0, v1, v6

    .line 693
    .local v0, "leadingZeros":I
    const/16 v1, 0x41

    if-le v0, v1, :cond_1

    .line 694
    mul-long v2, p0, p2

    .line 706
    :cond_0
    :goto_0
    return-wide v2

    .line 697
    :cond_1
    const-wide v6, 0x7fffffffffffffffL

    xor-long v8, p0, p2

    const/16 v1, 0x3f

    ushr-long/2addr v8, v1

    add-long v2, v6, v8

    .line 698
    .local v2, "limit":J
    const/16 v1, 0x40

    if-ge v0, v1, :cond_3

    const/4 v1, 0x1

    move v7, v1

    :goto_1
    const-wide/16 v8, 0x0

    cmp-long v1, p0, v8

    if-gez v1, :cond_4

    const/4 v1, 0x1

    move v6, v1

    :goto_2
    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v1, p2, v8

    if-nez v1, :cond_5

    const/4 v1, 0x1

    :goto_3
    and-int/2addr v1, v6

    or-int/2addr v1, v7

    if-nez v1, :cond_0

    .line 702
    mul-long v4, p0, p2

    .line 703
    .local v4, "result":J
    const-wide/16 v6, 0x0

    cmp-long v1, p0, v6

    if-eqz v1, :cond_2

    div-long v6, v4, p0

    cmp-long v1, v6, p2

    if-nez v1, :cond_0

    :cond_2
    move-wide v2, v4

    .line 704
    goto :goto_0

    .line 698
    .end local v4    # "result":J
    :cond_3
    const/4 v1, 0x0

    move v7, v1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    move v6, v1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public static saturatedPow(JI)J
    .locals 16
    .param p0, "b"    # J
    .param p2, "k"    # I
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    const/16 v14, 0x3f

    const-wide v4, 0x7fffffffffffffffL

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v6, 0x1

    .line 717
    const-string v10, "exponent"

    move/from16 v0, p2

    invoke-static {v10, v0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 718
    const-wide/16 v10, -0x2

    cmp-long v10, p0, v10

    if-ltz v10, :cond_0

    move v11, v8

    :goto_0
    const-wide/16 v12, 0x2

    cmp-long v10, p0, v12

    if-gtz v10, :cond_1

    move v10, v8

    :goto_1
    and-int/2addr v10, v11

    if-eqz v10, :cond_7

    .line 719
    move-wide/from16 v0, p0

    long-to-int v8, v0

    packed-switch v8, :pswitch_data_0

    .line 737
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_0
    move v11, v9

    .line 718
    goto :goto_0

    :cond_1
    move v10, v9

    goto :goto_1

    .line 721
    :pswitch_0
    if-nez p2, :cond_3

    .line 756
    :cond_2
    :goto_2
    :pswitch_1
    return-wide v6

    .line 721
    :cond_3
    const-wide/16 v6, 0x0

    goto :goto_2

    .line 725
    :pswitch_2
    and-int/lit8 v8, p2, 0x1

    if-eqz v8, :cond_2

    const-wide/16 v6, -0x1

    goto :goto_2

    .line 727
    :pswitch_3
    move/from16 v0, p2

    if-lt v0, v14, :cond_4

    move-wide v6, v4

    .line 728
    goto :goto_2

    .line 730
    :cond_4
    shl-long v6, v6, p2

    goto :goto_2

    .line 732
    :pswitch_4
    const/16 v8, 0x40

    move/from16 v0, p2

    if-lt v0, v8, :cond_5

    .line 733
    and-int/lit8 v6, p2, 0x1

    int-to-long v6, v6

    add-long/2addr v6, v4

    goto :goto_2

    .line 735
    :cond_5
    and-int/lit8 v8, p2, 0x1

    if-nez v8, :cond_6

    shl-long v6, v6, p2

    goto :goto_2

    :cond_6
    const-wide/16 v6, -0x1

    shl-long v6, v6, p2

    goto :goto_2

    .line 740
    :cond_7
    const-wide/16 v2, 0x1

    .line 742
    .local v2, "accum":J
    ushr-long v6, p0, v14

    and-int/lit8 v10, p2, 0x1

    int-to-long v10, v10

    and-long/2addr v6, v10

    add-long/2addr v4, v6

    .line 744
    .local v4, "limit":J
    :cond_8
    :goto_3
    packed-switch p2, :pswitch_data_1

    .line 750
    and-int/lit8 v6, p2, 0x1

    if-eqz v6, :cond_9

    .line 751
    move-wide/from16 v0, p0

    invoke-static {v2, v3, v0, v1}, Lcom/google/common/math/LongMath;->saturatedMultiply(JJ)J

    move-result-wide v2

    .line 753
    :cond_9
    shr-int/lit8 p2, p2, 0x1

    .line 754
    if-lez p2, :cond_8

    .line 755
    const-wide v6, -0xb504f333L

    cmp-long v6, v6, p0

    if-lez v6, :cond_a

    move v7, v8

    :goto_4
    const-wide v10, 0xb504f333L

    cmp-long v6, p0, v10

    if-lez v6, :cond_b

    move v6, v8

    :goto_5
    or-int/2addr v6, v7

    if-eqz v6, :cond_c

    move-wide v6, v4

    .line 756
    goto :goto_2

    :pswitch_5
    move-wide v6, v2

    .line 746
    goto :goto_2

    .line 748
    :pswitch_6
    move-wide/from16 v0, p0

    invoke-static {v2, v3, v0, v1}, Lcom/google/common/math/LongMath;->saturatedMultiply(JJ)J

    move-result-wide v6

    goto :goto_2

    :cond_a
    move v7, v9

    .line 755
    goto :goto_4

    :cond_b
    move v6, v9

    goto :goto_5

    .line 758
    :cond_c
    mul-long p0, p0, p0

    goto :goto_3

    .line 719
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 744
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static saturatedSubtract(JJ)J
    .locals 10
    .param p0, "a"    # J
    .param p2, "b"    # J
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 669
    sub-long v0, p0, p2

    .line 670
    .local v0, "naiveDifference":J
    xor-long v4, p0, p2

    cmp-long v4, v4, v8

    if-ltz v4, :cond_0

    move v4, v2

    :goto_0
    xor-long v6, p0, v0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_1

    :goto_1
    or-int/2addr v2, v4

    if-eqz v2, :cond_2

    .line 676
    .end local v0    # "naiveDifference":J
    :goto_2
    return-wide v0

    .restart local v0    # "naiveDifference":J
    :cond_0
    move v4, v3

    .line 670
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    .line 676
    :cond_2
    const-wide v2, 0x7fffffffffffffffL

    const/16 v4, 0x3f

    ushr-long v4, v0, v4

    const-wide/16 v6, 0x1

    xor-long/2addr v4, v6

    add-long v0, v2, v4

    goto :goto_2
.end method

.method public static sqrt(JLjava/math/RoundingMode;)J
    .locals 10
    .param p0, "x"    # J
    .param p2, "mode"    # Ljava/math/RoundingMode;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    .line 313
    const-string v8, "x"

    invoke-static {v8, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;J)J

    .line 314
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->fitsInInt(J)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 315
    long-to-int v8, p0

    invoke-static {v8, p2}, Lcom/google/common/math/IntMath;->sqrt(ILjava/math/RoundingMode;)I

    move-result v8

    int-to-long v0, v8

    .line 369
    :cond_0
    :goto_0
    return-wide v0

    .line 332
    :cond_1
    long-to-double v8, p0

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-long v0, v8

    .line 334
    .local v0, "guess":J
    mul-long v2, v0, v0

    .line 337
    .local v2, "guessSquared":J
    sget-object v8, Lcom/google/common/math/LongMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 371
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 339
    :pswitch_0
    cmp-long v8, v2, p0

    if-nez v8, :cond_2

    const/4 v8, 0x1

    :goto_1
    invoke-static {v8}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 343
    :pswitch_1
    cmp-long v8, p0, v2

    if-gez v8, :cond_0

    .line 344
    const-wide/16 v8, 0x1

    sub-long/2addr v0, v8

    goto :goto_0

    .line 349
    :pswitch_2
    cmp-long v8, p0, v2

    if-lez v8, :cond_0

    .line 350
    const-wide/16 v8, 0x1

    add-long/2addr v0, v8

    goto :goto_0

    .line 356
    :pswitch_3
    cmp-long v8, p0, v2

    if-gez v8, :cond_3

    const/4 v8, 0x1

    :goto_2
    int-to-long v8, v8

    sub-long v6, v0, v8

    .line 357
    .local v6, "sqrtFloor":J
    mul-long v8, v6, v6

    add-long v4, v8, v6

    .line 369
    .local v4, "halfSquare":J
    invoke-static {v4, v5, p0, p1}, Lcom/google/common/math/LongMath;->lessThanBranchFree(JJ)I

    move-result v8

    int-to-long v8, v8

    add-long v0, v6, v8

    goto :goto_0

    .line 356
    .end local v4    # "halfSquare":J
    .end local v6    # "sqrtFloor":J
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 337
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
