.class public Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceCCA2KeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;


# instance fields
.field private kpg:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "McEliece-CCA2"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceCCA2KeyPairGeneratorSpi;->kpg:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;

    invoke-direct {v3, v1}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PublicKey;-><init>(Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;)V

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PrivateKey;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/BCMcElieceCCA2PrivateKey;-><init>(Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;)V

    invoke-direct {v2, v3, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceCCA2KeyPairGeneratorSpi;->kpg:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyGenerationParameters;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;-><init>()V

    invoke-direct {v0, p2, v1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceCCA2KeyPairGeneratorSpi;->kpg:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceCCA2KeyPairGeneratorSpi;->kpg:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;

    invoke-super {p0, p1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    check-cast p1, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2KeyGenParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyGenerationParameters;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2KeyGenParameterSpec;->getM()I

    move-result v3

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2KeyGenParameterSpec;->getT()I

    move-result v4

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2KeyGenParameterSpec;->getDigest()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;-><init>(IILjava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/mceliece/McElieceCCA2KeyPairGeneratorSpi;->kpg:Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceCCA2KeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    return-void
.end method
