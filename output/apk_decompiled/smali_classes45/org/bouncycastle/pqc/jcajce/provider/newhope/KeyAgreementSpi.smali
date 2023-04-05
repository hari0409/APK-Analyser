.class public Lorg/bouncycastle/pqc/jcajce/provider/newhope/KeyAgreementSpi;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;


# instance fields
.field private agreement:Lorg/bouncycastle/pqc/crypto/newhope/NHAgreement;

.field private exchangePairGenerator:Lorg/bouncycastle/pqc/crypto/newhope/NHExchangePairGenerator;

.field private otherPartyKey:Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;

.field private shared:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "NH"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseAgreementSpi;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/DerivationFunction;)V

    return-void
.end method


# virtual methods
.method protected calcSecret()[B
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/newhope/KeyAgreementSpi;->engineGenerateSecret()[B

    move-result-object v0

    return-object v0
.end method

.method protected engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NewHope can only be between two parties."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/KeyAgreementSpi;->otherPartyKey:Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/KeyAgreementSpi;->exchangePairGenerator:Lorg/bouncycastle/pqc/crypto/newhope/NHExchangePairGenerator;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/KeyAgreementSpi;->exchangePairGenerator:Lorg/bouncycastle/pqc/crypto/newhope/NHExchangePairGenerator;

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/KeyAgreementSpi;->otherPartyKey:Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;->getKeyParams()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/newhope/NHExchangePairGenerator;->GenerateExchange(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/pqc/crypto/ExchangePair;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ExchangePair;->getSharedValue()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/KeyAgreementSpi;->shared:[B

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ExchangePair;->getPublicKey()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/newhope/NHPublicKeyParameters;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;-><init>(Lorg/bouncycastle/pqc/crypto/newhope/NHPublicKeyParameters;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/KeyAgreementSpi;->agreement:Lorg/bouncycastle/pqc/crypto/newhope/NHAgreement;

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/KeyAgreementSpi;->otherPartyKey:Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;->getKeyParams()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/newhope/NHAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/KeyAgreementSpi;->shared:[B

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected engineGenerateSecret([BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/KeyAgreementSpi;->shared:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/KeyAgreementSpi;->shared:[B

    array-length v1, v1

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/KeyAgreementSpi;->shared:[B

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/KeyAgreementSpi;->shared:[B

    array-length v0, v0

    return v0
.end method

.method protected engineGenerateSecret()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/KeyAgreementSpi;->shared:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/KeyAgreementSpi;->shared:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    return-object v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/crypto/newhope/NHAgreement;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/newhope/NHAgreement;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/KeyAgreementSpi;->agreement:Lorg/bouncycastle/pqc/crypto/newhope/NHAgreement;

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/KeyAgreementSpi;->agreement:Lorg/bouncycastle/pqc/crypto/newhope/NHAgreement;

    check-cast p1, Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;->getKeyParams()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/newhope/NHAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/newhope/NHExchangePairGenerator;

    invoke-direct {v0, p2}, Lorg/bouncycastle/pqc/crypto/newhope/NHExchangePairGenerator;-><init>(Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/KeyAgreementSpi;->exchangePairGenerator:Lorg/bouncycastle/pqc/crypto/newhope/NHExchangePairGenerator;

    goto :goto_0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "NewHope does not require parameters"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
