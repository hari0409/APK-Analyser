.class public Lorg/bouncycastle/cms/CMSSignedData;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/util/Encodable;


# static fields
.field private static final HELPER:Lorg/bouncycastle/cms/CMSSignedHelper;


# instance fields
.field contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

.field private hashes:Ljava/util/Map;

.field signedContent:Lorg/bouncycastle/cms/CMSTypedData;

.field signedData:Lorg/bouncycastle/asn1/cms/SignedData;

.field signerInfoStore:Lorg/bouncycastle/cms/SignerInformationStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lorg/bouncycastle/cms/CMSSignedHelper;

    sput-object v0, Lorg/bouncycastle/cms/CMSSignedData;->HELPER:Lorg/bouncycastle/cms/CMSSignedHelper;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/cms/CMSUtils;->readContentInfo(Ljava/io/InputStream;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/CMSSignedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSSignedData;->hashes:Ljava/util/Map;

    iput-object p2, p0, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSSignedData;->getSignedData()Lorg/bouncycastle/asn1/cms/SignedData;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-static {p2}, Lorg/bouncycastle/cms/CMSUtils;->readContentInfo([B)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/CMSSignedData;-><init>(Ljava/util/Map;Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSSignedData;->getSignedData()Lorg/bouncycastle/asn1/cms/SignedData;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/cms/CMSProcessableByteArray;

    iget-object v2, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSProcessableByteArray;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V

    iput-object v1, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedContent:Lorg/bouncycastle/cms/CMSTypedData;

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lorg/bouncycastle/cms/PKCS7ProcessableObject;

    iget-object v2, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/PKCS7ProcessableObject;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v1, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedContent:Lorg/bouncycastle/cms/CMSTypedData;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedContent:Lorg/bouncycastle/cms/CMSTypedData;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/bouncycastle/cms/CMSProcessable;Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lorg/bouncycastle/cms/CMSUtils;->readContentInfo(Ljava/io/InputStream;)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/CMSSignedData;-><init>(Lorg/bouncycastle/cms/CMSProcessable;Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cms/CMSProcessable;Lorg/bouncycastle/asn1/cms/ContentInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lorg/bouncycastle/cms/CMSTypedData;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/cms/CMSTypedData;

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedContent:Lorg/bouncycastle/cms/CMSTypedData;

    :goto_0
    iput-object p2, p0, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSSignedData;->getSignedData()Lorg/bouncycastle/asn1/cms/SignedData;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    return-void

    :cond_0
    new-instance v0, Lorg/bouncycastle/cms/CMSSignedData$1;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/cms/CMSSignedData$1;-><init>(Lorg/bouncycastle/cms/CMSSignedData;Lorg/bouncycastle/cms/CMSProcessable;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedContent:Lorg/bouncycastle/cms/CMSTypedData;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/bouncycastle/cms/CMSProcessable;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-static {p2}, Lorg/bouncycastle/cms/CMSUtils;->readContentInfo([B)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/CMSSignedData;-><init>(Lorg/bouncycastle/cms/CMSProcessable;Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/cms/CMSSignedData;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    iget-object v0, p1, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    iget-object v0, p1, Lorg/bouncycastle/cms/CMSSignedData;->signedContent:Lorg/bouncycastle/cms/CMSTypedData;

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedContent:Lorg/bouncycastle/cms/CMSTypedData;

    iget-object v0, p1, Lorg/bouncycastle/cms/CMSSignedData;->signerInfoStore:Lorg/bouncycastle/cms/SignerInformationStore;

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signerInfoStore:Lorg/bouncycastle/cms/SignerInformationStore;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/cms/CMSUtils;->readContentInfo([B)Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/CMSSignedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-void
.end method

.method private getSignedData()Lorg/bouncycastle/asn1/cms/SignedData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/SignedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignedData;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string v2, "Malformed content."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    const-string v2, "Malformed content."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static replaceCertificatesAndCRLs(Lorg/bouncycastle/cms/CMSSignedData;Lorg/bouncycastle/util/Store;Lorg/bouncycastle/util/Store;Lorg/bouncycastle/util/Store;)Lorg/bouncycastle/cms/CMSSignedData;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v6, Lorg/bouncycastle/cms/CMSSignedData;

    invoke-direct {v6, p0}, Lorg/bouncycastle/cms/CMSSignedData;-><init>(Lorg/bouncycastle/cms/CMSSignedData;)V

    if-nez p1, :cond_0

    if-eqz p2, :cond_4

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    invoke-static {p1}, Lorg/bouncycastle/cms/CMSUtils;->getCertificatesFromStore(Lorg/bouncycastle/util/Store;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p2}, Lorg/bouncycastle/cms/CMSUtils;->getAttributeCertificatesFromStore(Lorg/bouncycastle/util/Store;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-static {v1}, Lorg/bouncycastle/cms/CMSUtils;->createBerSetFromList(Ljava/util/List;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    if-eqz p3, :cond_3

    invoke-static {p3}, Lorg/bouncycastle/cms/CMSUtils;->getCRLsFromStore(Lorg/bouncycastle/util/Store;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/cms/CMSUtils;->createBerSetFromList(Ljava/util/List;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    new-instance v0, Lorg/bouncycastle/asn1/cms/SignedData;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/SignedData;->getDigestAlgorithms()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v2

    iget-object v5, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/cms/SignedData;->getSignerInfos()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/cms/SignedData;-><init>(Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/cms/ContentInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;)V

    iput-object v0, v6, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    new-instance v0, Lorg/bouncycastle/asn1/cms/ContentInfo;

    iget-object v1, v6, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    iget-object v2, v6, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, v6, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    return-object v6

    :cond_3
    move-object v4, v0

    goto :goto_1

    :cond_4
    move-object v3, v0

    goto :goto_0
.end method

.method public static replaceSigners(Lorg/bouncycastle/cms/CMSSignedData;Lorg/bouncycastle/cms/SignerInformationStore;)Lorg/bouncycastle/cms/CMSSignedData;
    .locals 7

    new-instance v2, Lorg/bouncycastle/cms/CMSSignedData;

    invoke-direct {v2, p0}, Lorg/bouncycastle/cms/CMSSignedData;-><init>(Lorg/bouncycastle/cms/CMSSignedData;)V

    iput-object p1, v2, Lorg/bouncycastle/cms/CMSSignedData;->signerInfoStore:Lorg/bouncycastle/cms/SignerInformationStore;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/cms/SignerInformation;

    sget-object v5, Lorg/bouncycastle/cms/CMSSignedHelper;->INSTANCE:Lorg/bouncycastle/cms/CMSSignedHelper;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/SignerInformation;->getDigestAlgorithmID()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/cms/CMSSignedHelper;->fixAlgID(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0}, Lorg/bouncycastle/cms/SignerInformation;->toASN1Structure()Lorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_0
    new-instance v4, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v4, v1}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    new-instance v5, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v5, v3}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignedData;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x2

    :goto_1
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v0, v3}, Lorg/bouncycastle/asn1/BERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/SignedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignedData;

    move-result-object v0

    iput-object v0, v2, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    new-instance v0, Lorg/bouncycastle/asn1/cms/ContentInfo;

    iget-object v1, v2, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    iget-object v3, v2, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-direct {v0, v1, v3}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, v2, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    return-object v2
.end method

.method private verifyCounterSignature(Lorg/bouncycastle/cms/SignerInformation;Lorg/bouncycastle/cms/SignerInformationVerifierProvider;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformation;->getSID()Lorg/bouncycastle/cms/SignerId;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/bouncycastle/cms/SignerInformationVerifierProvider;->get(Lorg/bouncycastle/cms/SignerId;)Lorg/bouncycastle/cms/SignerInformationVerifier;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/cms/SignerInformation;->verify(Lorg/bouncycastle/cms/SignerInformationVerifier;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformation;->getCounterSignatures()Lorg/bouncycastle/cms/SignerInformationStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/cms/SignerInformation;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/cms/CMSSignedData;->verifyCounterSignature(Lorg/bouncycastle/cms/SignerInformation;Lorg/bouncycastle/cms/SignerInformationVerifierProvider;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAttributeCertificates()Lorg/bouncycastle/util/Store;
    .locals 2

    sget-object v0, Lorg/bouncycastle/cms/CMSSignedData;->HELPER:Lorg/bouncycastle/cms/CMSSignedHelper;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/SignedData;->getCertificates()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/CMSSignedHelper;->getAttributeCertificates(Lorg/bouncycastle/asn1/ASN1Set;)Lorg/bouncycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public getCRLs()Lorg/bouncycastle/util/Store;
    .locals 2

    sget-object v0, Lorg/bouncycastle/cms/CMSSignedData;->HELPER:Lorg/bouncycastle/cms/CMSSignedHelper;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/SignedData;->getCRLs()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/CMSSignedHelper;->getCRLs(Lorg/bouncycastle/asn1/ASN1Set;)Lorg/bouncycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public getCertificates()Lorg/bouncycastle/util/Store;
    .locals 2

    sget-object v0, Lorg/bouncycastle/cms/CMSSignedData;->HELPER:Lorg/bouncycastle/cms/CMSSignedHelper;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/SignedData;->getCertificates()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/CMSSignedHelper;->getCertificates(Lorg/bouncycastle/asn1/ASN1Set;)Lorg/bouncycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public getDigestAlgorithmIDs()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/SignedData;->getDigestAlgorithms()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/SignedData;->getDigestAlgorithms()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

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

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getOtherRevocationInfo(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/util/Store;
    .locals 2

    sget-object v0, Lorg/bouncycastle/cms/CMSSignedData;->HELPER:Lorg/bouncycastle/cms/CMSSignedHelper;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/SignedData;->getCRLs()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/bouncycastle/cms/CMSSignedHelper;->getOtherRevocationInfo(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Set;)Lorg/bouncycastle/util/Store;

    move-result-object v0

    return-object v0
.end method

.method public getSignedContent()Lorg/bouncycastle/cms/CMSTypedData;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedContent:Lorg/bouncycastle/cms/CMSTypedData;

    return-object v0
.end method

.method public getSignedContentTypeOID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignerInfos()Lorg/bouncycastle/cms/SignerInformationStore;
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signerInfoStore:Lorg/bouncycastle/cms/SignerInformationStore;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignedData;->getSignerInfos()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    if-eq v1, v0, :cond_2

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v4

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->hashes:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/cms/SignerInformation;

    iget-object v6, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedContent:Lorg/bouncycastle/cms/CMSTypedData;

    invoke-direct {v0, v4, v5, v6, v7}, Lorg/bouncycastle/cms/SignerInformation;-><init>(Lorg/bouncycastle/asn1/cms/SignerInfo;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSProcessable;[B)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->hashes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->hashes:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    :goto_2
    new-instance v6, Lorg/bouncycastle/cms/SignerInformation;

    invoke-direct {v6, v4, v5, v7, v0}, Lorg/bouncycastle/cms/SignerInformation;-><init>(Lorg/bouncycastle/asn1/cms/SignerInfo;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSProcessable;[B)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->hashes:Ljava/util/Map;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    goto :goto_2

    :cond_2
    new-instance v0, Lorg/bouncycastle/cms/SignerInformationStore;

    invoke-direct {v0, v3}, Lorg/bouncycastle/cms/SignerInformationStore;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signerInfoStore:Lorg/bouncycastle/cms/SignerInformationStore;

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signerInfoStore:Lorg/bouncycastle/cms/SignerInformationStore;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignedData;->getVersion()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public isCertificateManagementMessage()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignedData;->getSignerInfos()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDetachedSignature()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignedData;->getEncapContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->signedData:Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/SignedData;->getSignerInfos()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/cms/ContentInfo;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedData;->contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfo;

    return-object v0
.end method

.method public verifySignatures(Lorg/bouncycastle/cms/SignerInformationVerifierProvider;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/cms/CMSSignedData;->verifySignatures(Lorg/bouncycastle/cms/SignerInformationVerifierProvider;Z)Z

    move-result v0

    return v0
.end method

.method public verifySignatures(Lorg/bouncycastle/cms/SignerInformationVerifierProvider;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/cms/CMSSignedData;->getSignerInfos()Lorg/bouncycastle/cms/SignerInformationStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/cms/SignerInformation;

    :try_start_0
    invoke-virtual {v0}, Lorg/bouncycastle/cms/SignerInformation;->getSID()Lorg/bouncycastle/cms/SignerId;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/bouncycastle/cms/SignerInformationVerifierProvider;->get(Lorg/bouncycastle/cms/SignerId;)Lorg/bouncycastle/cms/SignerInformationVerifier;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/cms/SignerInformation;->verify(Lorg/bouncycastle/cms/SignerInformationVerifier;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    if-nez p2, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/cms/SignerInformation;->getCounterSignatures()Lorg/bouncycastle/cms/SignerInformationStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/cms/SignerInformationStore;->getSigners()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/cms/SignerInformation;

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/cms/CMSSignedData;->verifyCounterSignature(Lorg/bouncycastle/cms/SignerInformation;Lorg/bouncycastle/cms/SignerInformationVerifierProvider;)Z
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failure in verifier provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/operator/OperatorCreationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
