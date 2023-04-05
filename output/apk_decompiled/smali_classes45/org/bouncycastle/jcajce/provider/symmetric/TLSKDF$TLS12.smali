.class public Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF$TLS12;
.super Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF$TLSKeyMaterialFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TLS12"
.end annotation


# instance fields
.field private final prf:Lorg/bouncycastle/crypto/Mac;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lorg/bouncycastle/crypto/Mac;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF$TLSKeyMaterialFactory;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF$TLS12;->prf:Lorg/bouncycastle/crypto/Mac;

    return-void
.end method

.method private PRF(Lorg/bouncycastle/jcajce/spec/TLSKeyMaterialSpec;Lorg/bouncycastle/crypto/Mac;)[B
    .locals 3

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/spec/TLSKeyMaterialSpec;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/spec/TLSKeyMaterialSpec;->getSeed()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/spec/TLSKeyMaterialSpec;->getSecret()[B

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/spec/TLSKeyMaterialSpec;->getLength()I

    move-result v2

    new-array v2, v2, [B

    invoke-static {p2, v1, v0, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF;->access$100(Lorg/bouncycastle/crypto/Mac;[B[B[B)V

    return-object v2
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/jcajce/spec/TLSKeyMaterialSpec;

    if-eqz v0, :cond_0

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    check-cast p1, Lorg/bouncycastle/jcajce/spec/TLSKeyMaterialSpec;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF$TLS12;->prf:Lorg/bouncycastle/crypto/Mac;

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF$TLS12;->PRF(Lorg/bouncycastle/jcajce/spec/TLSKeyMaterialSpec;Lorg/bouncycastle/crypto/Mac;)[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF$TLS12;->algName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Invalid KeySpec"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
