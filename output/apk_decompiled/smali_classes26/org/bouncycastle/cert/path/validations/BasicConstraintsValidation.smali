.class public Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/cert/path/CertPathValidation;


# instance fields
.field private bc:Lorg/bouncycastle/asn1/x509/BasicConstraints;

.field private isMandatory:Z

.field private maxPathLength:Ljava/math/BigInteger;

.field private pathLengthRemaining:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->isMandatory:Z

    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;

    iget-boolean v1, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->isMandatory:Z

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;-><init>(Z)V

    iget-object v1, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->bc:Lorg/bouncycastle/asn1/x509/BasicConstraints;

    iput-object v1, v0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->bc:Lorg/bouncycastle/asn1/x509/BasicConstraints;

    iget v1, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->pathLengthRemaining:I

    iput v1, v0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->pathLengthRemaining:I

    return-object v0
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .locals 1

    check-cast p1, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;

    iget-boolean v0, p1, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->isMandatory:Z

    iput-boolean v0, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->isMandatory:Z

    iget-object v0, p1, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->bc:Lorg/bouncycastle/asn1/x509/BasicConstraints;

    iput-object v0, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->bc:Lorg/bouncycastle/asn1/x509/BasicConstraints;

    iget v0, p1, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->pathLengthRemaining:I

    iput v0, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->pathLengthRemaining:I

    return-void
.end method

.method public validate(Lorg/bouncycastle/cert/path/CertPathValidationContext;Lorg/bouncycastle/cert/X509CertificateHolder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/path/CertPathValidationException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->pathLengthRemaining:I

    if-gez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/cert/path/CertPathValidationException;

    const-string v1, "BasicConstraints path length exceeded"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->basicConstraints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/cert/path/CertPathValidationContext;->addHandledExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-virtual {p2}, Lorg/bouncycastle/cert/X509CertificateHolder;->getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->fromExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->bc:Lorg/bouncycastle/asn1/x509/BasicConstraints;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraint()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    iget v2, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->pathLengthRemaining:I

    if-ge v1, v2, :cond_1

    iput v1, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->pathLengthRemaining:I

    iput-object v0, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->bc:Lorg/bouncycastle/asn1/x509/BasicConstraints;

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->isMandatory:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->bc:Lorg/bouncycastle/asn1/x509/BasicConstraints;

    if-nez v0, :cond_4

    new-instance v0, Lorg/bouncycastle/cert/path/CertPathValidationException;

    const-string v1, "BasicConstraints not present in path"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object v0, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->bc:Lorg/bouncycastle/asn1/x509/BasicConstraints;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraint()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:Ljava/math/BigInteger;

    iget-object v0, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->pathLengthRemaining:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->bc:Lorg/bouncycastle/asn1/x509/BasicConstraints;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->pathLengthRemaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->pathLengthRemaining:I

    goto :goto_0

    :cond_4
    return-void
.end method
