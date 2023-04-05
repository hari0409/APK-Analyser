.class public abstract Lorg/bouncycastle/operator/bc/BcAsymmetricKeyWrapper;
.super Lorg/bouncycastle/operator/AsymmetricKeyWrapper;


# instance fields
.field private publicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/operator/AsymmetricKeyWrapper;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    iput-object p2, p0, Lorg/bouncycastle/operator/bc/BcAsymmetricKeyWrapper;->publicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    return-void
.end method


# virtual methods
.method protected abstract createAsymmetricWrapper(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/crypto/AsymmetricBlockCipher;
.end method

.method public generateWrappedKey(Lorg/bouncycastle/operator/GenericKey;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/operator/bc/BcAsymmetricKeyWrapper;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/operator/bc/BcAsymmetricKeyWrapper;->createAsymmetricWrapper(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/crypto/AsymmetricBlockCipher;

    move-result-object v2

    iget-object v1, p0, Lorg/bouncycastle/operator/bc/BcAsymmetricKeyWrapper;->publicKey:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcAsymmetricKeyWrapper;->random:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    iget-object v3, p0, Lorg/bouncycastle/operator/bc/BcAsymmetricKeyWrapper;->random:Ljava/security/SecureRandom;

    invoke-direct {v0, v1, v3}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    :goto_0
    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/operator/bc/OperatorUtils;->getKeyBytes(Lorg/bouncycastle/operator/GenericKey;)[B

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    const/4 v0, 0x0

    array-length v3, v1

    invoke-interface {v2, v1, v0, v3}, Lorg/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B
    :try_end_0
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/operator/OperatorException;

    const-string v2, "unable to encrypt contents key"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/operator/bc/BcAsymmetricKeyWrapper;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/operator/bc/BcAsymmetricKeyWrapper;->random:Ljava/security/SecureRandom;

    return-object p0
.end method
