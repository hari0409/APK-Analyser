.class Lorg/bouncycastle/tsp/cms/MetaDataUtil;
.super Ljava/lang/Object;


# instance fields
.field private final metaData:Lorg/bouncycastle/asn1/cms/MetaData;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/cms/MetaData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    return-void
.end method

.method private convertString(Lorg/bouncycastle/asn1/ASN1String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/MetaData;->getFileName()Lorg/bouncycastle/asn1/DERUTF8String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->convertString(Lorg/bouncycastle/asn1/ASN1String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getMediaType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/MetaData;->getMediaType()Lorg/bouncycastle/asn1/DERIA5String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->convertString(Lorg/bouncycastle/asn1/ASN1String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getOtherMetaData()Lorg/bouncycastle/asn1/cms/Attributes;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/MetaData;->getOtherMetaData()Lorg/bouncycastle/asn1/cms/Attributes;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method initialiseMessageImprintDigestCalculator(Lorg/bouncycastle/operator/DigestCalculator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/MetaData;->isHashProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {p1}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tsp/cms/MetaDataUtil;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/cms/MetaData;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to initialise calculator from metaData: "

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
.end method
