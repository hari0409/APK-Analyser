.class Lorg/bouncycastle/cms/CMSEnvelopedHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSAuthenticatedSecureReadable;,
        Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSDigestAuthenticatedSecureReadable;,
        Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSEnvelopedSecureReadable;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildRecipientInformationStore(Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;)Lorg/bouncycastle/cms/RecipientInformationStore;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->buildRecipientInformationStore(Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;Lorg/bouncycastle/cms/AuthAttributesProvider;)Lorg/bouncycastle/cms/RecipientInformationStore;

    move-result-object v0

    return-object v0
.end method

.method static buildRecipientInformationStore(Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;Lorg/bouncycastle/cms/AuthAttributesProvider;)Lorg/bouncycastle/cms/RecipientInformationStore;
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/cms/RecipientInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/RecipientInfo;

    move-result-object v2

    invoke-static {v1, v2, p1, p2, p3}, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->readRecipientInfo(Ljava/util/List;Lorg/bouncycastle/asn1/cms/RecipientInfo;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;Lorg/bouncycastle/cms/AuthAttributesProvider;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/cms/RecipientInformationStore;

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/RecipientInformationStore;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private static readRecipientInfo(Ljava/util/List;Lorg/bouncycastle/asn1/cms/RecipientInfo;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;Lorg/bouncycastle/cms/AuthAttributesProvider;)V
    .locals 2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/RecipientInfo;->getInfo()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/cms/KeyTransRecipientInformation;

    check-cast v0, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;

    invoke-direct {v1, v0, p2, p3, p4}, Lorg/bouncycastle/cms/KeyTransRecipientInformation;-><init>(Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;Lorg/bouncycastle/cms/AuthAttributesProvider;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, v0, Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;

    if-eqz v1, :cond_2

    new-instance v1, Lorg/bouncycastle/cms/KEKRecipientInformation;

    check-cast v0, Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;

    invoke-direct {v1, v0, p2, p3, p4}, Lorg/bouncycastle/cms/KEKRecipientInformation;-><init>(Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;Lorg/bouncycastle/cms/AuthAttributesProvider;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    instance-of v1, v0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    if-eqz v1, :cond_3

    check-cast v0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    invoke-static {p0, v0, p2, p3, p4}, Lorg/bouncycastle/cms/KeyAgreeRecipientInformation;->readRecipientInfo(Ljava/util/List;Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;Lorg/bouncycastle/cms/AuthAttributesProvider;)V

    goto :goto_0

    :cond_3
    instance-of v1, v0, Lorg/bouncycastle/asn1/cms/PasswordRecipientInfo;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/cms/PasswordRecipientInformation;

    check-cast v0, Lorg/bouncycastle/asn1/cms/PasswordRecipientInfo;

    invoke-direct {v1, v0, p2, p3, p4}, Lorg/bouncycastle/cms/PasswordRecipientInformation;-><init>(Lorg/bouncycastle/asn1/cms/PasswordRecipientInfo;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;Lorg/bouncycastle/cms/AuthAttributesProvider;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method