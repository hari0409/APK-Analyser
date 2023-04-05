.class public Lorg/bouncycastle/tsp/TimeStampRequest;
.super Ljava/lang/Object;


# static fields
.field private static EMPTY_SET:Ljava/util/Set;


# instance fields
.field private extensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field private req:Lorg/bouncycastle/asn1/tsp/TimeStampReq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/tsp/TimeStampRequest;->EMPTY_SET:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/tsp/TimeStampRequest;->loadRequest(Ljava/io/InputStream;)Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/tsp/TimeStampRequest;-><init>(Lorg/bouncycastle/asn1/tsp/TimeStampReq;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/tsp/TimeStampReq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->req:Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/tsp/TimeStampRequest;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private convert(Ljava/util/Set;)Ljava/util/Set;
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_1

    new-instance v3, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object p1, v1

    goto :goto_0
.end method

.method private static loadRequest(Ljava/io/InputStream;)Lorg/bouncycastle/asn1/tsp/TimeStampReq;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/TimeStampReq;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "malformed request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "malformed request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getCertReq()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->req:Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->getCertReq()Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->req:Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->getCertReq()Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-nez v0, :cond_0

    sget-object v0, Lorg/bouncycastle/tsp/TimeStampRequest;->EMPTY_SET:Ljava/util/Set;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/Extensions;->getCriticalExtensionOIDs()[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->req:Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

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

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-static {v0}, Lorg/bouncycastle/tsp/TSPUtil;->getExtensionOIDs(Lorg/bouncycastle/asn1/x509/Extensions;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public getMessageImprintAlgOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->req:Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->getMessageImprint()Lorg/bouncycastle/asn1/tsp/MessageImprint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/MessageImprint;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getMessageImprintDigest()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->req:Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->getMessageImprint()Lorg/bouncycastle/asn1/tsp/MessageImprint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/MessageImprint;->getHashedMessage()[B

    move-result-object v0

    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-nez v0, :cond_0

    sget-object v0, Lorg/bouncycastle/tsp/TimeStampRequest;->EMPTY_SET:Ljava/util/Set;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/Extensions;->getNonCriticalExtensionOIDs()[Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public getNonce()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->req:Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->getNonce()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->req:Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->getNonce()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getReqPolicy()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->req:Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->getReqPolicy()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->req:Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->getReqPolicy()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVersion()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->req:Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->getVersion()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public hasExtensions()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequest;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public validate(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/bouncycastle/tsp/TimeStampRequest;->convert(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, p2}, Lorg/bouncycastle/tsp/TimeStampRequest;->convert(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, p3}, Lorg/bouncycastle/tsp/TimeStampRequest;->convert(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/TimeStampRequest;->getMessageImprintAlgOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v1, "request contains unknown algorithm"

    const/16 v2, 0x80

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/TimeStampRequest;->getReqPolicy()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/TimeStampRequest;->getReqPolicy()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v1, "request contains unknown policy"

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/tsp/TimeStampRequest;->getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/TimeStampRequest;->getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v1, "request contains unknown extension"

    const/high16 v2, 0x800000

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/tsp/TimeStampRequest;->getMessageImprintAlgOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/tsp/TSPUtil;->getDigestLength(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/TimeStampRequest;->getMessageImprintDigest()[B

    move-result-object v1

    array-length v1, v1

    if-eq v0, v1, :cond_4

    new-instance v0, Lorg/bouncycastle/tsp/TSPValidationException;

    const-string v1, "imprint digest the wrong length"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/tsp/TSPValidationException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_4
    return-void
.end method
