.class public Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF$Mappings;,
        Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF$TLS10;,
        Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF$TLS11;,
        Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF$TLS12;,
        Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF$TLS12withSHA256;,
        Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF$TLS12withSHA384;,
        Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF$TLS12withSHA512;,
        Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF$TLSKeyMaterialFactory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static PRF_legacy(Lorg/bouncycastle/jcajce/spec/TLSKeyMaterialSpec;)[B
    .locals 9

    const/4 v0, 0x0

    new-instance v1, Lorg/bouncycastle/crypto/macs/HMac;

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createMD5()Lorg/bouncycastle/crypto/Digest;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    new-instance v2, Lorg/bouncycastle/crypto/macs/HMac;

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA1()Lorg/bouncycastle/crypto/Digest;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/spec/TLSKeyMaterialSpec;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/spec/TLSKeyMaterialSpec;->getSeed()[B

    move-result-object v4

    invoke-static {v3, v4}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/spec/TLSKeyMaterialSpec;->getSecret()[B

    move-result-object v4

    array-length v5, v4

    add-int/lit8 v5, v5, 0x1

    div-int/lit8 v5, v5, 0x2

    new-array v6, v5, [B

    new-array v7, v5, [B

    invoke-static {v4, v0, v6, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v8, v4

    sub-int/2addr v8, v5

    invoke-static {v4, v8, v7, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/spec/TLSKeyMaterialSpec;->getLength()I

    move-result v4

    new-array v5, v4, [B

    new-array v8, v4, [B

    invoke-static {v1, v6, v3, v5}, Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF;->hmac_hash(Lorg/bouncycastle/crypto/Mac;[B[B[B)V

    invoke-static {v2, v7, v3, v8}, Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF;->hmac_hash(Lorg/bouncycastle/crypto/Mac;[B[B[B)V

    :goto_0
    if-ge v0, v4, :cond_0

    aget-byte v1, v5, v0

    aget-byte v2, v8, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v5
.end method

.method static synthetic access$000(Lorg/bouncycastle/jcajce/spec/TLSKeyMaterialSpec;)[B
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF;->PRF_legacy(Lorg/bouncycastle/jcajce/spec/TLSKeyMaterialSpec;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/bouncycastle/crypto/Mac;[B[B[B)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF;->hmac_hash(Lorg/bouncycastle/crypto/Mac;[B[B[B)V

    return-void
.end method

.method private static hmac_hash(Lorg/bouncycastle/crypto/Mac;[B[B[B)V
    .locals 9

    const/4 v1, 0x0

    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {p0, v0}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    invoke-interface {p0}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v4

    array-length v0, p3

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, -0x1

    div-int v5, v0, v4

    invoke-interface {p0}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v3, v0, [B

    invoke-interface {p0}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v6, v0, [B

    move v0, v1

    move-object v2, p2

    :goto_0
    if-ge v0, v5, :cond_0

    array-length v7, v2

    invoke-interface {p0, v2, v1, v7}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    invoke-interface {p0, v3, v1}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    array-length v2, v3

    invoke-interface {p0, v3, v1, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    array-length v2, p2

    invoke-interface {p0, p2, v1, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    invoke-interface {p0, v6, v1}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    mul-int v2, v4, v0

    array-length v7, p3

    mul-int v8, v4, v0

    sub-int/2addr v7, v8

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v1, p3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    move-object v2, v3

    goto :goto_0

    :cond_0
    return-void
.end method
