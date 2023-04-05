.class public Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsCipher;


# static fields
.field private static final ZEROES:[B


# instance fields
.field protected context:Lorg/bouncycastle/crypto/tls/TlsContext;

.field protected decryptCipher:Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;

.field protected decryptIV:[B

.field protected encryptCipher:Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;

.field protected encryptIV:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xf

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->ZEROES:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsContext;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x58

    const/16 v4, 0x4c

    const/16 v3, 0x20

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-static {p1, v5}, Lorg/bouncycastle/crypto/tls/TlsUtils;->calculateKeyBlock(Lorg/bouncycastle/crypto/tls/TlsContext;I)[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, v0, v6, v3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v2, v0, v3, v3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    const/16 v3, 0x40

    invoke-static {v0, v3, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-static {v0, v4, v5}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    new-instance v4, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;

    invoke-direct {v4}, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;-><init>()V

    iput-object v4, p0, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->encryptCipher:Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;

    new-instance v4, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;

    invoke-direct {v4}, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;-><init>()V

    iput-object v4, p0, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->decryptCipher:Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsContext;->isServer()Z

    move-result v4

    if-eqz v4, :cond_1

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->encryptIV:[B

    iput-object v3, p0, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->decryptIV:[B

    move-object v0, v1

    move-object v3, v2

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->encryptCipher:Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;

    const/4 v2, 0x1

    new-instance v4, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->encryptIV:[B

    invoke-direct {v4, v3, v5}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v1, v2, v4}, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->decryptCipher:Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;

    new-instance v2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->decryptIV:[B

    invoke-direct {v2, v0, v3}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v1, v6, v2}, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void

    :cond_1
    iput-object v3, p0, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->encryptIV:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->decryptIV:[B

    move-object v0, v2

    move-object v3, v1

    goto :goto_0
.end method


# virtual methods
.method protected calculateNonce(J[B)[B
    .locals 5

    const/16 v4, 0xc

    new-array v1, v4, [B

    const/4 v0, 0x4

    invoke-static {p1, p2, v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint64(J[BI)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-byte v2, v1, v0

    aget-byte v3, p3, v0

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method protected calculateRecordMAC(Lorg/bouncycastle/crypto/params/KeyParameter;[B[BII)[B
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lorg/bouncycastle/crypto/macs/Poly1305;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/macs/Poly1305;-><init>()V

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    array-length v1, p2

    invoke-virtual {p0, v0, p2, v2, v1}, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->updateRecordMACText(Lorg/bouncycastle/crypto/Mac;[BII)V

    invoke-virtual {p0, v0, p3, p4, p5}, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->updateRecordMACText(Lorg/bouncycastle/crypto/Mac;[BII)V

    array-length v1, p2

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->updateRecordMACLength(Lorg/bouncycastle/crypto/Mac;I)V

    invoke-virtual {p0, v0, p5}, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->updateRecordMACLength(Lorg/bouncycastle/crypto/Mac;I)V

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v1

    new-array v1, v1, [B

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    return-object v1
.end method

.method public decodeCiphertext(JS[BII)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p6}, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->getPlaintextLimit(I)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->decryptCipher:Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;

    const/4 v3, 0x0

    iget-object v6, p0, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->decryptIV:[B

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->initRecord(Lorg/bouncycastle/crypto/StreamCipher;ZJ[B)Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v1

    add-int/lit8 v5, p6, -0x10

    invoke-virtual {p0, p1, p2, p3, v5}, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->getAdditionalData(JSI)[B

    move-result-object v2

    move-object v0, p0

    move-object v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->calculateRecordMAC(Lorg/bouncycastle/crypto/params/KeyParameter;[B[BII)[B

    move-result-object v0

    add-int v1, p5, v5

    add-int v2, p5, p6

    invoke-static {p4, v1, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_1
    new-array v6, v5, [B

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->decryptCipher:Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;

    const/4 v7, 0x0

    move-object v3, p4

    move v4, p5

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->processBytes([BII[BI)I

    return-object v6
.end method

.method public encodePlaintext(JS[BII)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->encryptCipher:Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;

    const/4 v3, 0x1

    iget-object v6, p0, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->encryptIV:[B

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->initRecord(Lorg/bouncycastle/crypto/StreamCipher;ZJ[B)Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v6

    add-int/lit8 v0, p6, 0x10

    new-array v4, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->encryptCipher:Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;

    move-object v1, p4

    move v2, p5

    move v3, p6

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/ChaCha7539Engine;->processBytes([BII[BI)I

    invoke-virtual {p0, p1, p2, p3, p6}, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->getAdditionalData(JSI)[B

    move-result-object v3

    move-object v1, p0

    move-object v2, v6

    move v5, v7

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->calculateRecordMAC(Lorg/bouncycastle/crypto/params/KeyParameter;[B[BII)[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v0, v7, v4, p6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4
.end method

.method protected generateRecordMACKey(Lorg/bouncycastle/crypto/StreamCipher;)Lorg/bouncycastle/crypto/params/KeyParameter;
    .locals 6

    const/4 v2, 0x0

    const/16 v0, 0x40

    new-array v1, v0, [B

    array-length v3, v1

    move-object v0, p1

    move-object v4, v1

    move v5, v2

    invoke-interface/range {v0 .. v5}, Lorg/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    return-object v0
.end method

.method protected getAdditionalData(JSI)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xd

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint64(J[BI)V

    const/16 v1, 0x8

    invoke-static {p3, v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;[BI)V

    const/16 v1, 0xb

    invoke-static {p4, v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    return-object v0
.end method

.method public getPlaintextLimit(I)I
    .locals 1

    add-int/lit8 v0, p1, -0x10

    return v0
.end method

.method protected initRecord(Lorg/bouncycastle/crypto/StreamCipher;ZJ[B)Lorg/bouncycastle/crypto/params/KeyParameter;
    .locals 3

    invoke-virtual {p0, p3, p4, p5}, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->calculateNonce(J[B)[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-interface {p1, p2, v1}, Lorg/bouncycastle/crypto/StreamCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->generateRecordMACKey(Lorg/bouncycastle/crypto/StreamCipher;)Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v0

    return-object v0
.end method

.method protected updateRecordMACLength(Lorg/bouncycastle/crypto/Mac;I)V
    .locals 4

    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J)[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-interface {p1, v0, v1, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    return-void
.end method

.method protected updateRecordMACText(Lorg/bouncycastle/crypto/Mac;[BII)V
    .locals 3

    invoke-interface {p1, p2, p3, p4}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    rem-int/lit8 v0, p4, 0x10

    if-eqz v0, :cond_0

    sget-object v1, Lorg/bouncycastle/crypto/tls/Chacha20Poly1305;->ZEROES:[B

    const/4 v2, 0x0

    rsub-int/lit8 v0, v0, 0x10

    invoke-interface {p1, v1, v2, v0}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    :cond_0
    return-void
.end method
