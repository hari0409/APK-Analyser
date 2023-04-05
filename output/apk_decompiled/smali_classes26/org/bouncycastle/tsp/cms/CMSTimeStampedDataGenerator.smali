.class public Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataGenerator;
.super Lorg/bouncycastle/tsp/cms/CMSTimeStampedGenerator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/tsp/cms/CMSTimeStampedGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public generate(Lorg/bouncycastle/tsp/TimeStampToken;)Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataGenerator;->generate(Lorg/bouncycastle/tsp/TimeStampToken;Ljava/io/InputStream;)Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;

    move-result-object v0

    return-object v0
.end method

.method public generate(Lorg/bouncycastle/tsp/TimeStampToken;Ljava/io/InputStream;)Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {p2, v2}, Lorg/bouncycastle/util/io/Streams;->pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/BEROctetString;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B)V

    :goto_0
    new-instance v2, Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampToken;->toCMSSignedData()Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/cms/CMSSignedData;->toASN1Structure()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    iget-object v3, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataGenerator;->dataUri:Ljava/net/URI;

    if-eqz v3, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/DERIA5String;

    iget-object v3, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataGenerator;->dataUri:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    :cond_1
    new-instance v3, Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;

    new-instance v4, Lorg/bouncycastle/asn1/cms/ContentInfo;

    sget-object v5, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->timestampedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v6, Lorg/bouncycastle/asn1/cms/TimeStampedData;

    iget-object v7, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataGenerator;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    new-instance v8, Lorg/bouncycastle/asn1/cms/Evidence;

    new-instance v9, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;

    invoke-direct {v9, v2}, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;-><init>(Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;)V

    invoke-direct {v8, v9}, Lorg/bouncycastle/asn1/cms/Evidence;-><init>(Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;)V

    invoke-direct {v6, v1, v7, v0, v8}, Lorg/bouncycastle/asn1/cms/TimeStampedData;-><init>(Lorg/bouncycastle/asn1/DERIA5String;Lorg/bouncycastle/asn1/cms/MetaData;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/cms/Evidence;)V

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v3, v4}, Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-object v3

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception encapsulating content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public generate(Lorg/bouncycastle/tsp/TimeStampToken;[B)Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataGenerator;->generate(Lorg/bouncycastle/tsp/TimeStampToken;Ljava/io/InputStream;)Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;

    move-result-object v0

    return-object v0
.end method
