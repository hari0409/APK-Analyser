.class Lorg/bouncycastle/pqc/crypto/newhope/Poly;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static add([S[S[S)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x400

    if-ge v0, v1, :cond_0

    aget-short v1, p0, v0

    aget-short v2, p1, v0

    add-int/2addr v1, v2

    int-to-short v1, v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/newhope/Reduce;->barrett(S)S

    move-result v1

    aput-short v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static fromBytes([S[B)V
    .locals 11

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x7

    add-int/lit8 v2, v1, 0x0

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v1, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v1, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v1, 0x4

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v1, 0x5

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v1, v1, 0x6

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    mul-int/lit8 v8, v0, 0x4

    add-int/lit8 v9, v8, 0x0

    and-int/lit8 v10, v3, 0x3f

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v2, v10

    int-to-short v2, v2

    aput-short v2, p0, v9

    add-int/lit8 v2, v8, 0x1

    ushr-int/lit8 v3, v3, 0x6

    shl-int/lit8 v4, v4, 0x2

    or-int/2addr v3, v4

    and-int/lit8 v4, v5, 0xf

    shl-int/lit8 v4, v4, 0xa

    or-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, p0, v2

    add-int/lit8 v2, v8, 0x2

    ushr-int/lit8 v3, v5, 0x4

    shl-int/lit8 v4, v6, 0x4

    or-int/2addr v3, v4

    and-int/lit8 v4, v7, 0x3

    shl-int/lit8 v4, v4, 0xc

    or-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, p0, v2

    add-int/lit8 v2, v8, 0x3

    ushr-int/lit8 v3, v7, 0x2

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v3

    int-to-short v1, v1

    aput-short v1, p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static fromNTT([S)V
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/newhope/NTT;->bitReverse([S)V

    sget-object v0, Lorg/bouncycastle/pqc/crypto/newhope/Precomp;->OMEGAS_INV_MONTGOMERY:[S

    invoke-static {p0, v0}, Lorg/bouncycastle/pqc/crypto/newhope/NTT;->core([S[S)V

    sget-object v0, Lorg/bouncycastle/pqc/crypto/newhope/Precomp;->PSIS_INV_MONTGOMERY:[S

    invoke-static {p0, v0}, Lorg/bouncycastle/pqc/crypto/newhope/NTT;->mulCoefficients([S[S)V

    return-void
.end method

.method static getNoise([S[BB)V
    .locals 9

    const/16 v8, 0x8

    const/4 v1, 0x0

    new-array v0, v8, [B

    aput-byte p2, v0, v1

    const/16 v2, 0x1000

    new-array v4, v2, [B

    array-length v2, v4

    invoke-static {p1, v0, v4, v1, v2}, Lorg/bouncycastle/pqc/crypto/newhope/ChaCha20;->process([B[B[BII)V

    move v3, v1

    :goto_0
    const/16 v0, 0x400

    if-ge v3, v0, :cond_1

    mul-int/lit8 v0, v3, 0x4

    invoke-static {v4, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v5

    move v0, v1

    move v2, v1

    :goto_1
    if-ge v0, v8, :cond_0

    shr-int v6, v5, v0

    const v7, 0x1010101

    and-int/2addr v6, v7

    add-int/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    ushr-int/lit8 v0, v2, 0x18

    ushr-int/lit8 v5, v2, 0x0

    add-int/2addr v0, v5

    and-int/lit16 v0, v0, 0xff

    ushr-int/lit8 v5, v2, 0x10

    ushr-int/lit8 v2, v2, 0x8

    add-int/2addr v2, v5

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v0, v0, 0x3001

    sub-int/2addr v0, v2

    int-to-short v0, v0

    aput-short v0, p0, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static normalize(S)S
    .locals 3

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/newhope/Reduce;->barrett(S)S

    move-result v0

    add-int/lit16 v1, v0, -0x3001

    shr-int/lit8 v2, v1, 0x1f

    xor-int/2addr v0, v1

    and-int/2addr v0, v2

    xor-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method static pointWise([S[S[S)V
    .locals 4

    const v3, 0xffff

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x400

    if-ge v0, v1, :cond_0

    aget-short v1, p0, v0

    and-int/2addr v1, v3

    aget-short v2, p1, v0

    and-int/2addr v2, v3

    mul-int/lit16 v2, v2, 0xc72

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/newhope/Reduce;->montgomery(I)S

    move-result v2

    and-int/2addr v2, v3

    mul-int/2addr v1, v2

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/newhope/Reduce;->montgomery(I)S

    move-result v1

    aput-short v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static toBytes([B[S)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v2, v1, 0x0

    aget-short v2, p1, v2

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->normalize(S)S

    move-result v2

    add-int/lit8 v3, v1, 0x1

    aget-short v3, p1, v3

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->normalize(S)S

    move-result v3

    add-int/lit8 v4, v1, 0x2

    aget-short v4, p1, v4

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->normalize(S)S

    move-result v4

    add-int/lit8 v1, v1, 0x3

    aget-short v1, p1, v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->normalize(S)S

    move-result v1

    mul-int/lit8 v5, v0, 0x7

    add-int/lit8 v6, v5, 0x0

    int-to-byte v7, v2

    aput-byte v7, p0, v6

    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v2, v2, 0x8

    shl-int/lit8 v7, v3, 0x6

    or-int/2addr v2, v7

    int-to-byte v2, v2

    aput-byte v2, p0, v6

    add-int/lit8 v2, v5, 0x2

    shr-int/lit8 v6, v3, 0x2

    int-to-byte v6, v6

    aput-byte v6, p0, v2

    add-int/lit8 v2, v5, 0x3

    shr-int/lit8 v3, v3, 0xa

    shl-int/lit8 v6, v4, 0x4

    or-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, v5, 0x4

    shr-int/lit8 v3, v4, 0x4

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, v5, 0x5

    shr-int/lit8 v3, v4, 0xc

    shl-int/lit8 v4, v1, 0x2

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, v5, 0x6

    shr-int/lit8 v1, v1, 0x6

    int-to-byte v1, v1

    aput-byte v1, p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static toNTT([S)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/pqc/crypto/newhope/Precomp;->PSIS_BITREV_MONTGOMERY:[S

    invoke-static {p0, v0}, Lorg/bouncycastle/pqc/crypto/newhope/NTT;->mulCoefficients([S[S)V

    sget-object v0, Lorg/bouncycastle/pqc/crypto/newhope/Precomp;->OMEGAS_MONTGOMERY:[S

    invoke-static {p0, v0}, Lorg/bouncycastle/pqc/crypto/newhope/NTT;->core([S[S)V

    return-void
.end method

.method static uniform([S[B)V
    .locals 7

    const/4 v1, 0x0

    new-instance v4, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v0, 0x80

    invoke-direct {v4, v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    array-length v0, p1

    invoke-virtual {v4, p1, v1, v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    move v0, v1

    :cond_0
    const/16 v2, 0x100

    new-array v5, v2, [B

    array-length v2, v5

    invoke-virtual {v4, v5, v1, v2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doOutput([BII)I

    move v2, v1

    :goto_0
    array-length v3, v5

    if-ge v2, v3, :cond_0

    aget-byte v3, v5, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v3, v6

    and-int/lit16 v6, v3, 0x3fff

    const/16 v3, 0x3001

    if-ge v6, v3, :cond_2

    add-int/lit8 v3, v0, 0x1

    int-to-short v6, v6

    aput-short v6, p0, v0

    const/16 v0, 0x400

    if-ne v3, v0, :cond_1

    return-void

    :cond_1
    move v0, v3

    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_0
.end method
