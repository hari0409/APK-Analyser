.class Lorg/bouncycastle/pqc/crypto/sphincs/Tree;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static gen_leaf_wots(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BLorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;)V
    .locals 12

    const/16 v2, 0x20

    new-array v6, v2, [B

    const/16 v2, 0x860

    new-array v4, v2, [B

    new-instance v2, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;-><init>()V

    const/4 v3, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-static {p0, v6, v3, v0, v1}, Lorg/bouncycastle/pqc/crypto/sphincs/Seed;->get_seed(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BLorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move-object v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v2 .. v9}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;->wots_pkgen(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V

    const/4 v9, 0x0

    move-object v5, p0

    move-object v6, p1

    move v7, p2

    move-object v8, v4

    move-object v10, p3

    move/from16 v11, p4

    invoke-static/range {v5 .. v11}, Lorg/bouncycastle/pqc/crypto/sphincs/Tree;->l_tree(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V

    return-void
.end method

.method static l_tree(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V
    .locals 10

    const/16 v1, 0x43

    const/4 v0, 0x0

    move v8, v0

    move v9, v1

    :goto_0
    const/4 v0, 0x7

    if-ge v8, v0, :cond_2

    const/4 v0, 0x0

    move v7, v0

    :goto_1
    ushr-int/lit8 v0, v9, 0x1

    if-ge v7, v0, :cond_0

    mul-int/lit8 v0, v7, 0x20

    add-int v2, p4, v0

    mul-int/lit8 v0, v7, 0x2

    mul-int/lit8 v0, v0, 0x20

    add-int v4, p4, v0

    mul-int/lit8 v0, v8, 0x2

    mul-int/lit8 v0, v0, 0x20

    add-int v6, p6, v0

    move-object v0, p0

    move-object v1, p3

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_0
    and-int/lit8 v0, v9, 0x1

    if-eqz v0, :cond_1

    add-int/lit8 v0, v9, -0x1

    mul-int/lit8 v0, v0, 0x20

    add-int/2addr v0, p4

    ushr-int/lit8 v1, v9, 0x1

    mul-int/lit8 v1, v1, 0x20

    add-int/2addr v1, p4

    const/16 v2, 0x20

    invoke-static {p3, v0, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    ushr-int/lit8 v0, v9, 0x1

    add-int/lit8 v0, v0, 0x1

    :goto_2
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v9, v0

    goto :goto_0

    :cond_1
    ushr-int/lit8 v0, v9, 0x1

    goto :goto_2

    :cond_2
    const/16 v0, 0x20

    invoke-static {p3, p4, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static treehash(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BII[BLorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;[BI)V
    .locals 18

    new-instance v8, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;

    move-object/from16 v0, p5

    invoke-direct {v8, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;-><init>(Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    add-int/lit8 v2, p3, 0x1

    mul-int/lit8 v2, v2, 0x20

    new-array v3, v2, [B

    add-int/lit8 v2, p3, 0x1

    new-array v0, v2, [I

    move-object/from16 v16, v0

    const/4 v2, 0x0

    iget-wide v4, v8, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const/4 v6, 0x1

    shl-int v6, v6, p3

    int-to-long v6, v6

    add-long/2addr v4, v6

    long-to-int v0, v4

    move/from16 v17, v0

    move v9, v2

    :goto_0
    iget-wide v4, v8, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    move/from16 v0, v17

    int-to-long v6, v0

    cmp-long v2, v4, v6

    if-gez v2, :cond_1

    mul-int/lit8 v4, v9, 0x20

    move-object/from16 v2, p0

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p4

    invoke-static/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincs/Tree;->gen_leaf_wots(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BLorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    const/4 v2, 0x0

    aput v2, v16, v9

    add-int/lit8 v2, v9, 0x1

    :goto_1
    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    add-int/lit8 v4, v2, -0x1

    aget v4, v16, v4

    add-int/lit8 v5, v2, -0x2

    aget v5, v16, v5

    if-ne v4, v5, :cond_0

    add-int/lit8 v4, v2, -0x1

    aget v4, v16, v4

    add-int/lit8 v4, v4, 0x7

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v4, v4, 0x20

    add-int/lit8 v5, v2, -0x2

    mul-int/lit8 v11, v5, 0x20

    add-int/lit8 v5, v2, -0x2

    mul-int/lit8 v13, v5, 0x20

    add-int v15, p7, v4

    move-object/from16 v9, p0

    move-object v10, v3

    move-object v12, v3

    move-object/from16 v14, p6

    invoke-virtual/range {v9 .. v15}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    add-int/lit8 v4, v2, -0x2

    aget v5, v16, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v16, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_0
    iget-wide v4, v8, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v8, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    move v9, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_2
    const/16 v4, 0x20

    if-ge v2, v4, :cond_2

    add-int v4, p2, v2

    aget-byte v5, v3, v2

    aput-byte v5, p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method
