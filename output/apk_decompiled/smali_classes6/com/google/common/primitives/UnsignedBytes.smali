.class public final Lcom/google/common/primitives/UnsignedBytes;
.super Ljava/lang/Object;
.source "UnsignedBytes.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder;
    }
.end annotation


# static fields
.field public static final MAX_POWER_OF_TWO:B = -0x80t

.field public static final MAX_VALUE:B = -0x1t

.field private static final UNSIGNED_MASK:I = 0xff


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkedCast(J)B
    .locals 4
    .param p0, "value"    # J
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 87
    const/16 v0, 0x8

    shr-long v0, p0, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "out of range: %s"

    invoke-static {v0, v1, p0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 88
    long-to-int v0, p0

    int-to-byte v0, v0

    return v0

    .line 87
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static compare(BB)I
    .locals 2
    .param p0, "a"    # B
    .param p1, "b"    # B

    .prologue
    .line 120
    invoke-static {p0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    invoke-static {p1}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private static flip(B)B
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 451
    xor-int/lit16 v0, p0, 0x80

    int-to-byte v0, v0

    return v0
.end method

.method public static varargs join(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 4
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [B

    .prologue
    .line 242
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    array-length v2, p1

    if-nez v2, :cond_0

    .line 244
    const-string v2, ""

    .line 253
    :goto_0
    return-object v2

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    mul-int/2addr v2, v3

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 249
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget-byte v2, p1, v2

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 251
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p1, v1

    invoke-static {v3}, Lcom/google/common/primitives/UnsignedBytes;->toString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 253
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 271
    sget-object v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder;->BEST_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method static lexicographicalComparatorJavaImpl()Ljava/util/Comparator;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 276
    sget-object v0, Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;->INSTANCE:Lcom/google/common/primitives/UnsignedBytes$LexicographicalComparatorHolder$PureJavaComparator;

    return-object v0
.end method

.method public static varargs max([B)B
    .locals 5
    .param p0, "array"    # [B

    .prologue
    const/4 v4, 0x0

    .line 152
    array-length v3, p0

    if-lez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 153
    aget-byte v3, p0, v4

    invoke-static {v3}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v1

    .line 154
    .local v1, "max":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 155
    aget-byte v3, p0, v0

    invoke-static {v3}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    .line 156
    .local v2, "next":I
    if-le v2, v1, :cond_0

    .line 157
    move v1, v2

    .line 154
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "max":I
    .end local v2    # "next":I
    :cond_1
    move v3, v4

    .line 152
    goto :goto_0

    .line 160
    .restart local v0    # "i":I
    .restart local v1    # "max":I
    :cond_2
    int-to-byte v3, v1

    return v3
.end method

.method public static varargs min([B)B
    .locals 5
    .param p0, "array"    # [B

    .prologue
    const/4 v4, 0x0

    .line 132
    array-length v3, p0

    if-lez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 133
    aget-byte v3, p0, v4

    invoke-static {v3}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v1

    .line 134
    .local v1, "min":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 135
    aget-byte v3, p0, v0

    invoke-static {v3}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    .line 136
    .local v2, "next":I
    if-ge v2, v1, :cond_0

    .line 137
    move v1, v2

    .line 134
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "min":I
    .end local v2    # "next":I
    :cond_1
    move v3, v4

    .line 132
    goto :goto_0

    .line 140
    .restart local v0    # "i":I
    .restart local v1    # "min":I
    :cond_2
    int-to-byte v3, v1

    return v3
.end method

.method public static parseUnsignedByte(Ljava/lang/String;)B
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 205
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/UnsignedBytes;->parseUnsignedByte(Ljava/lang/String;I)B

    move-result v0

    return v0
.end method

.method public static parseUnsignedByte(Ljava/lang/String;I)B
    .locals 4
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 223
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 225
    .local v0, "parse":I
    shr-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_0

    .line 226
    int-to-byte v1, v0

    return v1

    .line 228
    :cond_0
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static saturatedCast(J)B
    .locals 4
    .param p0, "value"    # J

    .prologue
    const/4 v0, -0x1

    .line 100
    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v1

    int-to-long v2, v1

    cmp-long v1, p0, v2

    if-lez v1, :cond_0

    .line 106
    :goto_0
    return v0

    .line 103
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 104
    const/4 v0, 0x0

    goto :goto_0

    .line 106
    :cond_1
    long-to-int v0, p0

    int-to-byte v0, v0

    goto :goto_0
.end method

.method public static sort([B)V
    .locals 2
    .param p0, "array"    # [B

    .prologue
    .line 460
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/primitives/UnsignedBytes;->sort([BII)V

    .line 462
    return-void
.end method

.method public static sort([BII)V
    .locals 2
    .param p0, "array"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 471
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    array-length v1, p0

    invoke-static {p1, p2, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 473
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 474
    aget-byte v1, p0, v0

    invoke-static {v1}, Lcom/google/common/primitives/UnsignedBytes;->flip(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 473
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    :cond_0
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([BII)V

    .line 477
    move v0, p1

    :goto_1
    if-ge v0, p2, :cond_1

    .line 478
    aget-byte v1, p0, v0

    invoke-static {v1}, Lcom/google/common/primitives/UnsignedBytes;->flip(B)B

    move-result v1

    aput-byte v1, p0, v0

    .line 477
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 480
    :cond_1
    return-void
.end method

.method public static sortDescending([B)V
    .locals 2
    .param p0, "array"    # [B

    .prologue
    .line 489
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/primitives/UnsignedBytes;->sortDescending([BII)V

    .line 491
    return-void
.end method

.method public static sortDescending([BII)V
    .locals 2
    .param p0, "array"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 500
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    array-length v1, p0

    invoke-static {p1, p2, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 502
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 503
    aget-byte v1, p0, v0

    xor-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 502
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 505
    :cond_0
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([BII)V

    .line 506
    move v0, p1

    :goto_1
    if-ge v0, p2, :cond_1

    .line 507
    aget-byte v1, p0, v0

    xor-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 506
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 509
    :cond_1
    return-void
.end method

.method public static toInt(B)I
    .locals 1
    .param p0, "value"    # B

    .prologue
    .line 74
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static toString(B)Ljava/lang/String;
    .locals 1
    .param p0, "x"    # B
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 170
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/UnsignedBytes;->toString(BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(BI)Ljava/lang/String;
    .locals 2
    .param p0, "x"    # B
    .param p1, "radix"    # I
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 185
    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/16 v0, 0x24

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX"

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 190
    invoke-static {p0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 185
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
