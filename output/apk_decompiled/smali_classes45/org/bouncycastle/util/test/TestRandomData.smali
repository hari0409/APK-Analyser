.class public Lorg/bouncycastle/util/test/TestRandomData;
.super Lorg/bouncycastle/util/test/FixedSecureRandom;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bouncycastle/util/test/FixedSecureRandom$Source;

    const/4 v1, 0x0

    new-instance v2, Lorg/bouncycastle/util/test/FixedSecureRandom$Data;

    invoke-static {p1}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/util/test/FixedSecureRandom$Data;-><init>([B)V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/bouncycastle/util/test/FixedSecureRandom;-><init>([Lorg/bouncycastle/util/test/FixedSecureRandom$Source;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bouncycastle/util/test/FixedSecureRandom$Source;

    const/4 v1, 0x0

    new-instance v2, Lorg/bouncycastle/util/test/FixedSecureRandom$Data;

    invoke-direct {v2, p1}, Lorg/bouncycastle/util/test/FixedSecureRandom$Data;-><init>([B)V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/bouncycastle/util/test/FixedSecureRandom;-><init>([Lorg/bouncycastle/util/test/FixedSecureRandom$Source;)V

    return-void
.end method
