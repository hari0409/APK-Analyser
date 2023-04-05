.class public Lorg/bouncycastle/cert/jcajce/JcaX509ContentVerifierProviderBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/cert/X509ContentVerifierProviderBuilder;


# instance fields
.field private builder:Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/jcajce/JcaX509ContentVerifierProviderBuilder;->builder:Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    return-void
.end method


# virtual methods
.method public build(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/operator/ContentVerifierProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cert/jcajce/JcaX509ContentVerifierProviderBuilder;->builder:Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->build(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/operator/ContentVerifierProvider;

    move-result-object v0

    return-object v0
.end method

.method public build(Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/operator/ContentVerifierProvider;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cert/jcajce/JcaX509ContentVerifierProviderBuilder;->builder:Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->build(Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/operator/ContentVerifierProvider;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to process certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/cert/jcajce/JcaX509ContentVerifierProviderBuilder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/jcajce/JcaX509ContentVerifierProviderBuilder;->builder:Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/cert/jcajce/JcaX509ContentVerifierProviderBuilder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/jcajce/JcaX509ContentVerifierProviderBuilder;->builder:Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;->setProvider(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/JcaContentVerifierProviderBuilder;

    return-object p0
.end method
