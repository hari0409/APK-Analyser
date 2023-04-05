.class Lorg/bouncycastle/pqc/crypto/sphincs/Horst;
.super Ljava/lang/Object;


# static fields
.field static final HORST_K:I = 0x20

.field static final HORST_LOGT:I = 0x10

.field static final HORST_SIGBYTES:I = 0x3400

.field static final HORST_SKBYTES:I = 0x20

.field static final HORST_T:I = 0x10000

.field static final N_MASKS:I = 0x20


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static expand_seed([B[B)V
    .locals 6

    const/4 v1, 0x0

    const-wide/32 v2, 0x200000

    move-object v0, p0

    move-object v4, p1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sphincs/Seed;->prg([BIJ[BI)V

    return-void
.end method

.method static horst_sign(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[B[B[B[B)I
    .locals 18

    const/high16 v2, 0x200000

    new-array v11, v2, [B

    const v2, 0x3fffe0

    new-array v3, v2, [B

    move-object/from16 v0, p4

    invoke-static {v11, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Horst;->expand_seed([B[B)V

    const/4 v2, 0x0

    :goto_0
    const/high16 v4, 0x10000

    if-ge v2, v4, :cond_0

    const v4, 0xffff

    add-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x20

    mul-int/lit8 v5, v2, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v11, v5}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_n_n([BI[BI)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move v10, v2

    :goto_1
    const/16 v2, 0x10

    if-ge v10, v2, :cond_2

    const/4 v2, 0x1

    rsub-int/lit8 v4, v10, 0x10

    shl-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    int-to-long v12, v2

    const/4 v2, 0x1

    rsub-int/lit8 v4, v10, 0x10

    add-int/lit8 v4, v4, -0x1

    shl-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    int-to-long v14, v2

    const/4 v2, 0x0

    move v9, v2

    :goto_2
    const/4 v2, 0x1

    rsub-int/lit8 v4, v10, 0x10

    add-int/lit8 v4, v4, -0x1

    shl-int/2addr v2, v4

    if-ge v9, v2, :cond_1

    int-to-long v4, v9

    add-long/2addr v4, v14

    const-wide/16 v6, 0x20

    mul-long/2addr v4, v6

    long-to-int v4, v4

    mul-int/lit8 v2, v9, 0x2

    int-to-long v6, v2

    add-long/2addr v6, v12

    const-wide/16 v16, 0x20

    mul-long v6, v6, v16

    long-to-int v6, v6

    mul-int/lit8 v2, v10, 0x2

    mul-int/lit8 v8, v2, 0x20

    move-object/from16 v2, p0

    move-object v5, v3

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_1

    :cond_2
    const/16 v2, 0x7e0

    move/from16 v4, p2

    :goto_3
    const/16 v5, 0xfe0

    if-ge v2, v5, :cond_3

    add-int/lit8 p2, v4, 0x1

    aget-byte v5, v3, v2

    aput-byte v5, p1, v4

    add-int/lit8 v2, v2, 0x1

    move/from16 v4, p2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    move v8, v2

    :goto_4
    const/16 v2, 0x20

    if-ge v8, v2, :cond_8

    mul-int/lit8 v2, v8, 0x2

    aget-byte v2, p6, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v5, v8, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p6, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int v6, v2, v5

    const/4 v2, 0x0

    move v5, v2

    :goto_5
    const/16 v2, 0x20

    if-ge v5, v2, :cond_4

    add-int/lit8 v2, v4, 0x1

    mul-int/lit8 v7, v6, 0x20

    add-int/2addr v7, v5

    aget-byte v7, v11, v7

    aput-byte v7, p1, v4

    add-int/lit8 v5, v5, 0x1

    move v4, v2

    goto :goto_5

    :cond_4
    const v2, 0xffff

    add-int v5, v6, v2

    const/4 v2, 0x0

    move v7, v2

    :goto_6
    const/16 v2, 0xa

    if-ge v7, v2, :cond_7

    and-int/lit8 v2, v5, 0x1

    if-eqz v2, :cond_5

    add-int/lit8 v2, v5, 0x1

    :goto_7
    const/4 v5, 0x0

    move v6, v5

    :goto_8
    const/16 v5, 0x20

    if-ge v6, v5, :cond_6

    add-int/lit8 v5, v4, 0x1

    mul-int/lit8 v9, v2, 0x20

    add-int/2addr v9, v6

    aget-byte v9, v3, v9

    aput-byte v9, p1, v4

    add-int/lit8 v6, v6, 0x1

    move v4, v5

    goto :goto_8

    :cond_5
    add-int/lit8 v2, v5, -0x1

    goto :goto_7

    :cond_6
    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v5, v2, 0x2

    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_6

    :cond_7
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :goto_9
    const/16 v4, 0x20

    if-ge v2, v4, :cond_9

    aget-byte v4, v3, v2

    aput-byte v4, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_9
    const/16 v2, 0x3400

    return v2
.end method

.method static horst_verify(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[BI[B[B)I
    .locals 11

    const/16 v0, 0x400

    new-array v1, v0, [B

    add-int/lit16 v7, p3, 0x800

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    const/16 v0, 0x20

    if-ge v10, v0, :cond_8

    mul-int/lit8 v0, v10, 0x2

    aget-byte v0, p5, v0

    and-int/lit16 v0, v0, 0xff

    mul-int/lit8 v2, v10, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p5, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int v3, v0, v2

    and-int/lit8 v0, v3, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, p2, v7}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_n_n([BI[BI)I

    const/4 v0, 0x0

    :goto_1
    const/16 v2, 0x20

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x20

    add-int/lit8 v4, v7, 0x20

    add-int/2addr v4, v0

    aget-byte v4, p2, v4

    aput-byte v4, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p0, v1, v0, p2, v7}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_n_n([BI[BI)I

    const/4 v0, 0x0

    :goto_2
    const/16 v2, 0x20

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v7, 0x20

    add-int/2addr v2, v0

    aget-byte v2, p2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v7, 0x40

    const/4 v2, 0x1

    move v7, v0

    move v8, v2

    :goto_3
    const/16 v0, 0xa

    if-ge v8, v0, :cond_4

    ushr-int/lit8 v9, v3, 0x1

    and-int/lit8 v0, v9, 0x1

    if-nez v0, :cond_2

    const/4 v2, 0x0

    const/4 v4, 0x0

    add-int/lit8 v0, v8, -0x1

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v6, v0, 0x20

    move-object v0, p0

    move-object v3, v1

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    const/4 v0, 0x0

    :goto_4
    const/16 v2, 0x20

    if-ge v0, v2, :cond_3

    add-int/lit8 v2, v0, 0x20

    add-int v3, v7, v0

    aget-byte v3, p2, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_2
    const/16 v2, 0x20

    const/4 v4, 0x0

    add-int/lit8 v0, v8, -0x1

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v6, v0, 0x20

    move-object v0, p0

    move-object v3, v1

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    const/4 v0, 0x0

    :goto_5
    const/16 v2, 0x20

    if-ge v0, v2, :cond_3

    add-int v2, v7, v0

    aget-byte v2, p2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v0, v7, 0x20

    add-int/lit8 v2, v8, 0x1

    move v7, v0

    move v8, v2

    move v3, v9

    goto :goto_3

    :cond_4
    ushr-int/lit8 v8, v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x240

    move-object v0, p0

    move-object v3, v1

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    const/4 v0, 0x0

    :goto_6
    const/16 v2, 0x20

    if-ge v0, v2, :cond_7

    mul-int/lit8 v2, v8, 0x20

    add-int/2addr v2, p3

    add-int/2addr v2, v0

    aget-byte v2, p2, v2

    aget-byte v3, v1, v0

    if-eq v2, v3, :cond_6

    const/4 v0, 0x0

    :goto_7
    const/16 v1, 0x20

    if-ge v0, v1, :cond_5

    const/4 v1, 0x0

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_5
    const/4 v0, -0x1

    :goto_8
    return v0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x0

    move v7, v0

    :goto_9
    const/16 v0, 0x20

    if-ge v7, v0, :cond_9

    mul-int/lit8 v2, v7, 0x20

    mul-int/lit8 v0, v7, 0x2

    mul-int/lit8 v0, v0, 0x20

    add-int v4, p3, v0

    const/16 v6, 0x280

    move-object v0, p0

    move-object v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_9

    :cond_9
    const/4 v0, 0x0

    move v7, v0

    :goto_a
    const/16 v0, 0x10

    if-ge v7, v0, :cond_a

    mul-int/lit8 v2, v7, 0x20

    mul-int/lit8 v0, v7, 0x2

    mul-int/lit8 v4, v0, 0x20

    const/16 v6, 0x2c0

    move-object v0, p0

    move-object v3, v1

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_a

    :cond_a
    const/4 v0, 0x0

    move v7, v0

    :goto_b
    const/16 v0, 0x8

    if-ge v7, v0, :cond_b

    mul-int/lit8 v2, v7, 0x20

    mul-int/lit8 v0, v7, 0x2

    mul-int/lit8 v4, v0, 0x20

    const/16 v6, 0x300

    move-object v0, p0

    move-object v3, v1

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_b

    :cond_b
    const/4 v0, 0x0

    move v7, v0

    :goto_c
    const/4 v0, 0x4

    if-ge v7, v0, :cond_c

    mul-int/lit8 v2, v7, 0x20

    mul-int/lit8 v0, v7, 0x2

    mul-int/lit8 v4, v0, 0x20

    const/16 v6, 0x340

    move-object v0, p0

    move-object v3, v1

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_c

    :cond_c
    const/4 v0, 0x0

    move v7, v0

    :goto_d
    const/4 v0, 0x2

    if-ge v7, v0, :cond_d

    mul-int/lit8 v2, v7, 0x20

    mul-int/lit8 v0, v7, 0x2

    mul-int/lit8 v4, v0, 0x20

    const/16 v6, 0x380

    move-object v0, p0

    move-object v3, v1

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_d

    :cond_d
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x3c0

    move-object v2, p0

    move-object v3, p1

    move-object v5, v1

    move-object v7, p4

    invoke-virtual/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    const/4 v0, 0x0

    goto/16 :goto_8
.end method
