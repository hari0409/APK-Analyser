.class public Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi;
.super Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;

# interfaces
.implements Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi$McEliecePKCS;
    }
.end annotation


# instance fields
.field private cipher:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi;->cipher:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;

    return-void
.end method


# virtual methods
.method public getKeySize(Ljava/security/Key;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p1, Ljava/security/PublicKey;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/security/PublicKey;

    invoke-static {p1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceKeysToParams;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi;->cipher:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->getKeySize(Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyParameters;)I

    move-result v0

    return v0

    :cond_0
    check-cast p1, Ljava/security/PrivateKey;

    invoke-static {p1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceKeysToParams;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "McEliecePKCS"

    return-object v0
.end method

.method protected initCipherDecrypt(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    check-cast p1, Ljava/security/PrivateKey;

    invoke-static {p1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceKeysToParams;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi;->cipher:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi;->cipher:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->maxPlainTextSize:I

    iput v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi;->maxPlainTextSize:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi;->cipher:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->cipherTextSize:I

    iput v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi;->cipherTextSize:I

    return-void
.end method

.method protected initCipherEncrypt(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    check-cast p1, Ljava/security/PublicKey;

    invoke-static {p1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceKeysToParams;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-direct {v1, v0, p3}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi;->cipher:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi;->cipher:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->maxPlainTextSize:I

    iput v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi;->maxPlainTextSize:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi;->cipher:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->cipherTextSize:I

    iput v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi;->cipherTextSize:I

    return-void
.end method

.method protected messageDecrypt([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi;->cipher:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->messageDecrypt([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected messageEncrypt([B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi;->cipher:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCipher;->messageEncrypt([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
