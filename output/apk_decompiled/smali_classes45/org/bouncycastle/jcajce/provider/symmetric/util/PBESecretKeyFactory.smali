.class public Lorg/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE;


# instance fields
.field private digest:I

.field private forCipher:Z

.field private ivSize:I

.field private keySize:I

.field private scheme:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZIIII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseSecretKeyFactory;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    iput-boolean p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->forCipher:Z

    iput p4, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->scheme:I

    iput p5, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->digest:I

    iput p6, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->keySize:I

    iput p7, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->ivSize:I

    return-void
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    instance-of v0, p1, Ljavax/crypto/spec/PBEKeySpec;

    if-eqz v0, :cond_2

    move-object v7, p1

    check-cast v7, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v7}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->algName:Ljava/lang/String;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->algOid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget v3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->scheme:I

    iget v4, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->digest:I

    iget v5, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->keySize:I

    iget v6, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->ivSize:I

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lorg/bouncycastle/crypto/CipherParameters;)V

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->forCipher:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->scheme:I

    iget v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->digest:I

    iget v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->keySize:I

    iget v3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->ivSize:I

    invoke-static {v7, v0, v1, v2, v3}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEParameters(Ljavax/crypto/spec/PBEKeySpec;IIII)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v8

    :goto_1
    new-instance v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->algName:Ljava/lang/String;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->algOid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget v3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->scheme:I

    iget v4, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->digest:I

    iget v5, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->keySize:I

    iget v6, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->ivSize:I

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;IIIILjavax/crypto/spec/PBEKeySpec;Lorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->scheme:I

    iget v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->digest:I

    iget v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;->keySize:I

    invoke-static {v7, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v8

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Invalid KeySpec"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
