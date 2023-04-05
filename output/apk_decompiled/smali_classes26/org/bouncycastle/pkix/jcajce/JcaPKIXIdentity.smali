.class public Lorg/bouncycastle/pkix/jcajce/JcaPKIXIdentity;
.super Lorg/bouncycastle/pkix/PKIXIdentity;


# instance fields
.field private final certs:[Ljava/security/cert/X509Certificate;

.field private final privKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/JcaPKIXIdentity;->getPrivateKeyInfo(Ljava/security/PrivateKey;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    invoke-static {p2}, Lorg/bouncycastle/pkix/jcajce/JcaPKIXIdentity;->getCertificates([Ljava/security/cert/X509Certificate;)[Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pkix/PKIXIdentity;-><init>(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;[Lorg/bouncycastle/cert/X509CertificateHolder;)V

    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/JcaPKIXIdentity;->privKey:Ljava/security/PrivateKey;

    array-length v0, p2

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/JcaPKIXIdentity;->certs:[Ljava/security/cert/X509Certificate;

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/JcaPKIXIdentity;->certs:[Ljava/security/cert/X509Certificate;

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private static getCertificates([Ljava/security/cert/X509Certificate;)[Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 4

    array-length v0, p0

    new-array v1, v0, [Lorg/bouncycastle/cert/X509CertificateHolder;

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    new-instance v2, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;

    aget-object v3, p0, v0

    invoke-direct {v2, v3}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;-><init>(Ljava/security/cert/X509Certificate;)V

    aput-object v2, v1, v0
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to process certificates: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v1
.end method

.method private static getPrivateKeyInfo(Ljava/security/PrivateKey;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .locals 1

    :try_start_0
    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
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
.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/JcaPKIXIdentity;->privKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getX509Certificate()Ljava/security/cert/X509Certificate;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/JcaPKIXIdentity;->certs:[Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method
