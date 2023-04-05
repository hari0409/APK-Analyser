.class public Lorg/bouncycastle/cert/path/CertPath;
.super Ljava/lang/Object;


# instance fields
.field private final certificates:[Lorg/bouncycastle/cert/X509CertificateHolder;


# direct methods
.method public constructor <init>([Lorg/bouncycastle/cert/X509CertificateHolder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/path/CertPath;->copyArray([Lorg/bouncycastle/cert/X509CertificateHolder;)[Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/path/CertPath;->certificates:[Lorg/bouncycastle/cert/X509CertificateHolder;

    return-void
.end method

.method private copyArray([Lorg/bouncycastle/cert/X509CertificateHolder;)[Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 3

    const/4 v2, 0x0

    array-length v0, p1

    new-array v0, v0, [Lorg/bouncycastle/cert/X509CertificateHolder;

    array-length v1, v0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public evaluate([Lorg/bouncycastle/cert/path/CertPathValidation;)Lorg/bouncycastle/cert/path/CertPathValidationResult;
    .locals 7

    const/4 v1, 0x0

    new-instance v4, Lorg/bouncycastle/cert/path/CertPathValidationContext;

    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPath;->certificates:[Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-static {v0}, Lorg/bouncycastle/cert/path/CertPathUtils;->getCriticalExtensionsOIDs([Lorg/bouncycastle/cert/X509CertificateHolder;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/bouncycastle/cert/path/CertPathValidationContext;-><init>(Ljava/util/Set;)V

    new-instance v5, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;

    invoke-direct {v5}, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;-><init>()V

    move v0, v1

    :goto_0
    array-length v2, p1

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/cert/path/CertPath;->certificates:[Lorg/bouncycastle/cert/X509CertificateHolder;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    :goto_1
    if-ltz v3, :cond_1

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :goto_2
    :try_start_0
    invoke-virtual {v4, v2}, Lorg/bouncycastle/cert/path/CertPathValidationContext;->setIsEndEntity(Z)V

    aget-object v2, p1, v0

    iget-object v6, p0, Lorg/bouncycastle/cert/path/CertPath;->certificates:[Lorg/bouncycastle/cert/X509CertificateHolder;

    aget-object v6, v6, v3

    invoke-interface {v2, v4, v6}, Lorg/bouncycastle/cert/path/CertPathValidation;->validate(Lorg/bouncycastle/cert/path/CertPathValidationContext;Lorg/bouncycastle/cert/X509CertificateHolder;)V
    :try_end_0
    .catch Lorg/bouncycastle/cert/path/CertPathValidationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    goto :goto_1

    :cond_0
    move v2, v1

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v5, v2}, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->addException(Lorg/bouncycastle/cert/path/CertPathValidationException;)V

    goto :goto_3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->build()Lorg/bouncycastle/cert/path/CertPathValidationResult;

    move-result-object v0

    return-object v0
.end method

.method public getCertificates()[Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPath;->certificates:[Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/path/CertPath;->copyArray([Lorg/bouncycastle/cert/X509CertificateHolder;)[Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPath;->certificates:[Lorg/bouncycastle/cert/X509CertificateHolder;

    array-length v0, v0

    return v0
.end method

.method public validate([Lorg/bouncycastle/cert/path/CertPathValidation;)Lorg/bouncycastle/cert/path/CertPathValidationResult;
    .locals 6

    const/4 v1, 0x0

    new-instance v4, Lorg/bouncycastle/cert/path/CertPathValidationContext;

    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPath;->certificates:[Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-static {v0}, Lorg/bouncycastle/cert/path/CertPathUtils;->getCriticalExtensionsOIDs([Lorg/bouncycastle/cert/X509CertificateHolder;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/bouncycastle/cert/path/CertPathValidationContext;-><init>(Ljava/util/Set;)V

    move v0, v1

    :goto_0
    array-length v2, p1

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/cert/path/CertPath;->certificates:[Lorg/bouncycastle/cert/X509CertificateHolder;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    :goto_1
    if-ltz v3, :cond_1

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :goto_2
    :try_start_0
    invoke-virtual {v4, v2}, Lorg/bouncycastle/cert/path/CertPathValidationContext;->setIsEndEntity(Z)V

    aget-object v2, p1, v0

    iget-object v5, p0, Lorg/bouncycastle/cert/path/CertPath;->certificates:[Lorg/bouncycastle/cert/X509CertificateHolder;

    aget-object v5, v5, v3

    invoke-interface {v2, v4, v5}, Lorg/bouncycastle/cert/path/CertPathValidation;->validate(Lorg/bouncycastle/cert/path/CertPathValidationContext;Lorg/bouncycastle/cert/X509CertificateHolder;)V
    :try_end_0
    .catch Lorg/bouncycastle/cert/path/CertPathValidationException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v3, -0x1

    move v3, v2

    goto :goto_1

    :cond_0
    move v2, v1

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v2, v1

    new-instance v1, Lorg/bouncycastle/cert/path/CertPathValidationResult;

    invoke-direct {v1, v4, v3, v0, v2}, Lorg/bouncycastle/cert/path/CertPathValidationResult;-><init>(Lorg/bouncycastle/cert/path/CertPathValidationContext;IILorg/bouncycastle/cert/path/CertPathValidationException;)V

    move-object v0, v1

    :goto_3
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/bouncycastle/cert/path/CertPathValidationResult;

    invoke-direct {v0, v4}, Lorg/bouncycastle/cert/path/CertPathValidationResult;-><init>(Lorg/bouncycastle/cert/path/CertPathValidationContext;)V

    goto :goto_3
.end method
