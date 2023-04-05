.class public Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;
.super Lorg/bouncycastle/crypto/engines/Salsa20Engine;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;-><init>()V

    return-void
.end method


# virtual methods
.method protected advanceCounter()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    const/16 v1, 0xc

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to increase counter past 2^32."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected advanceCounter(J)V
    .locals 5

    const/16 v4, 0xc

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    long-to-int v1, p1

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to increase counter past 2^32."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    aget v0, v0, v4

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    aget v3, v2, v4

    add-int/2addr v1, v3

    aput v1, v2, v4

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    aget v1, v1, v4

    if-ge v1, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to increase counter past 2^32."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method protected generateKeyStream([B)V
    .locals 3

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->rounds:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->x:[I

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;->chachaCore(I[I[I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->x:[I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    return-void
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChaCha7539-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->rounds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCounter()J
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    const/16 v1, 0xc

    aget v0, v0, v1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method protected getNonceSize()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method protected resetCounter()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    const/16 v1, 0xc

    const/4 v2, 0x0

    aput v2, v0, v1

    return-void
.end method

.method protected retreatCounter()V
    .locals 3

    const/16 v2, 0xc

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    aget v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to reduce counter past zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    aget v1, v0, v2

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v2

    return-void
.end method

.method protected retreatCounter(J)V
    .locals 11

    const-wide v8, 0xffffffffL

    const/16 v6, 0xc

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    long-to-int v1, p1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to reduce counter past zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    aget v0, v0, v6

    int-to-long v2, v0

    and-long/2addr v2, v8

    int-to-long v4, v1

    and-long/2addr v4, v8

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    aget v2, v0, v6

    sub-int v1, v2, v1

    aput v1, v0, v6

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to reduce counter past zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setKey([B[B)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    array-length v0, p1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires 256 bit key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    invoke-virtual {p0, v0, v1, v3}, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->packTauOrSigma(I[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    const/4 v1, 0x4

    const/16 v2, 0x8

    invoke-static {p1, v3, v0, v1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->engineState:[I

    const/16 v1, 0xd

    const/4 v2, 0x3

    invoke-static {p2, v3, v0, v1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    return-void
.end method
