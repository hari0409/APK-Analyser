.class public Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/cert/path/CertPathValidation;


# instance fields
.field private explicitPolicy:I

.field private inhibitAnyPolicy:I

.field private policyMapping:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;-><init>(IZZZ)V

    return-void
.end method

.method constructor <init>(IZZZ)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    iput v1, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->explicitPolicy:I

    :goto_0
    if-eqz p3, :cond_1

    iput v1, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->inhibitAnyPolicy:I

    :goto_1
    if-eqz p4, :cond_2

    iput v1, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->policyMapping:I

    :goto_2
    return-void

    :cond_0
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->explicitPolicy:I

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->inhibitAnyPolicy:I

    goto :goto_1

    :cond_2
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->policyMapping:I

    goto :goto_2
.end method

.method private countDown(I)I
    .locals 1

    if-eqz p1, :cond_0

    add-int/lit8 v0, p1, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;-><init>(I)V

    return-object v0
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .locals 0

    check-cast p1, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;

    return-void
.end method

.method public validate(Lorg/bouncycastle/cert/path/CertPathValidationContext;Lorg/bouncycastle/cert/X509CertificateHolder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/path/CertPathValidationException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->policyConstraints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/cert/path/CertPathValidationContext;->addHandledExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->inhibitAnyPolicy:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/cert/path/CertPathValidationContext;->addHandledExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-virtual {p1}, Lorg/bouncycastle/cert/path/CertPathValidationContext;->isEndEntity()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Lorg/bouncycastle/cert/path/validations/ValidationUtils;->isSelfIssued(Lorg/bouncycastle/cert/X509CertificateHolder;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->explicitPolicy:I

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->countDown(I)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->explicitPolicy:I

    iget v0, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->policyMapping:I

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->countDown(I)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->policyMapping:I

    iget v0, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->inhibitAnyPolicy:I

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->countDown(I)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->inhibitAnyPolicy:I

    invoke-virtual {p2}, Lorg/bouncycastle/cert/X509CertificateHolder;->getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/PolicyConstraints;->fromExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/asn1/x509/PolicyConstraints;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/PolicyConstraints;->getRequireExplicitPolicyMapping()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    iget v3, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->explicitPolicy:I

    if-ge v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->explicitPolicy:I

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/PolicyConstraints;->getInhibitPolicyMapping()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    iget v2, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->policyMapping:I

    if-ge v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->policyMapping:I

    :cond_1
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->inhibitAnyPolicy:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p2, v0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Extension;->getParsedValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->inhibitAnyPolicy:I

    if-ge v0, v1, :cond_2

    iput v0, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->inhibitAnyPolicy:I

    :cond_2
    return-void
.end method
