.class public Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;
.super Ljava/lang/Object;


# instance fields
.field private checksumsize:I

.field private gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

.field private keysize:I

.field private mdsize:I

.field private messDigestOTS:Lorg/bouncycastle/crypto/Digest;

.field private messagesize:I

.field private privateKeyOTS:[[B

.field private w:I


# direct methods
.method public constructor <init>([BLorg/bouncycastle/crypto/Digest;I)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v0, v2}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    shl-int/lit8 v0, v0, 0x3

    int-to-double v2, v0

    int-to-double v4, p3

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    shl-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->getLog(I)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->checksumsize:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->checksumsize:I

    int-to-double v2, v2

    int-to-double v4, p3

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    new-array v2, v0, [B

    array-length v0, v2

    invoke-static {p1, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getLog(I)I
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x2

    :goto_0
    if-ge v0, p1, :cond_0

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getPrivateKey()[[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    return-object v0
.end method

.method public getPublicKey()[B
    .locals 8

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int/2addr v0, v2

    new-array v4, v0, [B

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    new-array v0, v0, [B

    const/4 v0, 0x1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    shl-int v5, v0, v2

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v3, v3, v0

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v6, v6, v0

    array-length v6, v6

    invoke-interface {v2, v3, v1, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v3, v2, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2, v3, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const/4 v2, 0x2

    :goto_1
    if-ge v2, v5, :cond_0

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    array-length v7, v3

    invoke-interface {v6, v3, v1, v7}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v3, v3, [B

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v6, v3, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int/2addr v2, v0

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v3, v1, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    array-length v2, v4

    invoke-interface {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2, v0, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object v0
.end method

.method public getSignature([B)[B
    .locals 19

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int/2addr v2, v3

    new-array v14, v2, [B

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    new-array v2, v2, [B

    const/4 v5, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    array-length v6, v0

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v15, v2, [B

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v3, 0x0

    invoke-interface {v2, v15, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const/16 v2, 0x8

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_4

    const/16 v2, 0x8

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    div-int v9, v2, v3

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    shl-int/2addr v2, v3

    add-int/lit8 v10, v2, -0x1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    new-array v3, v2, [B

    const/4 v2, 0x0

    :goto_0
    array-length v6, v15

    if-ge v2, v6, :cond_2

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v9, :cond_1

    aget-byte v6, v15, v2

    and-int/2addr v6, v10

    add-int v8, v4, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v4, v4, v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v4, v11, v3, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v4, v6

    :goto_2
    if-lez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v11, 0x0

    array-length v12, v3

    invoke-interface {v6, v3, v11, v12}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v3, v3, [B

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v11, 0x0

    invoke-interface {v6, v3, v11}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int/2addr v6, v5

    move-object/from16 v0, p0

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v3, v4, v14, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v4, v15, v2

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v15, v2

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v4, v8

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    shl-int/2addr v2, v6

    sub-int v4, v2, v4

    const/4 v2, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->checksumsize:I

    if-ge v2, v6, :cond_14

    and-int v6, v4, v10

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v7, v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v7, v8, v3, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4
    if-lez v6, :cond_3

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v8, 0x0

    array-length v9, v3

    invoke-interface {v7, v3, v8, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v3, v3, [B

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v8, 0x0

    invoke-interface {v7, v3, v8}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_3
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int/2addr v7, v5

    move-object/from16 v0, p0

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v3, v6, v14, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    add-int/2addr v2, v6

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    div-int v16, v2, v3

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    shl-int/2addr v2, v3

    add-int/lit8 v17, v2, -0x1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    new-array v8, v2, [B

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v11, v2

    move v9, v4

    move v10, v5

    :goto_5
    move/from16 v0, v16

    if-ge v11, v0, :cond_8

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    if-ge v2, v6, :cond_5

    aget-byte v6, v15, v3

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v7, v2, 0x3

    shl-int/2addr v6, v7

    int-to-long v6, v6

    xor-long/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_5
    const/4 v6, 0x0

    move-wide v12, v4

    move-object v2, v8

    move v7, v9

    :goto_7
    const/16 v4, 0x8

    if-ge v6, v4, :cond_7

    move/from16 v0, v17

    int-to-long v4, v0

    and-long/2addr v4, v12

    long-to-int v4, v4

    add-int v5, v7, v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v7, v7, v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v7, v8, v2, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_8
    if-lez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v8, 0x0

    array-length v9, v2

    invoke-interface {v7, v2, v8, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v8, 0x0

    invoke-interface {v7, v2, v8}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v4, v4, -0x1

    goto :goto_8

    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int/2addr v7, v10

    move-object/from16 v0, p0

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v2, v4, v14, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-long v8, v12, v4

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move-wide v12, v8

    move v7, v5

    goto :goto_7

    :cond_7
    add-int/lit8 v4, v11, 0x1

    move v11, v4

    move-object v8, v2

    move v9, v7

    goto :goto_5

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    rem-int v4, v2, v4

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v4, :cond_9

    aget-byte v5, v15, v3

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v11, v2, 0x3

    shl-int/2addr v5, v11

    int-to-long v12, v5

    xor-long/2addr v6, v12

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_9
    shl-int/lit8 v11, v4, 0x3

    const/4 v2, 0x0

    move v4, v2

    move-object v3, v8

    move v5, v10

    :goto_a
    if-ge v4, v11, :cond_b

    move/from16 v0, v17

    int-to-long v12, v0

    and-long/2addr v12, v6

    long-to-int v2, v12

    add-int v8, v9, v2

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v9, v9, v5

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v9, v10, v3, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_b
    if-lez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v10, 0x0

    array-length v12, v3

    invoke-interface {v9, v3, v10, v12}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v3, v3, [B

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v10, 0x0

    invoke-interface {v9, v3, v10}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int/2addr v9, v5

    move-object/from16 v0, p0

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v3, v2, v14, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-long/2addr v6, v2

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    add-int/2addr v2, v4

    move v4, v2

    move v9, v8

    goto :goto_a

    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    shl-int/2addr v2, v4

    sub-int v4, v2, v9

    const/4 v2, 0x0

    :goto_c
    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->checksumsize:I

    if-ge v2, v6, :cond_14

    and-int v6, v4, v17

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v7, v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v7, v8, v3, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_d
    if-lez v6, :cond_c

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v8, 0x0

    array-length v9, v3

    invoke-interface {v7, v3, v8, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v3, v3, [B

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v8, 0x0

    invoke-interface {v7, v3, v8}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v6, v6, -0x1

    goto :goto_d

    :cond_c
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int/2addr v7, v5

    move-object/from16 v0, p0

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v3, v6, v14, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    add-int/2addr v2, v6

    goto :goto_c

    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    const/16 v3, 0x39

    if-ge v2, v3, :cond_14

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    shl-int/lit8 v2, v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    sub-int v10, v2, v3

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    shl-int/2addr v2, v3

    add-int/lit8 v11, v2, -0x1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    new-array v6, v2, [B

    const/4 v2, 0x0

    move v3, v2

    move v7, v4

    move v8, v5

    :goto_e
    if-gt v3, v10, :cond_10

    ushr-int/lit8 v2, v3, 0x3

    rem-int/lit8 v12, v3, 0x8

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    add-int v9, v3, v4

    add-int/lit8 v3, v9, 0x7

    ushr-int/lit8 v13, v3, 0x3

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    :goto_f
    if-ge v2, v13, :cond_e

    aget-byte v16, v15, v2

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v17, v3, 0x3

    shl-int v16, v16, v17

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    xor-long v4, v4, v16

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_e
    ushr-long v2, v4, v12

    int-to-long v4, v11

    and-long/2addr v2, v4

    int-to-long v4, v7

    add-long/2addr v4, v2

    long-to-int v7, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v4, v4, v8

    const/4 v5, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v4, v5, v6, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_10
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v5, 0x0

    array-length v12, v6

    invoke-interface {v4, v6, v5, v12}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v6, v4, [B

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v5, 0x0

    invoke-interface {v4, v6, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int/2addr v3, v8

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v6, v2, v14, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v8, 0x1

    move v3, v9

    goto :goto_e

    :cond_10
    ushr-int/lit8 v2, v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    if-ge v2, v4, :cond_15

    rem-int/lit8 v9, v3, 0x8

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    :goto_11
    move-object/from16 v0, p0

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    if-ge v2, v10, :cond_11

    aget-byte v10, v15, v2

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v12, v3, 0x3

    shl-int/2addr v10, v12

    int-to-long v12, v10

    xor-long/2addr v4, v12

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_11
    ushr-long v2, v4, v9

    int-to-long v4, v11

    and-long/2addr v4, v2

    int-to-long v2, v7

    add-long/2addr v2, v4

    long-to-int v3, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v2, v2, v8

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v2, v7, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v6

    :goto_12
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_12

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v7, 0x0

    array-length v9, v2

    invoke-interface {v6, v2, v7, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v7, 0x0

    invoke-interface {v6, v2, v7}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    goto :goto_12

    :cond_12
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int/2addr v5, v8

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v2, v4, v14, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v8, 0x1

    :goto_13
    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    shl-int/2addr v5, v6

    sub-int v6, v5, v3

    const/4 v3, 0x0

    move-object v5, v2

    move v7, v4

    :goto_14
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->checksumsize:I

    if-ge v3, v2, :cond_14

    and-int v2, v6, v11

    int-to-long v8, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v2, v2, v7

    const/4 v4, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v2, v4, v5, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v5

    :goto_15
    const-wide/16 v12, 0x0

    cmp-long v2, v8, v12

    if-lez v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v5, 0x0

    array-length v10, v4

    invoke-interface {v2, v4, v5, v10}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v4, v2, [B

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const-wide/16 v12, 0x1

    sub-long/2addr v8, v12

    goto :goto_15

    :cond_13
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int/2addr v5, v7

    move-object/from16 v0, p0

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v4, v2, v14, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-int/2addr v6, v2

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    add-int/2addr v2, v3

    move v3, v2

    move-object v5, v4

    goto :goto_14

    :cond_14
    return-object v14

    :cond_15
    move-object v2, v6

    move v3, v7

    move v4, v8

    goto :goto_13
.end method
