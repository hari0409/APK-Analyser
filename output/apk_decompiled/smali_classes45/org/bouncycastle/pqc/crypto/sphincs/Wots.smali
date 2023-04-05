.class Lorg/bouncycastle/pqc/crypto/sphincs/Wots;
.super Ljava/lang/Object;


# static fields
.field static final WOTS_L:I = 0x43

.field static final WOTS_L1:I = 0x40

.field static final WOTS_LOGW:I = 0x4

.field static final WOTS_LOG_L:I = 0x7

.field static final WOTS_SIGBYTES:I = 0x860

.field static final WOTS_W:I = 0x10


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clear([BII)V
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    if-eq v0, p2, :cond_0

    add-int v2, v0, p1

    aput-byte v1, p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static expand_seed([BI[BI)V
    .locals 6

    const/16 v0, 0x860

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;->clear([BII)V

    const-wide/16 v2, 0x860

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sphincs/Seed;->prg([BIJ[BI)V

    return-void
.end method

.method static gen_chain(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BII)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    add-int v2, v1, p2

    add-int v3, v1, p4

    aget-byte v3, p3, v3

    aput-byte v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v7, v0

    :goto_1
    if-ge v7, p7, :cond_1

    const/16 v0, 0x10

    if-ge v7, v0, :cond_1

    mul-int/lit8 v0, v7, 0x20

    add-int v6, p6, v0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p1

    move v4, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_n_n_mask([BI[BI[BI)I

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method wots_pkgen(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V
    .locals 9

    invoke-static {p2, p3, p4, p5}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;->expand_seed([BI[BI)V

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    const/16 v0, 0x43

    if-ge v8, v0, :cond_0

    mul-int/lit8 v0, v8, 0x20

    add-int v2, p3, v0

    mul-int/lit8 v0, v8, 0x20

    add-int v4, p3, v0

    const/16 v7, 0xf

    move-object v0, p1

    move-object v1, p2

    move-object v3, p2

    move-object v5, p6

    move/from16 v6, p7

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;->gen_chain(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BII)V

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method wots_sign(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[B[B[B)V
    .locals 10

    const/16 v0, 0x43

    new-array v9, v0, [I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x40

    if-ge v1, v2, :cond_0

    div-int/lit8 v2, v1, 0x2

    aget-byte v2, p4, v2

    and-int/lit8 v2, v2, 0xf

    aput v2, v9, v1

    add-int/lit8 v2, v1, 0x1

    div-int/lit8 v3, v1, 0x2

    aget-byte v3, p4, v3

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v3, v3, 0x4

    aput v3, v9, v2

    aget v2, v9, v1

    rsub-int/lit8 v2, v2, 0xf

    add-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x1

    aget v2, v9, v2

    rsub-int/lit8 v2, v2, 0xf

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    :goto_1
    const/16 v2, 0x43

    if-ge v1, v2, :cond_1

    and-int/lit8 v2, v0, 0xf

    aput v2, v9, v1

    ushr-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    invoke-static {p2, p3, p5, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;->expand_seed([BI[BI)V

    const/4 v0, 0x0

    move v8, v0

    :goto_2
    const/16 v0, 0x43

    if-ge v8, v0, :cond_2

    mul-int/lit8 v0, v8, 0x20

    add-int v2, p3, v0

    mul-int/lit8 v0, v8, 0x20

    add-int v4, p3, v0

    const/4 v6, 0x0

    aget v7, v9, v8

    move-object v0, p1

    move-object v1, p2

    move-object v3, p2

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;->gen_chain(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BII)V

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    :cond_2
    return-void
.end method

.method wots_verify(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[BI[B[B)V
    .locals 10

    const/16 v0, 0x43

    new-array v9, v0, [I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x40

    if-ge v1, v2, :cond_0

    div-int/lit8 v2, v1, 0x2

    aget-byte v2, p5, v2

    and-int/lit8 v2, v2, 0xf

    aput v2, v9, v1

    add-int/lit8 v2, v1, 0x1

    div-int/lit8 v3, v1, 0x2

    aget-byte v3, p5, v3

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v3, v3, 0x4

    aput v3, v9, v2

    aget v2, v9, v1

    rsub-int/lit8 v2, v2, 0xf

    add-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x1

    aget v2, v9, v2

    rsub-int/lit8 v2, v2, 0xf

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    :goto_1
    const/16 v2, 0x43

    if-ge v1, v2, :cond_1

    and-int/lit8 v2, v0, 0xf

    aput v2, v9, v1

    ushr-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    move v8, v0

    :goto_2
    const/16 v0, 0x43

    if-ge v8, v0, :cond_2

    mul-int/lit8 v2, v8, 0x20

    mul-int/lit8 v0, v8, 0x20

    add-int v4, p4, v0

    aget v0, v9, v8

    mul-int/lit8 v6, v0, 0x20

    aget v0, v9, v8

    rsub-int/lit8 v7, v0, 0xf

    move-object v0, p1

    move-object v1, p2

    move-object v3, p3

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;->gen_chain(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BII)V

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    :cond_2
    return-void
.end method
