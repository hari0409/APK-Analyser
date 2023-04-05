.class public Lorg/bouncycastle/crypto/tls/TlsAEADCipher;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsCipher;


# static fields
.field static final NONCE_DRAFT_CHACHA20_POLY1305:I = 0x2

.field public static final NONCE_RFC5288:I = 0x1


# instance fields
.field protected context:Lorg/bouncycastle/crypto/tls/TlsContext;

.field protected decryptCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

.field protected decryptImplicitNonce:[B

.field protected encryptCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

.field protected encryptImplicitNonce:[B

.field protected macSize:I

.field protected nonceMode:I

.field protected record_iv_length:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;-><init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;III)V

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/crypto/tls/TlsContext;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;Lorg/bouncycastle/crypto/modes/AEADBlockCipher;III)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/bouncycastle/crypto/tls/TlsContext;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    iput p6, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->nonceMode:I

    packed-switch p6, :pswitch_data_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_0
    const/4 v0, 0x4

    const/16 v1, 0x8

    iput v1, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    iput p5, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->macSize:I

    mul-int/lit8 v1, p4, 0x2

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->calculateKeyBlock(Lorg/bouncycastle/crypto/tls/TlsContext;I)[B

    move-result-object v4

    const/4 v3, 0x0

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v2, v4, v3, p4}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    add-int v5, v3, p4

    new-instance v3, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v3, v4, v5, p4}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    add-int/2addr v5, p4

    add-int v6, v5, v0

    invoke-static {v4, v5, v6}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    add-int/2addr v5, v0

    add-int v7, v5, v0

    invoke-static {v4, v5, v7}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    add-int/2addr v5, v0

    if-eq v5, v1, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_1
    const/16 v0, 0xc

    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/bouncycastle/crypto/tls/TlsContext;->isServer()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object p3, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->encryptCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->decryptCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    iput-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->encryptImplicitNonce:[B

    iput-object v6, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->decryptImplicitNonce:[B

    move-object v1, v2

    move-object v4, v3

    :goto_1
    iget v2, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    add-int/2addr v0, v2

    new-array v0, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->encryptCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    const/4 v3, 0x1

    new-instance v5, Lorg/bouncycastle/crypto/params/AEADParameters;

    mul-int/lit8 v6, p5, 0x8

    invoke-direct {v5, v4, v6, v0}, Lorg/bouncycastle/crypto/params/AEADParameters;-><init>(Lorg/bouncycastle/crypto/params/KeyParameter;I[B)V

    invoke-interface {v2, v3, v5}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->decryptCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    const/4 v3, 0x0

    new-instance v4, Lorg/bouncycastle/crypto/params/AEADParameters;

    mul-int/lit8 v5, p5, 0x8

    invoke-direct {v4, v1, v5, v0}, Lorg/bouncycastle/crypto/params/AEADParameters;-><init>(Lorg/bouncycastle/crypto/params/KeyParameter;I[B)V

    invoke-interface {v2, v3, v4}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void

    :cond_2
    iput-object p2, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->encryptCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    iput-object p3, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->decryptCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    iput-object v6, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->encryptImplicitNonce:[B

    iput-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->decryptImplicitNonce:[B

    move-object v1, v3

    move-object v4, v2

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public decodeCiphertext(JS[BII)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p6}, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->getPlaintextLimit(I)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->decryptImplicitNonce:[B

    array-length v0, v0

    iget v1, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    add-int/2addr v0, v1

    new-array v1, v0, [B

    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->nonceMode:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->decryptImplicitNonce:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->decryptImplicitNonce:[B

    array-length v4, v4

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v1

    iget v2, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    sub-int/2addr v0, v2

    iget v2, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    invoke-static {p4, p5, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    add-int v2, p5, v0

    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    sub-int v3, p6, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->decryptCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0, v3}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->getOutputSize(I)I

    move-result v0

    new-array v4, v0, [B

    const/4 v5, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->getAdditionalData(JSI)[B

    move-result-object v0

    new-instance v6, Lorg/bouncycastle/crypto/params/AEADParameters;

    const/4 v7, 0x0

    iget v8, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->macSize:I

    mul-int/lit8 v8, v8, 0x8

    invoke-direct {v6, v7, v8, v1, v0}, Lorg/bouncycastle/crypto/params/AEADParameters;-><init>(Lorg/bouncycastle/crypto/params/KeyParameter;I[B[B)V

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->decryptCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v6}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->decryptCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    move-object v1, p4

    invoke-interface/range {v0 .. v5}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->processBytes([BII[BI)I

    move-result v0

    add-int/2addr v0, v5

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->decryptCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v1, v4, v0}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->doFinal([BI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    add-int/2addr v0, v1

    array-length v1, v4

    if-eq v0, v1, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_1
    array-length v0, v1

    add-int/lit8 v0, v0, -0x8

    invoke-static {p1, p2, v1, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint64(J[BI)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->decryptImplicitNonce:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    aget-byte v2, v1, v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->decryptImplicitNonce:[B

    aget-byte v3, v3, v0

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v2, 0x14

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v1

    :cond_2
    return-object v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public encodePlaintext(JS[BII)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0x50

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->encryptImplicitNonce:[B

    array-length v0, v0

    iget v2, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    add-int/2addr v0, v2

    new-array v2, v0, [B

    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->nonceMode:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v7}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->encryptImplicitNonce:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->encryptImplicitNonce:[B

    array-length v3, v3

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->encryptImplicitNonce:[B

    array-length v0, v0

    invoke-static {p1, p2, v2, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint64(J[BI)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->encryptCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0, p6}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->getOutputSize(I)I

    move-result v0

    iget v3, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    add-int/2addr v0, v3

    new-array v4, v0, [B

    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    if-eqz v0, :cond_1

    array-length v0, v2

    iget v3, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    sub-int/2addr v0, v3

    iget v3, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    invoke-static {v2, v0, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget v5, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    invoke-virtual {p0, p1, p2, p3, p6}, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->getAdditionalData(JSI)[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/params/AEADParameters;

    const/4 v3, 0x0

    iget v6, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->macSize:I

    mul-int/lit8 v6, v6, 0x8

    invoke-direct {v1, v3, v6, v2, v0}, Lorg/bouncycastle/crypto/params/AEADParameters;-><init>(Lorg/bouncycastle/crypto/params/KeyParameter;I[B[B)V

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->encryptCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->encryptCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    move-object v1, p4

    move v2, p5

    move v3, p6

    invoke-interface/range {v0 .. v5}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->processBytes([BII[BI)I

    move-result v0

    add-int/2addr v0, v5

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->encryptCipher:Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v1, v4, v0}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->doFinal([BI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    add-int/2addr v0, v1

    array-length v1, v4

    if-eq v0, v1, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v0, v7}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :pswitch_1
    array-length v0, v2

    add-int/lit8 v0, v0, -0x8

    invoke-static {p1, p2, v2, v0}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint64(J[BI)V

    move v0, v1

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->encryptImplicitNonce:[B

    array-length v3, v3

    if-ge v0, v3, :cond_0

    aget-byte v3, v2, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->encryptImplicitNonce:[B

    aget-byte v4, v4, v0

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v1, v7, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v1

    :cond_2
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
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

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->context:Lorg/bouncycastle/crypto/tls/TlsContext;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/tls/TlsContext;->getServerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;[BI)V

    const/16 v1, 0xb

    invoke-static {p4, v0, v1}, Lorg/bouncycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    return-object v0
.end method

.method public getPlaintextLimit(I)I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->macSize:I

    sub-int v0, p1, v0

    iget v1, p0, Lorg/bouncycastle/crypto/tls/TlsAEADCipher;->record_iv_length:I

    sub-int/2addr v0, v1

    return v0
.end method
