.class public Lorg/bouncycastle/cms/KeyTransRecipientInformation;
.super Lorg/bouncycastle/cms/RecipientInformation;


# instance fields
.field private info:Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;Lorg/bouncycastle/cms/AuthAttributesProvider;)V
    .locals 3

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->getKeyEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/bouncycastle/cms/RecipientInformation;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;Lorg/bouncycastle/cms/AuthAttributesProvider;)V

    iput-object p1, p0, Lorg/bouncycastle/cms/KeyTransRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->getRecipientIdentifier()Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;->isTagged()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;->getId()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/cms/KeyTransRecipientId;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/cms/KeyTransRecipientId;-><init>([B)V

    iput-object v1, p0, Lorg/bouncycastle/cms/KeyTransRecipientInformation;->rid:Lorg/bouncycastle/cms/RecipientId;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;->getId()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/cms/KeyTransRecipientId;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getName()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/KeyTransRecipientId;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V

    iput-object v1, p0, Lorg/bouncycastle/cms/KeyTransRecipientInformation;->rid:Lorg/bouncycastle/cms/RecipientId;

    goto :goto_0
.end method


# virtual methods
.method protected getRecipientOperator(Lorg/bouncycastle/cms/Recipient;)Lorg/bouncycastle/cms/RecipientOperator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    check-cast p1, Lorg/bouncycastle/cms/KeyTransRecipient;

    iget-object v0, p0, Lorg/bouncycastle/cms/KeyTransRecipientInformation;->keyEncAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v1, p0, Lorg/bouncycastle/cms/KeyTransRecipientInformation;->messageAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/cms/KeyTransRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->getEncryptedKey()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/bouncycastle/cms/KeyTransRecipient;->getRecipientOperator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/cms/RecipientOperator;

    move-result-object v0

    return-object v0
.end method
