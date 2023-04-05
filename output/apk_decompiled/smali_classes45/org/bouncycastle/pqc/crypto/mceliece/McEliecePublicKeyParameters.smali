.class public Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyParameters;


# instance fields
.field private g:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

.field private n:I

.field private t:I


# direct methods
.method public constructor <init>(IILorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/mceliece/McElieceKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/mceliece/McElieceParameters;)V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->n:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->t:I

    new-instance v0, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-direct {v0, p3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->g:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    return-void
.end method


# virtual methods
.method public getG()Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->g:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    return-object v0
.end method

.method public getK()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->g:Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Matrix;->getNumRows()I

    move-result v0

    return v0
.end method

.method public getN()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->n:I

    return v0
.end method

.method public getT()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->t:I

    return v0
.end method
