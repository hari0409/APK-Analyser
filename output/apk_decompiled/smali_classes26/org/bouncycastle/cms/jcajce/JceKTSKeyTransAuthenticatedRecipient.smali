.class public Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransAuthenticatedRecipient;
.super Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipient;


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;Lorg/bouncycastle/cms/KeyTransRecipientId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransAuthenticatedRecipient;->getPartyVInfoFromRID(Lorg/bouncycastle/cms/KeyTransRecipientId;)[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipient;-><init>(Ljava/security/PrivateKey;[B)V

    return-void
.end method


# virtual methods
.method public getRecipientOperator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/cms/RecipientOperator;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransAuthenticatedRecipient;->extractSecretKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/security/Key;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransAuthenticatedRecipient;->contentHelper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-virtual {v1, v0, p2}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createContentMac(Ljava/security/Key;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Mac;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/cms/RecipientOperator;

    new-instance v3, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransAuthenticatedRecipient$1;

    invoke-direct {v3, p0, p2, v0, v1}, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransAuthenticatedRecipient$1;-><init>(Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransAuthenticatedRecipient;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Key;Ljavax/crypto/Mac;)V

    invoke-direct {v2, v3}, Lorg/bouncycastle/cms/RecipientOperator;-><init>(Lorg/bouncycastle/operator/MacCalculator;)V

    return-object v2
.end method
