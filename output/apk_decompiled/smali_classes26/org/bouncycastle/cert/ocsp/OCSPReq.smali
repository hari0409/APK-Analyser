.class public Lorg/bouncycastle/cert/ocsp/OCSPReq;
.super Ljava/lang/Object;


# static fields
.field private static final EMPTY_CERTS:[Lorg/bouncycastle/cert/X509CertificateHolder;


# instance fields
.field private extensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field private req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/bouncycastle/cert/X509CertificateHolder;

    sput-object v0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->EMPTY_CERTS:[Lorg/bouncycastle/cert/X509CertificateHolder;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/cert/CertIOException;

    const-string v1, "malformed request: no request data found"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/bouncycastle/asn1/ASN1Exception; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cert/CertIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "malformed request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;->getTbsRequest()Lorg/bouncycastle/asn1/ocsp/TBSRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->getRequestExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/bouncycastle/asn1/ASN1Exception; {:try_start_1 .. :try_end_1} :catch_2

    return-void

    :catch_1
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cert/CertIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "malformed request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cert/CertIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "malformed request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cert/CertIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ocsp/OCSPRequest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;->getTbsRequest()Lorg/bouncycastle/asn1/ocsp/TBSRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->getRequestExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/ocsp/OCSPReq;-><init>(Lorg/bouncycastle/asn1/ASN1InputStream;)V

    return-void
.end method


# virtual methods
.method public getCerts()[Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;->getOptionalSignature()Lorg/bouncycastle/asn1/ocsp/Signature;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;->getOptionalSignature()Lorg/bouncycastle/asn1/ocsp/Signature;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/Signature;->getCerts()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v1, v0, [Lorg/bouncycastle/cert/X509CertificateHolder;

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-eq v0, v3, :cond_0

    new-instance v3, Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/cert/X509CertificateHolder;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    sget-object v0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->EMPTY_CERTS:[Lorg/bouncycastle/cert/X509CertificateHolder;

    goto :goto_1

    :cond_2
    sget-object v0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->EMPTY_CERTS:[Lorg/bouncycastle/cert/X509CertificateHolder;

    goto :goto_1
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lorg/bouncycastle/cert/ocsp/OCSPUtils;->getCriticalExtensionOIDs(Lorg/bouncycastle/asn1/x509/Extensions;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExtensionOIDs()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lorg/bouncycastle/cert/ocsp/OCSPUtils;->getExtensionOIDs(Lorg/bouncycastle/asn1/x509/Extensions;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lorg/bouncycastle/cert/ocsp/OCSPUtils;->getNonCriticalExtensionOIDs(Lorg/bouncycastle/asn1/x509/Extensions;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRequestList()[Lorg/bouncycastle/cert/ocsp/Req;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;->getTbsRequest()Lorg/bouncycastle/asn1/ocsp/TBSRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->getRequestList()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v2, v0, [Lorg/bouncycastle/cert/ocsp/Req;

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-eq v0, v3, :cond_0

    new-instance v3, Lorg/bouncycastle/cert/ocsp/Req;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ocsp/Request;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/Request;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/cert/ocsp/Req;-><init>(Lorg/bouncycastle/asn1/ocsp/Request;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getRequestorName()Lorg/bouncycastle/asn1/x509/GeneralName;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;->getTbsRequest()Lorg/bouncycastle/asn1/ocsp/TBSRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->getRequestorName()Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/cert/ocsp/OCSPReq;->isSigned()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;->getOptionalSignature()Lorg/bouncycastle/asn1/ocsp/Signature;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/Signature;->getSignature()Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERBitString;->getOctets()[B

    move-result-object v0

    goto :goto_0
.end method

.method public getSignatureAlgOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/cert/ocsp/OCSPReq;->isSigned()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;->getOptionalSignature()Lorg/bouncycastle/asn1/ocsp/Signature;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/Signature;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    goto :goto_0
.end method

.method public getVersionNumber()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;->getTbsRequest()Lorg/bouncycastle/asn1/ocsp/TBSRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->getVersion()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasExtensions()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSignatureValid(Lorg/bouncycastle/operator/ContentVerifierProvider;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/cert/ocsp/OCSPReq;->isSigned()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/cert/ocsp/OCSPException;

    const-string v1, "attempt to verify signature on unsigned object"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;->getOptionalSignature()Lorg/bouncycastle/asn1/ocsp/Signature;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/Signature;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/operator/ContentVerifierProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/ContentVerifier;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;->getTbsRequest()Lorg/bouncycastle/asn1/ocsp/TBSRequest;

    move-result-object v2

    const-string v3, "DER"

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Lorg/bouncycastle/cert/ocsp/OCSPReq;->getSignature()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/operator/ContentVerifier;->verify([B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cert/ocsp/OCSPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception processing signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isSigned()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReq;->req:Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;->getOptionalSignature()Lorg/bouncycastle/asn1/ocsp/Signature;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
