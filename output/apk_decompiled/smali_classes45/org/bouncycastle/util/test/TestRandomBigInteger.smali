.class public Lorg/bouncycastle/util/test/TestRandomBigInteger;
.super Lorg/bouncycastle/util/test/FixedSecureRandom;


# direct methods
.method public constructor <init>(I[B)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bouncycastle/util/test/FixedSecureRandom$Source;

    const/4 v1, 0x0

    new-instance v2, Lorg/bouncycastle/util/test/FixedSecureRandom$BigInteger;

    invoke-direct {v2, p1, p2}, Lorg/bouncycastle/util/test/FixedSecureRandom$BigInteger;-><init>(I[B)V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/bouncycastle/util/test/FixedSecureRandom;-><init>([Lorg/bouncycastle/util/test/FixedSecureRandom$Source;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/util/test/TestRandomBigInteger;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bouncycastle/util/test/FixedSecureRandom$Source;

    const/4 v1, 0x0

    new-instance v2, Lorg/bouncycastle/util/test/FixedSecureRandom$BigInteger;

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, p1, p2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-static {v3}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/util/test/FixedSecureRandom$BigInteger;-><init>([B)V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/bouncycastle/util/test/FixedSecureRandom;-><init>([Lorg/bouncycastle/util/test/FixedSecureRandom$Source;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bouncycastle/util/test/FixedSecureRandom$Source;

    const/4 v1, 0x0

    new-instance v2, Lorg/bouncycastle/util/test/FixedSecureRandom$BigInteger;

    invoke-direct {v2, p1}, Lorg/bouncycastle/util/test/FixedSecureRandom$BigInteger;-><init>([B)V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/bouncycastle/util/test/FixedSecureRandom;-><init>([Lorg/bouncycastle/util/test/FixedSecureRandom$Source;)V

    return-void
.end method
