.class public Lorg/bouncycastle/tsp/TimeStampToken;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/tsp/TimeStampToken$CertID;
    }
.end annotation


# instance fields
.field certID:Lorg/bouncycastle/tsp/TimeStampToken$CertID;

.field genTime:Ljava/util/Date;

.field tsToken:Lorg/bouncycastle/cms/CMSSignedData;

.field tsaSignerInfo:Lorg/bouncycastle/cms/SignerInformation;

.field tstInfo:Lorg/bouncycastle/tsp/TimeStampTokenInfo;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/tsp/TimeStampToken;->getSignedData(Lorg/bouncycastle/asn1/cms/ContentInfo;)Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/tsp/TimeStampToken;-><init>(Lorg/bouncycastle/cms/CMSSignedData;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cms/CMSSignedData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tsToken:Lorg/bouncycastle/cms/CMSSignedData;

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tsToken:Lorg/bouncycastle/cms/CMSSignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSSignedData;->getSignedContentTypeOID()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_ct_TSTInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v1, "ContentInfo object not for a time stamp."

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tsToken:Lorg/bouncycastle/cms/CMSSignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSSignedData;->getSignerInfos()Lorg/bouncycastle/cms/SignerInformationStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time-stamp token signed by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " signers, but it must contain just the TSA signature."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/cms/SignerInformation;

    iput-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tsaSignerInfo:Lorg/bouncycastle/cms/SignerInformation;

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tsToken:Lorg/bouncycastle/cms/CMSSignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSSignedData;->getSignedContent()Lorg/bouncycastle/cms/CMSTypedData;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {v0, v1}, Lorg/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/TSTInfo;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;-><init>(Lorg/bouncycastle/asn1/tsp/TSTInfo;)V

    iput-object v1, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tstInfo:Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tsaSignerInfo:Lorg/bouncycastle/cms/SignerInformation;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/SignerInformation;->getSignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_signingCertificate:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cms/AttributeTable;->get(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/cms/Attribute;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ess/SigningCertificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ess/SigningCertificate;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/tsp/TimeStampToken$CertID;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ess/SigningCertificate;->getCerts()[Lorg/bouncycastle/asn1/ess/ESSCertID;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v0}, Lorg/bouncycastle/asn1/ess/ESSCertID;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ess/ESSCertID;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/tsp/TimeStampToken$CertID;-><init>(Lorg/bouncycastle/tsp/TimeStampToken;Lorg/bouncycastle/asn1/ess/ESSCertID;)V

    iput-object v1, p0, Lorg/bouncycastle/tsp/TimeStampToken;->certID:Lorg/bouncycastle/tsp/TimeStampToken$CertID;

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tsaSignerInfo:Lorg/bouncycastle/cms/SignerInformation;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/SignerInformation;->getSignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_aa_signingCertificateV2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cms/AttributeTable;->get(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/cms/Attribute;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v1, "no signing certificate attribute found, time stamp invalid."

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/tsp/TSPException;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSException;->getUnderlyingException()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ess/SigningCertificateV2;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ess/SigningCertificateV2;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/tsp/TimeStampToken$CertID;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ess/SigningCertificateV2;->getCerts()[Lorg/bouncycastle/asn1/ess/ESSCertIDv2;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v0}, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ess/ESSCertIDv2;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/tsp/TimeStampToken$CertID;-><init>(Lorg/bouncycastle/tsp/TimeStampToken;Lorg/bouncycastle/asn1/ess/ESSCertIDv2;)V

    iput-object v1, p0, Lorg/bouncycastle/tsp/TimeStampToken;->certID:Lorg/bouncycastle/tsp/TimeStampToken$CertID;
    :try_end_1
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static getSignedData(Lorg/bouncycastle/asn1/cms/ContentInfo;)Lorg/bouncycastle/cms/CMSSignedData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/bouncycastle/cms/CMSSignedData;

    invoke-direct {v0, p0}, Lorg/bouncycastle/cms/CMSSignedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/tsp/TSPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TSP parsing error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getAttributeCertificates()Lorg/bouncycastle/util/Store;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tsToken:Lorg/bouncycastle/cms/CMSSignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSSignedData;->getAttributeCertificates()Lorg/bouncycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public getCRLs()Lorg/bouncycastle/util/Store;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tsToken:Lorg/bouncycastle/cms/CMSSignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSSignedData;->getCRLs()Lorg/bouncycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public getCertificates()Lorg/bouncycastle/util/Store;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tsToken:Lorg/bouncycastle/cms/CMSSignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSSignedData;->getCertificates()Lorg/bouncycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tsToken:Lorg/bouncycastle/cms/CMSSignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSSignedData;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getSID()Lorg/bouncycastle/cms/SignerId;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tsaSignerInfo:Lorg/bouncycastle/cms/SignerInformation;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/SignerInformation;->getSID()Lorg/bouncycastle/cms/SignerId;

    move-result-object v0

    return-object v0
.end method

.method public getSignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tsaSignerInfo:Lorg/bouncycastle/cms/SignerInformation;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/SignerInformation;->getSignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    return-object v0
.end method

.method public getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tstInfo:Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    return-object v0
.end method

.method public getUnsignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tsaSignerInfo:Lorg/bouncycastle/cms/SignerInformation;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    return-object v0
.end method

.method public isSignatureValid(Lorg/bouncycastle/cms/SignerInformationVerifier;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tsaSignerInfo:Lorg/bouncycastle/cms/SignerInformation;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/SignerInformation;->verify(Lorg/bouncycastle/cms/SignerInformationVerifier;)Z
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSException;->getUnderlyingException()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/tsp/TSPException;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSException;->getUnderlyingException()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v1, Lorg/bouncycastle/tsp/TSPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMS exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toCMSSignedData()Lorg/bouncycastle/cms/CMSSignedData;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tsToken:Lorg/bouncycastle/cms/CMSSignedData;

    return-object v0
.end method

.method public validate(Lorg/bouncycastle/cms/SignerInformationVerifier;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Lorg/bouncycastle/tsp/TSPValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformationVerifier;->hasAssociatedCertificate()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "verifier provider needs an associated certificate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformationVerifier;->getAssociatedCertificate()Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object v2

    iget-object v1, p0, Lorg/bouncycastle/tsp/TimeStampToken;->certID:Lorg/bouncycastle/tsp/TimeStampToken$CertID;

    invoke-virtual {v1}, Lorg/bouncycastle/tsp/TimeStampToken$CertID;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/cms/SignerInformationVerifier;->getDigestCalculator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v2}, Lorg/bouncycastle/cert/X509CertificateHolder;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    iget-object v3, p0, Lorg/bouncycastle/tsp/TimeStampToken;->certID:Lorg/bouncycastle/tsp/TimeStampToken$CertID;

    invoke-virtual {v3}, Lorg/bouncycastle/tsp/TimeStampToken$CertID;->getCertHash()[B

    move-result-object v3

    invoke-interface {v1}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v1

    invoke-static {v3, v1}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v1, "certificate hash does not match certID hash."

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSException;->getUnderlyingException()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Lorg/bouncycastle/tsp/TSPException;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSException;->getUnderlyingException()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/bouncycastle/tsp/TimeStampToken;->certID:Lorg/bouncycastle/tsp/TimeStampToken$CertID;

    invoke-virtual {v1}, Lorg/bouncycastle/tsp/TimeStampToken$CertID;->getIssuerSerial()Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v3, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    invoke-virtual {v2}, Lorg/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    iget-object v1, p0, Lorg/bouncycastle/tsp/TimeStampToken;->certID:Lorg/bouncycastle/tsp/TimeStampToken$CertID;

    invoke-virtual {v1}, Lorg/bouncycastle/tsp/TimeStampToken$CertID;->getIssuerSerial()Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/IssuerSerial;->getSerial()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v1, "certificate serial number does not match certID for signature."

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_1
    move-exception v0

    new-instance v1, Lorg/bouncycastle/tsp/TSPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem processing certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_2
    iget-object v1, p0, Lorg/bouncycastle/tsp/TimeStampToken;->certID:Lorg/bouncycastle/tsp/TimeStampToken$CertID;

    invoke-virtual {v1}, Lorg/bouncycastle/tsp/TimeStampToken$CertID;->getIssuerSerial()Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/IssuerSerial;->getIssuer()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    move v1, v0

    :goto_0
    array-length v5, v4

    if-eq v1, v5, :cond_3

    aget-object v5, v4, v1

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    aget-object v5, v4, v1

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v5

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getName()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v0, 0x1

    :cond_3
    if-nez v0, :cond_5

    new-instance v0, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v1, "certificate name does not match certID for signature. "

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    new-instance v1, Lorg/bouncycastle/tsp/TSPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to create digest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/operator/OperatorCreationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :try_start_3
    invoke-static {v2}, Lorg/bouncycastle/tsp/TSPUtil;->validateCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;)V

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tstInfo:Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getGenTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/bouncycastle/cert/X509CertificateHolder;->isValidOn(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v1, "certificate not valid when time stamp created."

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampToken;->tsaSignerInfo:Lorg/bouncycastle/cms/SignerInformation;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/SignerInformation;->verify(Lorg/bouncycastle/cms/SignerInformationVerifier;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v1, "signature not created by certificate."

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_7
    new-instance v1, Lorg/bouncycastle/tsp/TSPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMS exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_8
    return-void
.end method
