.class public Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransEnvelopedRecipient;
.super Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipient;


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;Lorg/bouncycastle/cms/KeyTransRecipientId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransEnvelopedRecipient;->getPartyVInfoFromRID(Lorg/bouncycastle/cms/KeyTransRecipientId;)[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipient;-><init>(Ljava/security/PrivateKey;[B)V

    return-void
.end method


# virtual methods
.method public getRecipientOperator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/cms/RecipientOperator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransEnvelopedRecipient;->extractSecretKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/security/Key;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransEnvelopedRecipient;->contentHelper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-virtual {v1, v0, p2}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createContentCipher(Ljava/security/Key;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/cms/RecipientOperator;

    new-instance v2, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransEnvelopedRecipient$1;

    invoke-direct {v2, p0, p2, v0}, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransEnvelopedRecipient$1;-><init>(Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransEnvelopedRecipient;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljavax/crypto/Cipher;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/cms/RecipientOperator;-><init>(Lorg/bouncycastle/operator/InputDecryptor;)V

    return-object v1
.end method
