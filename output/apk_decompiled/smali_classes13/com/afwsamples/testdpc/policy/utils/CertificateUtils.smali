.class public Lcom/afwsamples/testdpc/policy/utils/CertificateUtils;
.super Ljava/lang/Object;
.source "CertificateUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCertificate(Ljava/security/KeyPair;Ljavax/security/auth/x500/X500Principal;Ljavax/security/auth/x500/X500Principal;)Ljava/security/cert/X509Certificate;
    .locals 22
    .param p0, "keyPair"    # Ljava/security/KeyPair;
    .param p1, "subject"    # Ljavax/security/auth/x500/X500Principal;
    .param p2, "issuer"    # Ljavax/security/auth/x500/X500Principal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    const-wide/32 v12, 0x5265c00

    .line 43
    .local v12, "millisPerDay":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 44
    .local v14, "now":J
    new-instance v5, Ljava/util/Date;

    sub-long v20, v14, v12

    move-wide/from16 v0, v20

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 45
    .local v5, "start":Ljava/util/Date;
    new-instance v6, Ljava/util/Date;

    add-long v20, v14, v12

    move-wide/from16 v0, v20

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 48
    .local v6, "end":Ljava/util/Date;
    const/16 v3, 0x10

    new-array v11, v3, [B

    .line 49
    .local v11, "serialBytes":[B
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v11}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 50
    new-instance v4, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v4, v3, v11}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 53
    .local v4, "serialNumber":Ljava/math/BigInteger;
    new-instance v2, Lorg/bouncycastle/cert/X509v3CertificateBuilder;

    .line 55
    invoke-virtual/range {p2 .. p2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    .line 59
    invoke-virtual/range {p1 .. p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v7

    .line 60
    invoke-virtual/range {p0 .. p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v8

    invoke-interface {v8}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v8

    invoke-static {v8}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/cert/X509v3CertificateBuilder;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    .line 63
    .local v2, "x509cg":Lorg/bouncycastle/cert/X509v3CertificateBuilder;
    invoke-virtual/range {p0 .. p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v10

    .line 65
    .local v10, "keyAlgorithm":Ljava/lang/String;
    const-string v3, "RSA"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    const-string v16, "SHA256withRSA"

    .line 74
    .local v16, "signatureAlgorithm":Ljava/lang/String;
    :goto_0
    new-instance v3, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p0 .. p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->build(Ljava/security/PrivateKey;)Lorg/bouncycastle/operator/ContentSigner;

    move-result-object v3

    .line 75
    invoke-virtual {v2, v3}, Lorg/bouncycastle/cert/X509v3CertificateBuilder;->build(Lorg/bouncycastle/operator/ContentSigner;)Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object v18

    .line 78
    .local v18, "x509holder":Lorg/bouncycastle/cert/X509CertificateHolder;
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v9

    .line 79
    .local v9, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 82
    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/cert/X509CertificateHolder;->getEncoded()[B

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 81
    invoke-virtual {v9, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v17

    check-cast v17, Ljava/security/cert/X509Certificate;

    .line 83
    .local v17, "x509c":Ljava/security/cert/X509Certificate;
    return-object v17

    .line 67
    .end local v9    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v16    # "signatureAlgorithm":Ljava/lang/String;
    .end local v17    # "x509c":Ljava/security/cert/X509Certificate;
    .end local v18    # "x509holder":Lorg/bouncycastle/cert/X509CertificateHolder;
    :cond_0
    const-string v3, "EC"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 68
    const-string v16, "SHA256withECDSA"

    .restart local v16    # "signatureAlgorithm":Ljava/lang/String;
    goto :goto_0

    .line 70
    .end local v16    # "signatureAlgorithm":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown key algorithm "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
