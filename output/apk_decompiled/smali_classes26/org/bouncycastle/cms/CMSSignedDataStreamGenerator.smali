.class public Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;
.super Lorg/bouncycastle/cms/CMSSignedGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;
    }
.end annotation


# instance fields
.field private _bufferSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSSignedGenerator;-><init>()V

    return-void
.end method

.method private calculateVersion(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 14

    const-wide/16 v12, 0x5

    const-wide/16 v10, 0x3

    const/4 v2, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->certs:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->certs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v7, v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v7, :cond_c

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    if-ne v7, v5, :cond_0

    move v0, v1

    move v3, v5

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    move v0, v5

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    const/4 v7, 0x3

    if-ne v0, v7, :cond_c

    move v0, v1

    move v4, v5

    goto :goto_1

    :cond_2
    move v1, v2

    move v3, v2

    move v4, v2

    :cond_3
    if-eqz v4, :cond_4

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, v12, v13}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    :goto_2
    return-object v0

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->crls:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->crls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v4, :cond_5

    move v2, v5

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_7

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, v12, v13}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_8

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x4

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    goto :goto_2

    :cond_8
    if-eqz v3, :cond_9

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, v10, v11}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->_signers:Ljava/util/List;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->signerGens:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->checkForVersion3(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, v10, v11}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    goto :goto_2

    :cond_a
    sget-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, v10, v11}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    goto :goto_2

    :cond_b
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    goto :goto_2

    :cond_c
    move v0, v1

    goto :goto_1
.end method

.method private checkForVersion3(Ljava/util/List;Ljava/util/List;)Z
    .locals 4

    const/4 v3, 0x3

    const/4 v1, 0x1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/cms/SignerInformation;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/SignerInformation;->toASN1Structure()Lorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getVersion()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/cms/SignerInfoGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/SignerInfoGenerator;->getGeneratedVersion()I

    move-result v0

    if-ne v0, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public open(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->open(Ljava/io/OutputStream;Z)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public open(Ljava/io/OutputStream;Z)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0, p1, p2}, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->open(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;Z)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public open(Ljava/io/OutputStream;ZLjava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->open(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;ZLjava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public open(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;Z)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->open(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;ZLjava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public open(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;ZLjava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v4, Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-direct {v4, p2}, Lorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    sget-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->signedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v0}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v5, v0, v7, v8}, Lorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;IZ)V

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->calculateVersion(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->_signers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/cms/SignerInformation;

    sget-object v3, Lorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lorg/bouncycastle/cms/CMSSignedHelper;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/SignerInformation;->getDigestAlgorithmID()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/bouncycastle/cms/CMSSignedHelper;->fixAlgID(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->signerGens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/cms/SignerInfoGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/SignerInfoGenerator;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/DERSet;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    new-instance v6, Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v6, p1}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    if-eqz p3, :cond_2

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->_bufferSize:I

    invoke-static {v0, v7, v8, v1}, Lorg/bouncycastle/cms/CMSUtils;->createBEROctetOutputStream(Ljava/io/OutputStream;IZI)Ljava/io/OutputStream;

    move-result-object v0

    :goto_2
    invoke-static {p4, v0}, Lorg/bouncycastle/cms/CMSUtils;->getSafeTeeOutputStream(Ljava/io/OutputStream;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->signerGens:Ljava/util/List;

    invoke-static {v1, v0}, Lorg/bouncycastle/cms/CMSUtils;->attachSignersToOutputStream(Ljava/util/Collection;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    new-instance v0, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator$CmsSignedDataOutputStream;-><init>(Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;Ljava/io/OutputStream;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/BERSequenceGenerator;Lorg/bouncycastle/asn1/BERSequenceGenerator;Lorg/bouncycastle/asn1/BERSequenceGenerator;)V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public setBufferSize(I)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->_bufferSize:I

    return-void
.end method
