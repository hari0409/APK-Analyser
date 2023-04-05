.class public Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator;
.super Lorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;


# static fields
.field private static final ANONYMOUS_SENDER:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0c14416e6f6e796d6f75732053656e64657220202020"

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator;->ANONYMOUS_SENDER:[B

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    new-instance v1, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {v1}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;->toASN1Structure()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator;-><init>(Ljava/security/cert/X509Certificate;Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/security/cert/X509Certificate;Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;

    sget-object v4, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator;->ANONYMOUS_SENDER:[B

    invoke-static {p2}, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator;->getEncodedRecipID(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)[B

    move-result-object v5

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;-><init>(Ljava/security/cert/X509Certificate;Ljava/lang/String;I[B[B)V

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;-><init>(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;Lorg/bouncycastle/operator/AsymmetricKeyWrapper;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    new-instance v1, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {v1}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;->toASN1Structure()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    new-instance v1, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;-><init>(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;Lorg/bouncycastle/operator/AsymmetricKeyWrapper;)V

    return-void
.end method

.method public constructor <init>([BLjava/security/PublicKey;Ljava/lang/String;I)V
    .locals 6

    new-instance v0, Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;

    sget-object v4, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator;->ANONYMOUS_SENDER:[B

    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator;->getEncodedSubKeyId([B)[B

    move-result-object v5

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;-><init>(Ljava/security/PublicKey;Ljava/lang/String;I[B[B)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;-><init>([BLorg/bouncycastle/operator/AsymmetricKeyWrapper;)V

    return-void
.end method

.method public constructor <init>([BLorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;

    invoke-direct {v0, p2, p3}, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyWrapper;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/KeyTransRecipientInfoGenerator;-><init>([BLorg/bouncycastle/operator/AsymmetricKeyWrapper;)V

    return-void
.end method

.method private static getEncodedRecipID(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    :try_start_0
    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator$1;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot process extracted IssuerAndSerialNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator$1;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    throw v1
.end method

.method private static getEncodedSubKeyId([B)[B
    .locals 4

    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DEROctetString;->getEncoded()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator$2;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot process subject key identifier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator$2;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    throw v1
.end method


# virtual methods
.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/operator/AsymmetricKeyWrapper;

    check-cast v0, Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/operator/AsymmetricKeyWrapper;

    check-cast v0, Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;->setProvider(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/JceKTSKeyWrapper;

    return-object p0
.end method
