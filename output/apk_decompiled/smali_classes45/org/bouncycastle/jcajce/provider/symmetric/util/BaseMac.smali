.class public Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;
.super Ljavax/crypto/MacSpi;

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE;


# static fields
.field private static final gcmSpecClass:Ljava/lang/Class;


# instance fields
.field private keySize:I

.field private macEngine:Lorg/bouncycastle/crypto/Mac;

.field private pbeHash:I

.field private scheme:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "javax.crypto.spec.GCMParameterSpec"

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->lookup(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->gcmSpecClass:Ljava/lang/Class;

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/crypto/Mac;)V
    .locals 1

    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->scheme:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->pbeHash:I

    const/16 v0, 0xa0

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->keySize:I

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/bouncycastle/crypto/Mac;

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/crypto/Mac;III)V
    .locals 1

    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->scheme:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->pbeHash:I

    const/16 v0, 0xa0

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->keySize:I

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/bouncycastle/crypto/Mac;

    iput p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->scheme:I

    iput p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->pbeHash:I

    iput p4, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->keySize:I

    return-void
.end method

.method private static copyMap(Ljava/util/Map;)Ljava/util/Hashtable;
    .locals 4

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static lookup(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    const-class v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected engineDoFinal()[B
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->engineGetMacLength()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/bouncycastle/crypto/Mac;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    return-object v0
.end method

.method protected engineGetMacLength()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    return v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/16 v4, 0x100

    if-nez p1, :cond_0

    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "key is null"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    instance-of v1, p1, Lorg/bouncycastle/jcajce/PKCS12Key;

    if-eqz v1, :cond_5

    :try_start_0
    move-object v0, p1

    check-cast v0, Ljavax/crypto/SecretKey;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v0, p2

    check-cast v0, Ljavax/crypto/spec/PBEParameterSpec;

    move-object v2, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    instance-of v3, v1, Ljavax/crypto/interfaces/PBEKey;

    if-eqz v3, :cond_1

    if-nez v2, :cond_1

    new-instance v3, Ljavax/crypto/spec/PBEParameterSpec;

    move-object v2, v1

    check-cast v2, Ljavax/crypto/interfaces/PBEKey;

    invoke-interface {v2}, Ljavax/crypto/interfaces/PBEKey;->getSalt()[B

    move-result-object v5

    move-object v2, v1

    check-cast v2, Ljavax/crypto/interfaces/PBEKey;

    invoke-interface {v2}, Ljavax/crypto/interfaces/PBEKey;->getIterationCount()I

    move-result v2

    invoke-direct {v3, v5, v2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    move-object v2, v3

    :cond_1
    const/4 v5, 0x1

    const/16 v3, 0xa0

    iget-object v6, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v6}, Lorg/bouncycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "GOST"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x6

    move v3, v4

    :cond_2
    :goto_0
    const/4 v4, 0x2

    invoke-static {v1, v4, v5, v3, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEMacParameters(Ljavax/crypto/SecretKey;IIILjavax/crypto/spec/PBEParameterSpec;)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    :goto_1
    instance-of v1, v2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v1, :cond_a

    move-object v1, v2

    check-cast v1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    move-object v3, v1

    :goto_2
    instance-of v1, p2, Lorg/bouncycastle/jcajce/spec/AEADParameterSpec;

    if-eqz v1, :cond_b

    check-cast p2, Lorg/bouncycastle/jcajce/spec/AEADParameterSpec;

    new-instance v2, Lorg/bouncycastle/crypto/params/AEADParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/spec/AEADParameterSpec;->getMacSizeInBits()I

    move-result v1

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/spec/AEADParameterSpec;->getNonce()[B

    move-result-object v4

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/spec/AEADParameterSpec;->getAssociatedData()[B

    move-result-object v5

    invoke-direct {v2, v3, v1, v4, v5}, Lorg/bouncycastle/crypto/params/AEADParameters;-><init>(Lorg/bouncycastle/crypto/params/KeyParameter;I[B[B)V

    :cond_3
    :goto_3
    :try_start_2
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    return-void

    :catch_0
    move-exception v1

    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "PKCS12 requires a SecretKey/PBEKey"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v1

    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "PKCS12 requires a PBEParameterSpec"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    iget-object v6, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v6}, Lorg/bouncycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SHA256"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x4

    move v3, v4

    goto :goto_0

    :cond_5
    instance-of v1, p1, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    if-eqz v1, :cond_8

    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    :goto_4
    move-object v2, v1

    goto :goto_1

    :cond_6
    instance-of v2, p2, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v2, :cond_7

    invoke-static {v1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEMacParameters(Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    goto :goto_4

    :cond_7
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "PBE requires PBE parameters to be set."

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    instance-of v1, p2, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v1, :cond_9

    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inappropriate parameter type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    goto/16 :goto_1

    :cond_a
    move-object v1, v2

    check-cast v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    move-object v3, v1

    goto/16 :goto_2

    :cond_b
    instance-of v1, p2, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v1, :cond_c

    new-instance v2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    check-cast p2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    goto/16 :goto_3

    :cond_c
    instance-of v1, p2, Ljavax/crypto/spec/RC2ParameterSpec;

    if-eqz v1, :cond_d

    new-instance v2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v4, Lorg/bouncycastle/crypto/params/RC2Parameters;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v3

    move-object v1, p2

    check-cast v1, Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-virtual {v1}, Ljavax/crypto/spec/RC2ParameterSpec;->getEffectiveKeyBits()I

    move-result v1

    invoke-direct {v4, v3, v1}, Lorg/bouncycastle/crypto/params/RC2Parameters;-><init>([BI)V

    check-cast p2, Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-virtual {p2}, Ljavax/crypto/spec/RC2ParameterSpec;->getIV()[B

    move-result-object v1

    invoke-direct {v2, v4, v1}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    goto/16 :goto_3

    :cond_d
    instance-of v1, p2, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;

    if-eqz v1, :cond_e

    new-instance v1, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;

    check-cast p2, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/spec/SkeinParameterSpec;->getParameters()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->copyMap(Ljava/util/Map;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->setKey([B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->build()Lorg/bouncycastle/crypto/params/SkeinParameters;

    move-result-object v2

    goto/16 :goto_3

    :cond_e
    if-nez p2, :cond_f

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    goto/16 :goto_3

    :cond_f
    sget-object v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->gcmSpecClass:Ljava/lang/Class;

    if-eqz v1, :cond_10

    sget-object v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->gcmSpecClass:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_10

    :try_start_3
    sget-object v1, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->gcmSpecClass:Ljava/lang/Class;

    const-string v2, "getTLen"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->gcmSpecClass:Ljava/lang/Class;

    const-string v4, "getIV"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-instance v2, Lorg/bouncycastle/crypto/params/AEADParameters;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, p2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v4, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {v2, v3, v5, v1}, Lorg/bouncycastle/crypto/params/AEADParameters;-><init>(Lorg/bouncycastle/crypto/params/KeyParameter;I[B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v1

    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "Cannot process GCMParameterSpec."

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    instance-of v1, p2, Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v1, :cond_3

    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown parameter type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_3
    move-exception v1

    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot initialize MAC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineReset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Mac;->reset()V

    return-void
.end method

.method protected engineUpdate(B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;->macEngine:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    return-void
.end method
