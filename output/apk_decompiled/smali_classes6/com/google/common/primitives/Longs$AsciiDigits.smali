.class final Lcom/google/common/primitives/Longs$AsciiDigits;
.super Ljava/lang/Object;
.source "Longs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Longs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AsciiDigits"
.end annotation


# static fields
.field private static final asciiDigits:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 329
    const/16 v2, 0x80

    new-array v1, v2, [B

    .line 330
    .local v1, "result":[B
    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 331
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x9

    if-gt v0, v2, :cond_0

    .line 332
    add-int/lit8 v2, v0, 0x30

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/16 v2, 0x1a

    if-gt v0, v2, :cond_1

    .line 335
    add-int/lit8 v2, v0, 0x41

    add-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 336
    add-int/lit8 v2, v0, 0x61

    add-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 338
    :cond_1
    sput-object v1, Lcom/google/common/primitives/Longs$AsciiDigits;->asciiDigits:[B

    .line 339
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static digit(C)I
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 342
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/google/common/primitives/Longs$AsciiDigits;->asciiDigits:[B

    aget-byte v0, v0, p0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
