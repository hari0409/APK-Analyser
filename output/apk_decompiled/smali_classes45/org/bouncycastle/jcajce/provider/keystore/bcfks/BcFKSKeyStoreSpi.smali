.class Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;
.super Ljava/security/KeyStoreSpi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$Def;,
        Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;,
        Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$Std;
    }
.end annotation


# static fields
.field private static final CERTIFICATE:Ljava/math/BigInteger;

.field private static final PRIVATE_KEY:Ljava/math/BigInteger;

.field private static final PROTECTED_PRIVATE_KEY:Ljava/math/BigInteger;

.field private static final PROTECTED_SECRET_KEY:Ljava/math/BigInteger;

.field private static final SECRET_KEY:Ljava/math/BigInteger;

.field private static final oidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final publicAlgMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private creationDate:Ljava/util/Date;

.field private final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/asn1/bc/ObjectData;",
            ">;"
        }
    .end annotation
.end field

.field private hmacAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private hmacPkbdAlgorithm:Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

.field private lastModifiedDate:Ljava/util/Date;

.field private final privateKeyCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/PrivateKey;",
            ">;"
        }
    .end annotation
.end field

.field private final provider:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->oidMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->publicAlgMap:Ljava/util/Map;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->oidMap:Ljava/util/Map;

    const-string v1, "DESEDE"

    sget-object v2, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desEDE:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->oidMap:Ljava/util/Map;

    const-string v1, "TRIPLEDES"

    sget-object v2, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desEDE:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->oidMap:Ljava/util/Map;

    const-string v1, "TDEA"

    sget-object v2, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desEDE:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->oidMap:Ljava/util/Map;

    const-string v1, "HMACSHA1"

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->oidMap:Ljava/util/Map;

    const-string v1, "HMACSHA224"

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->oidMap:Ljava/util/Map;

    const-string v1, "HMACSHA256"

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->oidMap:Ljava/util/Map;

    const-string v1, "HMACSHA384"

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->oidMap:Ljava/util/Map;

    const-string v1, "HMACSHA512"

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->publicAlgMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "RSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->publicAlgMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_ecPublicKey:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "EC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->publicAlgMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->elGamalAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "DH"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->publicAlgMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "DH"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->publicAlgMap:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "DSA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->CERTIFICATE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PRIVATE_KEY:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->SECRET_KEY:Ljava/math/BigInteger;

    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PROTECTED_PRIVATE_KEY:Ljava/math/BigInteger;

    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PROTECTED_SECRET_KEY:Ljava/math/BigInteger;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;)V
    .locals 1

    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->privateKeyCache:Ljava/util/Map;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->provider:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    return-void
.end method

