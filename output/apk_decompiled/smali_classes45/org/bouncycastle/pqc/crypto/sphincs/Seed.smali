.class Lorg/bouncycastle/pqc/crypto/sphincs/Seed;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get_seed(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BLorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;)V
    .locals 7

    const/16 v6, 0x20

    const/16 v0, 0x28

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_0

    aget-byte v2, p3, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p4, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->level:I

    int-to-long v2, v0

    iget-wide v4, p4, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    const/4 v0, 0x4

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iget-wide v4, p4, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const/16 v0, 0x3b

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    invoke-static {v2, v3, v1, v6}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    array-length v0, v1

    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->varlen_hash([BI[BI)I

    return-void
.end method

.method static prg([BIJ[BI)V
    .locals 6

    const/16 v0, 0x8

    new-array v1, v0, [B

    new-instance v0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;

    const/16 v2, 0xc

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;-><init>(I)V

    const/4 v2, 0x1

    new-instance v3, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v4, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/16 v5, 0x20

    invoke-direct {v4, p4, p5, v5}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v3, v4, v1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-interface {v0, v2, v3}, Lorg/bouncycastle/crypto/StreamCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    long-to-int v3, p2

    move-object v1, p0

    move v2, p1

    move-object v4, p0

    move v5, p1

    invoke-interface/range {v0 .. v5}, Lorg/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    return-void
.end method
