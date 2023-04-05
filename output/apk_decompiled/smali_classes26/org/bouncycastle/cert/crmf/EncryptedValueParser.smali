.class public Lorg/bouncycastle/cert/crmf/EncryptedValueParser;
.super Ljava/lang/Object;


# instance fields
.field private padder:Lorg/bouncycastle/cert/crmf/EncryptedValuePadder;

.field private value:Lorg/bouncycastle/asn1/crmf/EncryptedValue;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/crmf/EncryptedValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->value:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/crmf/EncryptedValue;Lorg/bouncycastle/cert/crmf/EncryptedValuePadder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->value:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    iput-object p2, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->padder:Lorg/bouncycastle/cert/crmf/EncryptedValuePadder;

    return-void
.end method

.method private decryptValue(Lorg/bouncycastle/cert/crmf/ValueDecryptorGenerator;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->value:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->getIntendedAlg()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->value:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->getValueHint()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->value:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->getKeyAlg()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->value:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->getSymmAlg()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->value:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->getEncSymmKey()Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/bouncycastle/cert/crmf/ValueDecryptorGenerator;->getValueDecryptor(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/operator/InputDecryptor;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->value:Lorg/bouncycastle/asn1/crmf/EncryptedValue;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/crmf/EncryptedValue;->getEncValue()Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v0, v1}, Lorg/bouncycastle/operator/InputDecryptor;->getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lorg/bouncycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->padder:Lorg/bouncycastle/cert/crmf/EncryptedValuePadder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->padder:Lorg/bouncycastle/cert/crmf/EncryptedValuePadder;

    invoke-interface {v1, v0}, Lorg/bouncycastle/cert/crmf/EncryptedValuePadder;->getUnpaddedData([B)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cert/crmf/CRMFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse decrypted data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public readCertificateHolder(Lorg/bouncycastle/cert/crmf/ValueDecryptorGenerator;)Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->decryptValue(Lorg/bouncycastle/cert/crmf/ValueDecryptorGenerator;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/X509CertificateHolder;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    return-object v0
.end method

.method public readPassphrase(Lorg/bouncycastle/cert/crmf/ValueDecryptorGenerator;)[C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/bouncycastle/cert/crmf/EncryptedValueParser;->decryptValue(Lorg/bouncycastle/cert/crmf/ValueDecryptorGenerator;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->fromUTF8ByteArray([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method
