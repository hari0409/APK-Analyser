.class public Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;

.field private requestExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field private requestorName:Lorg/bouncycastle/asn1/x509/GeneralName;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->list:Ljava/util/List;

    iput-object v1, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestorName:Lorg/bouncycastle/asn1/x509/GeneralName;

    iput-object v1, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-void
.end method

.method private generateRequest(Lorg/bouncycastle/operator/ContentSigner;[Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/cert/ocsp/OCSPReq;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;

    invoke-virtual {v0}, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;->toRequest()Lorg/bouncycastle/asn1/ocsp/Request;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cert/ocsp/OCSPException;

    const-string v2, "exception creating Request"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/ocsp/TBSRequest;

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestorName:Lorg/bouncycastle/asn1/x509/GeneralName;

    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    iget-object v2, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-direct {v1, v0, v3, v2}, Lorg/bouncycastle/asn1/ocsp/TBSRequest;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/ASN1Sequence;Lorg/bouncycastle/asn1/x509/Extensions;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestorName:Lorg/bouncycastle/asn1/x509/GeneralName;

    if-nez v0, :cond_1

    new-instance v0, Lorg/bouncycastle/cert/ocsp/OCSPException;

    const-string v1, "requestorName must be specified if request is signed."

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_1
    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ocsp/TBSRequest;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v2, Lorg/bouncycastle/asn1/DERBitString;

    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getSignature()[B

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    if-eqz p2, :cond_4

    array-length v0, p2

    if-lez v0, :cond_4

    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v0, 0x0

    :goto_1
    array-length v5, p2

    if-eq v0, v5, :cond_2

    aget-object v5, p2, v0

    invoke-virtual {v5}, Lorg/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cert/ocsp/OCSPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception processing TBSRequest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    new-instance v0, Lorg/bouncycastle/asn1/ocsp/Signature;

    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v0, v3, v2, v5}, Lorg/bouncycastle/asn1/ocsp/Signature;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/DERBitString;Lorg/bouncycastle/asn1/ASN1Sequence;)V

    :cond_3
    :goto_2
    new-instance v2, Lorg/bouncycastle/cert/ocsp/OCSPReq;

    new-instance v3, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;

    invoke-direct {v3, v1, v0}, Lorg/bouncycastle/asn1/ocsp/OCSPRequest;-><init>(Lorg/bouncycastle/asn1/ocsp/TBSRequest;Lorg/bouncycastle/asn1/ocsp/Signature;)V

    invoke-direct {v2, v3}, Lorg/bouncycastle/cert/ocsp/OCSPReq;-><init>(Lorg/bouncycastle/asn1/ocsp/OCSPRequest;)V

    return-object v2

    :cond_4
    new-instance v0, Lorg/bouncycastle/asn1/ocsp/Signature;

    invoke-direct {v0, v3, v2}, Lorg/bouncycastle/asn1/ocsp/Signature;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/DERBitString;)V

    goto :goto_2
.end method


# virtual methods
.method public addRequest(Lorg/bouncycastle/cert/ocsp/CertificateID;)Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->list:Ljava/util/List;

    new-instance v1, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;-><init>(Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/asn1/x509/Extensions;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addRequest(Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->list:Ljava/util/List;

    new-instance v1, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;

    invoke-direct {v1, p0, p1, p2}, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder$RequestObject;-><init>(Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;Lorg/bouncycastle/cert/ocsp/CertificateID;Lorg/bouncycastle/asn1/x509/Extensions;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lorg/bouncycastle/cert/ocsp/OCSPReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->generateRequest(Lorg/bouncycastle/operator/ContentSigner;[Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/cert/ocsp/OCSPReq;

    move-result-object v0

    return-object v0
.end method

.method public build(Lorg/bouncycastle/operator/ContentSigner;[Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/cert/ocsp/OCSPReq;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/ocsp/OCSPException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no signer specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->generateRequest(Lorg/bouncycastle/operator/ContentSigner;[Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/cert/ocsp/OCSPReq;

    move-result-object v0

    return-object v0
.end method

.method public setRequestExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestExtensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-object p0
.end method

.method public setRequestorName(Lorg/bouncycastle/asn1/x500/X500Name;)Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/x509/GeneralName;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestorName:Lorg/bouncycastle/asn1/x509/GeneralName;

    return-object p0
.end method

.method public setRequestorName(Lorg/bouncycastle/asn1/x509/GeneralName;)Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cert/ocsp/OCSPReqBuilder;->requestorName:Lorg/bouncycastle/asn1/x509/GeneralName;

    return-object p0
.end method
