.class public Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static final HEADER_LENGTH:I = 0xa

.field public static final NOT_STRICT_LENGTH_ENABLED_PROPERTY:Ljava/lang/String; = "org.bouncycastle.pkcs1.not_strict"

.field public static final STRICT_LENGTH_ENABLED_PROPERTY:Ljava/lang/String; = "org.bouncycastle.pkcs1.strict"


# instance fields
.field private blockBuffer:[B

.field private engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

.field private fallback:[B

.field private forEncryption:Z

.field private forPrivateKey:Z

.field private pLen:I

.field private random:Ljava/security/SecureRandom;

.field private useStrictLength:Z


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    iput-object p1, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-direct {p0}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    iput-object p1, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-direct {p0}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    iput p2, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    iput-object p1, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-direct {p0}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    iput-object p2, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    array-length v0, p2

    iput v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    return-void
.end method

.method private static checkPkcs1Encoding([BI)I
    .locals 5

    const/4 v1, 0x0

    aget-byte v0, p0, v1

    xor-int/lit8 v0, v0, 0x2

    or-int/2addr v1, v0

    array-length v0, p0

    add-int/lit8 v2, p1, 0x1

    sub-int v2, v0, v2

    const/4 v0, 0x1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-byte v3, p0, v0

    shr-int/lit8 v4, v3, 0x1

    or-int/2addr v3, v4

    shr-int/lit8 v4, v3, 0x2

    or-int/2addr v3, v4

    shr-int/lit8 v4, v3, 0x4

    or-int/2addr v3, v4

    and-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, -0x1

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v0, p0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, v2

    aget-byte v0, p0, v0

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x1

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private decodeBlock([BII)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->decodeBlockOrRandom([BII)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v3

    iget-boolean v4, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    array-length v0, v3

    iget-object v5, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v5

    if-eq v0, v5, :cond_1

    move v0, v1

    :goto_1
    and-int/2addr v4, v0

    array-length v0, v3

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->getOutputBlockSize()I

    move-result v5

    if-ge v0, v5, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    :goto_2
    aget-byte v5, v0, v2

    iget-boolean v3, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    if-eq v5, v3, :cond_3

    move v3, v1

    :goto_3
    invoke-direct {p0, v5, v0}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->findStart(B[B)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0xa

    if-ge v5, v6, :cond_6

    :goto_4
    or-int/2addr v1, v3

    if-eqz v1, :cond_7

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "block incorrect"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move-object v0, v3

    goto :goto_2

    :cond_3
    move v3, v2

    goto :goto_3

    :cond_4
    if-eq v5, v1, :cond_5

    move v3, v1

    goto :goto_3

    :cond_5
    move v3, v2

    goto :goto_3

    :cond_6
    move v1, v2

    goto :goto_4

    :cond_7
    if-eqz v4, :cond_8

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "block incorrect size"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    array-length v1, v0

    sub-int/2addr v1, v5

    new-array v1, v1, [B

    array-length v3, v1

    invoke-static {v0, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    goto :goto_0
.end method

.method private decodeBlockOrRandom([BII)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "sorry, this method is only for decryption, not for signing"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    if-nez v0, :cond_2

    iget v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    new-array v0, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    :goto_0
    iget-boolean v4, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    array-length v2, v1

    iget-object v5, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v5

    if-eq v2, v5, :cond_3

    const/4 v2, 0x1

    :goto_1
    and-int/2addr v2, v4

    if-eqz v2, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    :cond_1
    iget v2, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->checkPkcs1Encoding([BI)I

    move-result v4

    iget v2, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    new-array v5, v2, [B

    move v2, v3

    :goto_2
    iget v6, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    if-ge v2, v6, :cond_4

    array-length v6, v1

    iget v7, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    sub-int/2addr v6, v7

    add-int/2addr v6, v2

    aget-byte v6, v1, v6

    xor-int/lit8 v7, v4, -0x1

    and-int/2addr v6, v7

    aget-byte v7, v0, v2

    and-int/2addr v7, v4

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    invoke-static {v1, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    return-object v5
.end method

.method private encodeBlock([BII)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->getInputBlockSize()I

    move-result v1

    if-le p3, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input data too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v1

    new-array v1, v1, [B

    iget-boolean v2, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    if-eqz v2, :cond_1

    aput-byte v0, v1, v3

    :goto_0
    array-length v2, v1

    sub-int/2addr v2, p3

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_3

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v2, 0x2

    aput-byte v2, v1, v3

    :goto_1
    array-length v2, v1

    sub-int/2addr v2, p3

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_3

    :goto_2
    aget-byte v2, v1, v0

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    array-length v0, v1

    sub-int/2addr v0, p3

    add-int/lit8 v0, v0, -0x1

    aput-byte v3, v1, v0

    array-length v0, v1

    sub-int/2addr v0, p3

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v2, v1

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    return-object v0
.end method

.method private findStart(B[B)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v5, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x1

    move v0, v1

    move v2, v3

    move v4, v5

    :goto_0
    array-length v6, p2

    if-eq v0, v6, :cond_6

    aget-byte v8, p2, v0

    if-nez v8, :cond_1

    move v7, v1

    :goto_1
    if-gez v4, :cond_2

    move v6, v1

    :goto_2
    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    move v4, v0

    :cond_0
    if-ne p1, v1, :cond_3

    move v7, v1

    :goto_3
    if-gez v4, :cond_4

    move v6, v1

    :goto_4
    and-int/2addr v7, v6

    if-eq v8, v5, :cond_5

    move v6, v1

    :goto_5
    and-int/2addr v6, v7

    or-int/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v7, v3

    goto :goto_1

    :cond_2
    move v6, v3

    goto :goto_2

    :cond_3
    move v7, v3

    goto :goto_3

    :cond_4
    move v6, v3

    goto :goto_4

    :cond_5
    move v6, v3

    goto :goto_5

    :cond_6
    if-eqz v2, :cond_7

    :goto_6
    return v5

    :cond_7
    move v5, v4

    goto :goto_6
.end method

.method private useStrict()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding$1;-><init>(Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding$2;

    invoke-direct {v1, p0}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding$2;-><init>(Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v0, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v3, v2

    :cond_3
    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method public getInputBlockSize()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0xa

    :cond_0
    return v0
.end method

.method public getOutputBlockSize()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0xa

    goto :goto_0
.end method

.method public getUnderlyingCipher()Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1, p1, p2}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    iget v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encoder requires random"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public processBlock([BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->encodeBlock([BII)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/encodings/PKCS1Encoding;->decodeBlock([BII)[B

    move-result-object v0

    goto :goto_0
.end method
