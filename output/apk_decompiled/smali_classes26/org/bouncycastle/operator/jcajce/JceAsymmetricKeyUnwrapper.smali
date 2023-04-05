.class public Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;
.super Lorg/bouncycastle/operator/AsymmetricKeyUnwrapper;


# instance fields
.field private extraMappings:Ljava/util/Map;

.field private helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

.field private privKey:Ljava/security/PrivateKey;

.field private unwrappedKeyMustBeEncodable:Z


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PrivateKey;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/bouncycastle/operator/AsymmetricKeyUnwrapper;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v1}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;->extraMappings:Ljava/util/Map;

    iput-object p2, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;->privKey:Ljava/security/PrivateKey;

    return-void
.end method


# virtual methods
.method public generateUnwrappedKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/operator/GenericKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    invoke-virtual {p0}, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;->extraMappings:Ljava/util/Map;

    invoke-virtual {v0, v2, v3}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->createAsymmetricWrapper(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)Ljavax/crypto/Cipher;

    move-result-object v2

    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    invoke-virtual {p0}, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->createAlgorithmParameters(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/security/AlgorithmParameters;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_7

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v3, 0x4

    :try_start_1
    iget-object v4, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;->privKey:Ljava/security/PrivateKey;

    invoke-virtual {v2, v3, v4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;->getKeyAlgorithmName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v2, p2, v0, v3}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/ProviderException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_7

    move-result-object v0

    :try_start_2
    iget-boolean v3, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;->unwrappedKeyMustBeEncodable:Z
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/security/ProviderException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_7

    if-eqz v3, :cond_1

    :try_start_3
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v3, v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/security/ProviderException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3} :catch_7

    if-nez v3, :cond_1

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    const/4 v0, 0x2

    :try_start_4
    iget-object v1, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;->privKey:Ljava/security/PrivateKey;

    invoke-virtual {v2, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :cond_2
    new-instance v1, Lorg/bouncycastle/operator/jcajce/JceGenericKey;

    invoke-direct {v1, p1, v0}, Lorg/bouncycastle/operator/jcajce/JceGenericKey;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Key;)V
    :try_end_4
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljavax/crypto/BadPaddingException; {:try_start_4 .. :try_end_4} :catch_7

    return-object v1

    :cond_3
    const/4 v0, 0x4

    :try_start_5
    iget-object v3, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;->privKey:Ljava/security/PrivateKey;

    invoke-virtual {v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_5
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/security/ProviderException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljavax/crypto/BadPaddingException; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    :goto_3
    move-object v0, v1

    goto :goto_1

    :catch_3
    move-exception v0

    :goto_4
    move-object v0, v1

    goto :goto_1

    :catch_4
    move-exception v0

    :goto_5
    move-object v0, v1

    goto :goto_1

    :catch_5
    move-exception v0

    new-instance v1, Lorg/bouncycastle/operator/OperatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_6
    move-exception v0

    new-instance v1, Lorg/bouncycastle/operator/OperatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal blocksize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_7
    move-exception v0

    new-instance v1, Lorg/bouncycastle/operator/OperatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad padding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_8
    move-exception v1

    move-object v1, v0

    goto :goto_5

    :catch_9
    move-exception v1

    move-object v1, v0

    goto :goto_4

    :catch_a
    move-exception v1

    move-object v1, v0

    goto :goto_3

    :catch_b
    move-exception v1

    move-object v1, v0

    goto :goto_2
.end method

.method public setAlgorithmMapping(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;->extraMappings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setMustProduceEncodableUnwrappedKey(Z)Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;->unwrappedKeyMustBeEncodable:Z

    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;
    .locals 2

    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;
    .locals 2

    new-instance v0, Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/operator/jcajce/JceAsymmetricKeyUnwrapper;->helper:Lorg/bouncycastle/operator/jcajce/OperatorHelper;

    return-object p0
.end method
