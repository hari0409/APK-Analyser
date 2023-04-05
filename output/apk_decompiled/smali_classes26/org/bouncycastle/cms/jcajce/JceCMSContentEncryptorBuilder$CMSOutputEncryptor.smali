.class Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutputEncryptor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/operator/OutputEncryptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CMSOutputEncryptor"
.end annotation


# instance fields
.field private algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private cipher:Ljavax/crypto/Cipher;

.field private encKey:Ljavax/crypto/SecretKey;

.field final synthetic this$0:Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;


# direct methods
.method constructor <init>(Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ILjava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutputEncryptor;->this$0:Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->access$000(Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;)Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createKeyGenerator(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    if-nez p5, :cond_0

    new-instance p5, Ljava/security/SecureRandom;

    invoke-direct {p5}, Ljava/security/SecureRandom;-><init>()V

    :cond_0
    if-gez p3, :cond_2

    invoke-virtual {v0, p5}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    :goto_0
    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->access$000(Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;)Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createCipher(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutputEncryptor;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutputEncryptor;->encKey:Ljavax/crypto/SecretKey;

    if-nez p4, :cond_3

    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->access$000(Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;)Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutputEncryptor;->encKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, p2, v1, p5}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->generateParameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljavax/crypto/SecretKey;Ljava/security/SecureRandom;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    :goto_1
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutputEncryptor;->cipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutputEncryptor;->encKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v1, v2, v3, v0, p5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutputEncryptor;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    :cond_1
    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->access$000(Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;)Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->getAlgorithmIdentifier(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/security/AlgorithmParameters;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutputEncryptor;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void

    :cond_2
    invoke-virtual {v0, p3, p5}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to initialize cipher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_3
    move-object v0, p4

    goto :goto_1
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutputEncryptor;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getKey()Lorg/bouncycastle/operator/GenericKey;
    .locals 3

    new-instance v0, Lorg/bouncycastle/operator/jcajce/JceGenericKey;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutputEncryptor;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutputEncryptor;->encKey:Ljavax/crypto/SecretKey;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/operator/jcajce/JceGenericKey;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Key;)V

    return-object v0
.end method

.method public getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2

    new-instance v0, Ljavax/crypto/CipherOutputStream;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutputEncryptor;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v0, p1, v1}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v0
.end method
