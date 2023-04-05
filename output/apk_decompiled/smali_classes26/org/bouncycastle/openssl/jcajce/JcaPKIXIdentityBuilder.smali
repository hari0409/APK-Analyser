.class public Lorg/bouncycastle/openssl/jcajce/JcaPKIXIdentityBuilder;
.super Ljava/lang/Object;


# instance fields
.field private certConverter:Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

.field private keyConverter:Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;

    invoke-direct {v0}, Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openssl/jcajce/JcaPKIXIdentityBuilder;->keyConverter:Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;

    new-instance v0, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

    invoke-direct {v0}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openssl/jcajce/JcaPKIXIdentityBuilder;->certConverter:Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

    return-void
.end method

.method private checkFile(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to open file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for reading."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": it does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public build(Ljava/io/File;Ljava/io/File;)Lorg/bouncycastle/pkix/jcajce/JcaPKIXIdentity;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/bouncycastle/openssl/jcajce/JcaPKIXIdentityBuilder;->checkFile(Ljava/io/File;)V

    invoke-direct {p0, p2}, Lorg/bouncycastle/openssl/jcajce/JcaPKIXIdentityBuilder;->checkFile(Ljava/io/File;)V

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/openssl/jcajce/JcaPKIXIdentityBuilder;->build(Ljava/io/InputStream;Ljava/io/InputStream;)Lorg/bouncycastle/pkix/jcajce/JcaPKIXIdentity;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return-object v2
.end method

.method public build(Ljava/io/InputStream;Ljava/io/InputStream;)Lorg/bouncycastle/pkix/jcajce/JcaPKIXIdentity;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/openssl/PEMParser;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/openssl/PEMParser;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Lorg/bouncycastle/openssl/PEMParser;->readObject()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/openssl/PEMKeyPair;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/openssl/PEMKeyPair;

    iget-object v1, p0, Lorg/bouncycastle/openssl/jcajce/JcaPKIXIdentityBuilder;->keyConverter:Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;

    invoke-virtual {v0}, Lorg/bouncycastle/openssl/PEMKeyPair;->getPrivateKeyInfo()Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;->getPrivateKey(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object v0

    move-object v1, v0

    :goto_0
    new-instance v2, Lorg/bouncycastle/openssl/PEMParser;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Lorg/bouncycastle/openssl/PEMParser;-><init>(Ljava/io/Reader;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {v2}, Lorg/bouncycastle/openssl/PEMParser;->readObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v4, p0, Lorg/bouncycastle/openssl/jcajce/JcaPKIXIdentityBuilder;->certConverter:Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

    check-cast v0, Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-virtual {v4, v0}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;->getCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    instance-of v1, v0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/openssl/jcajce/JcaPKIXIdentityBuilder;->keyConverter:Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;

    check-cast v0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;->getPrivateKey(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unrecognised private key file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v2, Lorg/bouncycastle/pkix/jcajce/JcaPKIXIdentity;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    check-cast v0, [Ljava/security/cert/X509Certificate;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/pkix/jcajce/JcaPKIXIdentity;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V

    return-object v2
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/openssl/jcajce/JcaPKIXIdentityBuilder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openssl/jcajce/JcaPKIXIdentityBuilder;->keyConverter:Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/openssl/jcajce/JcaPKIXIdentityBuilder;->keyConverter:Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;

    iget-object v0, p0, Lorg/bouncycastle/openssl/jcajce/JcaPKIXIdentityBuilder;->certConverter:Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/openssl/jcajce/JcaPKIXIdentityBuilder;->certConverter:Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/openssl/jcajce/JcaPKIXIdentityBuilder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openssl/jcajce/JcaPKIXIdentityBuilder;->keyConverter:Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;->setProvider(Ljava/security/Provider;)Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/openssl/jcajce/JcaPKIXIdentityBuilder;->keyConverter:Lorg/bouncycastle/openssl/jcajce/JcaPEMKeyConverter;

    iget-object v0, p0, Lorg/bouncycastle/openssl/jcajce/JcaPKIXIdentityBuilder;->certConverter:Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;->setProvider(Ljava/security/Provider;)Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/openssl/jcajce/JcaPKIXIdentityBuilder;->certConverter:Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

    return-object p0
.end method
