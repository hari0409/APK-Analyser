.class public Lorg/bouncycastle/pqc/jcajce/provider/newhope/NHKeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;


# instance fields
.field engine:Lorg/bouncycastle/pqc/crypto/newhope/NHKeyPairGenerator;

.field initialised:Z

.field random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "NH"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/newhope/NHKeyPairGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/newhope/NHKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/NHKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/pqc/crypto/newhope/NHKeyPairGenerator;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/NHKeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/NHKeyPairGeneratorSpi;->initialised:Z

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 4

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/NHKeyPairGeneratorSpi;->initialised:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/NHKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/pqc/crypto/newhope/NHKeyPairGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/KeyGenerationParameters;

    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/NHKeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    const/16 v3, 0x400

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/newhope/NHKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/NHKeyPairGeneratorSpi;->initialised:Z

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/NHKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/pqc/crypto/newhope/NHKeyPairGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/newhope/NHKeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/newhope/NHPublicKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;

    invoke-direct {v3, v0}, Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPublicKey;-><init>(Lorg/bouncycastle/pqc/crypto/newhope/NHPublicKeyParameters;)V

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;-><init>(Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;)V

    invoke-direct {v2, v3, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 3

    const/16 v2, 0x400

    if-eq p1, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "strength must be 1024 bits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/NHKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/pqc/crypto/newhope/NHKeyPairGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/KeyGenerationParameters;

    invoke-direct {v1, p2, v2}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/newhope/NHKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/NHKeyPairGeneratorSpi;->initialised:Z

    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "parameter object not recognised"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
