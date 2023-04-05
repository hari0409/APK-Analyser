.class public Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator;
.super Lorg/bouncycastle/cms/CMSEnvelopedGenerator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSEnvelopedGenerator;-><init>()V

    return-void
.end method

.method private doGenerate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputEncryptor;)Lorg/bouncycastle/cms/CMSEnvelopedData;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->oldRecipientInfoGenerators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can only use addRecipientGenerator() with this method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-interface {p2, v0}, Lorg/bouncycastle/operator/OutputEncryptor;->getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/bouncycastle/cms/CMSTypedData;->write(Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {p2}, Lorg/bouncycastle/operator/OutputEncryptor;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/asn1/BEROctetString;

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B)V

    invoke-interface {p2}, Lorg/bouncycastle/operator/OutputEncryptor;->getKey()Lorg/bouncycastle/operator/GenericKey;

    move-result-object v4

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->recipientInfoGenerators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/cms/RecipientInfoGenerator;

    invoke-interface {v0, v4}, Lorg/bouncycastle/cms/RecipientInfoGenerator;->generate(Lorg/bouncycastle/operator/GenericKey;)Lorg/bouncycastle/asn1/cms/RecipientInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v4, Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    invoke-interface {p1}, Lorg/bouncycastle/cms/CMSTypedData;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-direct {v4, v0, v2, v3}, Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->unprotectedAttributeGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->unprotectedAttributeGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v2}, Lorg/bouncycastle/cms/CMSAttributeTableGenerator;->getAttributes(Ljava/util/Map;)Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v2

    new-instance v0, Lorg/bouncycastle/asn1/BERSet;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/BERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    :cond_2
    new-instance v2, Lorg/bouncycastle/asn1/cms/ContentInfo;

    sget-object v3, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->envelopedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/asn1/cms/EnvelopedData;

    iget-object v6, p0, Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    new-instance v7, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v7, v1}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v5, v6, v7, v4, v0}, Lorg/bouncycastle/asn1/cms/EnvelopedData;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;Lorg/bouncycastle/asn1/ASN1Set;)V

    invoke-direct {v2, v3, v5}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/cms/CMSEnvelopedData;

    invoke-direct {v0, v2}, Lorg/bouncycastle/cms/CMSEnvelopedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-object v0
.end method


# virtual methods
.method public generate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputEncryptor;)Lorg/bouncycastle/cms/CMSEnvelopedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->doGenerate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputEncryptor;)Lorg/bouncycastle/cms/CMSEnvelopedData;

    move-result-object v0

    return-object v0
.end method
