.class public Lorg/bouncycastle/cert/path/validations/CRLValidation;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/cert/path/CertPathValidation;


# instance fields
.field private crls:Lorg/bouncycastle/util/Store;

.field private workingIssuerName:Lorg/bouncycastle/asn1/x500/X500Name;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/util/Store;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/path/validations/CRLValidation;->workingIssuerName:Lorg/bouncycastle/asn1/x500/X500Name;

    iput-object p2, p0, Lorg/bouncycastle/cert/path/validations/CRLValidation;->crls:Lorg/bouncycastle/util/Store;

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/cert/path/validations/CRLValidation;)Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/path/validations/CRLValidation;->workingIssuerName:Lorg/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 3

    new-instance v0, Lorg/bouncycastle/cert/path/validations/CRLValidation;

    iget-object v1, p0, Lorg/bouncycastle/cert/path/validations/CRLValidation;->workingIssuerName:Lorg/bouncycastle/asn1/x500/X500Name;

    iget-object v2, p0, Lorg/bouncycastle/cert/path/validations/CRLValidation;->crls:Lorg/bouncycastle/util/Store;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/cert/path/validations/CRLValidation;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/util/Store;)V

    return-object v0
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .locals 1

    check-cast p1, Lorg/bouncycastle/cert/path/validations/CRLValidation;

    iget-object v0, p1, Lorg/bouncycastle/cert/path/validations/CRLValidation;->workingIssuerName:Lorg/bouncycastle/asn1/x500/X500Name;

    iput-object v0, p0, Lorg/bouncycastle/cert/path/validations/CRLValidation;->workingIssuerName:Lorg/bouncycastle/asn1/x500/X500Name;

    iget-object v0, p1, Lorg/bouncycastle/cert/path/validations/CRLValidation;->crls:Lorg/bouncycastle/util/Store;

    iput-object v0, p0, Lorg/bouncycastle/cert/path/validations/CRLValidation;->crls:Lorg/bouncycastle/util/Store;

    return-void
.end method

.method public validate(Lorg/bouncycastle/cert/path/CertPathValidationContext;Lorg/bouncycastle/cert/X509CertificateHolder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/path/CertPathValidationException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cert/path/validations/CRLValidation;->crls:Lorg/bouncycastle/util/Store;

    new-instance v1, Lorg/bouncycastle/cert/path/validations/CRLValidation$1;

    invoke-direct {v1, p0}, Lorg/bouncycastle/cert/path/validations/CRLValidation$1;-><init>(Lorg/bouncycastle/cert/path/validations/CRLValidation;)V

    invoke-interface {v0, v1}, Lorg/bouncycastle/util/Store;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lorg/bouncycastle/cert/path/CertPathValidationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CRL for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/cert/path/validations/CRLValidation;->workingIssuerName:Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/cert/X509CRLHolder;

    invoke-virtual {p2}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/cert/X509CRLHolder;->getRevokedCertificate(Ljava/math/BigInteger;)Lorg/bouncycastle/cert/X509CRLEntryHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/cert/path/CertPathValidationException;

    const-string v1, "Certificate revoked"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p2}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubject()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/path/validations/CRLValidation;->workingIssuerName:Lorg/bouncycastle/asn1/x500/X500Name;

    return-void
.end method
