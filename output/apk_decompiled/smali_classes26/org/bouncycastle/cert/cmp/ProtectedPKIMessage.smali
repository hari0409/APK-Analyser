.class public Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;
.super Ljava/lang/Object;


# instance fields
.field private pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/cmp/PKIMessage;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->getHeader()Lorg/bouncycastle/asn1/cmp/PKIHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/PKIHeader;->getProtectionAlg()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PKIMessage not protected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cert/cmp/GeneralPKIMessage;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/cert/cmp/GeneralPKIMessage;->hasProtection()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PKIMessage not protected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/cert/cmp/GeneralPKIMessage;->toASN1Structure()Lorg/bouncycastle/asn1/cmp/PKIMessage;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    return-void
.end method

.method private verifySignature([BLorg/bouncycastle/operator/ContentVerifier;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->getHeader()Lorg/bouncycastle/asn1/cmp/PKIHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->getBody()Lorg/bouncycastle/asn1/cmp/PKIBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-interface {p2}, Lorg/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    const-string v0, "DER"

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-interface {p2, p1}, Lorg/bouncycastle/operator/ContentVerifier;->verify([B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getBody()Lorg/bouncycastle/asn1/cmp/PKIBody;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->getBody()Lorg/bouncycastle/asn1/cmp/PKIBody;

    move-result-object v0

    return-object v0
.end method

.method public getCertificates()[Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->getExtraCerts()[Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    move-result-object v2

    if-nez v2, :cond_0

    new-array v0, v0, [Lorg/bouncycastle/cert/X509CertificateHolder;

    :goto_0
    return-object v0

    :cond_0
    array-length v1, v2

    new-array v1, v1, [Lorg/bouncycastle/cert/X509CertificateHolder;

    :goto_1
    array-length v3, v2

    if-eq v0, v3, :cond_1

    new-instance v3, Lorg/bouncycastle/cert/X509CertificateHolder;

    aget-object v4, v2, v0

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->getX509v3PKCert()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/cert/X509CertificateHolder;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getHeader()Lorg/bouncycastle/asn1/cmp/PKIHeader;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->getHeader()Lorg/bouncycastle/asn1/cmp/PKIHeader;

    move-result-object v0

    return-object v0
.end method

.method public hasPasswordBasedMacProtection()Z
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->getHeader()Lorg/bouncycastle/asn1/cmp/PKIHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/PKIHeader;->getProtectionAlg()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->passwordBasedMac:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/cmp/PKIMessage;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    return-object v0
.end method

.method public verify(Lorg/bouncycastle/cert/crmf/PKMACBuilder;[C)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/cmp/CMPException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/asn1/cmp/CMPObjectIdentifiers;->passwordBasedMac:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v1, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->getHeader()Lorg/bouncycastle/asn1/cmp/PKIHeader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cmp/PKIHeader;->getProtectionAlg()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/cert/cmp/CMPException;

    const-string v1, "protection algorithm not mac based"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/cmp/CMPException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->getHeader()Lorg/bouncycastle/asn1/cmp/PKIHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/PKIHeader;->getProtectionAlg()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmp/PBMParameter;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PBMParameter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->setParameters(Lorg/bouncycastle/asn1/cmp/PBMParameter;)Lorg/bouncycastle/cert/crmf/PKMACBuilder;

    invoke-virtual {p1, p2}, Lorg/bouncycastle/cert/crmf/PKMACBuilder;->build([C)Lorg/bouncycastle/operator/MacCalculator;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/operator/MacCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v3, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->getHeader()Lorg/bouncycastle/asn1/cmp/PKIHeader;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v3, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->getBody()Lorg/bouncycastle/asn1/cmp/PKIBody;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    const-string v2, "DER"

    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-interface {v0}, Lorg/bouncycastle/operator/MacCalculator;->getMac()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->getProtection()Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cert/cmp/CMPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to verify MAC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cert/cmp/CMPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public verify(Lorg/bouncycastle/operator/ContentVerifierProvider;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/cmp/CMPException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->getHeader()Lorg/bouncycastle/asn1/cmp/PKIHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/PKIHeader;->getProtectionAlg()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/operator/ContentVerifierProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/ContentVerifier;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->pkiMessage:Lorg/bouncycastle/asn1/cmp/PKIMessage;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cmp/PKIMessage;->getProtection()Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;->verifySignature([BLorg/bouncycastle/operator/ContentVerifier;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cert/cmp/CMPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to verify signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cert/cmp/CMPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
