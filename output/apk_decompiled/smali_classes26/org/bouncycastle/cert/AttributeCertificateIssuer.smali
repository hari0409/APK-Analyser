.class public Lorg/bouncycastle/cert/AttributeCertificateIssuer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/util/Selector;


# instance fields
.field final form:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/x509/V2Form;

    new-instance v1, Lorg/bouncycastle/asn1/x509/GeneralNames;

    new-instance v2, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v2, p1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x509/GeneralNames;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/V2Form;-><init>(Lorg/bouncycastle/asn1/x509/GeneralNames;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateIssuer;->form:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AttCertIssuer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AttCertIssuer;->getIssuer()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateIssuer;->form:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method private matchesDN(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/GeneralNames;)Z
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, v2

    if-eq v0, v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cert/AttributeCertificateIssuer;

    iget-object v1, p0, Lorg/bouncycastle/cert/AttributeCertificateIssuer;->form:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/AttCertIssuer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AttCertIssuer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/AttributeCertificateIssuer;-><init>(Lorg/bouncycastle/asn1/x509/AttCertIssuer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/cert/AttributeCertificateIssuer;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/bouncycastle/cert/AttributeCertificateIssuer;

    iget-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateIssuer;->form:Lorg/bouncycastle/asn1/ASN1Encodable;

    iget-object v1, p1, Lorg/bouncycastle/cert/AttributeCertificateIssuer;->form:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getNames()[Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateIssuer;->form:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/x509/V2Form;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateIssuer;->form:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/x509/V2Form;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/V2Form;->getIssuerName()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    array-length v0, v1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-eq v0, v3, :cond_2

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateIssuer;->form:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/x509/GeneralNames;

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/asn1/x500/X500Name;

    check-cast v0, [Lorg/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateIssuer;->form:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    instance-of v0, p1, Lorg/bouncycastle/cert/X509CertificateHolder;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    check-cast p1, Lorg/bouncycastle/cert/X509CertificateHolder;

    iget-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateIssuer;->form:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/x509/V2Form;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateIssuer;->form:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/x509/V2Form;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/V2Form;->getBaseCertificateID()Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/V2Form;->getBaseCertificateID()Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/IssuerSerial;->getSerial()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/V2Form;->getBaseCertificateID()Lorg/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/IssuerSerial;->getIssuer()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lorg/bouncycastle/cert/AttributeCertificateIssuer;->matchesDN(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/V2Form;->getIssuerName()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubject()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lorg/bouncycastle/cert/AttributeCertificateIssuer;->matchesDN(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/cert/AttributeCertificateIssuer;->form:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubject()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lorg/bouncycastle/cert/AttributeCertificateIssuer;->matchesDN(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    goto :goto_0
.end method