.method private calculateMac([BLorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;[C)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->provider:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->provider:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-static {v1, v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    move-result-object v0

    :goto_0
    :try_start_0
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "INTEGRITY_CHECK"

    if-eqz p4, :cond_1

    :goto_1
    invoke-direct {p0, p3, v3, p4}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->generateKey(Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;Ljava/lang/String;[C)[B

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :try_start_1
    new-array p4, v4, [C
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot set up MAC calculation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private createPrivateKeySequence(Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;[Ljava/security/cert/Certificate;)Lorg/bouncycastle/asn1/bc/EncryptedPrivateKeyData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    array-length v0, p2

    new-array v1, v0, [Lorg/bouncycastle/asn1/x509/Certificate;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p2

    if-eq v0, v2, :cond_0

    aget-object v2, p2, v0

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/bc/EncryptedPrivateKeyData;

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/asn1/bc/EncryptedPrivateKeyData;-><init>(Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;[Lorg/bouncycastle/asn1/x509/Certificate;)V

    return-object v0
.end method

.method private decodeCertificate(Ljava/lang/Object;)Ljava/security/cert/Certificate;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->provider:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "X.509"

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->provider:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-static {v1, v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private decryptData(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[C[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "BCFKS KeyStore cannot recognize protection algorithm."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;->getEncryptionScheme()Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "BCFKS KeyStore cannot recognize protection encryption algorithm."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/CCMParameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/CCMParameters;

    move-result-object v3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->provider:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    if-nez v0, :cond_2

    const-string v0, "AES/CCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const-string v0, "CCM"

    invoke-static {v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    :goto_0
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/CCMParameters;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/AlgorithmParameters;->init([B)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;->getKeyDerivationFunc()Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v2

    if-eqz p3, :cond_3

    :goto_1
    invoke-direct {p0, v2, p1, p3}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->generateKey(Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;Ljava/lang/String;[C)[B

    move-result-object v2

    const/4 v3, 0x2

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v4, v2, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v3, v4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    invoke-virtual {v1, p4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "AES/CCM/NoPadding"

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->provider:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-static {v0, v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v1

    const-string v0, "CCM"

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->provider:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-static {v0, v4}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    new-array p3, v3, [C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private extractCreationDate(Lorg/bouncycastle/asn1/bc/ObjectData;Ljava/util/Date;)Ljava/util/Date;
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/bc/ObjectData;->getCreationDate()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    :goto_0
    return-object p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private generateKey(Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;Ljava/lang/String;[C)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p3}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    new-instance v3, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBKDF2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getPrf()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getSalt()[B

    move-result-object v1

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-virtual {v2, v0, v1, v4}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->init([B[BI)V

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getKeyLength()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v2, v0}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BCFKS KeyStore: unrecognized MAC PBKD PRF."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BCFKS KeyStore: unrecognized MAC PBKD."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private generatePkbdAlgorithmIdentifier(I)Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;
    .locals 8

    const/16 v0, 0x40

    new-array v0, v0, [B

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->getDefaultSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBKDF2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v3, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    const/16 v4, 0x400

    new-instance v5, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v6, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v7, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v5, v6, v7}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v3, v0, v4, p1, v5}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;-><init>([BIILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1
.end method

.method private getDefaultSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    return-object v0
.end method

.method private static getPublicKeyAlg(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->publicAlgMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private verifyMac([BLorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;[C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;->getMacAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;->getPbkdAlgorithm()Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p3}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->calculateMac([BLorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;[C)[B

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;->getMac()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "BCFKS KeyStore corrupted: MAC calculation failed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public engineAliases()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$1;

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$1;-><init>(Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias value is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/bc/ObjectData;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->privateKeyCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->lastModifiedDate:Ljava/util/Date;

    goto :goto_0
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/bc/ObjectData;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bc/ObjectData;->getType()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PRIVATE_KEY:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bc/ObjectData;->getType()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PROTECTED_PRIVATE_KEY:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bc/ObjectData;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/bc/EncryptedPrivateKeyData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bc/EncryptedPrivateKeyData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bc/EncryptedPrivateKeyData;->getCertificateChain()[Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->decodeCertificate(Ljava/lang/Object;)Ljava/security/cert/Certificate;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bc/ObjectData;->getType()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->CERTIFICATE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bc/ObjectData;->getData()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->decodeCertificate(Ljava/lang/Object;)Ljava/security/cert/Certificate;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/bc/ObjectData;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bc/ObjectData;->getType()Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->CERTIFICATE:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bc/ObjectData;->getData()[B

    move-result-object v1

    invoke-static {v1, v3}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bc/ObjectData;->getType()Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PRIVATE_KEY:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bc/ObjectData;->getType()Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PROTECTED_PRIVATE_KEY:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_3
    :try_start_1
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bc/ObjectData;->getData()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/bc/EncryptedPrivateKeyData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bc/EncryptedPrivateKeyData;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bc/EncryptedPrivateKeyData;->getCertificateChain()[Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v1

    const/4 v5, 0x0

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/Certificate;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v1

    invoke-static {v1, v3}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_4
    move-object v0, v2

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/bc/ObjectData;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bc/ObjectData;->getType()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PRIVATE_KEY:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bc/ObjectData;->getType()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PROTECTED_PRIVATE_KEY:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bc/ObjectData;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/bc/EncryptedPrivateKeyData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bc/EncryptedPrivateKeyData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bc/EncryptedPrivateKeyData;->getCertificateChain()[Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v2

    array-length v0, v2

    new-array v1, v0, [Ljava/security/cert/X509Certificate;

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-eq v0, v3, :cond_1

    aget-object v3, v2, v0

    invoke-direct {p0, v3}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->decodeCertificate(Ljava/lang/Object;)Ljava/security/cert/Certificate;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/bc/ObjectData;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bc/ObjectData;->getLastModifiedDate()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/bc/ObjectData;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bc/ObjectData;->getType()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PRIVATE_KEY:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bc/ObjectData;->getType()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PROTECTED_PRIVATE_KEY:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->privateKeyCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/PrivateKey;

    if-eqz v1, :cond_1

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bc/ObjectData;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/bc/EncryptedPrivateKeyData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bc/EncryptedPrivateKeyData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bc/EncryptedPrivateKeyData;->getEncryptedPrivateKeyInfo()Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    move-result-object v0

    :try_start_0
    const-string v1, "PRIVATE_KEY_ENCRYPTION"

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v0

    invoke-direct {p0, v1, v2, p2, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->decryptData(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[C[B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->provider:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->provider:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-static {v0, v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v0

    :goto_1
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded()[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->privateKeyCache:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/UnrecoverableKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BCFKS KeyStore unable to recover private key ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->getPublicKeyAlg(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bc/ObjectData;->getType()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->SECRET_KEY:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bc/ObjectData;->getType()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PROTECTED_SECRET_KEY:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bc/ObjectData;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/bc/EncryptedSecretKeyData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bc/EncryptedSecretKeyData;

    move-result-object v0

    :try_start_2
    const-string v1, "SECRET_KEY_ENCRYPTION"

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bc/EncryptedSecretKeyData;->getKeyEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bc/EncryptedSecretKeyData;->getEncryptedKeyData()[B

    move-result-object v0

    invoke-direct {p0, v1, v2, p2, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->decryptData(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[C[B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/bc/SecretKeyData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bc/SecretKeyData;

    move-result-object v1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->provider:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bc/SecretKeyData;->getKeyAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->provider:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-static {v0, v2}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    :goto_2
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bc/SecretKeyData;->getKeyBytes()[B

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bc/SecretKeyData;->getKeyAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bc/SecretKeyData;->getKeyAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v1, Ljava/security/UnrecoverableKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BCFKS KeyStore unable to recover secret key ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v0, Ljava/security/UnrecoverableKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BCFKS KeyStore unable to recover secret key ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): type not recognized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/bc/ObjectData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bc/ObjectData;->getType()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->CERTIFICATE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/bc/ObjectData;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bc/ObjectData;->getType()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PRIVATE_KEY:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->SECRET_KEY:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PROTECTED_PRIVATE_KEY:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PROTECTED_SECRET_KEY:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->privateKeyCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->creationDate:Ljava/util/Date;

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->lastModifiedDate:Ljava/util/Date;

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-nez p1, :cond_1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->creationDate:Ljava/util/Date;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->lastModifiedDate:Ljava/util/Date;

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_hmacWithSHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->generatePkbdAlgorithmIdentifier(I)Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacPkbdAlgorithm:Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/bc/ObjectStore;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bc/ObjectStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bc/ObjectStore;->getIntegrityCheck()Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;->getType()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;->getIntegrityCheck()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;->getMacAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;->getPbkdAlgorithm()Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacPkbdAlgorithm:Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bc/ObjectStore;->getStoreData()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-interface {v2}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v2

    invoke-direct {p0, v2, v1, p2}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->verifyMac([BLorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;[C)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bc/ObjectStore;->getStoreData()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/asn1/bc/EncryptedObjectStoreData;

    if-eqz v1, :cond_3

    check-cast v0, Lorg/bouncycastle/asn1/bc/EncryptedObjectStoreData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bc/EncryptedObjectStoreData;->getEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    const-string v2, "STORE_ENCRYPTION"

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bc/EncryptedObjectStoreData;->getEncryptedContent()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-direct {p0, v2, v1, p2, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->decryptData(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[C[B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/bc/ObjectStoreData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bc/ObjectStoreData;

    move-result-object v0

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bc/ObjectStoreData;->getCreationDate()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->creationDate:Ljava/util/Date;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bc/ObjectStoreData;->getLastModifiedDate()Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->lastModifiedDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bc/ObjectStoreData;->getIntegrityAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v0, Ljava/io/IOException;

    const-string v1, "BCFKS KeyStore storeData integrity algorithm does not match store integrity algorithm."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BCFKS KeyStore unable to recognize integrity check."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {v0}, Lorg/bouncycastle/asn1/bc/ObjectStoreData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bc/ObjectStoreData;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "BCFKS KeyStore unable to parse store data information."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bc/ObjectStoreData;->getObjectDataSequence()Lorg/bouncycastle/asn1/bc/ObjectDataSequence;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bc/ObjectDataSequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/bc/ObjectData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/bc/ObjectData;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bc/ObjectData;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/bc/ObjectData;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bc/ObjectData;->getType()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->CERTIFICATE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BCFKS KeyStore already has a key entry with alias "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, v0, v4}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->extractCreationDate(Lorg/bouncycastle/asn1/bc/ObjectData;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    :goto_0
    :try_start_0
    iget-object v7, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    new-instance v0, Lorg/bouncycastle/asn1/bc/ObjectData;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->CERTIFICATE:Ljava/math/BigInteger;

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v5

    const/4 v6, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/asn1/bc/ObjectData;-><init>(Ljava/math/BigInteger;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;[BLjava/lang/String;)V

    invoke-interface {v7, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v4, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->lastModifiedDate:Ljava/util/Date;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BCFKS KeyStore unable to handle certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    move-object v3, v4

    goto :goto_0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/bc/ObjectData;

    if-eqz v0, :cond_a

    invoke-direct {p0, v0, v4}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->extractCreationDate(Lorg/bouncycastle/asn1/bc/ObjectData;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->privateKeyCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_3

    if-nez p4, :cond_0

    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "BCFKS KeyStore requires a certificate chain for private key storage."

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->generatePkbdAlgorithmIdentifier(I)Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v2

    const-string v0, "PRIVATE_KEY_ENCRYPTION"

    if-eqz p3, :cond_1

    :goto_1
    invoke-direct {p0, v2, v0, p3}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->generateKey(Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;Ljava/lang/String;[C)[B

    move-result-object v5

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->provider:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    if-nez v0, :cond_2

    const-string v0, "AES/CCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    :goto_2
    const/4 v6, 0x1

    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "AES"

    invoke-direct {v7, v5, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    new-instance v5, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;

    new-instance v6, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;

    sget-object v7, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/CCMParameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/CCMParameters;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v5, v2, v6}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;-><init>(Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;)V

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v6, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v6, v5}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    invoke-direct {p0, v0, p4}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->createPrivateKeySequence(Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;[Ljava/security/cert/Certificate;)Lorg/bouncycastle/asn1/bc/EncryptedPrivateKeyData;

    move-result-object v2

    iget-object v7, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    new-instance v0, Lorg/bouncycastle/asn1/bc/ObjectData;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PRIVATE_KEY:Ljava/math/BigInteger;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/bc/EncryptedPrivateKeyData;->getEncoded()[B

    move-result-object v5

    const/4 v6, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/asn1/bc/ObjectData;-><init>(Ljava/math/BigInteger;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;[BLjava/lang/String;)V

    invoke-interface {v7, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iput-object v4, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->lastModifiedDate:Ljava/util/Date;

    return-void

    :cond_1
    const/4 v5, 0x0

    :try_start_1
    new-array p3, v5, [C

    goto :goto_1

    :cond_2
    const-string v0, "AES/CCM/NoPadding"

    iget-object v6, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->provider:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-static {v0, v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BCFKS KeyStore exception storing private key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    instance-of v0, p2, Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_9

    if-eqz p4, :cond_4

    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "BCFKS KeyStore cannot store certificate chain with secret key."

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :try_start_2
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->generatePkbdAlgorithmIdentifier(I)Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v5

    const-string v0, "SECRET_KEY_ENCRYPTION"

    if-eqz p3, :cond_5

    :goto_4
    invoke-direct {p0, v5, v0, p3}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->generateKey(Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;Ljava/lang/String;[C)[B

    move-result-object v6

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->provider:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    if-nez v0, :cond_6

    const-string v0, "AES/CCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    move-object v1, v0

    :goto_5
    const/4 v0, 0x1

    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "AES"

    invoke-direct {v7, v6, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v0, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "AES"

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v7, -0x1

    if-le v0, v7, :cond_7

    new-instance v0, Lorg/bouncycastle/asn1/bc/SecretKeyData;

    sget-object v6, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->aes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v6, v2}, Lorg/bouncycastle/asn1/bc/SecretKeyData;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bc/SecretKeyData;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    :goto_6
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;

    new-instance v6, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;

    sget-object v7, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/cms/CCMParameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/CCMParameters;

    move-result-object v1

    invoke-direct {v6, v7, v1}, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;-><init>(Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;)V

    new-instance v5, Lorg/bouncycastle/asn1/bc/EncryptedSecretKeyData;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v6, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v6, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v5, v1, v0}, Lorg/bouncycastle/asn1/bc/EncryptedSecretKeyData;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    iget-object v7, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    new-instance v0, Lorg/bouncycastle/asn1/bc/ObjectData;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->SECRET_KEY:Ljava/math/BigInteger;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/bc/EncryptedSecretKeyData;->getEncoded()[B

    move-result-object v5

    const/4 v6, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/asn1/bc/ObjectData;-><init>(Ljava/math/BigInteger;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;[BLjava/lang/String;)V

    invoke-interface {v7, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v0

    new-instance v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BCFKS KeyStore exception storing private key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    const/4 v1, 0x0

    :try_start_3
    new-array p3, v1, [C

    goto/16 :goto_4

    :cond_6
    const-string v0, "AES/CCM/NoPadding"

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->provider:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-static {v0, v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_5

    :cond_7
    sget-object v0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->oidMap:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_8

    new-instance v6, Lorg/bouncycastle/asn1/bc/SecretKeyData;

    invoke-direct {v6, v0, v2}, Lorg/bouncycastle/asn1/bc/SecretKeyData;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/bc/SecretKeyData;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    goto :goto_6

    :cond_8
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BCFKS KeyStore cannot recognize secret key ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") for storage."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_9
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "BCFKS KeyStore unable to recognize key."

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move-object v3, v4

    goto/16 :goto_0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/bc/ObjectData;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0, v4}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->extractCreationDate(Lorg/bouncycastle/asn1/bc/ObjectData;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    :goto_0
    if-eqz p3, :cond_0

    :try_start_0
    invoke-static {p2}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->privateKeyCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    new-instance v0, Lorg/bouncycastle/asn1/bc/ObjectData;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PROTECTED_PRIVATE_KEY:Ljava/math/BigInteger;

    invoke-direct {p0, v2, p3}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->createPrivateKeySequence(Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;[Ljava/security/cert/Certificate;)Lorg/bouncycastle/asn1/bc/EncryptedPrivateKeyData;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/bc/EncryptedPrivateKeyData;->getEncoded()[B

    move-result-object v5

    const/4 v6, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/asn1/bc/ObjectData;-><init>(Ljava/math/BigInteger;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;[BLjava/lang/String;)V

    invoke-interface {v7, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iput-object v4, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->lastModifiedDate:Ljava/util/Date;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;

    const-string v2, "BCFKS KeyStore private key encoding must be an EncryptedPrivateKeyInfo."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BCFKS KeyStore exception storing protected private key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :try_start_2
    iget-object v7, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    new-instance v0, Lorg/bouncycastle/asn1/bc/ObjectData;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->PROTECTED_SECRET_KEY:Ljava/math/BigInteger;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/asn1/bc/ObjectData;-><init>(Ljava/math/BigInteger;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;[BLjava/lang/String;)V

    invoke-interface {v7, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    new-instance v1, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BCFKS KeyStore exception storing protected private key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi$ExtKeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    move-object v3, v4

    goto :goto_0
.end method

.method public engineSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->entries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lorg/bouncycastle/asn1/bc/ObjectData;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/asn1/bc/ObjectData;

    move-object v5, v0

    check-cast v5, [Lorg/bouncycastle/asn1/bc/ObjectData;

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->generatePkbdAlgorithmIdentifier(I)Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v6

    const-string v1, "STORE_ENCRYPTION"

    if-eqz p2, :cond_0

    move-object v0, p2

    :goto_0
    invoke-direct {p0, v6, v1, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->generateKey(Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;Ljava/lang/String;[C)[B

    move-result-object v7

    new-instance v0, Lorg/bouncycastle/asn1/bc/ObjectStoreData;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->creationDate:Ljava/util/Date;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->lastModifiedDate:Ljava/util/Date;

    new-instance v4, Lorg/bouncycastle/asn1/bc/ObjectDataSequence;

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/bc/ObjectDataSequence;-><init>([Lorg/bouncycastle/asn1/bc/ObjectData;)V

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/bc/ObjectStoreData;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/bc/ObjectDataSequence;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->provider:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    if-nez v1, :cond_1

    const-string v1, "AES/CCM/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    :goto_1
    const/4 v2, 0x1

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, v7, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bc/ObjectStoreData;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;

    new-instance v3, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/cms/CCMParameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/CCMParameters;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v2, v6, v3}, Lorg/bouncycastle/asn1/pkcs/PBES2Parameters;-><init>(Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;Lorg/bouncycastle/asn1/pkcs/EncryptionScheme;)V

    new-instance v1, Lorg/bouncycastle/asn1/bc/EncryptedObjectStoreData;

    new-instance v3, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v4, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBES2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v3, v4, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v1, v3, v0}, Lorg/bouncycastle/asn1/bc/EncryptedObjectStoreData;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacPkbdAlgorithm:Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getSalt()[B

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [B

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->getDefaultSecureRandom()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v3, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacPkbdAlgorithm:Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    new-instance v5, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getKeyLength()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getPrf()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-direct {v5, v2, v6, v7, v0}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;-><init>([BIILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v3, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacPkbdAlgorithm:Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/bc/EncryptedObjectStoreData;->getEncoded()[B

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacPkbdAlgorithm:Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    invoke-direct {p0, v0, v2, v3, p2}, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->calculateMac([BLorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;[C)[B

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/asn1/bc/ObjectStore;

    new-instance v3, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;

    new-instance v4, Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v6, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->hmacPkbdAlgorithm:Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;

    invoke-direct {v4, v5, v6, v0}, Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/pkcs/KeyDerivationFunc;[B)V

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;-><init>(Lorg/bouncycastle/asn1/bc/PbkdMacIntegrityCheck;)V

    invoke-direct {v2, v1, v3}, Lorg/bouncycastle/asn1/bc/ObjectStore;-><init>(Lorg/bouncycastle/asn1/bc/EncryptedObjectStoreData;Lorg/bouncycastle/asn1/bc/ObjectStoreIntegrityCheck;)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/bc/ObjectStore;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [C

    goto/16 :goto_0

    :cond_1
    :try_start_1
    const-string v1, "AES/CCM/NoPadding"

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/keystore/bcfks/BcFKSKeyStoreSpi;->provider:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-static {v1, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    :try_end_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
