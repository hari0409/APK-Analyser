.class public Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;
.super Ljava/lang/Object;


# instance fields
.field private messDigestOTS:Lorg/bouncycastle/crypto/Digest;

.field private w:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method


# virtual methods
.method public Verify([B[B)[B
    .locals 22

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v14

    new-array v2, v14, [B

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    array-length v4, v0

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v15, v2, [B

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v3, 0x0

    invoke-interface {v2, v15, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    shl-int/lit8 v2, v14, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    div-int v16, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v2, v16, v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->getLog(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int v2, v2, v17

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    div-int/2addr v2, v3

    add-int v2, v2, v16

    mul-int/2addr v2, v14

    move-object/from16 v0, p2

    array-length v3, v0

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-array v0, v2, [B

    move-object/from16 v18, v0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v2, 0x8

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_5

    const/16 v2, 0x8

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    div-int v9, v2, v3

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int/2addr v2, v3

    add-int/lit8 v10, v2, -0x1

    new-array v3, v14, [B

    const/4 v2, 0x0

    :goto_1
    array-length v6, v15

    if-ge v2, v6, :cond_3

    const/4 v6, 0x0

    move v7, v6

    :goto_2
    if-ge v7, v9, :cond_2

    aget-byte v6, v15, v2

    and-int/2addr v6, v10

    add-int v8, v5, v6

    mul-int v5, v4, v14

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v5, v3, v11, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v5, v6

    :goto_3
    if-ge v5, v10, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v11, 0x0

    array-length v12, v3

    invoke-interface {v6, v3, v11, v12}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v3, v3, [B

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v11, 0x0

    invoke-interface {v6, v3, v11}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_1
    const/4 v5, 0x0

    mul-int v6, v4, v14

    move-object/from16 v0, v18

    invoke-static {v3, v5, v0, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v5, v15, v2

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v15, v2

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v5, v8

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v2, v16, v2

    sub-int v6, v2, v5

    const/4 v5, 0x0

    move-object v2, v3

    :goto_4
    move/from16 v0, v17

    if-ge v5, v0, :cond_15

    and-int v3, v6, v10

    mul-int v7, v4, v14

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v7, v2, v8, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_5
    if-ge v3, v10, :cond_4

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v8, 0x0

    array-length v9, v2

    invoke-interface {v7, v2, v8, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v8, 0x0

    invoke-interface {v7, v2, v8}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_4
    const/4 v3, 0x0

    mul-int v7, v4, v14

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-int/2addr v6, v3

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/2addr v3, v5

    move v5, v3

    goto :goto_4

    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    div-int v19, v14, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int/2addr v2, v3

    add-int/lit8 v20, v2, -0x1

    new-array v8, v14, [B

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v11, v2

    move v9, v4

    move v10, v5

    :goto_6
    move/from16 v0, v19

    if-ge v11, v0, :cond_9

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    if-ge v2, v6, :cond_6

    aget-byte v6, v15, v3

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v7, v2, 0x3

    shl-int/2addr v6, v7

    int-to-long v6, v6

    xor-long/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_6
    const/4 v6, 0x0

    move-wide v12, v4

    move-object v2, v8

    move v7, v9

    :goto_8
    const/16 v4, 0x8

    if-ge v6, v4, :cond_8

    move/from16 v0, v20

    int-to-long v4, v0

    and-long/2addr v4, v12

    long-to-int v4, v4

    add-int/2addr v10, v4

    mul-int v5, v7, v14

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v5, v2, v8, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_9
    move/from16 v0, v20

    if-ge v4, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v8, 0x0

    array-length v9, v2

    invoke-interface {v5, v2, v8, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v8, 0x0

    invoke-interface {v5, v2, v8}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_7
    const/4 v4, 0x0

    mul-int v5, v7, v14

    move-object/from16 v0, v18

    invoke-static {v2, v4, v0, v5, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-long v8, v12, v4

    add-int/lit8 v5, v7, 0x1

    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move-wide v12, v8

    move v7, v5

    goto :goto_8

    :cond_8
    add-int/lit8 v4, v11, 0x1

    move v11, v4

    move-object v8, v2

    move v9, v7

    goto :goto_6

    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    rem-int v4, v14, v2

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v4, :cond_a

    aget-byte v5, v15, v3

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v11, v2, 0x3

    shl-int/2addr v5, v11

    int-to-long v12, v5

    xor-long/2addr v6, v12

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_a
    shl-int/lit8 v11, v4, 0x3

    const/4 v3, 0x0

    move v4, v3

    move-object v2, v8

    move v5, v9

    :goto_b
    if-ge v4, v11, :cond_c

    move/from16 v0, v20

    int-to-long v8, v0

    and-long/2addr v8, v6

    long-to-int v3, v8

    add-int v8, v10, v3

    mul-int v9, v5, v14

    const/4 v10, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v9, v2, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_c
    move/from16 v0, v20

    if-ge v3, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v10, 0x0

    array-length v12, v2

    invoke-interface {v9, v2, v10, v12}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v10, 0x0

    invoke-interface {v9, v2, v10}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_b
    const/4 v3, 0x0

    mul-int v9, v5, v14

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0, v9, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-long/2addr v6, v3

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/2addr v3, v4

    move v4, v3

    move v10, v8

    goto :goto_b

    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v3, v16, v3

    sub-int v6, v3, v10

    const/4 v3, 0x0

    move v4, v3

    :goto_d
    move/from16 v0, v17

    if-ge v4, v0, :cond_15

    and-int v3, v6, v20

    mul-int v7, v5, v14

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v7, v2, v8, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_e
    move/from16 v0, v20

    if-ge v3, v0, :cond_d

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v8, 0x0

    array-length v9, v2

    invoke-interface {v7, v2, v8, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v8, 0x0

    invoke-interface {v7, v2, v8}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_d
    const/4 v3, 0x0

    mul-int v7, v5, v14

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-int/2addr v6, v3

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/2addr v3, v4

    move v4, v3

    goto :goto_d

    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    const/16 v3, 0x39

    if-ge v2, v3, :cond_15

    shl-int/lit8 v2, v14, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    sub-int v11, v2, v3

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int/2addr v2, v3

    add-int/lit8 v12, v2, -0x1

    new-array v2, v14, [B

    const/4 v6, 0x0

    move v3, v4

    :goto_f
    if-gt v6, v11, :cond_11

    ushr-int/lit8 v4, v6, 0x3

    rem-int/lit8 v7, v6, 0x8

    move-object/from16 v0, p0

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int v10, v6, v8

    add-int/lit8 v6, v10, 0x7

    ushr-int/lit8 v13, v6, 0x3

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    :goto_10
    if-ge v4, v13, :cond_f

    aget-byte v19, v15, v4

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v20, v6, 0x3

    shl-int v19, v19, v20

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    xor-long v8, v8, v20

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_f
    ushr-long v6, v8, v7

    int-to-long v8, v12

    and-long/2addr v6, v8

    int-to-long v4, v5

    add-long/2addr v4, v6

    long-to-int v8, v4

    mul-int v4, v3, v14

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4, v2, v5, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-wide v4, v6

    :goto_11
    int-to-long v6, v12

    cmp-long v6, v4, v6

    if-gez v6, :cond_10

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v7, 0x0

    array-length v9, v2

    invoke-interface {v6, v2, v7, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v7, 0x0

    invoke-interface {v6, v2, v7}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    goto :goto_11

    :cond_10
    const/4 v4, 0x0

    mul-int v5, v3, v14

    move-object/from16 v0, v18

    invoke-static {v2, v4, v0, v5, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    move v6, v10

    move v5, v8

    goto :goto_f

    :cond_11
    ushr-int/lit8 v4, v6, 0x3

    if-ge v4, v14, :cond_16

    rem-int/lit8 v7, v6, 0x8

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    :goto_12
    if-ge v4, v14, :cond_12

    aget-byte v10, v15, v4

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v11, v6, 0x3

    shl-int/2addr v10, v11

    int-to-long v10, v10

    xor-long/2addr v8, v10

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_12
    ushr-long v6, v8, v7

    int-to-long v8, v12

    and-long/2addr v6, v8

    int-to-long v4, v5

    add-long/2addr v4, v6

    long-to-int v4, v4

    mul-int v5, v3, v14

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v5, v2, v8, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_13
    int-to-long v8, v12

    cmp-long v5, v6, v8

    if-gez v5, :cond_13

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v8, 0x0

    array-length v9, v2

    invoke-interface {v5, v2, v8, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v8, 0x0

    invoke-interface {v5, v2, v8}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    goto :goto_13

    :cond_13
    const/4 v5, 0x0

    mul-int v6, v3, v14

    move-object/from16 v0, v18

    invoke-static {v2, v5, v0, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    :goto_14
    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v5, v16, v5

    sub-int v7, v5, v4

    const/4 v5, 0x0

    move-object v4, v2

    move v6, v3

    :goto_15
    move/from16 v0, v17

    if-ge v5, v0, :cond_15

    and-int v2, v7, v12

    int-to-long v2, v2

    mul-int v8, v6, v14

    const/4 v9, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v4, v9, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_16
    int-to-long v8, v12

    cmp-long v8, v2, v8

    if-gez v8, :cond_14

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v9, 0x0

    array-length v10, v4

    invoke-interface {v8, v4, v9, v10}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v4, v4, [B

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v9, 0x0

    invoke-interface {v8, v4, v9}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    goto :goto_16

    :cond_14
    const/4 v2, 0x0

    mul-int v3, v6, v14

    move-object/from16 v0, v18

    invoke-static {v4, v2, v0, v3, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-int/2addr v7, v2

    add-int/lit8 v3, v6, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/2addr v2, v5

    move v5, v2

    move v6, v3

    goto :goto_15

    :cond_15
    new-array v2, v14, [B

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    array-length v4, v0

    move-object/from16 v0, v18

    invoke-interface {v2, v0, v3, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    goto/16 :goto_0

    :cond_16
    move v4, v5

    goto :goto_14
.end method

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

.method public getSignatureLength()I
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    shl-int/lit8 v1, v0, 0x3

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v1, v2

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    div-int/2addr v1, v2

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v2, v1, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->getLog(I)I

    move-result v2

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->w:I

    div-int/2addr v2, v3

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    return v0
.end method
