.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;


# static fields
.field private static lock:Ljava/lang/Object;

.field private static params:Ljava/util/Hashtable;


# instance fields
.field certainty:I

.field engine:Lorg/bouncycastle/crypto/generators/DSAKeyPairGenerator;

.field initialised:Z

.field param:Lorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;

.field random:Ljava/security/SecureRandom;

.field strength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "DSA"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/crypto/generators/DSAKeyPairGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/DSAKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->engine:Lorg/bouncycastle/crypto/generators/DSAKeyPairGenerator;

    const/16 v0, 0x400

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->strength:I

    const/16 v0, 0x14

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->certainty:I

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->initialised:Z

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 8

    const/16 v3, 0x400

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->initialised:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->strength:I

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->param:Lorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->engine:Lorg/bouncycastle/crypto/generators/DSAKeyPairGenerator;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->param:Lorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/generators/DSAKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->initialised:Z

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->engine:Lorg/bouncycastle/crypto/generators/DSAKeyPairGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/generators/DSAKeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;

    invoke-direct {v3, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;-><init>(Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;)V

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPrivateKey;

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPrivateKey;-><init>(Lorg/bouncycastle/crypto/params/DSAPrivateKeyParameters;)V

    invoke-direct {v2, v3, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2

    :cond_1
    sget-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->param:Lorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->strength:I

    if-ne v0, v3, :cond_4

    new-instance v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;-><init>()V

    const-string v3, "org.bouncycastle.dsa.FIPS186-2for1024bits"

    invoke-static {v3}, Lorg/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->strength:I

    iget v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->certainty:I

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v3, v4, v5}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->init(IILjava/security/SecureRandom;)V

    :goto_2
    new-instance v3, Lorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters()Lorg/bouncycastle/crypto/params/DSAParameters;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/params/DSAParameters;)V

    iput-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->param:Lorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->param:Lorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    new-instance v3, Lorg/bouncycastle/crypto/params/DSAParameterGenerationParameters;

    const/16 v4, 0x400

    const/16 v5, 0xa0

    iget v6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->certainty:I

    iget-object v7, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/bouncycastle/crypto/params/DSAParameterGenerationParameters;-><init>(IIILjava/security/SecureRandom;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->init(Lorg/bouncycastle/crypto/params/DSAParameterGenerationParameters;)V

    goto :goto_2

    :cond_4
    iget v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->strength:I

    if-le v0, v3, :cond_5

    new-instance v3, Lorg/bouncycastle/crypto/params/DSAParameterGenerationParameters;

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->strength:I

    const/16 v4, 0x100

    iget v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->certainty:I

    iget-object v6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-direct {v3, v0, v4, v5, v6}, Lorg/bouncycastle/crypto/params/DSAParameterGenerationParameters;-><init>(IIILjava/security/SecureRandom;)V

    new-instance v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;

    new-instance v4, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v4}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v0, v4}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->init(Lorg/bouncycastle/crypto/params/DSAParameterGenerationParameters;)V

    goto :goto_2

    :cond_5
    new-instance v0, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;-><init>()V

    iget v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->strength:I

    iget v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->certainty:I

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v3, v4, v5}, Lorg/bouncycastle/crypto/generators/DSAParametersGenerator;->init(IILjava/security/SecureRandom;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 2

    const/16 v1, 0x400

    const/16 v0, 0x200

    if-lt p1, v0, :cond_1

    const/16 v0, 0x1000

    if-gt p1, v0, :cond_1

    if-ge p1, v1, :cond_0

    rem-int/lit8 v0, p1, 0x40

    if-nez v0, :cond_1

    :cond_0
    if-lt p1, v1, :cond_2

    rem-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "strength must be from 512 - 4096 and a multiple of 1024 above 1024"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->strength:I

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->initialised:Z

    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    instance-of v0, p1, Ljava/security/spec/DSAParameterSpec;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "parameter object not a DSAParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Ljava/security/spec/DSAParameterSpec;

    new-instance v0, Lorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    new-instance v1, Lorg/bouncycastle/crypto/params/DSAParameters;

    invoke-virtual {p1}, Ljava/security/spec/DSAParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/spec/DSAParameterSpec;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Ljava/security/spec/DSAParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, p2, v1}, Lorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/crypto/params/DSAParameters;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->param:Lorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->engine:Lorg/bouncycastle/crypto/generators/DSAKeyPairGenerator;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->param:Lorg/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/generators/DSAKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->initialised:Z

    return-void
.end method
