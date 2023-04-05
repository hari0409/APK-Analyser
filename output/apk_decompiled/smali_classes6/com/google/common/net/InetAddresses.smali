.class public final Lcom/google/common/net/InetAddresses;
.super Ljava/lang/Object;
.source "InetAddresses.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/net/InetAddresses$TeredoInfo;
    }
.end annotation


# static fields
.field private static final ANY4:Ljava/net/Inet4Address;

.field private static final IPV4_PART_COUNT:I = 0x4

.field private static final IPV4_SPLITTER:Lcom/google/common/base/Splitter;

.field private static final IPV6_PART_COUNT:I = 0x8

.field private static final LOOPBACK4:Ljava/net/Inet4Address;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 102
    const/16 v0, 0x2e

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/common/base/Splitter;->limit(I)Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/common/net/InetAddresses;->IPV4_SPLITTER:Lcom/google/common/base/Splitter;

    .line 103
    const-string v0, "127.0.0.1"

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lcom/google/common/net/InetAddresses;->LOOPBACK4:Ljava/net/Inet4Address;

    .line 104
    const-string v0, "0.0.0.0"

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->forString(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/net/Inet4Address;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    return-object v0
.end method

.method private static bytesToInetAddress([B)Ljava/net/InetAddress;
    .locals 2
    .param p0, "addr"    # [B

    .prologue
    .line 316
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static coerceToInteger(Ljava/net/InetAddress;)I
    .locals 1
    .param p0, "ip"    # Ljava/net/InetAddress;

    .prologue
    .line 892
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getCoercedIPv4Address(Ljava/net/InetAddress;)Ljava/net/Inet4Address;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Inet4Address;->getAddress()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/ByteStreams;->newDataInput([B)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/io/ByteArrayDataInput;->readInt()I

    move-result v0

    return v0
.end method

.method private static compressLongestRunOfZeroes([I)V
    .locals 7
    .param p0, "hextets"    # [I

    .prologue
    .line 362
    const/4 v1, -0x1

    .line 363
    .local v1, "bestRunStart":I
    const/4 v0, -0x1

    .line 364
    .local v0, "bestRunLength":I
    const/4 v4, -0x1

    .line 365
    .local v4, "runStart":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p0

    add-int/lit8 v5, v5, 0x1

    if-ge v2, v5, :cond_3

    .line 366
    array-length v5, p0

    if-ge v2, v5, :cond_1

    aget v5, p0, v2

    if-nez v5, :cond_1

    .line 367
    if-gez v4, :cond_0

    .line 368
    move v4, v2

    .line 365
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 370
    :cond_1
    if-ltz v4, :cond_0

    .line 371
    sub-int v3, v2, v4

    .line 372
    .local v3, "runLength":I
    if-le v3, v0, :cond_2

    .line 373
    move v1, v4

    .line 374
    move v0, v3

    .line 376
    :cond_2
    const/4 v4, -0x1

    goto :goto_1

    .line 379
    .end local v3    # "runLength":I
    :cond_3
    const/4 v5, 0x2

    if-lt v0, v5, :cond_4

    .line 380
    add-int v5, v1, v0

    const/4 v6, -0x1

    invoke-static {p0, v1, v5, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 382
    :cond_4
    return-void
.end method

.method private static convertDottedQuadToHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "ipString"    # Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 272
    const/16 v6, 0x3a

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 273
    .local v2, "lastColon":I
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "initialPart":Ljava/lang/String;
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "dottedQuad":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object v4

    .line 276
    .local v4, "quad":[B
    if-nez v4, :cond_0

    .line 277
    const/4 v6, 0x0

    .line 281
    :goto_0
    return-object v6

    .line 279
    :cond_0
    aget-byte v6, v4, v7

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    const/4 v7, 0x1

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, "penultimate":Ljava/lang/String;
    const/4 v6, 0x2

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    const/4 v7, 0x3

    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 281
    .local v5, "ultimate":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static decrement(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 4
    .param p0, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 933
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 934
    .local v0, "addr":[B
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .line 935
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    aget-byte v2, v0, v1

    if-nez v2, :cond_0

    .line 936
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 937
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 940
    :cond_0
    if-ltz v1, :cond_1

    const/4 v2, 0x1

    :goto_1
    const-string v3, "Decrementing %s would wrap."

    invoke-static {v2, v3, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 942
    aget-byte v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 943
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    return-object v2

    .line 940
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static forString(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 4
    .param p0, "ipString"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 139
    .local v0, "addr":[B
    if-nez v0, :cond_0

    .line 140
    const-string v1, "\'%s\' is not an IP string literal."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lcom/google/common/net/InetAddresses;->formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 143
    :cond_0
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    return-object v1
.end method

.method public static forUriString(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 4
    .param p0, "hostAddr"    # Ljava/lang/String;

    .prologue
    .line 457
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->forUriStringNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 458
    .local v0, "addr":Ljava/net/InetAddress;
    if-nez v0, :cond_0

    .line 459
    const-string v1, "Not a valid URI IP literal: \'%s\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lcom/google/common/net/InetAddresses;->formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1

    .line 462
    :cond_0
    return-object v0
.end method

.method private static forUriStringNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 5
    .param p0, "hostAddr"    # Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .line 467
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    const-string v3, "["

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "]"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 473
    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 474
    .local v2, "ipString":Ljava/lang/String;
    const/16 v1, 0x10

    .line 481
    .local v1, "expectBytes":I
    :goto_0
    invoke-static {v2}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 482
    .local v0, "addr":[B
    if-eqz v0, :cond_0

    array-length v3, v0

    if-eq v3, v1, :cond_2

    .line 483
    :cond_0
    const/4 v3, 0x0

    .line 486
    :goto_1
    return-object v3

    .line 476
    .end local v0    # "addr":[B
    .end local v1    # "expectBytes":I
    .end local v2    # "ipString":Ljava/lang/String;
    :cond_1
    move-object v2, p0

    .line 477
    .restart local v2    # "ipString":Ljava/lang/String;
    const/4 v1, 0x4

    .restart local v1    # "expectBytes":I
    goto :goto_0

    .line 486
    .restart local v0    # "addr":[B
    :cond_2
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    goto :goto_1
.end method

.method private static varargs formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 989
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromInteger(I)Ljava/net/Inet4Address;
    .locals 1
    .param p0, "address"    # I

    .prologue
    .line 902
    invoke-static {p0}, Lcom/google/common/primitives/Ints;->toByteArray(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static fromLittleEndianByteArray([B)Ljava/net/InetAddress;
    .locals 3
    .param p0, "addr"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 916
    array-length v2, p0

    new-array v1, v2, [B

    .line 917
    .local v1, "reversed":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 918
    array-length v2, p0

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p0, v2

    aput-byte v2, v1, v0

    .line 917
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 920
    :cond_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    return-object v2
.end method

.method public static get6to4IPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 3
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    .line 573
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    const-string v1, "Address \'%s\' is not a 6to4 address."

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 575
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static getCoercedIPv4Address(Ljava/net/InetAddress;)Ljava/net/Inet4Address;
    .locals 10
    .param p0, "ip"    # Ljava/net/InetAddress;

    .prologue
    const/16 v9, 0xf

    .line 829
    instance-of v7, p0, Ljava/net/Inet4Address;

    if-eqz v7, :cond_0

    .line 830
    check-cast p0, Ljava/net/Inet4Address;

    .line 870
    .end local p0    # "ip":Ljava/net/InetAddress;
    .local v2, "bytes":[B
    .local v4, "i":I
    .local v6, "leadingBytesOfZero":Z
    :goto_0
    return-object p0

    .line 834
    .end local v2    # "bytes":[B
    .end local v4    # "i":I
    .end local v6    # "leadingBytesOfZero":Z
    .restart local p0    # "ip":Ljava/net/InetAddress;
    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 835
    .restart local v2    # "bytes":[B
    const/4 v6, 0x1

    .line 836
    .restart local v6    # "leadingBytesOfZero":Z
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    if-ge v4, v9, :cond_1

    .line 837
    aget-byte v7, v2, v4

    if-eqz v7, :cond_2

    .line 838
    const/4 v6, 0x0

    .line 842
    :cond_1
    if-eqz v6, :cond_3

    aget-byte v7, v2, v9

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 843
    sget-object p0, Lcom/google/common/net/InetAddresses;->LOOPBACK4:Ljava/net/Inet4Address;

    goto :goto_0

    .line 836
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 844
    :cond_3
    if-eqz v6, :cond_4

    aget-byte v7, v2, v9

    if-nez v7, :cond_4

    .line 845
    sget-object p0, Lcom/google/common/net/InetAddresses;->ANY4:Ljava/net/Inet4Address;

    goto :goto_0

    :cond_4
    move-object v5, p0

    .line 848
    check-cast v5, Ljava/net/Inet6Address;

    .line 849
    .local v5, "ip6":Ljava/net/Inet6Address;
    const-wide/16 v0, 0x0

    .line 850
    .local v0, "addressAsLong":J
    invoke-static {v5}, Lcom/google/common/net/InetAddresses;->hasEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 851
    invoke-static {v5}, Lcom/google/common/net/InetAddresses;->getEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/Inet4Address;->hashCode()I

    move-result v7

    int-to-long v0, v7

    .line 859
    :goto_2
    invoke-static {}, Lcom/google/common/hash/Hashing;->murmur3_32()Lcom/google/common/hash/HashFunction;

    move-result-object v7

    invoke-interface {v7, v0, v1}, Lcom/google/common/hash/HashFunction;->hashLong(J)Lcom/google/common/hash/HashCode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/common/hash/HashCode;->asInt()I

    move-result v3

    .line 862
    .local v3, "coercedHash":I
    const/high16 v7, -0x20000000

    or-int/2addr v3, v7

    .line 866
    const/4 v7, -0x1

    if-ne v3, v7, :cond_5

    .line 867
    const/4 v3, -0x2

    .line 870
    :cond_5
    invoke-static {v3}, Lcom/google/common/primitives/Ints;->toByteArray(I)[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object p0

    goto :goto_0

    .line 855
    .end local v3    # "coercedHash":I
    :cond_6
    invoke-virtual {v5}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x8

    invoke-static {v7, v8, v9}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    goto :goto_2
.end method

.method public static getCompatIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 3
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    .line 542
    .line 543
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    const-string v1, "Address \'%s\' is not IPv4-compatible."

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v2

    .line 542
    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 545
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static getEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 4
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    .line 759
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getCompatIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object v0

    .line 768
    :goto_0
    return-object v0

    .line 763
    :cond_0
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 764
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->get6to4IPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    move-result-object v0

    goto :goto_0

    .line 767
    :cond_1
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 768
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->getTeredoInfo(Ljava/net/Inet6Address;)Lcom/google/common/net/InetAddresses$TeredoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/net/InetAddresses$TeredoInfo;->getClient()Ljava/net/Inet4Address;

    move-result-object v0

    goto :goto_0

    .line 771
    :cond_2
    const-string v0, "\'%s\' has no embedded IPv4 address."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/common/net/InetAddresses;->formatIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method private static getInet4Address([B)Ljava/net/Inet4Address;
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    .line 116
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Byte array has invalid length for an IPv4 address: %s != 4."

    array-length v2, p0

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 122
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    return-object v0

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIsatapIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 3
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    .line 725
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isIsatapAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    const-string v1, "Address \'%s\' is not an ISATAP address."

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 727
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public static getTeredoInfo(Ljava/net/Inet6Address;)Lcom/google/common/net/InetAddresses$TeredoInfo;
    .locals 12
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    const v11, 0xffff

    const/16 v10, 0x8

    .line 664
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v7

    const-string v8, "Address \'%s\' is not a Teredo address."

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 666
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 667
    .local v0, "bytes":[B
    const/4 v7, 0x4

    invoke-static {v0, v7, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v6

    .line 669
    .local v6, "server":Ljava/net/Inet4Address;
    invoke-static {v0, v10}, Lcom/google/common/io/ByteStreams;->newDataInput([BI)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/common/io/ByteArrayDataInput;->readShort()S

    move-result v7

    and-int v3, v7, v11

    .line 672
    .local v3, "flags":I
    const/16 v7, 0xa

    invoke-static {v0, v7}, Lcom/google/common/io/ByteStreams;->newDataInput([BI)Lcom/google/common/io/ByteArrayDataInput;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/common/io/ByteArrayDataInput;->readShort()S

    move-result v7

    xor-int/lit8 v7, v7, -0x1

    and-int v5, v7, v11

    .line 674
    .local v5, "port":I
    const/16 v7, 0xc

    const/16 v8, 0x10

    invoke-static {v0, v7, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 675
    .local v2, "clientBytes":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v7, v2

    if-ge v4, v7, :cond_0

    .line 677
    aget-byte v7, v2, v4

    xor-int/lit8 v7, v7, -0x1

    int-to-byte v7, v7

    aput-byte v7, v2, v4

    .line 675
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 679
    :cond_0
    invoke-static {v2}, Lcom/google/common/net/InetAddresses;->getInet4Address([B)Ljava/net/Inet4Address;

    move-result-object v1

    .line 681
    .local v1, "client":Ljava/net/Inet4Address;
    new-instance v7, Lcom/google/common/net/InetAddresses$TeredoInfo;

    invoke-direct {v7, v6, v1, v5, v3}, Lcom/google/common/net/InetAddresses$TeredoInfo;-><init>(Ljava/net/Inet4Address;Ljava/net/Inet4Address;II)V

    return-object v7
.end method

.method public static hasEmbeddedIPv4ClientAddress(Ljava/net/Inet6Address;)Z
    .locals 1
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    .line 743
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isCompatIPv4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->is6to4Address(Ljava/net/Inet6Address;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hextetsToIPv6String([I)Ljava/lang/String;
    .locals 5
    .param p0, "hextets"    # [I

    .prologue
    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0x27

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 398
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 399
    .local v2, "lastWasNumber":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_5

    .line 400
    aget v4, p0, v1

    if-ltz v4, :cond_2

    const/4 v3, 0x1

    .line 401
    .local v3, "thisIsNumber":Z
    :goto_1
    if-eqz v3, :cond_3

    .line 402
    if-eqz v2, :cond_0

    .line 403
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 405
    :cond_0
    aget v4, p0, v1

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    :cond_1
    :goto_2
    move v2, v3

    .line 399
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 400
    .end local v3    # "thisIsNumber":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 407
    .restart local v3    # "thisIsNumber":Z
    :cond_3
    if-eqz v1, :cond_4

    if-eqz v2, :cond_1

    .line 408
    :cond_4
    const-string v4, "::"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 413
    .end local v3    # "thisIsNumber":Z
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static increment(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 5
    .param p0, "address"    # Ljava/net/InetAddress;

    .prologue
    const/4 v2, 0x0

    .line 956
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 957
    .local v0, "addr":[B
    array-length v3, v0

    add-int/lit8 v1, v3, -0x1

    .line 958
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    aget-byte v3, v0, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 959
    aput-byte v2, v0, v1

    .line 960
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 963
    :cond_0
    if-ltz v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    const-string v3, "Incrementing %s would wrap."

    invoke-static {v2, v3, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 965
    aget-byte v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 966
    invoke-static {v0}, Lcom/google/common/net/InetAddresses;->bytesToInetAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    return-object v2
.end method

.method private static ipStringToBytes(Ljava/lang/String;)[B
    .locals 7
    .param p0, "ipString"    # Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 160
    const/4 v1, 0x0

    .line 161
    .local v1, "hasColon":Z
    const/4 v2, 0x0

    .line 162
    .local v2, "hasDot":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 163
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 164
    .local v0, "c":C
    const/16 v5, 0x2e

    if-ne v0, v5, :cond_1

    .line 165
    const/4 v2, 0x1

    .line 162
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 166
    :cond_1
    const/16 v5, 0x3a

    if-ne v0, v5, :cond_4

    .line 167
    if-eqz v2, :cond_3

    .line 188
    .end local v0    # "c":C
    :cond_2
    :goto_2
    return-object v4

    .line 170
    .restart local v0    # "c":C
    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    .line 171
    :cond_4
    const/16 v5, 0x10

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    goto :goto_2

    .line 177
    .end local v0    # "c":C
    :cond_5
    if-eqz v1, :cond_7

    .line 178
    if-eqz v2, :cond_6

    .line 179
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->convertDottedQuadToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 180
    if-eqz p0, :cond_2

    .line 184
    :cond_6
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV6(Ljava/lang/String;)[B

    move-result-object v4

    goto :goto_2

    .line 185
    :cond_7
    if-eqz v2, :cond_2

    .line 186
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->textToNumericFormatV4(Ljava/lang/String;)[B

    move-result-object v4

    goto :goto_2
.end method

.method public static is6to4Address(Ljava/net/Inet6Address;)Z
    .locals 5
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 561
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 562
    .local v0, "bytes":[B
    aget-byte v3, v0, v2

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    aget-byte v3, v0, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static isCompatIPv4Address(Ljava/net/Inet6Address;)Z
    .locals 5
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    const/16 v4, 0xf

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 519
    invoke-virtual {p0}, Ljava/net/Inet6Address;->isIPv4CompatibleAddress()Z

    move-result v3

    if-nez v3, :cond_1

    .line 531
    :cond_0
    :goto_0
    return v1

    .line 523
    :cond_1
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 524
    .local v0, "bytes":[B
    const/16 v3, 0xc

    aget-byte v3, v0, v3

    if-nez v3, :cond_2

    const/16 v3, 0xd

    aget-byte v3, v0, v3

    if-nez v3, :cond_2

    const/16 v3, 0xe

    aget-byte v3, v0, v3

    if-nez v3, :cond_2

    aget-byte v3, v0, v4

    if-eqz v3, :cond_0

    aget-byte v3, v0, v4

    if-eq v3, v2, :cond_0

    :cond_2
    move v1, v2

    .line 531
    goto :goto_0
.end method

.method public static isInetAddress(Ljava/lang/String;)Z
    .locals 1
    .param p0, "ipString"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIsatapAddress(Ljava/net/Inet6Address;)Z
    .locals 4
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    const/4 v1, 0x0

    .line 701
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->isTeredoAddress(Ljava/net/Inet6Address;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 714
    :cond_0
    :goto_0
    return v1

    .line 705
    :cond_1
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 707
    .local v0, "bytes":[B
    const/16 v2, 0x8

    aget-byte v2, v0, v2

    or-int/lit8 v2, v2, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 714
    const/16 v2, 0x9

    aget-byte v2, v0, v2

    if-nez v2, :cond_0

    const/16 v2, 0xa

    aget-byte v2, v0, v2

    const/16 v3, 0x5e

    if-ne v2, v3, :cond_0

    const/16 v2, 0xb

    aget-byte v2, v0, v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isMappedIPv4Address(Ljava/lang/String;)Z
    .locals 5
    .param p0, "ipString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 793
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->ipStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 794
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    array-length v3, v0

    const/16 v4, 0x10

    if-ne v3, v4, :cond_0

    .line 795
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0xa

    if-ge v1, v3, :cond_2

    .line 796
    aget-byte v3, v0, v1

    if-eqz v3, :cond_1

    .line 807
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return v2

    .line 795
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 800
    :cond_2
    const/16 v1, 0xa

    :goto_2
    const/16 v3, 0xc

    if-ge v1, v3, :cond_3

    .line 801
    aget-byte v3, v0, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 800
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 805
    :cond_3
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static isMaximum(Ljava/net/InetAddress;)Z
    .locals 4
    .param p0, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 978
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 979
    .local v0, "addr":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 980
    aget-byte v2, v0, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 981
    const/4 v2, 0x0

    .line 984
    :goto_1
    return v2

    .line 979
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 984
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static isTeredoAddress(Ljava/net/Inet6Address;)Z
    .locals 5
    .param p0, "ip"    # Ljava/net/Inet6Address;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 649
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v0

    .line 650
    .local v0, "bytes":[B
    aget-byte v3, v0, v2

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    aget-byte v3, v0, v1

    if-ne v3, v1, :cond_0

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    if-nez v3, :cond_0

    const/4 v3, 0x3

    aget-byte v3, v0, v3

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static isUriInetAddress(Ljava/lang/String;)Z
    .locals 1
    .param p0, "ipString"    # Ljava/lang/String;

    .prologue
    .line 497
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->forUriStringNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseHextet(Ljava/lang/String;)S
    .locals 2
    .param p0, "ipPart"    # Ljava/lang/String;

    .prologue
    .line 297
    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 298
    .local v0, "hextet":I
    const v1, 0xffff

    if-le v0, v1, :cond_0

    .line 299
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1

    .line 301
    :cond_0
    int-to-short v1, v0

    return v1
.end method

.method private static parseOctet(Ljava/lang/String;)B
    .locals 3
    .param p0, "ipPart"    # Ljava/lang/String;

    .prologue
    .line 286
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 289
    .local v0, "octet":I
    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 290
    :cond_0
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1

    .line 292
    :cond_1
    int-to-byte v1, v0

    return v1
.end method

.method private static textToNumericFormatV4(Ljava/lang/String;)[B
    .locals 9
    .param p0, "ipString"    # Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x4

    .line 193
    new-array v0, v8, [B

    .line 194
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .line 196
    .local v2, "i":I
    :try_start_0
    sget-object v6, Lcom/google/common/net/InetAddresses;->IPV4_SPLITTER:Lcom/google/common/base/Splitter;

    invoke-virtual {v6, p0}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 197
    .local v4, "octet":Ljava/lang/String;
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    :try_start_2
    invoke-static {v4}, Lcom/google/common/net/InetAddresses;->parseOctet(Ljava/lang/String;)B

    move-result v7

    aput-byte v7, v0, v3
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move v3, v2

    .line 198
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 199
    .end local v3    # "i":I
    .end local v4    # "octet":Ljava/lang/String;
    .restart local v2    # "i":I
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/NumberFormatException;
    :goto_1
    move-object v0, v5

    .line 203
    .end local v0    # "bytes":[B
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :goto_2
    return-object v0

    .end local v2    # "i":I
    .restart local v0    # "bytes":[B
    .restart local v3    # "i":I
    :cond_0
    if-ne v3, v8, :cond_1

    .end local v0    # "bytes":[B
    :goto_3
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_2

    .end local v2    # "i":I
    .restart local v0    # "bytes":[B
    .restart local v3    # "i":I
    :cond_1
    move-object v0, v5

    goto :goto_3

    .line 199
    :catch_1
    move-exception v1

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_1
.end method

.method private static textToNumericFormatV6(Ljava/lang/String;)[B
    .locals 12
    .param p0, "ipString"    # Ljava/lang/String;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 209
    const-string v9, ":"

    const/16 v10, 0xa

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "parts":[Ljava/lang/String;
    array-length v9, v2

    const/4 v10, 0x3

    if-lt v9, v10, :cond_0

    array-length v9, v2

    const/16 v10, 0x9

    if-le v9, v10, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-object v8

    .line 216
    :cond_1
    const/4 v7, -0x1

    .line 217
    .local v7, "skipIndex":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v9, v2

    add-int/lit8 v9, v9, -0x1

    if-ge v1, v9, :cond_3

    .line 218
    aget-object v9, v2, v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    .line 219
    if-gez v7, :cond_0

    .line 222
    move v7, v1

    .line 217
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 228
    :cond_3
    if-ltz v7, :cond_7

    .line 230
    move v3, v7

    .line 231
    .local v3, "partsHi":I
    array-length v9, v2

    sub-int/2addr v9, v7

    add-int/lit8 v4, v9, -0x1

    .line 232
    .local v4, "partsLo":I
    aget-object v9, v2, v11

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_4

    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_0

    .line 235
    :cond_4
    array-length v9, v2

    add-int/lit8 v9, v9, -0x1

    aget-object v9, v2, v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_5

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_0

    .line 247
    :cond_5
    :goto_2
    add-int v9, v3, v4

    rsub-int/lit8 v5, v9, 0x8

    .line 248
    .local v5, "partsSkipped":I
    if-ltz v7, :cond_8

    const/4 v9, 0x1

    if-lt v5, v9, :cond_0

    .line 253
    :cond_6
    const/16 v9, 0x10

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 255
    .local v6, "rawBytes":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_9

    .line 256
    :try_start_0
    aget-object v9, v2, v1

    invoke-static {v9}, Lcom/google/common/net/InetAddresses;->parseHextet(Ljava/lang/String;)S

    move-result v9

    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 241
    .end local v3    # "partsHi":I
    .end local v4    # "partsLo":I
    .end local v5    # "partsSkipped":I
    .end local v6    # "rawBytes":Ljava/nio/ByteBuffer;
    :cond_7
    array-length v3, v2

    .line 242
    .restart local v3    # "partsHi":I
    const/4 v4, 0x0

    .restart local v4    # "partsLo":I
    goto :goto_2

    .line 248
    .restart local v5    # "partsSkipped":I
    :cond_8
    if-eqz v5, :cond_6

    goto :goto_0

    .line 258
    .restart local v6    # "rawBytes":Ljava/nio/ByteBuffer;
    :cond_9
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v5, :cond_a

    .line 259
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 261
    :cond_a
    move v1, v4

    :goto_5
    if-lez v1, :cond_b

    .line 262
    array-length v9, v2

    sub-int/2addr v9, v1

    aget-object v9, v2, v9

    invoke-static {v9}, Lcom/google/common/net/InetAddresses;->parseHextet(Ljava/lang/String;)S

    move-result v9

    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 261
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "ex":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 267
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_b
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    goto :goto_0
.end method

.method public static toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 6
    .param p0, "ip"    # Ljava/net/InetAddress;

    .prologue
    const/4 v5, 0x0

    .line 338
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    instance-of v3, p0, Ljava/net/Inet4Address;

    if-eqz v3, :cond_0

    .line 341
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 350
    :goto_0
    return-object v3

    .line 343
    :cond_0
    instance-of v3, p0, Ljava/net/Inet6Address;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 344
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 345
    .local v0, "bytes":[B
    const/16 v3, 0x8

    new-array v1, v3, [I

    .line 346
    .local v1, "hextets":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 347
    mul-int/lit8 v3, v2, 0x2

    aget-byte v3, v0, v3

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, v0, v4

    invoke-static {v5, v5, v3, v4}, Lcom/google/common/primitives/Ints;->fromBytes(BBBB)I

    move-result v3

    aput v3, v1, v2

    .line 346
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 349
    :cond_1
    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->compressLongestRunOfZeroes([I)V

    .line 350
    invoke-static {v1}, Lcom/google/common/net/InetAddresses;->hextetsToIPv6String([I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static toUriString(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 2
    .param p0, "ip"    # Ljava/net/InetAddress;

    .prologue
    .line 436
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 439
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/common/net/InetAddresses;->toAddrString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
