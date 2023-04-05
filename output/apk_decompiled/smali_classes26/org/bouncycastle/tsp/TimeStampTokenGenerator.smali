.class public Lorg/bouncycastle/tsp/TimeStampTokenGenerator;
.super Ljava/lang/Object;


# static fields
.field public static final R_MICROSECONDS:I = 0x2

.field public static final R_MILLISECONDS:I = 0x3

.field public static final R_SECONDS:I = 0x0

.field public static final R_TENTHS_OF_SECONDS:I = 0x1


# instance fields
.field private accuracyMicros:I

.field private accuracyMillis:I

.field private accuracySeconds:I

.field private attrCerts:Ljava/util/List;

.field private certs:Ljava/util/List;

.field private crls:Ljava/util/List;

.field private locale:Ljava/util/Locale;

.field ordering:Z

.field private otherRevoc:Ljava/util/Map;

.field private resolution:I

.field private signerInfoGen:Lorg/bouncycastle/cms/SignerInfoGenerator;

.field tsa:Lorg/bouncycastle/asn1/x509/GeneralName;

.field private tsaPolicyOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/SignerInfoGenerator;Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;-><init>(Lorg/bouncycastle/cms/SignerInfoGenerator;Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cms/SignerInfoGenerator;Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->resolution:I

    iput-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->locale:Ljava/util/Locale;

    iput v1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracySeconds:I

    iput v1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracyMillis:I

    iput v1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracyMicros:I

    iput-boolean v2, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->ordering:Z

    iput-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->tsa:Lorg/bouncycastle/asn1/x509/GeneralName;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->certs:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->crls:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->attrCerts:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->otherRevoc:Ljava/util/Map;

    iput-object p1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->signerInfoGen:Lorg/bouncycastle/cms/SignerInfoGenerator;

    iput-object p3, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->tsaPolicyOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInfoGenerator;->hasAssociatedCertificate()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SignerInfoGenerator must have an associated certificate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInfoGenerator;->getAssociatedCertificate()Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/tsp/TSPUtil;->validateCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;)V

    :try_start_0
    invoke-interface {p2}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    invoke-interface {p2}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lorg/bouncycastle/asn1/ess/ESSCertID;

    invoke-interface {p2}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v3

    if-eqz p4, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/IssuerSerial;

    new-instance v4, Lorg/bouncycastle/asn1/x509/GeneralNames;

    new-instance v5, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;)V

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/x509/GeneralNames;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    invoke-virtual {v1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lorg/bouncycastle/asn1/x509/IssuerSerial;-><init>(Lorg/bouncycastle/asn1/x509/GeneralNames;Ljava/math/BigInteger;)V

    :cond_1
    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/asn1/ess/ESSCertID;-><init>([BLorg/bouncycastle/asn1/x509/IssuerSerial;)V

    new-instance v0, Lorg/bouncycastle/cms/SignerInfoGenerator;

    new-instance v1, Lorg/bouncycastle/tsp/TimeStampTokenGenerator$1;

    invoke-direct {v1, p0, p1, v2}, Lorg/bouncycastle/tsp/TimeStampTokenGenerator$1;-><init>(Lorg/bouncycastle/tsp/TimeStampTokenGenerator;Lorg/bouncycastle/cms/SignerInfoGenerator;Lorg/bouncycastle/asn1/ess/ESSCertID;)V

    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInfoGenerator;->getUnsignedAttributeTableGenerator()Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/bouncycastle/cms/SignerInfoGenerator;-><init>(Lorg/bouncycastle/cms/SignerInfoGenerator;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)V

    iput-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->signerInfoGen:Lorg/bouncycastle/cms/SignerInfoGenerator;

    :goto_0
    return-void

    :cond_2
    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-interface {p2}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v3, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;

    invoke-interface {p2}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v4

    if-eqz p4, :cond_3

    new-instance v0, Lorg/bouncycastle/asn1/x509/IssuerSerial;

    new-instance v5, Lorg/bouncycastle/asn1/x509/GeneralNames;

    new-instance v6, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {v1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;)V

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/x509/GeneralNames;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    new-instance v6, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v6, v1}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v0, v5, v6}, Lorg/bouncycastle/asn1/x509/IssuerSerial;-><init>(Lorg/bouncycastle/asn1/x509/GeneralNames;Lorg/bouncycastle/asn1/ASN1Integer;)V

    :cond_3
    invoke-direct {v3, v2, v4, v0}, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[BLorg/bouncycastle/asn1/x509/IssuerSerial;)V

    new-instance v0, Lorg/bouncycastle/cms/SignerInfoGenerator;

    new-instance v1, Lorg/bouncycastle/tsp/TimeStampTokenGenerator$2;

    invoke-direct {v1, p0, p1, v3}, Lorg/bouncycastle/tsp/TimeStampTokenGenerator$2;-><init>(Lorg/bouncycastle/tsp/TimeStampTokenGenerator;Lorg/bouncycastle/cms/SignerInfoGenerator;Lorg/bouncycastle/asn1/ess/ESSCertIDv2;)V

    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInfoGenerator;->getUnsignedAttributeTableGenerator()Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/bouncycastle/cms/SignerInfoGenerator;-><init>(Lorg/bouncycastle/cms/SignerInfoGenerator;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)V

    iput-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->signerInfoGen:Lorg/bouncycastle/cms/SignerInfoGenerator;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/tsp/TSPException;

    const-string v2, "Exception processing certificate."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private createGeneralizedTime(Ljava/util/Date;)Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    const-string v1, "yyyyMMddHHmmss.SSS"

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :goto_0
    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    const-string v3, "Z"

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    const-string v0, "Z"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/lang/String;)V

    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_0

    :cond_1
    iget v2, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->resolution:I

    packed-switch v2, :pswitch_data_0

    new-instance v0, Lorg/bouncycastle/tsp/TSPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown time-stamp resolution: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->resolution:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v3, v0, 0x2

    if-le v2, v3, :cond_2

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_2
    :goto_2
    :pswitch_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v3, v0, 0x3

    if-le v2, v3, :cond_2

    add-int/lit8 v2, v0, 0x3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v2, v0, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_4
    const-string v0, "Z"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addAttributeCertificates(Lorg/bouncycastle/util/Store;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->attrCerts:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/bouncycastle/util/Store;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addCRLs(Lorg/bouncycastle/util/Store;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->crls:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/bouncycastle/util/Store;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addCertificates(Lorg/bouncycastle/util/Store;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->certs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/bouncycastle/util/Store;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addOtherRevocationInfo(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/util/Store;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->otherRevoc:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lorg/bouncycastle/util/Store;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public generate(Lorg/bouncycastle/tsp/TimeStampRequest;Ljava/math/BigInteger;Ljava/util/Date;)Lorg/bouncycastle/tsp/TimeStampToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->generate(Lorg/bouncycastle/tsp/TimeStampRequest;Ljava/math/BigInteger;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/tsp/TimeStampToken;

    move-result-object v0

    return-object v0
.end method

.method public generate(Lorg/bouncycastle/tsp/TimeStampRequest;Ljava/math/BigInteger;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/tsp/TimeStampToken;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampRequest;->getMessageImprintAlgOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    new-instance v3, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v3, v0, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lorg/bouncycastle/asn1/tsp/MessageImprint;

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampRequest;->getMessageImprintDigest()[B

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/asn1/tsp/MessageImprint;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    iget v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracySeconds:I

    if-gtz v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracyMillis:I

    if-gtz v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracyMicros:I

    if-lez v0, :cond_e

    :cond_0
    iget v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracySeconds:I

    if-lez v0, :cond_d

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v3, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracySeconds:I

    int-to-long v4, v3

    invoke-direct {v0, v4, v5}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    :goto_0
    iget v3, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracyMillis:I

    if-lez v3, :cond_c

    new-instance v3, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v4, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracyMillis:I

    int-to-long v4, v4

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    :goto_1
    iget v4, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracyMicros:I

    if-lez v4, :cond_b

    new-instance v4, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v5, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracyMicros:I

    int-to-long v6, v5

    invoke-direct {v4, v6, v7}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    :goto_2
    new-instance v5, Lorg/bouncycastle/asn1/tsp/Accuracy;

    invoke-direct {v5, v0, v3, v4}, Lorg/bouncycastle/asn1/tsp/Accuracy;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Integer;)V

    :goto_3
    iget-boolean v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->ordering:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->ordering:Z

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v6

    :goto_4
    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampRequest;->getNonce()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v7, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampRequest;->getNonce()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    :goto_5
    iget-object v1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->tsaPolicyOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampRequest;->getReqPolicy()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampRequest;->getReqPolicy()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampRequest;->getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v9

    if-eqz p4, :cond_4

    new-instance v0, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v9, v4}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lorg/bouncycastle/asn1/x509/Extension;)V

    goto :goto_6

    :cond_2
    invoke-virtual {p4}, Lorg/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {p4, v4}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lorg/bouncycastle/asn1/x509/Extension;)V

    goto :goto_7

    :cond_3
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v9

    :cond_4
    iget v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->resolution:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->locale:Ljava/util/Locale;

    if-nez v0, :cond_6

    new-instance v0, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {v0, p3}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/util/Date;)V

    :goto_8
    move-object v4, v0

    :goto_9
    new-instance v0, Lorg/bouncycastle/asn1/tsp/TSTInfo;

    new-instance v3, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v3, p2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iget-object v8, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->tsa:Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/asn1/tsp/TSTInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/tsp/MessageImprint;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/tsp/Accuracy;Lorg/bouncycastle/asn1/ASN1Boolean;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/x509/Extensions;)V

    :try_start_0
    new-instance v3, Lorg/bouncycastle/cms/CMSSignedDataGenerator;

    invoke-direct {v3}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampRequest;->getCertReq()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lorg/bouncycastle/util/CollectionStore;

    iget-object v2, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->certs:Ljava/util/List;

    invoke-direct {v1, v2}, Lorg/bouncycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v1}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->addCertificates(Lorg/bouncycastle/util/Store;)V

    new-instance v1, Lorg/bouncycastle/util/CollectionStore;

    iget-object v2, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->attrCerts:Ljava/util/List;

    invoke-direct {v1, v2}, Lorg/bouncycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v1}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->addAttributeCertificates(Lorg/bouncycastle/util/Store;)V

    :cond_5
    new-instance v1, Lorg/bouncycastle/util/CollectionStore;

    iget-object v2, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->crls:Ljava/util/List;

    invoke-direct {v1, v2}, Lorg/bouncycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v1}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->addCRLs(Lorg/bouncycastle/util/Store;)V

    iget-object v1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->otherRevoc:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->otherRevoc:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/bouncycastle/util/CollectionStore;

    iget-object v2, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->otherRevoc:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v5, v2}, Lorg/bouncycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v1, v5}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->addOtherRevocationInfo(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/util/Store;)V
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_a

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/tsp/TSPException;

    const-string v2, "Error generating time-stamp token"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    new-instance v0, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    iget-object v3, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->locale:Ljava/util/Locale;

    invoke-direct {v0, p3, v3}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/util/Date;Ljava/util/Locale;)V

    goto :goto_8

    :cond_7
    invoke-direct {p0, p3}, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->createGeneralizedTime(Ljava/util/Date;)Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v4

    goto :goto_9

    :cond_8
    :try_start_1
    iget-object v1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->signerInfoGen:Lorg/bouncycastle/cms/SignerInfoGenerator;

    invoke-virtual {v3, v1}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->addSignerInfoGenerator(Lorg/bouncycastle/cms/SignerInfoGenerator;)V

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/cms/CMSProcessableByteArray;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_ct_TSTInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSProcessableByteArray;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V

    const/4 v0, 0x1

    invoke-virtual {v3, v1, v0}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->generate(Lorg/bouncycastle/cms/CMSTypedData;Z)Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-direct {v1, v0}, Lorg/bouncycastle/tsp/TimeStampToken;-><init>(Lorg/bouncycastle/cms/CMSSignedData;)V
    :try_end_1
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/bouncycastle/tsp/TSPException;

    const-string v2, "Exception encoding info"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_9
    move-object v7, v1

    goto/16 :goto_5

    :cond_a
    move-object v6, v1

    goto/16 :goto_4

    :cond_b
    move-object v4, v1

    goto/16 :goto_2

    :cond_c
    move-object v3, v1

    goto/16 :goto_1

    :cond_d
    move-object v0, v1

    goto/16 :goto_0

    :cond_e
    move-object v5, v1

    goto/16 :goto_3
.end method

.method public setAccuracyMicros(I)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracyMicros:I

    return-void
.end method

.method public setAccuracyMillis(I)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracyMillis:I

    return-void
.end method

.method public setAccuracySeconds(I)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracySeconds:I

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->locale:Ljava/util/Locale;

    return-void
.end method

.method public setOrdering(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->ordering:Z

    return-void
.end method

.method public setResolution(I)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->resolution:I

    return-void
.end method

.method public setTSA(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->tsa:Lorg/bouncycastle/asn1/x509/GeneralName;

    return-void
.end method
