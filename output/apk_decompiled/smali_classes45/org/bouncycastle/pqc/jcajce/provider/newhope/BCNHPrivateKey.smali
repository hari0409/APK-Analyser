.class public Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pqc/jcajce/interfaces/NHPrivateKey;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final params:Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;->convert([B)[S

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;-><init>([S)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;->params:Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;->params:Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    return-void
.end method

.method private static convert([B)[S
    .locals 3

    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [S

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    invoke-static {p0, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v2

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    check-cast p1, Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;->params:Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;->getSecData()[S

    move-result-object v0

    iget-object v1, p1, Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;->params:Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;->getSecData()[S

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->areEqual([S[S)Z

    move-result v0

    goto :goto_0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "NH"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 6

    :try_start_0
    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->newHope:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;->params:Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;->getSecData()[S

    move-result-object v2

    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v4, v2

    if-eq v0, v4, :cond_0

    aget-short v4, v2, v0

    mul-int/lit8 v5, v0, 0x2

    invoke-static {v4, v3, v5}, Lorg/bouncycastle/util/Pack;->shortToLittleEndian(S[BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getEncoded()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "PKCS#8"

    return-object v0
.end method

.method getKeyParams()Lorg/bouncycastle/crypto/CipherParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;->params:Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    return-object v0
.end method

.method public getSecretData()[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;->params:Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;->getSecData()[S

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/newhope/BCNHPrivateKey;->params:Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;->getSecData()[S

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->hashCode([S)I

    move-result v0

    return v0
.end method
