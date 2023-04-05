.class public Lorg/bouncycastle/jcajce/provider/asymmetric/util/IESUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static guessParameterSpec(Lorg/bouncycastle/crypto/BufferedBlockCipher;[B)Lorg/bouncycastle/jce/spec/IESParameterSpec;
    .locals 8

    const/16 v7, 0x100

    const/16 v6, 0x50

    const/16 v3, 0x40

    const/16 v5, 0x80

    const/4 v1, 0x0

    if-nez p0, :cond_0

    new-instance v0, Lorg/bouncycastle/jce/spec/IESParameterSpec;

    invoke-direct {v0, v1, v1, v5}, Lorg/bouncycastle/jce/spec/IESParameterSpec;-><init>([B[BI)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "DES"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "RC2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "RC5-32"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "RC5-64"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance v0, Lorg/bouncycastle/jce/spec/IESParameterSpec;

    move-object v2, v1

    move v4, v3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/jce/spec/IESParameterSpec;-><init>([B[BII[B)V

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SKIPJACK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Lorg/bouncycastle/jce/spec/IESParameterSpec;

    move-object v2, v1

    move v3, v6

    move v4, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/jce/spec/IESParameterSpec;-><init>([B[BII[B)V

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GOST28147"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lorg/bouncycastle/jce/spec/IESParameterSpec;

    move-object v2, v1

    move v3, v7

    move v4, v7

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/jce/spec/IESParameterSpec;-><init>([B[BII[B)V

    goto :goto_0

    :cond_4
    new-instance v0, Lorg/bouncycastle/jce/spec/IESParameterSpec;

    move-object v2, v1

    move v3, v5

    move v4, v5

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/jce/spec/IESParameterSpec;-><init>([B[BII[B)V

    goto :goto_0
.end method
