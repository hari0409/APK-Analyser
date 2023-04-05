.class public Lorg/bouncycastle/cms/SignerInformation;
.super Ljava/lang/Object;


# instance fields
.field private final content:Lorg/bouncycastle/cms/CMSProcessable;

.field private final contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field protected final digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field protected final encryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field protected final info:Lorg/bouncycastle/asn1/cms/SignerInfo;

.field private final isCounterSignature:Z

.field private resultDigest:[B

.field private final sid:Lorg/bouncycastle/cms/SignerId;

.field private final signature:[B

.field protected final signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

.field private signedAttributeValues:Lorg/bouncycastle/asn1/cms/AttributeTable;

.field protected final unsignedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

.field private unsignedAttributeValues:Lorg/bouncycastle/asn1/cms/AttributeTable;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/cms/SignerInfo;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSProcessable;[B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/SignerInformation;->info:Lorg/bouncycastle/asn1/cms/SignerInfo;

    iput-object p2, p0, Lorg/bouncycastle/cms/SignerInformation;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/bouncycastle/cms/SignerInformation;->isCounterSignature:Z

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getSID()Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerIdentifier;->isTagged()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerIdentifier;->getId()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/cms/SignerId;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/cms/SignerId;-><init>([B)V

    iput-object v1, p0, Lorg/bouncycastle/cms/SignerInformation;->sid:Lorg/bouncycastle/cms/SignerId;

    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getAuthenticatedAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getUnauthenticatedAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->unsignedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getEncryptedDigest()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->signature:[B

    iput-object p3, p0, Lorg/bouncycastle/cms/SignerInformation;->content:Lorg/bouncycastle/cms/CMSProcessable;

    iput-object p4, p0, Lorg/bouncycastle/cms/SignerInformation;->resultDigest:[B

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerIdentifier;->getId()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/cms/SignerId;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getName()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/SignerId;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V

    iput-object v1, p0, Lorg/bouncycastle/cms/SignerInformation;->sid:Lorg/bouncycastle/cms/SignerId;

    goto :goto_1
.end method

.method protected constructor <init>(Lorg/bouncycastle/cms/SignerInformation;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/bouncycastle/cms/SignerInformation;->info:Lorg/bouncycastle/asn1/cms/SignerInfo;

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->info:Lorg/bouncycastle/asn1/cms/SignerInfo;

    iget-object v0, p1, Lorg/bouncycastle/cms/SignerInformation;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformation;->isCounterSignature()Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/cms/SignerInformation;->isCounterSignature:Z

    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformation;->getSID()Lorg/bouncycastle/cms/SignerId;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->sid:Lorg/bouncycastle/cms/SignerId;

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->info:Lorg/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->info:Lorg/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getAuthenticatedAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->info:Lorg/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getUnauthenticatedAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->unsignedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->info:Lorg/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->info:Lorg/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getEncryptedDigest()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->signature:[B

    iget-object v0, p1, Lorg/bouncycastle/cms/SignerInformation;->content:Lorg/bouncycastle/cms/CMSProcessable;

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->content:Lorg/bouncycastle/cms/CMSProcessable;

    iget-object v0, p1, Lorg/bouncycastle/cms/SignerInformation;->resultDigest:[B

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->resultDigest:[B

    return-void
.end method

.method public static addCounterSigners(Lorg/bouncycastle/cms/SignerInformation;Lorg/bouncycastle/cms/SignerInformationStore;)Lorg/bouncycastle/cms/SignerInformation;
    .locals 9

    iget-object v5, p0, Lorg/bouncycastle/cms/SignerInformation;->info:Lorg/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    move-object v7, v0

    :goto_0
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/cms/SignerInformation;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/SignerInformation;->toASN1Structure()Lorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move-object v7, v0

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/bouncycastle/asn1/cms/Attribute;

    sget-object v2, Lorg/bouncycastle/asn1/cms/CMSAttributes;->counterSignature:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v3, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v3, v1}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/asn1/cms/Attribute;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Set;)V

    invoke-virtual {v7, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v8, Lorg/bouncycastle/cms/SignerInformation;

    new-instance v0, Lorg/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getSID()Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    move-result-object v1

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getAuthenticatedAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getEncryptedDigest()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v5

    new-instance v6, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/asn1/cms/SignerInfo;-><init>(Lorg/bouncycastle/asn1/cms/SignerIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1Set;)V

    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInformation;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/cms/SignerInformation;->content:Lorg/bouncycastle/cms/CMSProcessable;

    const/4 v3, 0x0

    invoke-direct {v8, v0, v1, v2, v3}, Lorg/bouncycastle/cms/SignerInformation;-><init>(Lorg/bouncycastle/asn1/cms/SignerInfo;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSProcessable;[B)V

    return-object v8
.end method

.method private doVerify(Lorg/bouncycastle/cms/SignerInformationVerifier;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v3, 0x0

    sget-object v1, Lorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lorg/bouncycastle/cms/CMSSignedHelper;

    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getEncryptionAlgOID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/cms/CMSSignedHelper;->getEncryptionAlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/cms/SignerInformation;->info:Lorg/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/bouncycastle/cms/SignerInformationVerifier;->getContentVerifier(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/ContentVerifier;
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    invoke-interface {v2}, Lorg/bouncycastle/operator/ContentVerifier;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iget-object v5, p0, Lorg/bouncycastle/cms/SignerInformation;->resultDigest:[B

    if-nez v5, :cond_5

    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getDigestAlgorithmID()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/bouncycastle/cms/SignerInformationVerifier;->getDigestCalculator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/cms/SignerInformation;->content:Lorg/bouncycastle/cms/CMSProcessable;

    if-eqz v6, :cond_3

    invoke-interface {v5}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    iget-object v7, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    if-nez v7, :cond_2

    instance-of v7, v2, Lorg/bouncycastle/operator/RawContentVerifier;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lorg/bouncycastle/cms/SignerInformation;->content:Lorg/bouncycastle/cms/CMSProcessable;

    invoke-interface {v7, v6}, Lorg/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    :goto_0
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    :goto_1
    invoke-interface {v5}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v5

    iput-object v5, p0, Lorg/bouncycastle/cms/SignerInformation;->resultDigest:[B

    :cond_0
    :goto_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_1 .. :try_end_1} :catch_2

    sget-object v1, Lorg/bouncycastle/asn1/cms/CMSAttributes;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "content-type"

    invoke-direct {p0, v1, v5}, Lorg/bouncycastle/cms/SignerInformation;->getSingleValuedSignedAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lorg/bouncycastle/cms/SignerInformation;->isCounterSignature:Z

    if-nez v1, :cond_a

    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_a

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string v2, "The content-type attribute type MUST be present whenever signed attributes are present in signed-data"

    invoke-direct {v1, v2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v1

    new-instance v2, Lorg/bouncycastle/cms/CMSException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t create content verifier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/operator/OperatorCreationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :cond_1
    :try_start_2
    new-instance v7, Lorg/bouncycastle/util/io/TeeOutputStream;

    invoke-direct {v7, v6, v1}, Lorg/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    iget-object v8, p0, Lorg/bouncycastle/cms/SignerInformation;->content:Lorg/bouncycastle/cms/CMSProcessable;

    invoke-interface {v8, v7}, Lorg/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v2, Lorg/bouncycastle/cms/CMSException;

    const-string v3, "can\'t process mime object to create signature."

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :cond_2
    :try_start_3
    iget-object v7, p0, Lorg/bouncycastle/cms/SignerInformation;->content:Lorg/bouncycastle/cms/CMSProcessable;

    invoke-interface {v7, v6}, Lorg/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getEncodedSignedAttributes()[B

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    new-instance v2, Lorg/bouncycastle/cms/CMSException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t create digest calculator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/operator/OperatorCreationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :cond_3
    :try_start_4
    iget-object v6, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getEncodedSignedAttributes()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_1

    :cond_4
    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string v2, "data not encapsulated in signature - use detached constructor."

    invoke-direct {v1, v2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    iget-object v5, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    if-nez v5, :cond_6

    iget-object v5, p0, Lorg/bouncycastle/cms/SignerInformation;->content:Lorg/bouncycastle/cms/CMSProcessable;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/bouncycastle/cms/SignerInformation;->content:Lorg/bouncycastle/cms/CMSProcessable;

    invoke-interface {v5, v1}, Lorg/bouncycastle/cms/CMSProcessable;->write(Ljava/io/OutputStream;)V

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getEncodedSignedAttributes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/OutputStream;->write([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    :cond_7
    iget-boolean v5, p0, Lorg/bouncycastle/cms/SignerInformation;->isCounterSignature:Z

    if-eqz v5, :cond_8

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string v2, "[For counter signatures,] the signedAttributes field MUST NOT contain a content-type attribute"

    invoke-direct {v1, v2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    instance-of v5, v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-nez v5, :cond_9

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string v2, "content-type attribute value not of ASN.1 type \'OBJECT IDENTIFIER\'"

    invoke-direct {v1, v2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    check-cast v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v5, p0, Lorg/bouncycastle/cms/SignerInformation;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string v2, "content-type attribute value does not match eContentType"

    invoke-direct {v1, v2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getSignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v5

    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v1

    if-eqz v1, :cond_b

    sget-object v6, Lorg/bouncycastle/asn1/cms/CMSAttributes;->cmsAlgorithmProtect:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v6}, Lorg/bouncycastle/asn1/cms/AttributeTable;->getAll(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v1

    if-lez v1, :cond_b

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string v2, "A cmsAlgorithmProtect attribute MUST be a signed attribute"

    invoke-direct {v1, v2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    if-eqz v5, :cond_f

    sget-object v1, Lorg/bouncycastle/asn1/cms/CMSAttributes;->cmsAlgorithmProtect:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v1}, Lorg/bouncycastle/asn1/cms/AttributeTable;->getAll(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v6

    if-le v6, v9, :cond_c

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string v2, "Only one instance of a cmsAlgorithmProtect attribute can be present"

    invoke-direct {v1, v2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v6

    if-lez v6, :cond_f

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/Attribute;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v6

    if-eq v6, v9, :cond_d

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string v2, "A cmsAlgorithmProtect attribute MUST contain exactly one value"

    invoke-direct {v1, v2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttributeValues()[Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-static {v1}, Lorg/bouncycastle/asn1/cms/CMSAlgorithmProtection;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/CMSAlgorithmProtection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/CMSAlgorithmProtection;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    iget-object v7, p0, Lorg/bouncycastle/cms/SignerInformation;->info:Lorg/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/bouncycastle/cms/CMSUtils;->isEquivalent(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v6

    if-nez v6, :cond_e

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string v2, "CMS Algorithm Identifier Protection check failed for digestAlgorithm"

    invoke-direct {v1, v2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/CMSAlgorithmProtection;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iget-object v6, p0, Lorg/bouncycastle/cms/SignerInformation;->info:Lorg/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-static {v1, v6}, Lorg/bouncycastle/cms/CMSUtils;->isEquivalent(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Z

    move-result v1

    if-nez v1, :cond_f

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string v2, "CMS Algorithm Identifier Protection check failed for signatureAlgorithm"

    invoke-direct {v1, v2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    sget-object v1, Lorg/bouncycastle/asn1/cms/CMSAttributes;->messageDigest:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v6, "message-digest"

    invoke-direct {p0, v1, v6}, Lorg/bouncycastle/cms/SignerInformation;->getSingleValuedSignedAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_12

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string v2, "the message-digest signed attribute type MUST be present when there are any signed attributes present"

    invoke-direct {v1, v2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    instance-of v6, v1, Lorg/bouncycastle/asn1/ASN1OctetString;

    if-nez v6, :cond_11

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string v2, "message-digest attribute value not of ASN.1 type \'OCTET STRING\'"

    invoke-direct {v1, v2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    check-cast v1, Lorg/bouncycastle/asn1/ASN1OctetString;

    iget-object v6, p0, Lorg/bouncycastle/cms/SignerInformation;->resultDigest:[B

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v6, v1}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v1

    if-nez v1, :cond_12

    new-instance v1, Lorg/bouncycastle/cms/CMSSignerDigestMismatchException;

    const-string v2, "message-digest attribute value does not match calculated value"

    invoke-direct {v1, v2}, Lorg/bouncycastle/cms/CMSSignerDigestMismatchException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    if-eqz v5, :cond_13

    sget-object v1, Lorg/bouncycastle/asn1/cms/CMSAttributes;->counterSignature:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v1}, Lorg/bouncycastle/asn1/cms/AttributeTable;->getAll(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v1

    if-lez v1, :cond_13

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string v2, "A countersignature attribute MUST NOT be a signed attribute"

    invoke-direct {v1, v2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v1

    if-eqz v1, :cond_15

    sget-object v5, Lorg/bouncycastle/asn1/cms/CMSAttributes;->counterSignature:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/cms/AttributeTable;->getAll(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v5

    move v1, v3

    :goto_3
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v3

    if-ge v1, v3, :cond_15

    invoke-virtual {v5, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/cms/Attribute;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/Attribute;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-ge v3, v9, :cond_14

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string v2, "A countersignature attribute MUST contain at least one AttributeValue"

    invoke-direct {v1, v2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_15
    :try_start_5
    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    if-nez v1, :cond_17

    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInformation;->resultDigest:[B

    if-eqz v1, :cond_17

    instance-of v1, v2, Lorg/bouncycastle/operator/RawContentVerifier;

    if-eqz v1, :cond_17

    move-object v0, v2

    check-cast v0, Lorg/bouncycastle/operator/RawContentVerifier;

    move-object v1, v0

    const-string v2, "RSA"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    new-instance v2, Lorg/bouncycastle/asn1/x509/DigestInfo;

    new-instance v3, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v4, p0, Lorg/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sget-object v5, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v4, p0, Lorg/bouncycastle/cms/SignerInformation;->resultDigest:[B

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/x509/DigestInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    const-string v3, "DER"

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/x509/DigestInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getSignature()[B

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/bouncycastle/operator/RawContentVerifier;->verify([B[B)Z

    move-result v1

    :goto_4
    return v1

    :cond_16
    iget-object v2, p0, Lorg/bouncycastle/cms/SignerInformation;->resultDigest:[B

    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getSignature()[B

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/bouncycastle/operator/RawContentVerifier;->verify([B[B)Z

    move-result v1

    goto :goto_4

    :cond_17
    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getSignature()[B

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/bouncycastle/operator/ContentVerifier;->verify([B)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v1

    goto :goto_4

    :catch_3
    move-exception v1

    new-instance v2, Lorg/bouncycastle/cms/CMSException;

    const-string v3, "can\'t process mime object to create signature."

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method private encodeObj(Lorg/bouncycastle/asn1/ASN1Encodable;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSigningTime()Lorg/bouncycastle/asn1/cms/Time;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/asn1/cms/CMSAttributes;->signingTime:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "signing-time"

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/cms/SignerInformation;->getSingleValuedSignedAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/Time;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/Time;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "signing-time attribute value not a valid \'Time\' structure"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSingleValuedSignedAttribute(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lorg/bouncycastle/asn1/cms/AttributeTable;->getAll(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " attribute MUST NOT be an unsigned attribute"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getSignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    :pswitch_0
    return-object v0

    :cond_1
    invoke-virtual {v1, p1}, Lorg/bouncycastle/asn1/cms/AttributeTable;->getAll(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The SignedAttributes in a signerInfo MUST NOT include multiple instances of the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " attribute"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/cms/Attribute;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " attribute MUST have a single attribute value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static replaceUnsignedAttributes(Lorg/bouncycastle/cms/SignerInformation;Lorg/bouncycastle/asn1/cms/AttributeTable;)Lorg/bouncycastle/cms/SignerInformation;
    .locals 9

    const/4 v7, 0x0

    iget-object v5, p0, Lorg/bouncycastle/cms/SignerInformation;->info:Lorg/bouncycastle/asn1/cms/SignerInfo;

    if-eqz p1, :cond_0

    new-instance v6, Lorg/bouncycastle/asn1/DERSet;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    :goto_0
    new-instance v8, Lorg/bouncycastle/cms/SignerInformation;

    new-instance v0, Lorg/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getSID()Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    move-result-object v1

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getAuthenticatedAttributes()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getEncryptedDigest()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/asn1/cms/SignerInfo;-><init>(Lorg/bouncycastle/asn1/cms/SignerIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1Set;)V

    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInformation;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/cms/SignerInformation;->content:Lorg/bouncycastle/cms/CMSProcessable;

    invoke-direct {v8, v0, v1, v2, v7}, Lorg/bouncycastle/cms/SignerInformation;-><init>(Lorg/bouncycastle/asn1/cms/SignerInfo;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSProcessable;[B)V

    return-object v8

    :cond_0
    move-object v6, v7

    goto :goto_0
.end method


# virtual methods
.method public getContentDigest()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->resultDigest:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "method can only be called after verify."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->resultDigest:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->contentType:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getCounterSignatures()Lorg/bouncycastle/cms/SignerInformationStore;
    .locals 9

    const/4 v8, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getUnsignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/bouncycastle/cms/SignerInformationStore;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/cms/SignerInformationStore;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lorg/bouncycastle/asn1/cms/CMSAttributes;->counterSignature:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/cms/AttributeTable;->getAll(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-virtual {v3, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/cms/Attribute;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v4

    new-instance v5, Lorg/bouncycastle/cms/SignerInformation;

    new-instance v6, Lorg/bouncycastle/cms/CMSProcessableByteArray;

    invoke-virtual {p0}, Lorg/bouncycastle/cms/SignerInformation;->getSignature()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/bouncycastle/cms/CMSProcessableByteArray;-><init>([B)V

    invoke-direct {v5, v4, v8, v6, v8}, Lorg/bouncycastle/cms/SignerInformation;-><init>(Lorg/bouncycastle/asn1/cms/SignerInfo;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSProcessable;[B)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    new-instance v0, Lorg/bouncycastle/cms/SignerInformationStore;

    invoke-direct {v0, v2}, Lorg/bouncycastle/cms/SignerInformationStore;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getDigestAlgOID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDigestAlgParams()[B
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/SignerInformation;->encodeObj(Lorg/bouncycastle/asn1/ASN1Encodable;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception getting digest parameters "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDigestAlgorithmID()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getEncodedSignedAttributes()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEncryptionAlgOID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptionAlgParams()[B
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->encryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/SignerInformation;->encodeObj(Lorg/bouncycastle/asn1/ASN1Encodable;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception getting encryption parameters "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSID()Lorg/bouncycastle/cms/SignerId;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->sid:Lorg/bouncycastle/cms/SignerId;

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->signature:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeValues:Lorg/bouncycastle/asn1/cms/AttributeTable;

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/cms/AttributeTable;

    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/AttributeTable;-><init>(Lorg/bouncycastle/asn1/ASN1Set;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeValues:Lorg/bouncycastle/asn1/cms/AttributeTable;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->signedAttributeValues:Lorg/bouncycastle/asn1/cms/AttributeTable;

    return-object v0
.end method

.method public getUnsignedAttributes()Lorg/bouncycastle/asn1/cms/AttributeTable;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->unsignedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->unsignedAttributeValues:Lorg/bouncycastle/asn1/cms/AttributeTable;

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/cms/AttributeTable;

    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInformation;->unsignedAttributeSet:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/AttributeTable;-><init>(Lorg/bouncycastle/asn1/ASN1Set;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->unsignedAttributeValues:Lorg/bouncycastle/asn1/cms/AttributeTable;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->unsignedAttributeValues:Lorg/bouncycastle/asn1/cms/AttributeTable;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->info:Lorg/bouncycastle/asn1/cms/SignerInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getVersion()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public isCounterSignature()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/cms/SignerInformation;->isCounterSignature:Z

    return v0
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/cms/SignerInfo;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformation;->info:Lorg/bouncycastle/asn1/cms/SignerInfo;

    return-object v0
.end method

.method public verify(Lorg/bouncycastle/cms/SignerInformationVerifier;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/cms/SignerInformation;->getSigningTime()Lorg/bouncycastle/asn1/cms/Time;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformationVerifier;->hasAssociatedCertificate()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformationVerifier;->getAssociatedCertificate()Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/Time;->getDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/cert/X509CertificateHolder;->isValidOn(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/cms/CMSVerifierCertificateNotValidException;

    const-string v1, "verifier not valid at signingTime"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSVerifierCertificateNotValidException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/SignerInformation;->doVerify(Lorg/bouncycastle/cms/SignerInformationVerifier;)Z

    move-result v0

    return v0
.end method
