.class public Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;
.super Ljava/lang/Object;


# instance fields
.field private algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private iterationCount:I

.field private keyEncAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private keySizeProvider:Lorg/bouncycastle/operator/SecretKeySizeProvider;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    sget-object v0, Lorg/bouncycastle/operator/DefaultSecretKeySizeProvider;->INSTANCE:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->keySizeProvider:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    const/16 v0, 0x400

    iput v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->iterationCount:I

    invoke-direct {p0, p1}, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->isPKCS12(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object p1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->keyEncAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object p1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->keyEncAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_0
.end method

.method private static PKCS12PasswordToBytes([C)[B
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length v1, p0

    if-lez v1, :cond_1

    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    :goto_0
    array-length v2, p0

    if-eq v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    aget-char v3, p0, v0

    ushr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-char v3, p0, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    new-array v0, v0, [B

    goto :goto_1
.end method

.method private static PKCS5PasswordToBytes([C)[B
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length v1, p0

    new-array v1, v1, [B

    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    aget-char v2, p0, v0

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    new-array v0, v0, [B

    goto :goto_1
.end method

.method static synthetic access$000(Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->isPKCS12(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100([C)[B
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->PKCS12PasswordToBytes([C)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200([C)[B
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->PKCS5PasswordToBytes([C)[B

    move-result-object v0

    return-object v0
.end method

.method private isPKCS12(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_12PbeIds:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public build([C)Lorg/bouncycastle/operator/OutputEncryptor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->random:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->random:Ljava/security/SecureRandom;

    :cond_0
    const/16 v0, 0x14

    new-array v2, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, v0}, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->isPKCS12(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    iget-object v1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v0, 0x1

    new-instance v3, Lorg/bouncycastle/jcajce/PKCS12KeyWithParameters;

    iget v4, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->iterationCount:I

    invoke-direct {v3, p1, v2, v4}, Lorg/bouncycastle/jcajce/PKCS12KeyWithParameters;-><init>([C[BI)V

    invoke-virtual {v1, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v3, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v4, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    iget v5, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->iterationCount:I

    invoke-direct {v4, v2, v5}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    invoke-direct {v0, v3, v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :goto_0
    new-instance v2, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder$1;

    invoke-direct {v2, p0, v0, v1, p1}, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder$1;-><init>(Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljavax/crypto/Cipher;[C)V

    return-object v2

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBKDF2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    iget v3, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->iterationCount:I

    iget-object v4, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->keySizeProvider:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    new-instance v5, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v6, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->keyEncAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-interface {v4, v5}, Lorg/bouncycastle/operator/SecretKeySizeProvider;->getKeySize(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)I

    move-result v4

    invoke-direct {v1, p1, v2, v3, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    iget-object v3, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->keyEncAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v3, v0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    new-instance v3, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    sget-object v4, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBKDF2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    iget v6, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->iterationCount:I

    invoke-direct {v5, v2, v6}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;-><init>([BI)V

    invoke-direct {v0, v4, v5}, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;

    iget-object v4, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->keyEncAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v5

    invoke-virtual {v5}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v3, v0, v2}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;-><init>(Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;)V

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to create OutputEncryptor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    new-instance v0, Lorg/bouncycastle/operator/OperatorCreationException;

    const-string v1, "unrecognised algorithm"

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public setIterationCount(I)Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->iterationCount:I

    return-object p0
.end method

.method public setKeySizeProvider(Lorg/bouncycastle/operator/SecretKeySizeProvider;)Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->keySizeProvider:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;
    .locals 1

    new-instance v0, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;
    .locals 1

    new-instance v0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lorg/bouncycastle/pkcs/jcajce/JcePKCSPBEOutputEncryptorBuilder;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-object p0
.end method
