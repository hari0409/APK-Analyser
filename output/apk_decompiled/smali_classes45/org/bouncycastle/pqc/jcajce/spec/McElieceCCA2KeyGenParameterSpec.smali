.class public Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2KeyGenParameterSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final DEFAULT_M:I = 0xb

.field public static final DEFAULT_T:I = 0x32

.field public static final SHA1:Ljava/lang/String; = "SHA-1"

.field public static final SHA224:Ljava/lang/String; = "SHA-224"

.field public static final SHA256:Ljava/lang/String; = "SHA-256"

.field public static final SHA384:Ljava/lang/String; = "SHA-384"

.field public static final SHA512:Ljava/lang/String; = "SHA-512"


# instance fields
.field private final digest:Ljava/lang/String;

.field private fieldPoly:I

.field private final m:I

.field private final n:I

.field private final t:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0xb

    const/16 v1, 0x32

    const-string v2, "SHA-256"

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2KeyGenParameterSpec;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const-string v0, "SHA-256"

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2KeyGenParameterSpec;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const-string v0, "SHA-256"

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2KeyGenParameterSpec;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    const-string v0, "SHA-256"

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2KeyGenParameterSpec;-><init>(IIILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2KeyGenParameterSpec;->m:I

    if-ge p1, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "m must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x20

    if-le p1, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " m is too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    shl-int v0, v1, p1

    iput v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2KeyGenParameterSpec;->n:I

    iput p2, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2KeyGenParameterSpec;->t:I

    if-gez p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "t must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2KeyGenParameterSpec;->n:I

    if-le p2, v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "t must be less than n = 2^m"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {p3}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v0

    if-ne v0, p1, :cond_4

    invoke-static {p3}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->isIrreducible(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iput p3, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2KeyGenParameterSpec;->fieldPoly:I

    iput-object p4, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2KeyGenParameterSpec;->digest:Ljava/lang/String;

    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "polynomial is not a field polynomial for GF(2^m)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ge p1, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "m must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x20

    if-le p1, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "m is too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2KeyGenParameterSpec;->m:I

    shl-int v0, v1, p1

    iput v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2KeyGenParameterSpec;->n:I

    if-gez p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "t must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2KeyGenParameterSpec;->n:I

    if-le p2, v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "t must be less than n = 2^m"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput p2, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2KeyGenParameterSpec;->t:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->getIrreduciblePolynomial(I)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2KeyGenParameterSpec;->fieldPoly:I

    iput-object p3, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2KeyGenParameterSpec;->digest:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key size must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    ushr-int/lit8 v2, v0, 0x1

    div-int/2addr v2, v1

    iput v2, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2KeyGenParameterSpec;->t:I

    iput v1, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2KeyGenParameterSpec;->m:I

    iput v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2KeyGenParameterSpec;->n:I

    invoke-static {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/PolynomialRingGF2;->getIrreduciblePolynomial(I)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2KeyGenParameterSpec;->fieldPoly:I

    iput-object p2, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2KeyGenParameterSpec;->digest:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDigest()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2KeyGenParameterSpec;->digest:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldPoly()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2KeyGenParameterSpec;->fieldPoly:I

    return v0
.end method

.method public getM()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2KeyGenParameterSpec;->m:I

    return v0
.end method

.method public getN()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2KeyGenParameterSpec;->n:I

    return v0
.end method

.method public getT()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/McElieceCCA2KeyGenParameterSpec;->t:I

    return v0
.end method
