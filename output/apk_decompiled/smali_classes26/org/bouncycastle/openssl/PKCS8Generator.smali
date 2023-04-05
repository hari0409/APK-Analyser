.class public Lorg/bouncycastle/openssl/PKCS8Generator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/util/io/pem/PemObjectGenerator;


# static fields
.field public static final AES_128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final AES_192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final AES_256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final DES3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final PBE_SHA1_2DES:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final PBE_SHA1_3DES:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final PBE_SHA1_RC2_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final PBE_SHA1_RC2_40:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final PBE_SHA1_RC4_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final PBE_SHA1_RC4_40:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field private key:Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

.field private outputEncryptor:Lorg/bouncycastle/operator/OutputEncryptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->AES_128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->AES_192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->AES_256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->DES3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd128BitRC4:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->PBE_SHA1_RC4_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd40BitRC4:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->PBE_SHA1_RC4_40:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd3_KeyTripleDES_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->PBE_SHA1_3DES:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd2_KeyTripleDES_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->PBE_SHA1_2DES:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd128BitRC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->PBE_SHA1_RC2_128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd40BitRC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/openssl/PKCS8Generator;->PBE_SHA1_RC2_40:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;Lorg/bouncycastle/operator/OutputEncryptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->key:Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    iput-object p2, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->outputEncryptor:Lorg/bouncycastle/operator/OutputEncryptor;

    return-void
.end method

.method private generate(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;Lorg/bouncycastle/operator/OutputEncryptor;)Lorg/bouncycastle/util/io/pem/PemObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/util/io/pem/PemGenerationException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded()[B

    move-result-object v1

    if-nez p2, :cond_0

    new-instance v0, Lorg/bouncycastle/util/io/pem/PemObject;

    const-string v2, "PRIVATE KEY"

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;[B)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {p2, v0}, Lorg/bouncycastle/operator/OutputEncryptor;->getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    new-instance v1, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    invoke-interface {p2}, Lorg/bouncycastle/operator/OutputEncryptor;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    new-instance v0, Lorg/bouncycastle/util/io/pem/PemObject;

    const-string v2, "ENCRYPTED PRIVATE KEY"

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/util/io/pem/PemObject;-><init>(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/util/io/pem/PemGenerationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to process encoded key data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/util/io/pem/PemGenerationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public generate()Lorg/bouncycastle/util/io/pem/PemObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/util/io/pem/PemGenerationException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->outputEncryptor:Lorg/bouncycastle/operator/OutputEncryptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->key:Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    iget-object v1, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->outputEncryptor:Lorg/bouncycastle/operator/OutputEncryptor;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/openssl/PKCS8Generator;->generate(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;Lorg/bouncycastle/operator/OutputEncryptor;)Lorg/bouncycastle/util/io/pem/PemObject;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/openssl/PKCS8Generator;->key:Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/openssl/PKCS8Generator;->generate(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;Lorg/bouncycastle/operator/OutputEncryptor;)Lorg/bouncycastle/util/io/pem/PemObject;

    move-result-object v0

    goto :goto_0
.end method
