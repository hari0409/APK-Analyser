.class public final Lcom/google/common/hash/Hashing;
.super Ljava/lang/Object;
.source "Hashing.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;,
        Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;,
        Lcom/google/common/hash/Hashing$ChecksumType;,
        Lcom/google/common/hash/Hashing$Sha512Holder;,
        Lcom/google/common/hash/Hashing$Sha384Holder;,
        Lcom/google/common/hash/Hashing$Sha256Holder;,
        Lcom/google/common/hash/Hashing$Sha1Holder;,
        Lcom/google/common/hash/Hashing$Md5Holder;
    }
.end annotation


# static fields
.field static final GOOD_FAST_HASH_SEED:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/google/common/hash/Hashing;->GOOD_FAST_HASH_SEED:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adler32()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 385
    sget-object v0, Lcom/google/common/hash/Hashing$ChecksumType;->ADLER_32:Lcom/google/common/hash/Hashing$ChecksumType;

    iget-object v0, v0, Lcom/google/common/hash/Hashing$ChecksumType;->hashFunction:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method static checkPositiveAndMakeMultipleOf32(I)I
    .locals 2
    .param p0, "bits"    # I

    .prologue
    .line 565
    if-lez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Number of bits must be positive"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 566
    add-int/lit8 v0, p0, 0x1f

    and-int/lit8 v0, v0, -0x20

    return v0

    .line 565
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static combineOrdered(Ljava/lang/Iterable;)Lcom/google/common/hash/HashCode;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/common/hash/HashCode;",
            ">;)",
            "Lcom/google/common/hash/HashCode;"
        }
    .end annotation

    .prologue
    .line 524
    .local p0, "hashCodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/common/hash/HashCode;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 525
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/hash/HashCode;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "Must be at least 1 hash code to combine."

    invoke-static {v6, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 526
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/common/hash/HashCode;

    invoke-virtual {v6}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v0

    .line 527
    .local v0, "bits":I
    div-int/lit8 v6, v0, 0x8

    new-array v5, v6, [B

    .line 528
    .local v5, "resultBytes":[B
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/hash/HashCode;

    .line 529
    .local v1, "hashCode":Lcom/google/common/hash/HashCode;
    invoke-virtual {v1}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v4

    .line 530
    .local v4, "nextBytes":[B
    array-length v6, v4

    array-length v8, v5

    if-ne v6, v8, :cond_1

    const/4 v6, 0x1

    :goto_0
    const-string v8, "All hashcodes must have the same bit length."

    invoke-static {v6, v8}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 532
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v4

    if-ge v2, v6, :cond_0

    .line 533
    aget-byte v6, v5, v2

    mul-int/lit8 v6, v6, 0x25

    aget-byte v8, v4, v2

    xor-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 532
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 530
    .end local v2    # "i":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 536
    .end local v1    # "hashCode":Lcom/google/common/hash/HashCode;
    .end local v4    # "nextBytes":[B
    :cond_2
    invoke-static {v5}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object v6

    return-object v6
.end method

.method public static combineUnordered(Ljava/lang/Iterable;)Lcom/google/common/hash/HashCode;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/common/hash/HashCode;",
            ">;)",
            "Lcom/google/common/hash/HashCode;"
        }
    .end annotation

    .prologue
    .line 549
    .local p0, "hashCodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/common/hash/HashCode;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 550
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/hash/HashCode;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "Must be at least 1 hash code to combine."

    invoke-static {v5, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 551
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/hash/HashCode;

    invoke-virtual {v5}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v5

    div-int/lit8 v5, v5, 0x8

    new-array v4, v5, [B

    .line 552
    .local v4, "resultBytes":[B
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/HashCode;

    .line 553
    .local v0, "hashCode":Lcom/google/common/hash/HashCode;
    invoke-virtual {v0}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v3

    .line 554
    .local v3, "nextBytes":[B
    array-length v5, v3

    array-length v7, v4

    if-ne v5, v7, :cond_1

    const/4 v5, 0x1

    :goto_0
    const-string v7, "All hashcodes must have the same bit length."

    invoke-static {v5, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 556
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 557
    aget-byte v5, v4, v1

    aget-byte v7, v3, v1

    add-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 556
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 554
    .end local v1    # "i":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 560
    .end local v0    # "hashCode":Lcom/google/common/hash/HashCode;
    .end local v3    # "nextBytes":[B
    :cond_2
    invoke-static {v4}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object v5

    return-object v5
.end method

.method public static varargs concatenating(Lcom/google/common/hash/HashFunction;Lcom/google/common/hash/HashFunction;[Lcom/google/common/hash/HashFunction;)Lcom/google/common/hash/HashFunction;
    .locals 4
    .param p0, "first"    # Lcom/google/common/hash/HashFunction;
    .param p1, "second"    # Lcom/google/common/hash/HashFunction;
    .param p2, "rest"    # [Lcom/google/common/hash/HashFunction;

    .prologue
    .line 582
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 583
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/hash/HashFunction;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 586
    new-instance v2, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/common/hash/HashFunction;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/common/hash/HashFunction;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;-><init>([Lcom/google/common/hash/HashFunction;Lcom/google/common/hash/Hashing$1;)V

    return-object v2
.end method

.method public static concatenating(Ljava/lang/Iterable;)Lcom/google/common/hash/HashFunction;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/common/hash/HashFunction;",
            ">;)",
            "Lcom/google/common/hash/HashFunction;"
        }
    .end annotation

    .prologue
    .local p0, "hashFunctions":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/common/hash/HashFunction;>;"
    const/4 v3, 0x0

    .line 600
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/hash/HashFunction;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/HashFunction;

    .line 604
    .local v0, "hashFunction":Lcom/google/common/hash/HashFunction;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 606
    .end local v0    # "hashFunction":Lcom/google/common/hash/HashFunction;
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    const-string v4, "number of hash functions (%s) must be > 0"

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 607
    new-instance v4, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    new-array v2, v3, [Lcom/google/common/hash/HashFunction;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/common/hash/HashFunction;

    const/4 v3, 0x0

    invoke-direct {v4, v2, v3}, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;-><init>([Lcom/google/common/hash/HashFunction;Lcom/google/common/hash/Hashing$1;)V

    return-object v4

    :cond_1
    move v2, v3

    .line 606
    goto :goto_1
.end method

.method public static consistentHash(JI)I
    .locals 8
    .param p0, "input"    # J
    .param p2, "buckets"    # I

    .prologue
    .line 498
    if-lez p2, :cond_0

    const/4 v3, 0x1

    :goto_0
    const-string v4, "buckets must be positive: %s"

    invoke-static {v3, v4, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 499
    new-instance v1, Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;

    invoke-direct {v1, p0, p1}, Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;-><init>(J)V

    .line 500
    .local v1, "generator":Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;
    const/4 v0, 0x0

    .line 505
    .local v0, "candidate":I
    :goto_1
    add-int/lit8 v3, v0, 0x1

    int-to-double v4, v3

    invoke-virtual {v1}, Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;->nextDouble()D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-int v2, v4

    .line 506
    .local v2, "next":I
    if-ltz v2, :cond_1

    if-ge v2, p2, :cond_1

    .line 507
    move v0, v2

    goto :goto_1

    .line 498
    .end local v0    # "candidate":I
    .end local v1    # "generator":Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;
    .end local v2    # "next":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 509
    .restart local v0    # "candidate":I
    .restart local v1    # "generator":Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;
    .restart local v2    # "next":I
    :cond_1
    return v0
.end method

.method public static consistentHash(Lcom/google/common/hash/HashCode;I)I
    .locals 2
    .param p0, "hashCode"    # Lcom/google/common/hash/HashCode;
    .param p1, "buckets"    # I

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->padToLong()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/common/hash/Hashing;->consistentHash(JI)I

    move-result v0

    return v0
.end method

.method public static crc32()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 369
    sget-object v0, Lcom/google/common/hash/Hashing$ChecksumType;->CRC_32:Lcom/google/common/hash/Hashing$ChecksumType;

    iget-object v0, v0, Lcom/google/common/hash/Hashing$ChecksumType;->hashFunction:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static crc32c()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 353
    sget-object v0, Lcom/google/common/hash/Crc32cHashFunction;->CRC_32_C:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static farmHashFingerprint64()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 428
    sget-object v0, Lcom/google/common/hash/FarmHashFingerprint64;->FARMHASH_FINGERPRINT_64:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static goodFastHash(I)Lcom/google/common/hash/HashFunction;
    .locals 7
    .param p0, "minimumBits"    # I

    .prologue
    .line 65
    invoke-static {p0}, Lcom/google/common/hash/Hashing;->checkPositiveAndMakeMultipleOf32(I)I

    move-result v0

    .line 67
    .local v0, "bits":I
    const/16 v5, 0x20

    if-ne v0, v5, :cond_0

    .line 68
    sget-object v5, Lcom/google/common/hash/Murmur3_32HashFunction;->GOOD_FAST_HASH_32:Lcom/google/common/hash/HashFunction;

    .line 83
    :goto_0
    return-object v5

    .line 70
    :cond_0
    const/16 v5, 0x80

    if-gt v0, v5, :cond_1

    .line 71
    sget-object v5, Lcom/google/common/hash/Murmur3_128HashFunction;->GOOD_FAST_HASH_128:Lcom/google/common/hash/HashFunction;

    goto :goto_0

    .line 75
    :cond_1
    add-int/lit8 v5, v0, 0x7f

    div-int/lit16 v2, v5, 0x80

    .line 76
    .local v2, "hashFunctionsNeeded":I
    new-array v1, v2, [Lcom/google/common/hash/HashFunction;

    .line 77
    .local v1, "hashFunctions":[Lcom/google/common/hash/HashFunction;
    const/4 v5, 0x0

    sget-object v6, Lcom/google/common/hash/Murmur3_128HashFunction;->GOOD_FAST_HASH_128:Lcom/google/common/hash/HashFunction;

    aput-object v6, v1, v5

    .line 78
    sget v4, Lcom/google/common/hash/Hashing;->GOOD_FAST_HASH_SEED:I

    .line 79
    .local v4, "seed":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 80
    const v5, 0x596f0ddf

    add-int/2addr v4, v5

    .line 81
    invoke-static {v4}, Lcom/google/common/hash/Hashing;->murmur3_128(I)Lcom/google/common/hash/HashFunction;

    move-result-object v5

    aput-object v5, v1, v3

    .line 79
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 83
    :cond_2
    new-instance v5, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6}, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;-><init>([Lcom/google/common/hash/HashFunction;Lcom/google/common/hash/Hashing$1;)V

    goto :goto_0
.end method

.method public static hmacMd5(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;
    .locals 3
    .param p0, "key"    # Ljava/security/Key;

    .prologue
    .line 242
    new-instance v0, Lcom/google/common/hash/MacHashFunction;

    const-string v1, "HmacMD5"

    const-string v2, "hmacMd5"

    invoke-static {v2, p0}, Lcom/google/common/hash/Hashing;->hmacToString(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/google/common/hash/MacHashFunction;-><init>(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hmacMd5([B)Lcom/google/common/hash/HashFunction;
    .locals 3
    .param p0, "key"    # [B

    .prologue
    .line 255
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v2, "HmacMD5"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v1}, Lcom/google/common/hash/Hashing;->hmacMd5(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha1(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;
    .locals 3
    .param p0, "key"    # Ljava/security/Key;

    .prologue
    .line 268
    new-instance v0, Lcom/google/common/hash/MacHashFunction;

    const-string v1, "HmacSHA1"

    const-string v2, "hmacSha1"

    invoke-static {v2, p0}, Lcom/google/common/hash/Hashing;->hmacToString(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/google/common/hash/MacHashFunction;-><init>(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hmacSha1([B)Lcom/google/common/hash/HashFunction;
    .locals 3
    .param p0, "key"    # [B

    .prologue
    .line 281
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v2, "HmacSHA1"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v1}, Lcom/google/common/hash/Hashing;->hmacSha1(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha256(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;
    .locals 3
    .param p0, "key"    # Ljava/security/Key;

    .prologue
    .line 294
    new-instance v0, Lcom/google/common/hash/MacHashFunction;

    const-string v1, "HmacSHA256"

    const-string v2, "hmacSha256"

    invoke-static {v2, p0}, Lcom/google/common/hash/Hashing;->hmacToString(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/google/common/hash/MacHashFunction;-><init>(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hmacSha256([B)Lcom/google/common/hash/HashFunction;
    .locals 3
    .param p0, "key"    # [B

    .prologue
    .line 307
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v2, "HmacSHA256"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v1}, Lcom/google/common/hash/Hashing;->hmacSha256(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;

    move-result-object v0

    return-object v0
.end method

.method public static hmacSha512(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;
    .locals 3
    .param p0, "key"    # Ljava/security/Key;

    .prologue
    .line 320
    new-instance v0, Lcom/google/common/hash/MacHashFunction;

    const-string v1, "HmacSHA512"

    const-string v2, "hmacSha512"

    invoke-static {v2, p0}, Lcom/google/common/hash/Hashing;->hmacToString(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/google/common/hash/MacHashFunction;-><init>(Ljava/lang/String;Ljava/security/Key;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hmacSha512([B)Lcom/google/common/hash/HashFunction;
    .locals 3
    .param p0, "key"    # [B

    .prologue
    .line 333
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v2, "HmacSHA512"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-static {v1}, Lcom/google/common/hash/Hashing;->hmacSha512(Ljava/security/Key;)Lcom/google/common/hash/HashFunction;

    move-result-object v0

    return-object v0
.end method

.method private static hmacToString(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;
    .locals 4
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/security/Key;

    .prologue
    .line 337
    const-string v0, "Hashing.%s(Key[algorithm=%s, format=%s])"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    .line 339
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 337
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static md5()Lcom/google/common/hash/HashFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 170
    sget-object v0, Lcom/google/common/hash/Hashing$Md5Holder;->MD5:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static murmur3_128()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/google/common/hash/Murmur3_128HashFunction;->MURMUR3_128:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static murmur3_128(I)Lcom/google/common/hash/HashFunction;
    .locals 1
    .param p0, "seed"    # I

    .prologue
    .line 122
    new-instance v0, Lcom/google/common/hash/Murmur3_128HashFunction;

    invoke-direct {v0, p0}, Lcom/google/common/hash/Murmur3_128HashFunction;-><init>(I)V

    return-object v0
.end method

.method public static murmur3_32()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/google/common/hash/Murmur3_32HashFunction;->MURMUR3_32:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static murmur3_32(I)Lcom/google/common/hash/HashFunction;
    .locals 1
    .param p0, "seed"    # I

    .prologue
    .line 100
    new-instance v0, Lcom/google/common/hash/Murmur3_32HashFunction;

    invoke-direct {v0, p0}, Lcom/google/common/hash/Murmur3_32HashFunction;-><init>(I)V

    return-object v0
.end method

.method public static sha1()Lcom/google/common/hash/HashFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 191
    sget-object v0, Lcom/google/common/hash/Hashing$Sha1Holder;->SHA_1:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sha256()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 200
    sget-object v0, Lcom/google/common/hash/Hashing$Sha256Holder;->SHA_256:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sha384()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 214
    sget-object v0, Lcom/google/common/hash/Hashing$Sha384Holder;->SHA_384:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sha512()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lcom/google/common/hash/Hashing$Sha512Holder;->SHA_512:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sipHash24()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/google/common/hash/SipHashFunction;->SIP_HASH_24:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sipHash24(JJ)Lcom/google/common/hash/HashFunction;
    .locals 8
    .param p0, "k0"    # J
    .param p2, "k1"    # J

    .prologue
    .line 153
    new-instance v1, Lcom/google/common/hash/SipHashFunction;

    const/4 v2, 0x2

    const/4 v3, 0x4

    move-wide v4, p0

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/common/hash/SipHashFunction;-><init>(IIJJ)V

    return-object v1
.end method
