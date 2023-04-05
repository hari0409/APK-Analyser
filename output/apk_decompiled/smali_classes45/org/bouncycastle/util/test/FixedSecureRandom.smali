.class public Lorg/bouncycastle/util/test/FixedSecureRandom;
.super Ljava/security/SecureRandom;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/util/test/FixedSecureRandom$BigInteger;,
        Lorg/bouncycastle/util/test/FixedSecureRandom$Data;,
        Lorg/bouncycastle/util/test/FixedSecureRandom$DummyProvider;,
        Lorg/bouncycastle/util/test/FixedSecureRandom$RandomChecker;,
        Lorg/bouncycastle/util/test/FixedSecureRandom$Source;
    }
.end annotation


# static fields
.field private static ANDROID:Ljava/math/BigInteger;

.field private static CLASSPATH:Ljava/math/BigInteger;

.field private static REGULAR:Ljava/math/BigInteger;

.field private static final isAndroidStyle:Z

.field private static final isClasspathStyle:Z

.field private static final isRegularStyle:Z


# instance fields
.field private _data:[B

.field private _index:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v2, 0x10

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "01020304ffffffff0506070811111111"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/util/test/FixedSecureRandom;->REGULAR:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "1111111105060708ffffffff01020304"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/util/test/FixedSecureRandom;->ANDROID:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "3020104ffffffff05060708111111"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/util/test/FixedSecureRandom;->CLASSPATH:Ljava/math/BigInteger;

    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x80

    new-instance v2, Lorg/bouncycastle/util/test/FixedSecureRandom$RandomChecker;

    invoke-direct {v2}, Lorg/bouncycastle/util/test/FixedSecureRandom$RandomChecker;-><init>()V

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    new-instance v1, Ljava/math/BigInteger;

    const/16 v2, 0x78

    new-instance v3, Lorg/bouncycastle/util/test/FixedSecureRandom$RandomChecker;

    invoke-direct {v3}, Lorg/bouncycastle/util/test/FixedSecureRandom$RandomChecker;-><init>()V

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    sget-object v2, Lorg/bouncycastle/util/test/FixedSecureRandom;->ANDROID:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lorg/bouncycastle/util/test/FixedSecureRandom;->isAndroidStyle:Z

    sget-object v2, Lorg/bouncycastle/util/test/FixedSecureRandom;->REGULAR:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lorg/bouncycastle/util/test/FixedSecureRandom;->isRegularStyle:Z

    sget-object v0, Lorg/bouncycastle/util/test/FixedSecureRandom;->CLASSPATH:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lorg/bouncycastle/util/test/FixedSecureRandom;->isClasspathStyle:Z

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bouncycastle/util/test/FixedSecureRandom$Source;

    const/4 v1, 0x0

    new-instance v2, Lorg/bouncycastle/util/test/FixedSecureRandom$Data;

    invoke-direct {v2, p1}, Lorg/bouncycastle/util/test/FixedSecureRandom$Data;-><init>([B)V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lorg/bouncycastle/util/test/FixedSecureRandom;-><init>([Lorg/bouncycastle/util/test/FixedSecureRandom$Source;)V

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/util/test/FixedSecureRandom$Source;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Lorg/bouncycastle/util/test/FixedSecureRandom$DummyProvider;

    invoke-direct {v2}, Lorg/bouncycastle/util/test/FixedSecureRandom$DummyProvider;-><init>()V

    invoke-direct {p0, v1, v2}, Ljava/security/SecureRandom;-><init>(Ljava/security/SecureRandomSpi;Ljava/security/Provider;)V

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-boolean v1, Lorg/bouncycastle/util/test/FixedSecureRandom;->isRegularStyle:Z

    if-eqz v1, :cond_4

    sget-boolean v1, Lorg/bouncycastle/util/test/FixedSecureRandom;->isClasspathStyle:Z

    if-eqz v1, :cond_3

    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_a

    :try_start_0
    aget-object v1, p1, v0

    instance-of v1, v1, Lorg/bouncycastle/util/test/FixedSecureRandom$BigInteger;

    if-eqz v1, :cond_1

    aget-object v1, p1, v0

    iget-object v2, v1, Lorg/bouncycastle/util/test/FixedSecureRandom$Source;->data:[B

    array-length v1, v2

    array-length v4, v2

    rem-int/lit8 v4, v4, 0x4

    sub-int v4, v1, v4

    array-length v1, v2

    sub-int/2addr v1, v4

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_0

    aget-byte v5, v2, v1

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_0
    array-length v1, v2

    sub-int/2addr v1, v4

    :goto_2
    array-length v4, v2

    if-ge v1, v4, :cond_2

    const/4 v4, 0x4

    invoke-virtual {v3, v2, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_2

    :cond_1
    aget-object v1, p1, v0

    iget-object v1, v1, Lorg/bouncycastle/util/test/FixedSecureRandom$Source;->data:[B

    invoke-virtual {v3, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can\'t save value source."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_3
    array-length v1, p1

    if-eq v0, v1, :cond_a

    :try_start_1
    aget-object v1, p1, v0

    iget-object v1, v1, Lorg/bouncycastle/util/test/FixedSecureRandom$Source;->data:[B

    invoke-virtual {v3, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can\'t save value source."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    sget-boolean v1, Lorg/bouncycastle/util/test/FixedSecureRandom;->isAndroidStyle:Z

    if-eqz v1, :cond_9

    move v1, v0

    :goto_4
    array-length v2, p1

    if-eq v1, v2, :cond_a

    :try_start_2
    aget-object v2, p1, v1

    instance-of v2, v2, Lorg/bouncycastle/util/test/FixedSecureRandom$BigInteger;

    if-eqz v2, :cond_7

    aget-object v2, p1, v1

    iget-object v4, v2, Lorg/bouncycastle/util/test/FixedSecureRandom$Source;->data:[B

    array-length v2, v4

    array-length v5, v4

    rem-int/lit8 v5, v5, 0x4

    sub-int v5, v2, v5

    move v2, v0

    :goto_5
    if-ge v2, v5, :cond_5

    array-length v6, v4

    add-int/lit8 v7, v2, 0x4

    sub-int/2addr v6, v7

    const/4 v7, 0x4

    invoke-virtual {v3, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v2, v2, 0x4

    goto :goto_5

    :cond_5
    array-length v2, v4

    sub-int/2addr v2, v5

    if-eqz v2, :cond_6

    move v2, v0

    :goto_6
    array-length v6, v4

    sub-int/2addr v6, v5

    rsub-int/lit8 v6, v6, 0x4

    if-eq v2, v6, :cond_6

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_6
    move v2, v0

    :goto_7
    array-length v6, v4

    sub-int/2addr v6, v5

    if-eq v2, v6, :cond_8

    add-int v6, v5, v2

    aget-byte v6, v4, v6

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_7
    aget-object v2, p1, v1

    iget-object v2, v2, Lorg/bouncycastle/util/test/FixedSecureRandom$Source;->data:[B

    invoke-virtual {v3, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catch_2
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can\'t save value source."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unrecognized BigInteger implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/util/test/FixedSecureRandom;->_data:[B

    return-void
.end method

.method public constructor <init>([[B)V
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/util/test/FixedSecureRandom;->buildDataArray([[B)[Lorg/bouncycastle/util/test/FixedSecureRandom$Data;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/util/test/FixedSecureRandom;-><init>([Lorg/bouncycastle/util/test/FixedSecureRandom$Source;)V

    return-void
.end method

.method static synthetic access$000(I[B)[B
    .locals 1

    invoke-static {p0, p1}, Lorg/bouncycastle/util/test/FixedSecureRandom;->expandToBitLength(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static buildDataArray([[B)[Lorg/bouncycastle/util/test/FixedSecureRandom$Data;
    .locals 4

    array-length v0, p0

    new-array v1, v0, [Lorg/bouncycastle/util/test/FixedSecureRandom$Data;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-eq v0, v2, :cond_0

    new-instance v2, Lorg/bouncycastle/util/test/FixedSecureRandom$Data;

    aget-object v3, p0, v0

    invoke-direct {v2, v3}, Lorg/bouncycastle/util/test/FixedSecureRandom$Data;-><init>([B)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static expandToBitLength(I[B)[B
    .locals 4

    const/4 v3, 0x0

    add-int/lit8 v0, p0, 0x7

    div-int/lit8 v0, v0, 0x8

    array-length v1, p1

    if-le v0, v1, :cond_2

    add-int/lit8 v0, p0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    array-length v1, v0

    array-length v2, p1

    sub-int/2addr v1, v2

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-boolean v1, Lorg/bouncycastle/util/test/FixedSecureRandom;->isAndroidStyle:Z

    if-eqz v1, :cond_0

    rem-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_0

    invoke-static {v0, v3}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    rem-int/lit8 v2, p0, 0x8

    rsub-int/lit8 v2, v2, 0x8

    shl-int/2addr v1, v2

    invoke-static {v1, v0, v3}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    :cond_0
    move-object p1, v0

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    sget-boolean v0, Lorg/bouncycastle/util/test/FixedSecureRandom;->isAndroidStyle:Z

    if-eqz v0, :cond_1

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    if-ge p0, v0, :cond_1

    rem-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_1

    invoke-static {p1, v3}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    rem-int/lit8 v1, p0, 0x8

    rsub-int/lit8 v1, v1, 0x8

    shl-int/2addr v0, v1

    invoke-static {v0, p1, v3}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    goto :goto_0
.end method

.method private nextValue()I
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/util/test/FixedSecureRandom;->_data:[B

    iget v1, p0, Lorg/bouncycastle/util/test/FixedSecureRandom;->_index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/util/test/FixedSecureRandom;->_index:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method public generateSeed(I)[B
    .locals 1

    new-array v0, p1, [B

    invoke-virtual {p0, v0}, Lorg/bouncycastle/util/test/FixedSecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method public isExhausted()Z
    .locals 2

    iget v0, p0, Lorg/bouncycastle/util/test/FixedSecureRandom;->_index:I

    iget-object v1, p0, Lorg/bouncycastle/util/test/FixedSecureRandom;->_data:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextBytes([B)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/util/test/FixedSecureRandom;->_data:[B

    iget v1, p0, Lorg/bouncycastle/util/test/FixedSecureRandom;->_index:I

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/util/test/FixedSecureRandom;->_index:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/util/test/FixedSecureRandom;->_index:I

    return-void
.end method

.method public nextInt()I
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    invoke-direct {p0}, Lorg/bouncycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-direct {p0}, Lorg/bouncycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-direct {p0}, Lorg/bouncycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public nextLong()J
    .locals 5

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-direct {p0}, Lorg/bouncycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-direct {p0}, Lorg/bouncycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-direct {p0}, Lorg/bouncycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-direct {p0}, Lorg/bouncycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-direct {p0}, Lorg/bouncycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-direct {p0}, Lorg/bouncycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-direct {p0}, Lorg/bouncycastle/util/test/FixedSecureRandom;->nextValue()I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method
