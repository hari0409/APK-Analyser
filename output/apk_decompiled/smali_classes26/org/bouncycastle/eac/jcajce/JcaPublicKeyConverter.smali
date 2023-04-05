.class public Lorg/bouncycastle/eac/jcajce/JcaPublicKeyConverter;
.super Ljava/lang/Object;


# instance fields
.field private helper:Lorg/bouncycastle/eac/jcajce/EACHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/eac/jcajce/DefaultEACHelper;

    invoke-direct {v0}, Lorg/bouncycastle/eac/jcajce/DefaultEACHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/eac/jcajce/JcaPublicKeyConverter;->helper:Lorg/bouncycastle/eac/jcajce/EACHelper;

    return-void
.end method

.method private static convertCurve(Lorg/bouncycastle/math/ec/ECCurve;)Ljava/security/spec/EllipticCurve;
    .locals 5

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve;->getField()Lorg/bouncycastle/math/field/FiniteField;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/eac/jcajce/JcaPublicKeyConverter;->convertField(Lorg/bouncycastle/math/field/FiniteField;)Ljava/security/spec/ECField;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve;->getB()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    new-instance v3, Ljava/security/spec/EllipticCurve;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v2, v4}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v3
.end method

.method private static convertCurve(Ljava/security/spec/EllipticCurve;Ljava/math/BigInteger;I)Lorg/bouncycastle/math/ec/ECCurve;
    .locals 6

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v3

    instance-of v0, v1, Ljava/security/spec/ECFieldFp;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/math/ec/ECCurve$Fp;

    check-cast v1, Ljava/security/spec/ECFieldFp;

    invoke-virtual {v1}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v1

    int-to-long v4, p2

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not implemented yet!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static convertField(Lorg/bouncycastle/math/field/FiniteField;)Ljava/security/spec/ECField;
    .locals 4

    invoke-static {p0}, Lorg/bouncycastle/math/ec/ECAlgorithms;->isFpField(Lorg/bouncycastle/math/field/FiniteField;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/security/spec/ECFieldFp;

    invoke-interface {p0}, Lorg/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    :goto_0
    return-object v0

    :cond_0
    check-cast p0, Lorg/bouncycastle/math/field/PolynomialExtensionField;

    invoke-interface {p0}, Lorg/bouncycastle/math/field/PolynomialExtensionField;->getMinimalPolynomial()Lorg/bouncycastle/math/field/Polynomial;

    move-result-object v1

    invoke-interface {v1}, Lorg/bouncycastle/math/field/Polynomial;->getExponentsPresent()[I

    move-result-object v0

    const/4 v2, 0x1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([III)[I

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->reverse([I)[I

    move-result-object v2

    new-instance v0, Ljava/security/spec/ECFieldF2m;

    invoke-interface {v1}, Lorg/bouncycastle/math/field/Polynomial;->getDegree()I

    move-result v1

    invoke-direct {v0, v1, v2}, Ljava/security/spec/ECFieldF2m;-><init>(I[I)V

    goto :goto_0
.end method

.method private static convertPoint(Lorg/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 2

    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method private getECPublicKeyPublicKey(Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;)Ljava/security/PublicKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/eac/EACException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/bouncycastle/eac/jcajce/JcaPublicKeyConverter;->getParams(Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-direct {p0, p1}, Lorg/bouncycastle/eac/jcajce/JcaPublicKeyConverter;->getPublicPoint(Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;)Ljava/security/spec/ECPoint;

    move-result-object v1

    new-instance v2, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v2, v1, v0}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/eac/jcajce/JcaPublicKeyConverter;->helper:Lorg/bouncycastle/eac/jcajce/EACHelper;

    const-string v1, "ECDSA"

    invoke-interface {v0, v1}, Lorg/bouncycastle/eac/jcajce/EACHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/eac/EACException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/eac/EACException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/bouncycastle/eac/EACException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find algorithm ECDSA: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/eac/EACException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getParams(Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;)Ljava/security/spec/ECParameterSpec;
    .locals 7

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->hasParameters()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Public key does not contains EC Params"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->getPrimeModulusP()Ljava/math/BigInteger;

    move-result-object v1

    new-instance v0, Lorg/bouncycastle/math/ec/ECCurve$Fp;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->getFirstCoefA()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->getSecondCoefB()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->getOrderOfBasePointR()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->getCofactorF()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->getBasePointG()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/ECCurve$Fp;->decodePoint([B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->getOrderOfBasePointR()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->getCofactorF()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v0}, Lorg/bouncycastle/eac/jcajce/JcaPublicKeyConverter;->convertCurve(Lorg/bouncycastle/math/ec/ECCurve;)Ljava/security/spec/EllipticCurve;

    move-result-object v0

    new-instance v4, Ljava/security/spec/ECParameterSpec;

    new-instance v5, Ljava/security/spec/ECPoint;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v5, v6, v1}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-direct {v4, v0, v5, v2, v1}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    return-object v4
.end method

.method private getPublicPoint(Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;)Ljava/security/spec/ECPoint;
    .locals 6

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->hasParameters()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Public key does not contains EC Params"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->getPrimeModulusP()Ljava/math/BigInteger;

    move-result-object v1

    new-instance v0, Lorg/bouncycastle/math/ec/ECCurve$Fp;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->getFirstCoefA()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->getSecondCoefB()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->getOrderOfBasePointR()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->getCofactorF()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;->getPublicPointY()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/ECCurve$Fp;->decodePoint([B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/ECPoint$Fp;

    new-instance v1, Ljava/security/spec/ECPoint;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint$Fp;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1
.end method


# virtual methods
.method public getKey(Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;)Ljava/security/PublicKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/eac/EACException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;->getUsage()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;

    invoke-direct {p0, p1}, Lorg/bouncycastle/eac/jcajce/JcaPublicKeyConverter;->getECPublicKeyPublicKey(Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;)Ljava/security/PublicKey;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    check-cast p1, Lorg/bouncycastle/asn1/eac/RSAPublicKey;

    new-instance v0, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/eac/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/eac/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/eac/jcajce/JcaPublicKeyConverter;->helper:Lorg/bouncycastle/eac/jcajce/EACHelper;

    const-string v2, "RSA"

    invoke-interface {v1, v2}, Lorg/bouncycastle/eac/jcajce/EACHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/eac/EACException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/eac/EACException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/bouncycastle/eac/EACException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find algorithm ECDSA: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/eac/EACException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPublicKeyDataObject(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/eac/PublicKeyDataObject;
    .locals 10

    instance-of v0, p2, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/security/interfaces/RSAPublicKey;

    new-instance v0, Lorg/bouncycastle/asn1/eac/RSAPublicKey;

    invoke-interface {p2}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p2}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/bouncycastle/asn1/eac/RSAPublicKey;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :goto_0
    return-object v0

    :cond_0
    check-cast p2, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {p2}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v8

    new-instance v0, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;

    invoke-virtual {v8}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v1

    check-cast v1, Ljava/security/spec/ECFieldFp;

    invoke-virtual {v1}, Ljava/security/spec/ECFieldFp;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v8}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getA()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v8}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/EllipticCurve;->getB()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v8}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v8}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v8}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v6

    invoke-static {v1, v5, v6}, Lorg/bouncycastle/eac/jcajce/JcaPublicKeyConverter;->convertCurve(Ljava/security/spec/EllipticCurve;Ljava/math/BigInteger;I)Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v8}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v5

    invoke-static {v1, v5}, Lorg/bouncycastle/eac/jcajce/JcaPublicKeyConverter;->convertPoint(Lorg/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded()[B

    move-result-object v5

    invoke-virtual {v8}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v8}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-virtual {v8}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v8}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v9

    invoke-static {v1, v7, v9}, Lorg/bouncycastle/eac/jcajce/JcaPublicKeyConverter;->convertCurve(Ljava/security/spec/EllipticCurve;Ljava/math/BigInteger;I)Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-interface {p2}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v7

    invoke-static {v1, v7}, Lorg/bouncycastle/eac/jcajce/JcaPublicKeyConverter;->convertPoint(Lorg/bouncycastle/math/ec/ECCurve;Ljava/security/spec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded()[B

    move-result-object v7

    invoke-virtual {v8}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v8

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/asn1/eac/ECDSAPublicKey;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[BLjava/math/BigInteger;[BI)V

    goto :goto_0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/eac/jcajce/JcaPublicKeyConverter;
    .locals 1

    new-instance v0, Lorg/bouncycastle/eac/jcajce/NamedEACHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/eac/jcajce/NamedEACHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/eac/jcajce/JcaPublicKeyConverter;->helper:Lorg/bouncycastle/eac/jcajce/EACHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/eac/jcajce/JcaPublicKeyConverter;
    .locals 1

    new-instance v0, Lorg/bouncycastle/eac/jcajce/ProviderEACHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/eac/jcajce/ProviderEACHelper;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lorg/bouncycastle/eac/jcajce/JcaPublicKeyConverter;->helper:Lorg/bouncycastle/eac/jcajce/EACHelper;

    return-object p0
.end method
