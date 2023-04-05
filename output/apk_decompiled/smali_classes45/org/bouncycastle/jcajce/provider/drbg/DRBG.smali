.class public Lorg/bouncycastle/jcajce/provider/drbg/DRBG;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/drbg/DRBG$CoreSecureRandom;,
        Lorg/bouncycastle/jcajce/provider/drbg/DRBG$Default;,
        Lorg/bouncycastle/jcajce/provider/drbg/DRBG$Mappings;,
        Lorg/bouncycastle/jcajce/provider/drbg/DRBG$NonceAndIV;
    }
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String;

.field private static final initialEntropySourceAndSpi:[Ljava/lang/Object;

.field private static final initialEntropySourceNames:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-class v0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->PREFIX:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "sun.security.provider.Sun"

    aput-object v2, v1, v4

    const-string v2, "sun.security.provider.SecureRandom"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "org.apache.harmony.security.provider.crypto.CryptoProvider"

    aput-object v2, v1, v4

    const-string v2, "org.apache.harmony.security.provider.crypto.SHA1PRNG_SecureRandomImpl"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "com.android.org.conscrypt.OpenSSLProvider"

    aput-object v2, v1, v4

    const-string v2, "com.android.org.conscrypt.OpenSSLRandom"

    aput-object v2, v1, v5

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "org.conscrypt.OpenSSLProvider"

    aput-object v3, v2, v4

    const-string v3, "org.conscrypt.OpenSSLRandom"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->initialEntropySourceNames:[[Ljava/lang/String;

    invoke-static {}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->findSource()[Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->initialEntropySourceAndSpi:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->initialEntropySourceAndSpi:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Z)Ljava/security/SecureRandom;
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->createBaseRandom(Z)Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->PREFIX:Ljava/lang/String;

    return-object v0
.end method

.method private static createBaseRandom(Z)Ljava/security/SecureRandom;
    .locals 4

    const-string v0, "org.bouncycastle.drbg.entropysource"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->createEntropySource()Lorg/bouncycastle/crypto/prng/EntropySourceProvider;

    move-result-object v0

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/prng/EntropySourceProvider;->get(I)Lorg/bouncycastle/crypto/prng/EntropySource;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;

    invoke-direct {v2, v0}, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;-><init>(Lorg/bouncycastle/crypto/prng/EntropySourceProvider;)V

    invoke-interface {v1}, Lorg/bouncycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->generateDefaultPersonalizationString([B)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->setPersonalizationString([B)Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    invoke-interface {v1}, Lorg/bouncycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object v3

    invoke-interface {v1}, Lorg/bouncycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object v1

    invoke-static {v3, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v1

    invoke-virtual {v0, v2, v1, p0}, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->buildHash(Lorg/bouncycastle/crypto/Digest;[BZ)Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->createInitialEntropySource()Ljava/security/SecureRandom;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;-><init>(Ljava/security/SecureRandom;Z)V

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->generateDefaultPersonalizationString([B)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->setPersonalizationString([B)Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v0

    invoke-virtual {v1, v2, v0, p0}, Lorg/bouncycastle/crypto/prng/SP800SecureRandomBuilder;->buildHash(Lorg/bouncycastle/crypto/Digest;[BZ)Lorg/bouncycastle/crypto/prng/SP800SecureRandom;

    move-result-object v0

    goto :goto_0
.end method

.method private static createEntropySource()Lorg/bouncycastle/crypto/prng/EntropySourceProvider;
    .locals 2

    const-string v0, "org.bouncycastle.drbg.entropysource"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$1;

    invoke-direct {v1, v0}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$1;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/prng/EntropySourceProvider;

    return-object v0
.end method

.method private static createInitialEntropySource()Ljava/security/SecureRandom;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->initialEntropySourceAndSpi:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$CoreSecureRandom;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/drbg/DRBG$CoreSecureRandom;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    goto :goto_0
.end method

.method private static final findSource()[Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->initialEntropySourceNames:[[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lorg/bouncycastle/jcajce/provider/drbg/DRBG;->initialEntropySourceNames:[[Ljava/lang/String;

    aget-object v2, v1, v0

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static generateDefaultPersonalizationString([B)[B
    .locals 4

    const-string v0, "Default"

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J)[B

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J)[B

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static generateNonceIVPersonalizationString([B)[B
    .locals 4

    const-string v0, "Nonce"

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J)[B

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J)[B

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B[B)[B

    move-result-object v0

    return-object v0
.end method
