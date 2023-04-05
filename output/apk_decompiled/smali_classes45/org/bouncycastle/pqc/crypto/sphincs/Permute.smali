.class Lorg/bouncycastle/pqc/crypto/sphincs/Permute;
.super Ljava/lang/Object;


# static fields
.field private static final CHACHA_ROUNDS:I = 0xc


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static permute(I[I)V
    .locals 18

    move-object/from16 v0, p1

    array-length v1, v0

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    rem-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Number of rounds must be even"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v1, 0x0

    aget v16, p1, v1

    const/4 v1, 0x1

    aget v15, p1, v1

    const/4 v1, 0x2

    aget v14, p1, v1

    const/4 v1, 0x3

    aget v13, p1, v1

    const/4 v1, 0x4

    aget v12, p1, v1

    const/4 v1, 0x5

    aget v11, p1, v1

    const/4 v1, 0x6

    aget v10, p1, v1

    const/4 v1, 0x7

    aget v9, p1, v1

    const/16 v1, 0x8

    aget v8, p1, v1

    const/16 v1, 0x9

    aget v7, p1, v1

    const/16 v1, 0xa

    aget v6, p1, v1

    const/16 v1, 0xb

    aget v5, p1, v1

    const/16 v1, 0xc

    aget v4, p1, v1

    const/16 v1, 0xd

    aget v3, p1, v1

    const/16 v1, 0xe

    aget v2, p1, v1

    const/16 v1, 0xf

    aget v1, p1, v1

    :goto_0
    if-lez p0, :cond_2

    add-int v16, v16, v12

    xor-int v4, v4, v16

    const/16 v17, 0x10

    move/from16 v0, v17

    invoke-static {v4, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v4

    add-int/2addr v8, v4

    xor-int/2addr v12, v8

    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-static {v12, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v12

    add-int v16, v16, v12

    xor-int v4, v4, v16

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-static {v4, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v4

    add-int/2addr v8, v4

    xor-int/2addr v12, v8

    const/16 v17, 0x7

    move/from16 v0, v17

    invoke-static {v12, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v12

    add-int/2addr v15, v11

    xor-int/2addr v3, v15

    const/16 v17, 0x10

    move/from16 v0, v17

    invoke-static {v3, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v3

    add-int/2addr v7, v3

    xor-int/2addr v11, v7

    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-static {v11, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v11

    add-int/2addr v15, v11

    xor-int/2addr v3, v15

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-static {v3, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v3

    add-int/2addr v7, v3

    xor-int/2addr v11, v7

    const/16 v17, 0x7

    move/from16 v0, v17

    invoke-static {v11, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v11

    add-int/2addr v14, v10

    xor-int/2addr v2, v14

    const/16 v17, 0x10

    move/from16 v0, v17

    invoke-static {v2, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v2

    add-int/2addr v6, v2

    xor-int/2addr v10, v6

    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-static {v10, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v10

    add-int/2addr v14, v10

    xor-int/2addr v2, v14

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-static {v2, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v2

    add-int/2addr v6, v2

    xor-int/2addr v10, v6

    const/16 v17, 0x7

    move/from16 v0, v17

    invoke-static {v10, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v10

    add-int/2addr v13, v9

    xor-int/2addr v1, v13

    const/16 v17, 0x10

    move/from16 v0, v17

    invoke-static {v1, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v1

    add-int/2addr v5, v1

    xor-int/2addr v9, v5

    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-static {v9, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v9

    add-int/2addr v13, v9

    xor-int/2addr v1, v13

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-static {v1, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v1

    add-int/2addr v5, v1

    xor-int/2addr v9, v5

    const/16 v17, 0x7

    move/from16 v0, v17

    invoke-static {v9, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v9

    add-int v16, v16, v11

    xor-int v1, v1, v16

    const/16 v17, 0x10

    move/from16 v0, v17

    invoke-static {v1, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v1

    add-int/2addr v6, v1

    xor-int/2addr v11, v6

    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-static {v11, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v11

    add-int v16, v16, v11

    xor-int v1, v1, v16

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-static {v1, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v1

    add-int/2addr v6, v1

    xor-int/2addr v11, v6

    const/16 v17, 0x7

    move/from16 v0, v17

    invoke-static {v11, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v11

    add-int/2addr v15, v10

    xor-int/2addr v4, v15

    const/16 v17, 0x10

    move/from16 v0, v17

    invoke-static {v4, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v4

    add-int/2addr v5, v4

    xor-int/2addr v10, v5

    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-static {v10, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v10

    add-int/2addr v15, v10

    xor-int/2addr v4, v15

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-static {v4, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v4

    add-int/2addr v5, v4

    xor-int/2addr v10, v5

    const/16 v17, 0x7

    move/from16 v0, v17

    invoke-static {v10, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v10

    add-int/2addr v14, v9

    xor-int/2addr v3, v14

    const/16 v17, 0x10

    move/from16 v0, v17

    invoke-static {v3, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v3

    add-int/2addr v8, v3

    xor-int/2addr v9, v8

    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-static {v9, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v9

    add-int/2addr v14, v9

    xor-int/2addr v3, v14

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-static {v3, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v3

    add-int/2addr v8, v3

    xor-int/2addr v9, v8

    const/16 v17, 0x7

    move/from16 v0, v17

    invoke-static {v9, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v9

    add-int/2addr v13, v12

    xor-int/2addr v2, v13

    const/16 v17, 0x10

    move/from16 v0, v17

    invoke-static {v2, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v2

    add-int/2addr v7, v2

    xor-int/2addr v12, v7

    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-static {v12, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v12

    add-int/2addr v13, v12

    xor-int/2addr v2, v13

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-static {v2, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v2

    add-int/2addr v7, v2

    xor-int/2addr v12, v7

    const/16 v17, 0x7

    move/from16 v0, v17

    invoke-static {v12, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->rotl(II)I

    move-result v12

    add-int/lit8 p0, p0, -0x2

    goto/16 :goto_0

    :cond_2
    const/16 v17, 0x0

    aput v16, p1, v17

    const/16 v16, 0x1

    aput v15, p1, v16

    const/4 v15, 0x2

    aput v14, p1, v15

    const/4 v14, 0x3

    aput v13, p1, v14

    const/4 v13, 0x4

    aput v12, p1, v13

    const/4 v12, 0x5

    aput v11, p1, v12

    const/4 v11, 0x6

    aput v10, p1, v11

    const/4 v10, 0x7

    aput v9, p1, v10

    const/16 v9, 0x8

    aput v8, p1, v9

    const/16 v8, 0x9

    aput v7, p1, v8

    const/16 v7, 0xa

    aput v6, p1, v7

    const/16 v6, 0xb

    aput v5, p1, v6

    const/16 v5, 0xc

    aput v4, p1, v5

    const/16 v4, 0xd

    aput v3, p1, v4

    const/16 v3, 0xe

    aput v2, p1, v3

    const/16 v2, 0xf

    aput v1, p1, v2

    return-void
.end method

.method protected static rotl(II)I
    .locals 2

    shl-int v0, p0, p1

    neg-int v1, p1

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method chacha_permute([B[B)V
    .locals 5

    const/4 v0, 0x0

    const/16 v4, 0x10

    new-array v2, v4, [I

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    mul-int/lit8 v3, v1, 0x4

    invoke-static {p2, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0xc

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/sphincs/Permute;->permute(I[I)V

    :goto_1
    if-ge v0, v4, :cond_1

    aget v1, v2, v0

    mul-int/lit8 v3, v0, 0x4

    invoke-static {v1, p1, v3}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
