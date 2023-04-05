.class public Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageSigner;


# instance fields
.field private final hashFunctions:Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;

.field private keyData:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n-digest needs to produce 32 bytes of output"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    const/16 v1, 0x40

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "2n-digest needs to produce 64 bytes of output"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;-><init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->hashFunctions:Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;

    return-void
.end method

.method static compute_authpath_wots(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[BILorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;[B[BI)V
    .locals 14

    new-instance v12, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;

    move-object/from16 v0, p4

    invoke-direct {v12, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;-><init>(Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    const/16 v2, 0x800

    new-array v13, v2, [B

    const/16 v2, 0x400

    new-array v6, v2, [B

    const v2, 0x10c00

    new-array v4, v2, [B

    const-wide/16 v2, 0x0

    iput-wide v2, v12, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    :goto_0
    iget-wide v2, v12, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const-wide/16 v8, 0x20

    cmp-long v2, v2, v8

    if-gez v2, :cond_0

    iget-wide v2, v12, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const-wide/16 v8, 0x20

    mul-long/2addr v2, v8

    long-to-int v2, v2

    move-object/from16 v0, p5

    invoke-static {p0, v6, v2, v0, v12}, Lorg/bouncycastle/pqc/crypto/sphincs/Seed;->get_seed(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BLorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    iget-wide v2, v12, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    iput-wide v2, v12, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;-><init>()V

    const-wide/16 v8, 0x0

    iput-wide v8, v12, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    :goto_1
    iget-wide v8, v12, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const-wide/16 v10, 0x20

    cmp-long v3, v8, v10

    if-gez v3, :cond_1

    iget-wide v8, v12, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const-wide/16 v10, 0x43

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x20

    mul-long/2addr v8, v10

    long-to-int v5, v8

    iget-wide v8, v12, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const-wide/16 v10, 0x20

    mul-long/2addr v8, v10

    long-to-int v7, v8

    const/4 v9, 0x0

    move-object v3, p0

    move-object/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;->wots_pkgen(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V

    iget-wide v8, v12, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v12, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    iput-wide v2, v12, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    :goto_2
    iget-wide v2, v12, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const-wide/16 v6, 0x20

    cmp-long v2, v2, v6

    if-gez v2, :cond_2

    const-wide/16 v2, 0x400

    iget-wide v6, v12, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const-wide/16 v8, 0x20

    mul-long/2addr v6, v8

    add-long/2addr v2, v6

    long-to-int v7, v2

    iget-wide v2, v12, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const-wide/16 v8, 0x43

    mul-long/2addr v2, v8

    const-wide/16 v8, 0x20

    mul-long/2addr v2, v8

    long-to-int v9, v2

    const/4 v11, 0x0

    move-object v5, p0

    move-object v6, v13

    move-object v8, v4

    move-object/from16 v10, p6

    invoke-static/range {v5 .. v11}, Lorg/bouncycastle/pqc/crypto/sphincs/Tree;->l_tree(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V

    iget-wide v2, v12, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    iput-wide v2, v12, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    const/16 v3, 0x20

    move v10, v2

    move v11, v3

    :goto_3
    if-lez v11, :cond_4

    const/4 v2, 0x0

    move v9, v2

    :goto_4
    if-ge v9, v11, :cond_3

    ushr-int/lit8 v2, v11, 0x1

    mul-int/lit8 v2, v2, 0x20

    ushr-int/lit8 v3, v9, 0x1

    mul-int/lit8 v3, v3, 0x20

    add-int v4, v2, v3

    mul-int/lit8 v2, v11, 0x20

    mul-int/lit8 v3, v9, 0x20

    add-int v6, v2, v3

    add-int/lit8 v2, v10, 0x7

    mul-int/lit8 v2, v2, 0x2

    mul-int/lit8 v8, v2, 0x20

    move-object v2, p0

    move-object v3, v13

    move-object v5, v13

    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    add-int/lit8 v2, v9, 0x2

    move v9, v2

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v10, 0x1

    ushr-int/lit8 v3, v11, 0x1

    move v10, v2

    move v11, v3

    goto :goto_3

    :cond_4
    move-object/from16 v0, p4

    iget-wide v2, v0, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    long-to-int v3, v2

    const/4 v2, 0x0

    :goto_5
    move/from16 v0, p7

    if-ge v2, v0, :cond_5

    const/16 v4, 0x20

    ushr-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x20

    ushr-int v5, v3, v2

    xor-int/lit8 v5, v5, 0x1

    mul-int/lit8 v5, v5, 0x20

    add-int/2addr v4, v5

    mul-int/lit8 v5, v2, 0x20

    add-int v5, v5, p3

    const/16 v6, 0x20

    move-object/from16 v0, p2

    invoke-static {v13, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    const/16 v2, 0x20

    const/4 v3, 0x0

    const/16 v4, 0x20

    invoke-static {v13, v2, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static validate_authpath(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[BI[BI[BI)V
    .locals 9

    const/16 v0, 0x40

    new-array v1, v0, [B

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x20

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x20

    aget-byte v3, p2, v0

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/16 v2, 0x20

    if-ge v0, v2, :cond_3

    add-int v2, p5, v0

    aget-byte v2, p4, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    const/16 v2, 0x20

    if-ge v0, v2, :cond_2

    aget-byte v2, p2, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_3
    const/16 v2, 0x20

    if-ge v0, v2, :cond_3

    add-int/lit8 v2, v0, 0x20

    add-int v3, p5, v0

    aget-byte v3, p4, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v0, p5, 0x20

    const/4 v2, 0x0

    move v7, v0

    move v8, v2

    :goto_4
    add-int/lit8 v0, p7, -0x1

    if-ge v8, v0, :cond_6

    ushr-int/lit8 p3, p3, 0x1

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_4

    const/16 v2, 0x20

    const/4 v4, 0x0

    add-int/lit8 v0, v8, 0x7

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v6, v0, 0x20

    move-object v0, p0

    move-object v3, v1

    move-object v5, p6

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    const/4 v0, 0x0

    :goto_5
    const/16 v2, 0x20

    if-ge v0, v2, :cond_5

    add-int v2, v7, v0

    aget-byte v2, p4, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v2, 0x0

    const/4 v4, 0x0

    add-int/lit8 v0, v8, 0x7

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v6, v0, 0x20

    move-object v0, p0

    move-object v3, v1

    move-object v5, p6

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    const/4 v0, 0x0

    :goto_6
    const/16 v2, 0x20

    if-ge v0, v2, :cond_5

    add-int/lit8 v2, v0, 0x20

    add-int v3, v7, v0

    aget-byte v3, p4, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v0, v7, 0x20

    add-int/lit8 v2, v8, 0x1

    move v7, v0

    move v8, v2

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    const/4 v6, 0x0

    add-int/lit8 v0, p7, 0x7

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v8, v0, 0x20

    move-object v2, p0

    move-object v3, p1

    move-object v5, v1

    move-object v7, p6

    invoke-virtual/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    return-void
.end method

.method private zerobytes([BII)V
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    if-eq v0, p3, :cond_0

    add-int v2, p2, v0

    aput-byte v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method crypto_sign(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[B)[B
    .locals 22

    const v2, 0xa028

    new-array v3, v2, [B

    const/16 v2, 0x20

    new-array v14, v2, [B

    const/16 v2, 0x40

    new-array v13, v2, [B

    const/16 v2, 0x8

    new-array v4, v2, [J

    const/16 v2, 0x20

    new-array v10, v2, [B

    const/16 v2, 0x20

    new-array v11, v2, [B

    const/16 v2, 0x400

    new-array v12, v2, [B

    const/16 v2, 0x440

    new-array v6, v2, [B

    const/4 v2, 0x0

    :goto_0
    const/16 v5, 0x440

    if-ge v2, v5, :cond_0

    aget-byte v5, p3, v2

    aput-byte v5, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const v2, 0xa008

    const/16 v5, 0x420

    const/16 v7, 0x20

    invoke-static {v6, v5, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->getMessageHash()Lorg/bouncycastle/crypto/Digest;

    move-result-object v5

    invoke-interface {v5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v7

    new-array v7, v7, [B

    const/16 v8, 0x20

    invoke-interface {v5, v3, v2, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    const/4 v8, 0x0

    move-object/from16 v0, p2

    array-length v9, v0

    move-object/from16 v0, p2

    invoke-interface {v5, v0, v8, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const/16 v5, 0x20

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v5}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->zerobytes([BII)V

    const/4 v2, 0x0

    :goto_1
    array-length v5, v4

    if-eq v2, v5, :cond_1

    mul-int/lit8 v5, v2, 0x8

    invoke-static {v7, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v8

    aput-wide v8, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    aget-wide v4, v4, v2

    const-wide v8, 0xfffffffffffffffL

    and-long v16, v4, v8

    const/16 v2, 0x10

    const/4 v4, 0x0

    const/16 v5, 0x20

    invoke-static {v7, v2, v14, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const v15, 0x9be8

    const/4 v2, 0x0

    const/16 v4, 0x20

    invoke-static {v14, v2, v3, v15, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v7, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;

    invoke-direct {v7}, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;-><init>()V

    const/16 v2, 0xb

    iput v2, v7, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->level:I

    const-wide/16 v4, 0x0

    iput-wide v4, v7, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    const-wide/16 v4, 0x0

    iput-wide v4, v7, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const v9, 0x9c08

    const/16 v2, 0x20

    const/16 v4, 0x400

    invoke-static {v6, v2, v3, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const v4, 0xa008

    const/4 v5, 0x5

    move-object/from16 v2, p1

    move-object v8, v3

    invoke-static/range {v2 .. v9}, Lorg/bouncycastle/pqc/crypto/sphincs/Tree;->treehash(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BII[BLorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;[BI)V

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->getMessageHash()Lorg/bouncycastle/crypto/Digest;

    move-result-object v2

    const/16 v4, 0x440

    invoke-interface {v2, v3, v15, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    const/4 v4, 0x0

    move-object/from16 v0, p2

    array-length v5, v0

    move-object/from16 v0, p2

    invoke-interface {v2, v0, v4, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    const/4 v4, 0x0

    invoke-interface {v2, v13, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    new-instance v4, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;

    invoke-direct {v4}, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;-><init>()V

    const/16 v2, 0xc

    iput v2, v4, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->level:I

    const-wide/16 v8, 0x1f

    and-long v8, v8, v16

    long-to-int v2, v8

    int-to-long v8, v2

    iput-wide v8, v4, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const/4 v2, 0x5

    ushr-long v8, v16, v2

    iput-wide v8, v4, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    const/4 v2, 0x0

    :goto_2
    const/16 v5, 0x20

    if-ge v2, v5, :cond_2

    aget-byte v5, v14, v2

    aput-byte v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/16 v5, 0x20

    const/16 v2, 0x20

    const/4 v7, 0x0

    const/16 v8, 0x400

    invoke-static {v6, v2, v12, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    :goto_3
    const/16 v7, 0x8

    if-ge v2, v7, :cond_3

    add-int v7, v5, v2

    mul-int/lit8 v8, v2, 0x8

    ushr-long v8, v16, v8

    const-wide/16 v14, 0xff

    and-long/2addr v8, v14

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    const/16 v9, 0x28

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v2, v6, v4}, Lorg/bouncycastle/pqc/crypto/sphincs/Seed;->get_seed(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BLorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/sphincs/Horst;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/sphincs/Horst;-><init>()V

    move-object/from16 v7, p1

    move-object v8, v3

    invoke-static/range {v7 .. v13}, Lorg/bouncycastle/pqc/crypto/sphincs/Horst;->horst_sign(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[B[B[B[B)I

    move-result v2

    add-int/lit8 v16, v2, 0x28

    new-instance v13, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;

    invoke-direct {v13}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;-><init>()V

    const/4 v2, 0x0

    :goto_4
    const/16 v5, 0xc

    if-ge v2, v5, :cond_4

    iput v2, v4, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->level:I

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v5, v6, v4}, Lorg/bouncycastle/pqc/crypto/sphincs/Seed;->get_seed(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BLorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    move-object/from16 v14, p1

    move-object v15, v3

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    invoke-virtual/range {v13 .. v19}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;->wots_sign(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[B[B[B)V

    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x860

    move/from16 v17, v0

    const/16 v21, 0x5

    move-object/from16 v14, p1

    move-object v15, v10

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v12

    invoke-static/range {v14 .. v21}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->compute_authpath_wots(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[BILorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;[B[BI)V

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0xa0

    move/from16 v16, v0

    iget-wide v8, v4, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    const-wide/16 v14, 0x1f

    and-long/2addr v8, v14

    long-to-int v5, v8

    int-to-long v8, v5

    iput-wide v8, v4, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    iget-wide v8, v4, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    const/4 v5, 0x5

    ushr-long/2addr v8, v5

    iput-wide v8, v4, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    const/16 v4, 0x440

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v2, v4}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->zerobytes([BII)V

    return-object v3
.end method

.method public generateSignature([B)[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->hashFunctions:Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->keyData:[B

    invoke-virtual {p0, v0, p1, v1}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->crypto_sign(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    if-eqz p1, :cond_0

    check-cast p2, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;->getKeyData()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->keyData:[B

    :goto_0
    return-void

    :cond_0
    check-cast p2, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPublicKeyParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPublicKeyParameters;->getKeyData()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->keyData:[B

    goto :goto_0
.end method

.method verify(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[B[B)Z
    .locals 21

    move-object/from16 v0, p3

    array-length v5, v0

    const-wide/16 v12, 0x0

    const/16 v2, 0x860

    new-array v9, v2, [B

    const/16 v2, 0x20

    new-array v0, v2, [B

    move-object/from16 v20, v0

    const/16 v2, 0x20

    new-array v3, v2, [B

    const v2, 0xa028

    new-array v4, v2, [B

    const/16 v2, 0x420

    new-array v6, v2, [B

    const v2, 0xa028

    if-eq v5, v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "signature wrong size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/16 v2, 0x40

    new-array v7, v2, [B

    const/4 v2, 0x0

    :goto_0
    const/16 v8, 0x420

    if-ge v2, v8, :cond_1

    aget-byte v8, p4, v2

    aput-byte v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0x20

    new-array v8, v2, [B

    const/4 v2, 0x0

    :goto_1
    const/16 v10, 0x20

    if-ge v2, v10, :cond_2

    aget-byte v10, p3, v2

    aput-byte v10, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    const/4 v10, 0x0

    const v11, 0xa028

    move-object/from16 v0, p3

    invoke-static {v0, v2, v4, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->getMessageHash()Lorg/bouncycastle/crypto/Digest;

    move-result-object v2

    const/4 v10, 0x0

    const/16 v11, 0x20

    invoke-interface {v2, v8, v10, v11}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    const/4 v8, 0x0

    const/16 v10, 0x420

    invoke-interface {v2, v6, v8, v10}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    const/4 v8, 0x0

    move-object/from16 v0, p2

    array-length v10, v0

    move-object/from16 v0, p2

    invoke-interface {v2, v0, v8, v10}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    const/4 v8, 0x0

    invoke-interface {v2, v7, v8}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v8, v5, -0x20

    const/4 v2, 0x0

    :goto_2
    const/16 v5, 0x8

    if-ge v2, v5, :cond_3

    add-int/lit8 v5, v2, 0x20

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v10, v5

    mul-int/lit8 v5, v2, 0x8

    shl-long/2addr v10, v5

    xor-long/2addr v12, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    new-instance v2, Lorg/bouncycastle/pqc/crypto/sphincs/Horst;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/sphincs/Horst;-><init>()V

    const/16 v5, 0x28

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincs/Horst;->horst_verify(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[BI[B[B)I

    add-int/lit8 v2, v8, -0x8

    const/16 v11, 0x3428

    add-int/lit16 v2, v2, -0x3400

    new-instance v7, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;

    invoke-direct {v7}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;-><init>()V

    const/4 v5, 0x0

    move-wide/from16 v18, v12

    :goto_3
    const/16 v8, 0xc

    if-ge v5, v8, :cond_4

    move-object/from16 v8, p1

    move-object v10, v4

    move-object v12, v3

    move-object v13, v6

    invoke-virtual/range {v7 .. v13}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;->wots_verify(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[BI[B[B)V

    add-int/lit16 v8, v11, 0x860

    add-int/lit16 v2, v2, -0x860

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, v20

    move-object v13, v9

    move-object v15, v6

    invoke-static/range {v10 .. v16}, Lorg/bouncycastle/pqc/crypto/sphincs/Tree;->l_tree(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V

    const-wide/16 v10, 0x1f

    and-long v10, v10, v18

    long-to-int v13, v10

    const/16 v17, 0x5

    move-object/from16 v10, p1

    move-object v11, v3

    move-object/from16 v12, v20

    move-object v14, v4

    move v15, v8

    move-object/from16 v16, v6

    invoke-static/range {v10 .. v17}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->validate_authpath(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[BI[BI[BI)V

    const/4 v10, 0x5

    shr-long v12, v18, v10

    add-int/lit16 v11, v8, 0xa0

    add-int/lit16 v2, v2, -0xa0

    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v18, v12

    goto :goto_3

    :cond_4
    const/4 v2, 0x1

    const/4 v4, 0x0

    :goto_4
    const/16 v5, 0x20

    if-ge v4, v5, :cond_6

    aget-byte v5, v3, v4

    add-int/lit16 v7, v4, 0x400

    aget-byte v7, v6, v7

    if-eq v5, v7, :cond_5

    const/4 v2, 0x0

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    return v2
.end method

.method public verifySignature([B[B)Z
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->hashFunctions:Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->keyData:[B

    invoke-virtual {p0, v0, p1, p2, v1}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->verify(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[B[B)Z

    move-result v0

    return v0
.end method
