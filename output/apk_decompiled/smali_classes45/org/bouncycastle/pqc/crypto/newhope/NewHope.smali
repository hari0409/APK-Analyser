.class Lorg/bouncycastle/pqc/crypto/newhope/NewHope;
.super Ljava/lang/Object;


# static fields
.field public static final AGREEMENT_SIZE:I = 0x20

.field public static final POLY_SIZE:I = 0x400

.field public static final SENDA_BYTES:I = 0x720

.field public static final SENDB_BYTES:I = 0x800

.field private static final STATISTICAL_TEST:Z


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decodeA([S[B[B)V
    .locals 3

    invoke-static {p0, p2}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->fromBytes([S[B)V

    const/16 v0, 0x700

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-static {p2, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static decodeB([S[S[B)V
    .locals 5

    invoke-static {p0, p2}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->fromBytes([S[B)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x4

    add-int/lit16 v2, v0, 0x700

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x0

    and-int/lit8 v4, v2, 0x3

    int-to-short v4, v4

    aput-short v4, p1, v3

    add-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, v2, 0x2

    and-int/lit8 v4, v4, 0x3

    int-to-short v4, v4

    aput-short v4, p1, v3

    add-int/lit8 v3, v1, 0x2

    ushr-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0x3

    int-to-short v4, v4

    aput-short v4, p1, v3

    add-int/lit8 v1, v1, 0x3

    ushr-int/lit8 v2, v2, 0x6

    int-to-short v2, v2

    aput-short v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static encodeA([B[S[B)V
    .locals 3

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->toBytes([B[S)V

    const/4 v0, 0x0

    const/16 v1, 0x700

    const/16 v2, 0x20

    invoke-static {p2, v0, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static encodeB([B[S[S)V
    .locals 5

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->toBytes([B[S)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x4

    add-int/lit16 v2, v0, 0x700

    aget-short v3, p2, v1

    add-int/lit8 v4, v1, 0x1

    aget-short v4, p2, v4

    shl-int/lit8 v4, v4, 0x2

    or-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x2

    aget-short v4, p2, v4

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x3

    aget-short v1, p2, v1

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static generateA([S[B)V
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->uniform([S[B)V

    return-void
.end method

.method public static keygen(Ljava/security/SecureRandom;[B[S)V
    .locals 6

    const/16 v2, 0x20

    const/16 v5, 0x400

    new-array v0, v2, [B

    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-array v1, v5, [S

    invoke-static {v1, v0}, Lorg/bouncycastle/pqc/crypto/newhope/NewHope;->generateA([S[B)V

    new-array v2, v2, [B

    invoke-virtual {p0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v3, 0x0

    invoke-static {p2, v2, v3}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->getNoise([S[BB)V

    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->toNTT([S)V

    new-array v3, v5, [S

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->getNoise([S[BB)V

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->toNTT([S)V

    new-array v2, v5, [S

    invoke-static {v1, p2, v2}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->pointWise([S[S[S)V

    new-array v1, v5, [S

    invoke-static {v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->add([S[S[S)V

    invoke-static {p1, v1, v0}, Lorg/bouncycastle/pqc/crypto/newhope/NewHope;->encodeA([B[S[B)V

    return-void
.end method

.method static sha3([B)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v2, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    invoke-virtual {v0, p0, v2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    return-void
.end method

.method public static sharedA([B[S[B)V
    .locals 3

    const/16 v2, 0x400

    new-array v0, v2, [S

    new-array v1, v2, [S

    invoke-static {v0, v1, p2}, Lorg/bouncycastle/pqc/crypto/newhope/NewHope;->decodeB([S[S[B)V

    new-array v2, v2, [S

    invoke-static {p1, v0, v2}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->pointWise([S[S[S)V

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->fromNTT([S)V

    invoke-static {p0, v2, v1}, Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;->rec([B[S[S)V

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/newhope/NewHope;->sha3([B)V

    return-void
.end method

.method public static sharedB(Ljava/security/SecureRandom;[B[B[B)V
    .locals 7

    const/16 v3, 0x20

    const/16 v6, 0x400

    new-array v0, v6, [S

    new-array v1, v3, [B

    invoke-static {v0, v1, p3}, Lorg/bouncycastle/pqc/crypto/newhope/NewHope;->decodeA([S[B[B)V

    new-array v2, v6, [S

    invoke-static {v2, v1}, Lorg/bouncycastle/pqc/crypto/newhope/NewHope;->generateA([S[B)V

    new-array v1, v3, [B

    invoke-virtual {p0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-array v3, v6, [S

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->getNoise([S[BB)V

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->toNTT([S)V

    new-array v4, v6, [S

    const/4 v5, 0x1

    invoke-static {v4, v1, v5}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->getNoise([S[BB)V

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->toNTT([S)V

    new-array v5, v6, [S

    invoke-static {v2, v3, v5}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->pointWise([S[S[S)V

    invoke-static {v5, v4, v5}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->add([S[S[S)V

    new-array v2, v6, [S

    invoke-static {v0, v3, v2}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->pointWise([S[S[S)V

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->fromNTT([S)V

    new-array v0, v6, [S

    const/4 v3, 0x2

    invoke-static {v0, v1, v3}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->getNoise([S[BB)V

    invoke-static {v2, v0, v2}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->add([S[S[S)V

    new-array v0, v6, [S

    const/4 v3, 0x3

    invoke-static {v0, v2, v1, v3}, Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;->helpRec([S[S[BB)V

    invoke-static {p2, v5, v0}, Lorg/bouncycastle/pqc/crypto/newhope/NewHope;->encodeB([B[S[S)V

    invoke-static {p1, v2, v0}, Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;->rec([B[S[S)V

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/newhope/NewHope;->sha3([B)V

    return-void
.end method
