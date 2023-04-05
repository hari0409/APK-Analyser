.class public Lorg/bouncycastle/cert/crmf/bc/BcFixedLengthMGF1Padder;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/cert/crmf/EncryptedValuePadder;


# instance fields
.field private dig:Lorg/bouncycastle/crypto/Digest;

.field private length:I

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cert/crmf/bc/BcFixedLengthMGF1Padder;-><init>(ILjava/security/SecureRandom;)V

    return-void
.end method

.method public constructor <init>(ILjava/security/SecureRandom;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/crmf/bc/BcFixedLengthMGF1Padder;->dig:Lorg/bouncycastle/crypto/Digest;

    iput p1, p0, Lorg/bouncycastle/cert/crmf/bc/BcFixedLengthMGF1Padder;->length:I

    iput-object p2, p0, Lorg/bouncycastle/cert/crmf/bc/BcFixedLengthMGF1Padder;->random:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public getPaddedData([B)[B
    .locals 7

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/cert/crmf/bc/BcFixedLengthMGF1Padder;->length:I

    new-array v2, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/bc/BcFixedLengthMGF1Padder;->dig:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v3, v0, [B

    iget v0, p0, Lorg/bouncycastle/cert/crmf/bc/BcFixedLengthMGF1Padder;->length:I

    iget-object v4, p0, Lorg/bouncycastle/cert/crmf/bc/BcFixedLengthMGF1Padder;->dig:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    sub-int/2addr v0, v4

    new-array v4, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/bc/BcFixedLengthMGF1Padder;->random:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/crmf/bc/BcFixedLengthMGF1Padder;->random:Ljava/security/SecureRandom;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/bc/BcFixedLengthMGF1Padder;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

    iget-object v5, p0, Lorg/bouncycastle/cert/crmf/bc/BcFixedLengthMGF1Padder;->dig:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v0, v5}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    new-instance v5, Lorg/bouncycastle/crypto/params/MGFParameters;

    invoke-direct {v5, v3}, Lorg/bouncycastle/crypto/params/MGFParameters;-><init>([B)V

    invoke-virtual {v0, v5}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    array-length v5, v4

    invoke-virtual {v0, v4, v1, v5}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->generateBytes([BII)I

    array-length v0, v3

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v3

    array-length v5, p1

    invoke-static {p1, v1, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v3

    array-length v5, p1

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x1

    :goto_0
    array-length v5, v2

    if-eq v0, v5, :cond_1

    iget-object v5, p0, Lorg/bouncycastle/cert/crmf/bc/BcFixedLengthMGF1Padder;->random:Ljava/security/SecureRandom;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    array-length v1, v4

    if-eq v0, v1, :cond_2

    array-length v1, v3

    add-int/2addr v1, v0

    aget-byte v5, v2, v1

    aget-byte v6, v4, v0

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method public getUnpaddedData([B)[B
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/bc/BcFixedLengthMGF1Padder;->dig:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v2, v0, [B

    iget v0, p0, Lorg/bouncycastle/cert/crmf/bc/BcFixedLengthMGF1Padder;->length:I

    iget-object v3, p0, Lorg/bouncycastle/cert/crmf/bc/BcFixedLengthMGF1Padder;->dig:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    sub-int/2addr v0, v3

    new-array v3, v0, [B

    array-length v0, v2

    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

    iget-object v4, p0, Lorg/bouncycastle/cert/crmf/bc/BcFixedLengthMGF1Padder;->dig:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v0, v4}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    new-instance v4, Lorg/bouncycastle/crypto/params/MGFParameters;

    invoke-direct {v4, v2}, Lorg/bouncycastle/crypto/params/MGFParameters;-><init>([B)V

    invoke-virtual {v0, v4}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    array-length v4, v3

    invoke-virtual {v0, v3, v1, v4}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->generateBytes([BII)I

    move v0, v1

    :goto_0
    array-length v4, v3

    if-eq v0, v4, :cond_0

    array-length v4, v2

    add-int/2addr v4, v0

    aget-byte v5, p1, v4

    aget-byte v6, v3, v0

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_1
    array-length v3, v2

    if-eq v0, v3, :cond_3

    aget-byte v3, p1, v0

    if-nez v3, :cond_1

    :goto_2
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "bad padding in encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    array-length v3, v2

    sub-int/2addr v0, v3

    new-array v0, v0, [B

    array-length v2, v2

    array-length v3, v0

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_3
    move v0, v1

    goto :goto_2
.end method
