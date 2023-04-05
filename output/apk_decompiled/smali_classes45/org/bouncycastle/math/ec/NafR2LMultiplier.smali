.class public Lorg/bouncycastle/math/ec/NafR2LMultiplier;
.super Lorg/bouncycastle/math/ec/AbstractECMultiplier;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/AbstractECMultiplier;-><init>()V

    return-void
.end method


# virtual methods
.method protected multiplyPositive(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 7

    const/4 v1, 0x0

    invoke-static {p2}, Lorg/bouncycastle/math/ec/WNafUtil;->generateCompactNaf(Ljava/math/BigInteger;)[I

    move-result-object v4

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    move v0, v1

    move v2, v1

    :goto_0
    array-length v1, v4

    if-ge v0, v1, :cond_1

    aget v1, v4, v0

    shr-int/lit8 v5, v1, 0x10

    const v6, 0xffff

    and-int/2addr v1, v6

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    if-gez v5, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->negate()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    const/4 v1, 0x1

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    move-object v1, p1

    goto :goto_1

    :cond_1
    return-object v3
.end method
