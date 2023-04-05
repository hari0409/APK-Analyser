.class public Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/util/Encodable;


# static fields
.field public static final popKeyAgreement:I = 0x3

.field public static final popKeyEncipherment:I = 0x2

.field public static final popRaVerified:I = 0x0

.field public static final popSigningKey:I = 0x1


# instance fields
.field private final certReqMsg:Lorg/bouncycastle/asn1/crmf/CertReqMsg;

.field private final controls:Lorg/bouncycastle/asn1/crmf/Controls;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/crmf/CertReqMsg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->getCertReq()Lorg/bouncycastle/asn1/crmf/CertRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/CertRequest;->getControls()Lorg/bouncycastle/asn1/crmf/Controls;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->controls:Lorg/bouncycastle/asn1/crmf/Controls;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->parseBytes([B)Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;-><init>(Lorg/bouncycastle/asn1/crmf/CertReqMsg;)V

    return-void
.end method

.method private findControl(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->controls:Lorg/bouncycastle/asn1/crmf/Controls;

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->controls:Lorg/bouncycastle/asn1/crmf/Controls;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/Controls;->toAttributeTypeAndValueArray()[Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;

    move-result-object v2

    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-eq v0, v3, :cond_2

    aget-object v3, v2, v0

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    aget-object v0, v2, v0

    :goto_2
    move-object v1, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method private static parseBytes([B)Lorg/bouncycastle/asn1/crmf/CertReqMsg;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/CertReqMsg;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cert/CertIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "malformed data: "

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

    :catch_1
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cert/CertIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "malformed data: "

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
.end method

.method private verifySignature(Lorg/bouncycastle/operator/ContentVerifierProvider;Lorg/bouncycastle/asn1/crmf/POPOSigningKey;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/operator/ContentVerifierProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/ContentVerifier;
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getPoposkInput()Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getPoposkInput()Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;

    move-result-object v1

    invoke-interface {v0}, Lorg/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/cert/crmf/CRMFUtil;->derEncodeToStream(Lorg/bouncycastle/asn1/ASN1Encodable;Ljava/io/OutputStream;)V

    :goto_0
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getSignature()Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DERBitString;->getOctets()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/operator/ContentVerifier;->verify([B)Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cert/crmf/CRMFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to create verifier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/operator/OperatorCreationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->getCertReq()Lorg/bouncycastle/asn1/crmf/CertRequest;

    move-result-object v1

    invoke-interface {v0}, Lorg/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/cert/crmf/CRMFUtil;->derEncodeToStream(Lorg/bouncycastle/asn1/ASN1Encodable;Ljava/io/OutputStream;)V

    goto :goto_0
.end method


# virtual methods
.method public getCertTemplate()Lorg/bouncycastle/asn1/crmf/CertTemplate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->getCertReq()Lorg/bouncycastle/asn1/crmf/CertRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/CertRequest;->getCertTemplate()Lorg/bouncycastle/asn1/crmf/CertTemplate;

    move-result-object v0

    return-object v0
.end method

.method public getControl(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/cert/crmf/Control;
    .locals 3

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->findControl(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v2, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_regCtrl_pkiArchiveOptions:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/cert/crmf/PKIArchiveControl;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/crmf/PKIArchiveControl;-><init>(Lorg/bouncycastle/asn1/crmf/PKIArchiveOptions;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v2, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_regCtrl_regToken:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/cert/crmf/RegTokenControl;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/DERUTF8String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERUTF8String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/crmf/RegTokenControl;-><init>(Lorg/bouncycastle/asn1/DERUTF8String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;->getType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v2, Lorg/bouncycastle/asn1/crmf/CRMFObjectIdentifiers;->id_regCtrl_authenticator:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/cert/crmf/AuthenticatorControl;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/DERUTF8String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERUTF8String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/crmf/AuthenticatorControl;-><init>(Lorg/bouncycastle/asn1/DERUTF8String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getProofOfPossessionType()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->getPopo()Lorg/bouncycastle/asn1/crmf/ProofOfPossession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;->getType()I

    move-result v0

    return v0
.end method

.method public hasControl(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->findControl(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/crmf/AttributeTypeAndValue;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasControls()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->controls:Lorg/bouncycastle/asn1/crmf/Controls;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasProofOfPossession()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->getPopo()Lorg/bouncycastle/asn1/crmf/ProofOfPossession;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSigningKeyProofOfPossessionWithPKMAC()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->getPopo()Lorg/bouncycastle/asn1/crmf/ProofOfPossession;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;->getType()I

    move-result v3

    if-ne v3, v0, :cond_1

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;->getObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/POPOSigningKey;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getPoposkInput()Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;->getPublicKeyMAC()Lorg/bouncycastle/asn1/crmf/PKMACValue;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public isValidSigningKeyPOP(Lorg/bouncycastle/operator/ContentVerifierProvider;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->getPopo()Lorg/bouncycastle/asn1/crmf/ProofOfPossession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;->getObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/POPOSigningKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getPoposkInput()Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getPoposkInput()Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;->getPublicKeyMAC()Lorg/bouncycastle/asn1/crmf/PKMACValue;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "verification requires password check"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->verifySignature(Lorg/bouncycastle/operator/ContentVerifierProvider;Lorg/bouncycastle/asn1/crmf/POPOSigningKey;)Z

    move-result v0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not Signing Key type of proof of possession"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isValidSigningKeyPOP(Lorg/bouncycastle/operator/ContentVerifierProvider;Lorg/bouncycastle/cert/crmf/PKMACBuilder;[C)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/CertReqMsg;->getPopo()Lorg/bouncycastle/asn1/crmf/ProofOfPossession;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/ProofOfPossession;->getObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/POPOSigningKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getPoposkInput()Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getPoposkInput()Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;->getSender()Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no PKMAC present in proof of possession"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/POPOSigningKey;->getPoposkInput()Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/crmf/POPOSigningKeyInput;->getPublicKeyMAC()Lorg/bouncycastle/asn1/crmf/PKMACValue;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/cert/crmf/PKMACValueVerifier;

    invoke-direct {v2, p2}, Lorg/bouncycastle/cert/crmf/PKMACValueVerifier;-><init>(Lorg/bouncycastle/cert/crmf/PKMACBuilder;)V

    invoke-virtual {p0}, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->getCertTemplate()Lorg/bouncycastle/asn1/crmf/CertTemplate;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/crmf/CertTemplate;->getPublicKey()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v3

    invoke-virtual {v2, v1, p3, v3}, Lorg/bouncycastle/cert/crmf/PKMACValueVerifier;->isValid(Lorg/bouncycastle/asn1/crmf/PKMACValue;[CLorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->verifySignature(Lorg/bouncycastle/operator/ContentVerifierProvider;Lorg/bouncycastle/asn1/crmf/POPOSigningKey;)Z

    move-result v0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not Signing Key type of proof of possession"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/crmf/CertReqMsg;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;->certReqMsg:Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    return-object v0
.end method
