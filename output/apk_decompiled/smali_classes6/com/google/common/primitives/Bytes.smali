.class public final Lcom/google/common/primitives/Bytes;
.super Ljava/lang/Object;
.source "Bytes.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Bytes$ByteArrayAsList;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([BBII)I
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # B
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Bytes;->indexOf([BBII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([BBII)I
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # B
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Bytes;->lastIndexOf([BBII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([B)Ljava/util/List;
    .locals 1
    .param p0, "backingArray"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    array-length v0, p0

    if-nez v0, :cond_0

    .line 234
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 236
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;-><init>([B)V

    goto :goto_0
.end method

.method public static varargs concat([[B)[B
    .locals 8
    .param p0, "arrays"    # [[B

    .prologue
    const/4 v5, 0x0

    .line 160
    const/4 v1, 0x0

    .line 161
    .local v1, "length":I
    array-length v6, p0

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v0, p0, v4

    .line 162
    .local v0, "array":[B
    array-length v7, v0

    add-int/2addr v1, v7

    .line 161
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 164
    .end local v0    # "array":[B
    :cond_0
    new-array v3, v1, [B

    .line 165
    .local v3, "result":[B
    const/4 v2, 0x0

    .line 166
    .local v2, "pos":I
    array-length v6, p0

    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v0, p0, v4

    .line 167
    .restart local v0    # "array":[B
    array-length v7, v0

    invoke-static {v0, v5, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    array-length v7, v0

    add-int/2addr v2, v7

    .line 166
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 170
    .end local v0    # "array":[B
    :cond_1
    return-object v3
.end method

.method public static contains([BB)Z
    .locals 4
    .param p0, "array"    # [B
    .param p1, "target"    # B

    .prologue
    const/4 v1, 0x0

    .line 71
    array-length v3, p0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v0, p0, v2

    .line 72
    .local v0, "value":B
    if-ne v0, p1, :cond_1

    .line 73
    const/4 v1, 0x1

    .line 76
    .end local v0    # "value":B
    :cond_0
    return v1

    .line 71
    .restart local v0    # "value":B
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static ensureCapacity([BII)[B
    .locals 4
    .param p0, "array"    # [B
    .param p1, "minLength"    # I
    .param p2, "padding"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 187
    if-ltz p1, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Invalid minLength: %s"

    invoke-static {v0, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 188
    if-ltz p2, :cond_2

    :goto_1
    const-string v0, "Invalid padding: %s"

    invoke-static {v1, v0, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 189
    array-length v0, p0

    if-ge v0, p1, :cond_0

    add-int v0, p1, p2

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    .end local p0    # "array":[B
    :cond_0
    return-object p0

    .restart local p0    # "array":[B
    :cond_1
    move v0, v2

    .line 187
    goto :goto_0

    :cond_2
    move v1, v2

    .line 188
    goto :goto_1
.end method

.method public static hashCode(B)I
    .locals 0
    .param p0, "value"    # B

    .prologue
    .line 60
    return p0
.end method

.method public static indexOf([BB)I
    .locals 2
    .param p0, "array"    # [B
    .param p1, "target"    # B

    .prologue
    .line 88
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Bytes;->indexOf([BBII)I

    move-result v0

    return v0
.end method

.method private static indexOf([BBII)I
    .locals 2
    .param p0, "array"    # [B
    .param p1, "target"    # B
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 93
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 94
    aget-byte v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 98
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 93
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static indexOf([B[B)I
    .locals 4
    .param p0, "array"    # [B
    .param p1, "target"    # [B

    .prologue
    .line 112
    const-string v2, "array"

    invoke-static {p0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v2, "target"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    array-length v2, p1

    if-nez v2, :cond_1

    .line 115
    const/4 v0, 0x0

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 119
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_3

    .line 120
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 121
    add-int v2, v0, v1

    aget-byte v2, p0, v2

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_2

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 120
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 127
    .end local v1    # "j":I
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static lastIndexOf([BB)I
    .locals 2
    .param p0, "array"    # [B
    .param p1, "target"    # B

    .prologue
    .line 139
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Bytes;->lastIndexOf([BBII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([BBII)I
    .locals 2
    .param p0, "array"    # [B
    .param p1, "target"    # B
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 144
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_1

    .line 145
    aget-byte v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 149
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 144
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 149
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static reverse([B)V
    .locals 2
    .param p0, "array"    # [B

    .prologue
    .line 375
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/primitives/Bytes;->reverse([BII)V

    .line 377
    return-void
.end method

.method public static reverse([BII)V
    .locals 4
    .param p0, "array"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 390
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    array-length v3, p0

    invoke-static {p1, p2, v3}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 392
    move v0, p1

    .local v0, "i":I
    add-int/lit8 v1, p2, -0x1

    .local v1, "j":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 393
    aget-byte v2, p0, v0

    .line 394
    .local v2, "tmp":B
    aget-byte v3, p0, v1

    aput-byte v3, p0, v0

    .line 395
    aput-byte v2, p0, v1

    .line 392
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 397
    .end local v2    # "tmp":B
    :cond_0
    return-void
.end method

.method public static toArray(Ljava/util/Collection;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    instance-of v4, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;

    if-eqz v4, :cond_1

    .line 207
    check-cast p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;

    .end local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    invoke-virtual {p0}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->toByteArray()[B

    move-result-object v0

    .line 217
    .local v0, "array":[B
    .local v1, "boxedArray":[Ljava/lang/Object;
    .local v2, "i":I
    .local v3, "len":I
    .restart local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    :cond_0
    return-object v0

    .line 210
    .end local v0    # "array":[B
    .end local v1    # "boxedArray":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 211
    .restart local v1    # "boxedArray":[Ljava/lang/Object;
    array-length v3, v1

    .line 212
    .restart local v3    # "len":I
    new-array v0, v3, [B

    .line 213
    .restart local v0    # "array":[B
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 215
    aget-object v4, v1, v2

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->byteValue()B

    move-result v4

    aput-byte v4, v0, v2

    .line 213
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
