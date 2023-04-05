.class final Lorg/bouncycastle/pqc/crypto/mceliece/Conversions;
.super Ljava/lang/Object;


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/mceliece/Conversions;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/mceliece/Conversions;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(IILorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;)[B
    .locals 10

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->getLength()I

    move-result v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->getHammingWeight()I

    move-result v0

    if-eq v0, p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "vector has wrong length or hamming weight"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->getVecArray()[I

    move-result-object v6

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->binomial(II)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v1, Lorg/bouncycastle/pqc/crypto/mceliece/Conversions;->ZERO:Ljava/math/BigInteger;

    const/4 v2, 0x0

    move v3, v2

    move v0, p1

    move v4, p0

    :goto_0
    if-ge v3, p0, :cond_4

    sub-int v2, v4, v0

    int-to-long v8, v2

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    int-to-long v8, v4

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    add-int/lit8 v4, v4, -0x1

    shr-int/lit8 v5, v3, 0x5

    aget v5, v6, v5

    const/4 v7, 0x1

    and-int/lit8 v8, v3, 0x1f

    shl-int/2addr v7, v8

    and-int/2addr v5, v7

    if-eqz v5, :cond_2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    if-ne v4, v0, :cond_3

    sget-object v2, Lorg/bouncycastle/pqc/crypto/mceliece/Conversions;->ONE:Ljava/math/BigInteger;

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move-object v5, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v5, v0, 0x1

    int-to-long v8, v5

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sub-int v5, v4, v0

    int-to-long v8, v5

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lorg/bouncycastle/pqc/math/linearalgebra/BigIntUtils;->toMinimalByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode(II[B)Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;
    .locals 10

    if-ge p0, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n < t"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->binomial(II)Ljava/math/BigInteger;

    move-result-object v5

    new-instance v1, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {v1, v0, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Encoded number too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v6, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;

    invoke-direct {v6, p0}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    move v0, p1

    move v4, p0

    :goto_0
    if-ge v3, p0, :cond_4

    sub-int v2, v4, v0

    int-to-long v8, v2

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    int-to-long v8, v4

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-gtz v5, :cond_2

    invoke-virtual {v6, v3}, Lorg/bouncycastle/pqc/math/linearalgebra/GF2Vector;->setBit(I)V

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    if-ne v4, v0, :cond_3

    sget-object v2, Lorg/bouncycastle/pqc/crypto/mceliece/Conversions;->ONE:Ljava/math/BigInteger;

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move-object v5, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v5, v0, 0x1

    int-to-long v8, v5

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sub-int v5, v4, v0

    int-to-long v8, v5

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_1

    :cond_4
    return-object v6
.end method

.method public static signConversion(II[B)[B
    .locals 12

    const/16 v0, 0x8

    const/4 v11, 0x1

    const/4 v4, 0x0

    if-ge p0, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n < t"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/math/linearalgebra/IntegerFunctions;->binomial(II)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    shr-int/lit8 v2, v1, 0x3

    and-int/lit8 v1, v1, 0x7

    if-nez v1, :cond_9

    add-int/lit8 v1, v2, -0x1

    move v7, v0

    move v8, v1

    :goto_0
    shr-int/lit8 v2, p0, 0x3

    and-int/lit8 v1, p0, 0x7

    if-nez v1, :cond_8

    add-int/lit8 v1, v2, -0x1

    move v2, v1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    new-array v9, v1, [B

    array-length v1, p2

    array-length v3, v9

    if-ge v1, v3, :cond_1

    array-length v0, p2

    invoke-static {p2, v4, v9, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p2

    :goto_2
    array-length v1, v9

    if-ge v0, v1, :cond_2

    aput-byte v4, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    invoke-static {p2, v4, v9, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shl-int v0, v11, v0

    add-int/lit8 v0, v0, -0x1

    aget-byte v1, p2, v2

    and-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v9, v2

    :cond_2
    sget-object v1, Lorg/bouncycastle/pqc/crypto/mceliece/Conversions;->ZERO:Ljava/math/BigInteger;

    move v3, v4

    move v0, p1

    move v5, p0

    move-object v2, v6

    :goto_3
    if-ge v3, p0, :cond_5

    new-instance v6, Ljava/math/BigInteger;

    sub-int v10, v5, v0

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    new-instance v6, Ljava/math/BigInteger;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    add-int/lit8 v5, v5, -0x1

    ushr-int/lit8 v6, v3, 0x3

    and-int/lit8 v10, v3, 0x7

    shl-int v10, v11, v10

    aget-byte v6, v9, v6

    and-int/2addr v6, v10

    int-to-byte v6, v6

    if-eqz v6, :cond_3

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    if-ne v5, v0, :cond_4

    sget-object v2, Lorg/bouncycastle/pqc/crypto/mceliece/Conversions;->ONE:Ljava/math/BigInteger;

    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    new-instance v6, Ljava/math/BigInteger;

    add-int/lit8 v10, v0, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    new-instance v6, Ljava/math/BigInteger;

    sub-int v10, v5, v0

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v8, 0x1

    new-array v2, v0, [B

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    array-length v3, v2

    if-ge v1, v3, :cond_6

    array-length v1, v0

    invoke-static {v0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    :goto_5
    array-length v1, v2

    if-ge v0, v1, :cond_7

    aput-byte v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    invoke-static {v0, v4, v2, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shl-int v1, v11, v7

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v8

    and-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v2, v8

    :cond_7
    return-object v2

    :cond_8
    move v0, v1

    goto/16 :goto_1

    :cond_9
    move v7, v1

    move v8, v2

    goto/16 :goto_0
.end method
