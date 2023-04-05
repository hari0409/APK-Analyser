.class Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addException(Lorg/bouncycastle/cert/path/CertPathValidationException;)V
    .locals 0

    return-void
.end method

.method public build()Lorg/bouncycastle/cert/path/CertPathValidationResult;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v0, Lorg/bouncycastle/cert/path/CertPathValidationResult;

    invoke-direct {v0, v2, v1, v1, v2}, Lorg/bouncycastle/cert/path/CertPathValidationResult;-><init>(Lorg/bouncycastle/cert/path/CertPathValidationContext;IILorg/bouncycastle/cert/path/CertPathValidationException;)V

    return-object v0
.end method
