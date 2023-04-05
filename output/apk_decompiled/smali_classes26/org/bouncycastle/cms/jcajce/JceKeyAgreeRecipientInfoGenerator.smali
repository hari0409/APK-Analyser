.class public Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;
.super Lorg/bouncycastle/cms/KeyAgreeRecipientInfoGenerator;


# static fields
.field private static ecc_cms_Generator:Lorg/bouncycastle/cms/jcajce/KeyMaterialGenerator;


# instance fields
.field private ephemeralKP:Ljava/security/KeyPair;

.field private helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

.field private keySizeProvider:Lorg/bouncycastle/operator/SecretKeySizeProvider;

.field private random:Ljava/security/SecureRandom;

.field private recipientIDs:Ljava/util/List;

.field private recipientKeys:Ljava/util/List;

.field private senderPrivateKey:Ljava/security/PrivateKey;

.field private senderPublicKey:Ljava/security/PublicKey;

.field private userKeyingMaterial:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/cms/jcajce/RFC5753KeyMaterialGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/cms/jcajce/RFC5753KeyMaterialGenerator;-><init>()V

    sput-object v0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->ecc_cms_Generator:Lorg/bouncycastle/cms/jcajce/KeyMaterialGenerator;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/security/PrivateKey;Ljava/security/PublicKey;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 2

    invoke-interface {p3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lorg/bouncycastle/cms/KeyAgreeRecipientInfoGenerator;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v0, Lorg/bouncycastle/operator/DefaultSecretKeySizeProvider;

    invoke-direct {v0}, Lorg/bouncycastle/operator/DefaultSecretKeySizeProvider;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->keySizeProvider:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->recipientIDs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->recipientKeys:Ljava/util/List;

    new-instance v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/DefaultJcaJceExtHelper;

    invoke-direct {v1}, Lorg/bouncycastle/cms/jcajce/DefaultJcaJceExtHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    iput-object p3, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->senderPublicKey:Ljava/security/PublicKey;

    iput-object p2, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->senderPrivateKey:Ljava/security/PrivateKey;

    return-void
.end method

.method private init(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->random:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->random:Ljava/security/SecureRandom;

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->isMQV(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->ephemeralKP:Ljava/security/KeyPair;

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->senderPublicKey:Ljava/security/PublicKey;

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createAlgorithmParameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/AlgorithmParameters;->init([B)V

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createKeyPairGenerator(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    const-class v2, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->ephemeralKP:Ljava/security/KeyPair;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot determine MQV ephemeral key pair parameters from public key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public addRecipient(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->recipientIDs:Ljava/util/List;

    new-instance v1, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;

    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->getIssuerAndSerialNumber(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;-><init>(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->recipientKeys:Ljava/util/List;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addRecipient([BLjava/security/PublicKey;)Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->recipientIDs:Ljava/util/List;

    new-instance v1, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;

    invoke-direct {v2, p1}, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;-><init>(Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->recipientKeys:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public generateRecipientEncryptedKeys(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/operator/GenericKey;)Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->recipientIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "No recipients associated with generator - use addRecipient()"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->init(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    iget-object v4, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->senderPrivateKey:Ljava/security/PrivateKey;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    new-instance v6, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->recipientIDs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v2, v0, :cond_6

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->recipientKeys:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/PublicKey;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->recipientIDs:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;

    :try_start_0
    invoke-static {v5}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->isMQV(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lorg/bouncycastle/jcajce/spec/MQVParameterSpec;

    iget-object v7, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->ephemeralKP:Ljava/security/KeyPair;

    iget-object v8, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->userKeyingMaterial:[B

    invoke-direct {v3, v7, v0, v8}, Lorg/bouncycastle/jcajce/spec/MQVParameterSpec;-><init>(Ljava/security/KeyPair;Ljava/security/PublicKey;[B)V

    :goto_1
    iget-object v7, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-virtual {v7, v5}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createKeyAgreement(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/KeyAgreement;

    move-result-object v7

    iget-object v8, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v7, v4, v3, v8}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    const/4 v3, 0x1

    invoke-virtual {v7, v0, v3}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljavax/crypto/KeyAgreement;->generateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v0

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createCipher(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v7, 0x3

    iget-object v8, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v7, v0, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-virtual {v0, p3}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->getJceKey(Lorg/bouncycastle/operator/GenericKey;)Ljava/security/Key;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v0

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    new-instance v0, Lorg/bouncycastle/asn1/cms/RecipientEncryptedKey;

    invoke-direct {v0, v1, v3}, Lorg/bouncycastle/asn1/cms/RecipientEncryptedKey;-><init>(Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    invoke-virtual {v6, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-static {v5}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->isEC(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->ecc_cms_Generator:Lorg/bouncycastle/cms/jcajce/KeyMaterialGenerator;

    iget-object v7, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->keySizeProvider:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/bouncycastle/operator/SecretKeySizeProvider;->getKeySize(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)I

    move-result v7

    iget-object v8, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->userKeyingMaterial:[B

    invoke-interface {v3, p2, v7, v8}, Lorg/bouncycastle/cms/jcajce/KeyMaterialGenerator;->generateKDFMaterial(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I[B)[B

    move-result-object v7

    new-instance v3, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;

    invoke-direct {v3, v7}, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;-><init>([B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot perform agreement step: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_2
    :try_start_1
    invoke-static {v5}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->isRFC2631(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->userKeyingMaterial:[B

    if-eqz v3, :cond_3

    new-instance v3, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;

    iget-object v7, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->userKeyingMaterial:[B

    invoke-direct {v3, v7}, Lorg/bouncycastle/jcajce/spec/UserKeyingMaterialSpec;-><init>([B)V

    goto/16 :goto_1

    :cond_3
    sget-object v3, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_SSDH:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    const-string v1, "User keying material must be set for static keys."

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_5
    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key agreement algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method protected getUserKeyingMaterial(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->init(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->ephemeralKP:Ljava/security/KeyPair;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->ephemeralKP:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->createOriginatorPublicKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->userKeyingMaterial:[B

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;

    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->userKeyingMaterial:[B

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->getEncoded()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorPublicKey;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/ecc/MQVuserKeyingMaterial;->getEncoded()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to encode user keying material: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->userKeyingMaterial:[B

    goto :goto_0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/NamedJcaJceExtHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cms/jcajce/NamedJcaJceExtHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/ProviderJcaJceExtHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cms/jcajce/ProviderJcaJceExtHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;-><init>(Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    return-object p0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->random:Ljava/security/SecureRandom;

    return-object p0
.end method

.method public setUserKeyingMaterial([B)Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipientInfoGenerator;->userKeyingMaterial:[B

    return-object p0
.end method
