.class public Lorg/bouncycastle/cert/path/CertPathValidationResult;
.super Ljava/lang/Object;


# instance fields
.field private final cause:Lorg/bouncycastle/cert/path/CertPathValidationException;

.field private certIndexes:[I

.field private final isValid:Z

.field private final unhandledCriticalExtensionOIDs:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cert/path/CertPathValidationContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/cert/path/CertPathValidationContext;->getUnhandledCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->unhandledCriticalExtensionOIDs:Ljava/util/Set;

    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->unhandledCriticalExtensionOIDs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->isValid:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->cause:Lorg/bouncycastle/cert/path/CertPathValidationException;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cert/path/CertPathValidationContext;IILorg/bouncycastle/cert/path/CertPathValidationException;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/cert/path/CertPathValidationContext;->getUnhandledCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->unhandledCriticalExtensionOIDs:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->isValid:Z

    iput-object p4, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->cause:Lorg/bouncycastle/cert/path/CertPathValidationException;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cert/path/CertPathValidationContext;[I[I[Lorg/bouncycastle/cert/path/CertPathValidationException;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/cert/path/CertPathValidationContext;->getUnhandledCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->unhandledCriticalExtensionOIDs:Ljava/util/Set;

    iput-boolean v1, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->isValid:Z

    aget-object v0, p4, v1

    iput-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->cause:Lorg/bouncycastle/cert/path/CertPathValidationException;

    iput-object p2, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->certIndexes:[I

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Exception;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->cause:Lorg/bouncycastle/cert/path/CertPathValidationException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->cause:Lorg/bouncycastle/cert/path/CertPathValidationException;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->unhandledCriticalExtensionOIDs:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lorg/bouncycastle/cert/path/CertPathValidationException;

    const-string v1, "Unhandled Critical Extensions"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUnhandledCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->unhandledCriticalExtensionOIDs:Ljava/util/Set;

    return-object v0
.end method

.method public isDetailed()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->certIndexes:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResult;->isValid:Z

    return v0
.end method
