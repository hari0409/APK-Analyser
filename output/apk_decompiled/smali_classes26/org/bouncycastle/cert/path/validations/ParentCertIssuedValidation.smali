.class public Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/cert/path/CertPathValidation;


# instance fields
.field private contentVerifierProvider:Lorg/bouncycastle/cert/X509ContentVerifierProviderBuilder;

.field private workingAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private workingIssuerName:Lorg/bouncycastle/asn1/x500/X500Name;

.field private workingPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cert/X509ContentVerifierProviderBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->contentVerifierProvider:Lorg/bouncycastle/cert/X509ContentVerifierProviderBuilder;

    return-void
.end method

.method private isNull(Lorg/bouncycastle/asn1/ASN1Encodable;)Z
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Null;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;

    iget-object v1, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->contentVerifierProvider:Lorg/bouncycastle/cert/X509ContentVerifierProviderBuilder;

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;-><init>(Lorg/bouncycastle/cert/X509ContentVerifierProviderBuilder;)V

    iget-object v1, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v1, v0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v1, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingIssuerName:Lorg/bouncycastle/asn1/x500/X500Name;

    iput-object v1, v0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingIssuerName:Lorg/bouncycastle/asn1/x500/X500Name;

    iget-object v1, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    iput-object v1, v0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .locals 1

    check-cast p1, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;

    iget-object v0, p1, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->contentVerifierProvider:Lorg/bouncycastle/cert/X509ContentVerifierProviderBuilder;

    iput-object v0, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->contentVerifierProvider:Lorg/bouncycastle/cert/X509ContentVerifierProviderBuilder;

    iget-object v0, p1, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v0, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v0, p1, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingIssuerName:Lorg/bouncycastle/asn1/x500/X500Name;

    iput-object v0, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingIssuerName:Lorg/bouncycastle/asn1/x500/X500Name;

    iget-object v0, p1, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    iput-object v0, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-void
.end method

.method public validate(Lorg/bouncycastle/cert/path/CertPathValidationContext;Lorg/bouncycastle/cert/X509CertificateHolder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/path/CertPathValidationException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingIssuerName:Lorg/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingIssuerName:Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {p2}, Lorg/bouncycastle/cert/X509CertificateHolder;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/cert/path/CertPathValidationException;

    const-string v1, "Certificate issue does not match parent"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->contentVerifierProvider:Lorg/bouncycastle/cert/X509ContentVerifierProviderBuilder;

    invoke-interface {v1, v0}, Lorg/bouncycastle/cert/X509ContentVerifierProviderBuilder;->build(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/operator/ContentVerifierProvider;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/bouncycastle/cert/X509CertificateHolder;->isSignatureValid(Lorg/bouncycastle/operator/ContentVerifierProvider;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/bouncycastle/cert/path/CertPathValidationException;

    const-string v1, "Certificate signature not for public key in parent"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/bouncycastle/cert/CertException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cert/path/CertPathValidationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create verifier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/operator/OperatorCreationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_1
    :try_start_1
    new-instance v0, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    iget-object v1, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_1
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/bouncycastle/cert/CertException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cert/path/CertPathValidationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to validate signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/cert/CertException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cert/path/CertPathValidationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to build public key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_2
    invoke-virtual {p2}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubject()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingIssuerName:Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {p2}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    iget-object v0, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->isNull(Lorg/bouncycastle/asn1/ASN1Encodable;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingPublicKey:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/path/validations/ParentCertIssuedValidation;->workingAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_1
.end method
