.class public Lorg/bouncycastle/cert/dane/TruncatingDigestCalculator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/operator/DigestCalculator;


# instance fields
.field private final baseCalculator:Lorg/bouncycastle/operator/DigestCalculator;

.field private final length:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/DigestCalculator;)V
    .locals 1

    const/16 v0, 0x1c

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cert/dane/TruncatingDigestCalculator;-><init>(Lorg/bouncycastle/operator/DigestCalculator;I)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/operator/DigestCalculator;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/dane/TruncatingDigestCalculator;->baseCalculator:Lorg/bouncycastle/operator/DigestCalculator;

    iput p2, p0, Lorg/bouncycastle/cert/dane/TruncatingDigestCalculator;->length:I

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/dane/TruncatingDigestCalculator;->baseCalculator:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v0}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getDigest()[B
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lorg/bouncycastle/cert/dane/TruncatingDigestCalculator;->length:I

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/cert/dane/TruncatingDigestCalculator;->baseCalculator:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v1}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v1

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/dane/TruncatingDigestCalculator;->baseCalculator:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v0}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method
