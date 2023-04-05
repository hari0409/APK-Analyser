.class Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static LDDecode(IIII)S
    .locals 2

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;->g(I)I

    move-result v0

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;->g(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;->g(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p3}, Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;->g(I)I

    move-result v1

    add-int/2addr v0, v1

    const v1, 0x18008

    sub-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x1f

    int-to-short v0, v0

    return v0
.end method

.method static abs(I)I
    .locals 2

    shr-int/lit8 v0, p0, 0x1f

    xor-int v1, p0, v0

    sub-int v0, v1, v0

    return v0
.end method

.method static f([IIII)I
    .locals 3

    mul-int/lit16 v0, p3, 0xaaa

    shr-int/lit8 v0, v0, 0x19

    mul-int/lit16 v1, v0, 0x3001

    sub-int v1, p3, v1

    rsub-int v1, v1, 0x3000

    shr-int/lit8 v1, v1, 0x1f

    sub-int/2addr v0, v1

    and-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, v0, 0x1

    add-int/2addr v1, v2

    aput v1, p0, p1

    add-int/lit8 v0, v0, -0x1

    and-int/lit8 v1, v0, 0x1

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    aput v0, p0, p2

    aget v0, p0, p1

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit16 v0, v0, 0x3001

    sub-int v0, p3, v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;->abs(I)I

    move-result v0

    return v0
.end method

.method static g(I)I
    .locals 3

    mul-int/lit16 v0, p0, 0xaaa

    shr-int/lit8 v0, v0, 0x1b

    const v1, 0xc004

    mul-int/2addr v1, v0

    sub-int v1, p0, v1

    const v2, 0xc003

    sub-int v1, v2, v1

    shr-int/lit8 v1, v1, 0x1f

    sub-int/2addr v0, v1

    and-int/lit8 v1, v0, 0x1

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    const v1, 0x18008

    mul-int/2addr v0, v1

    sub-int/2addr v0, p0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;->abs(I)I

    move-result v0

    return v0
.end method

.method static helpRec([S[S[BB)V
    .locals 10

    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p3, v0, v1

    const/16 v1, 0x20

    new-array v1, v1, [B

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {p2, v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/newhope/ChaCha20;->process([B[B[BII)V

    const/16 v0, 0x8

    new-array v2, v0, [I

    const/4 v0, 0x4

    new-array v3, v0, [I

    const/4 v0, 0x0

    :goto_0
    const/16 v4, 0x100

    if-ge v0, v4, :cond_0

    ushr-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    and-int/lit8 v5, v0, 0x7

    ushr-int/2addr v4, v5

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    add-int/lit8 v7, v0, 0x0

    aget-short v7, p1, v7

    mul-int/lit8 v7, v7, 0x8

    mul-int/lit8 v8, v4, 0x4

    add-int/2addr v7, v8

    invoke-static {v2, v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;->f([IIII)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x5

    add-int/lit16 v8, v0, 0x100

    aget-short v8, p1, v8

    mul-int/lit8 v8, v8, 0x8

    mul-int/lit8 v9, v4, 0x4

    add-int/2addr v8, v9

    invoke-static {v2, v6, v7, v8}, Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;->f([IIII)I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x6

    add-int/lit16 v8, v0, 0x200

    aget-short v8, p1, v8

    mul-int/lit8 v8, v8, 0x8

    mul-int/lit8 v9, v4, 0x4

    add-int/2addr v8, v9

    invoke-static {v2, v6, v7, v8}, Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;->f([IIII)I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x7

    add-int/lit16 v8, v0, 0x300

    aget-short v8, p1, v8

    mul-int/lit8 v8, v8, 0x8

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v8

    invoke-static {v2, v6, v7, v4}, Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;->f([IIII)I

    move-result v4

    add-int/2addr v4, v5

    rsub-int v4, v4, 0x6001

    shr-int/lit8 v4, v4, 0x1f

    const/4 v5, 0x0

    xor-int/lit8 v6, v4, -0x1

    const/4 v7, 0x0

    aget v7, v2, v7

    and-int/2addr v6, v7

    const/4 v7, 0x4

    aget v7, v2, v7

    and-int/2addr v7, v4

    xor-int/2addr v6, v7

    aput v6, v3, v5

    const/4 v5, 0x1

    xor-int/lit8 v6, v4, -0x1

    const/4 v7, 0x1

    aget v7, v2, v7

    and-int/2addr v6, v7

    const/4 v7, 0x5

    aget v7, v2, v7

    and-int/2addr v7, v4

    xor-int/2addr v6, v7

    aput v6, v3, v5

    const/4 v5, 0x2

    xor-int/lit8 v6, v4, -0x1

    const/4 v7, 0x2

    aget v7, v2, v7

    and-int/2addr v6, v7

    const/4 v7, 0x6

    aget v7, v2, v7

    and-int/2addr v7, v4

    xor-int/2addr v6, v7

    aput v6, v3, v5

    const/4 v5, 0x3

    xor-int/lit8 v6, v4, -0x1

    const/4 v7, 0x3

    aget v7, v2, v7

    and-int/2addr v6, v7

    const/4 v7, 0x7

    aget v7, v2, v7

    and-int/2addr v7, v4

    xor-int/2addr v6, v7

    aput v6, v3, v5

    add-int/lit8 v5, v0, 0x0

    const/4 v6, 0x0

    aget v6, v3, v6

    const/4 v7, 0x3

    aget v7, v3, v7

    sub-int/2addr v6, v7

    and-int/lit8 v6, v6, 0x3

    int-to-short v6, v6

    aput-short v6, p0, v5

    add-int/lit16 v5, v0, 0x100

    const/4 v6, 0x1

    aget v6, v3, v6

    const/4 v7, 0x3

    aget v7, v3, v7

    sub-int/2addr v6, v7

    and-int/lit8 v6, v6, 0x3

    int-to-short v6, v6

    aput-short v6, p0, v5

    add-int/lit16 v5, v0, 0x200

    const/4 v6, 0x2

    aget v6, v3, v6

    const/4 v7, 0x3

    aget v7, v3, v7

    sub-int/2addr v6, v7

    and-int/lit8 v6, v6, 0x3

    int-to-short v6, v6

    aput-short v6, p0, v5

    add-int/lit16 v5, v0, 0x300

    neg-int v4, v4

    const/4 v6, 0x3

    aget v6, v3, v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    and-int/lit8 v4, v4, 0x3

    int-to-short v4, v4

    aput-short v4, p0, v5

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method static rec([B[S[S)V
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const v9, 0x30010

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    const/4 v0, 0x4

    new-array v2, v0, [I

    move v0, v1

    :goto_0
    const/16 v3, 0x100

    if-ge v0, v3, :cond_0

    add-int/lit8 v3, v0, 0x0

    aget-short v3, p1, v3

    mul-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v9

    add-int/lit8 v4, v0, 0x0

    aget-short v4, p2, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit16 v5, v0, 0x300

    aget-short v5, p2, v5

    add-int/2addr v4, v5

    mul-int/lit16 v4, v4, 0x3001

    sub-int/2addr v3, v4

    aput v3, v2, v1

    add-int/lit16 v3, v0, 0x100

    aget-short v3, p1, v3

    mul-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v9

    add-int/lit16 v4, v0, 0x100

    aget-short v4, p2, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit16 v5, v0, 0x300

    aget-short v5, p2, v5

    add-int/2addr v4, v5

    mul-int/lit16 v4, v4, 0x3001

    sub-int/2addr v3, v4

    aput v3, v2, v10

    add-int/lit16 v3, v0, 0x200

    aget-short v3, p1, v3

    mul-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v9

    add-int/lit16 v4, v0, 0x200

    aget-short v4, p2, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit16 v5, v0, 0x300

    aget-short v5, p2, v5

    add-int/2addr v4, v5

    mul-int/lit16 v4, v4, 0x3001

    sub-int/2addr v3, v4

    aput v3, v2, v11

    add-int/lit16 v3, v0, 0x300

    aget-short v3, p1, v3

    mul-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v9

    add-int/lit16 v4, v0, 0x300

    aget-short v4, p2, v4

    mul-int/lit16 v4, v4, 0x3001

    sub-int/2addr v3, v4

    aput v3, v2, v12

    ushr-int/lit8 v3, v0, 0x3

    aget-byte v4, p0, v3

    aget v5, v2, v1

    aget v6, v2, v10

    aget v7, v2, v11

    aget v8, v2, v12

    invoke-static {v5, v6, v7, v8}, Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;->LDDecode(IIII)S

    move-result v5

    and-int/lit8 v6, v0, 0x7

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
