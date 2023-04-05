.class public Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;
.super Lorg/bouncycastle/math/ec/AbstractECMultiplier;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/AbstractECMultiplier;-><init>()V

    return-void
.end method


# virtual methods
.method protected getWidthForCombSize(I)I
    .locals 1

    const/16 v0, 0x101

    if-le p1, v0, :cond_0

    const/4 v0, 0x6

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method protected multiplyPositive(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 9

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/math/ec/FixedPointUtil;->getCombSize(Lorg/bouncycastle/math/ec/ECCurve;)I

    move-result v1

    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-le v2, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "fixed-point comb doesn\'t support scalars larger than the curve order"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, v1}, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;->getWidthForCombSize(I)I

    move-result v2

    invoke-static {p1, v2}, Lorg/bouncycastle/math/ec/FixedPointUtil;->precompute(Lorg/bouncycastle/math/ec/ECPoint;I)Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    div-int v7, v1, v2

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    mul-int v1, v7, v2

    add-int/lit8 v8, v1, -0x1

    move v4, v3

    move-object v5, v0

    :goto_0
    if-ge v4, v7, :cond_3

    sub-int v0, v8, v4

    move v1, v0

    move v2, v3

    :goto_1
    if-ltz v1, :cond_2

    shl-int/lit8 v0, v2, 0x1

    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-eqz v2, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    sub-int/2addr v1, v7

    move v2, v0

    goto :goto_1

    :cond_2
    aget-object v0, v6, v2

    invoke-virtual {v5, v0}, Lorg/bouncycastle/math/ec/ECPoint;->twicePlus(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move-object v5, v1

    goto :goto_0

    :cond_3
    return-object v5
.end method
