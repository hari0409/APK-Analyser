.class public final Lcom/google/common/primitives/Doubles;
.super Ljava/lang/Object;
.source "Doubles.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Doubles$DoubleArrayAsList;,
        Lcom/google/common/primitives/Doubles$LexicographicalComparator;,
        Lcom/google/common/primitives/Doubles$DoubleConverter;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x8

.field static final FLOATING_POINT_PATTERN:Ljava/util/regex/Pattern;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 649
    invoke-static {}, Lcom/google/common/primitives/Doubles;->fpPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/common/primitives/Doubles;->FLOATING_POINT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([DDII)I
    .locals 1
    .param p0, "x0"    # [D
    .param p1, "x1"    # D
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 50
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Doubles;->indexOf([DDII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([DDII)I
    .locals 1
    .param p0, "x0"    # [D
    .param p1, "x1"    # D
    .param p3, "x2"    # I
    .param p4, "x3"    # I

    .prologue
    .line 50
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Doubles;->lastIndexOf([DDII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([D)Ljava/util/List;
    .locals 1
    .param p0, "backingArray"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 507
    array-length v0, p0

    if-nez v0, :cond_0

    .line 508
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 510
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;-><init>([D)V

    goto :goto_0
.end method

.method public static compare(DD)I
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    .line 93
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public static varargs concat([[D)[D
    .locals 8
    .param p0, "arrays"    # [[D

    .prologue
    const/4 v5, 0x0

    .line 266
    const/4 v1, 0x0

    .line 267
    .local v1, "length":I
    array-length v6, p0

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v0, p0, v4

    .line 268
    .local v0, "array":[D
    array-length v7, v0

    add-int/2addr v1, v7

    .line 267
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 270
    .end local v0    # "array":[D
    :cond_0
    new-array v3, v1, [D

    .line 271
    .local v3, "result":[D
    const/4 v2, 0x0

    .line 272
    .local v2, "pos":I
    array-length v6, p0

    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v0, p0, v4

    .line 273
    .restart local v0    # "array":[D
    array-length v7, v0

    invoke-static {v0, v5, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    array-length v7, v0

    add-int/2addr v2, v7

    .line 272
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 276
    .end local v0    # "array":[D
    :cond_1
    return-object v3
.end method

.method public static constrainToRange(DDD)D
    .locals 4
    .param p0, "value"    # D
    .param p2, "min"    # D
    .param p4, "max"    # D
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 253
    cmpg-double v0, p2, p4

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "min (%s) must be less than or equal to max (%s)"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 254
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0

    .line 253
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([DD)Z
    .locals 7
    .param p0, "array"    # [D
    .param p1, "target"    # D

    .prologue
    const/4 v2, 0x0

    .line 117
    array-length v4, p0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-wide v0, p0, v3

    .line 118
    .local v0, "value":D
    cmpl-double v5, v0, p1

    if-nez v5, :cond_1

    .line 119
    const/4 v2, 0x1

    .line 122
    .end local v0    # "value":D
    :cond_0
    return v2

    .line 117
    .restart local v0    # "value":D
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static ensureCapacity([DII)[D
    .locals 4
    .param p0, "array"    # [D
    .param p1, "minLength"    # I
    .param p2, "padding"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 330
    if-ltz p1, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Invalid minLength: %s"

    invoke-static {v0, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 331
    if-ltz p2, :cond_2

    :goto_1
    const-string v0, "Invalid padding: %s"

    invoke-static {v1, v0, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 332
    array-length v0, p0

    if-ge v0, p1, :cond_0

    add-int v0, p1, p2

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object p0

    .end local p0    # "array":[D
    :cond_0
    return-object p0

    .restart local p0    # "array":[D
    :cond_1
    move v0, v2

    .line 330
    goto :goto_0

    :cond_2
    move v1, v2

    .line 331
    goto :goto_1
.end method

.method private static fpPattern()Ljava/util/regex/Pattern;
    .locals 7
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .prologue
    .line 653
    const-string v2, "(?:\\d++(?:\\.\\d*+)?|\\.\\d++)"

    .line 654
    .local v2, "decimal":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(?:[eE][+-]?\\d++)?[fFdD]?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, "completeDec":Ljava/lang/String;
    const-string v4, "(?:\\p{XDigit}++(?:\\.\\p{XDigit}*+)?|\\.\\p{XDigit}++)"

    .line 656
    .local v4, "hex":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0[xX]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "[pP][+-]?\\d++[fFdD]?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 657
    .local v1, "completeHex":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[+-]?(?:NaN|Infinity|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 658
    .local v3, "fpPattern":Ljava/lang/String;
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    return-object v5
.end method

.method public static hashCode(D)I
    .locals 2
    .param p0, "value"    # D

    .prologue
    .line 72
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    return v0
.end method

.method public static indexOf([DD)I
    .locals 3
    .param p0, "array"    # [D
    .param p1, "target"    # D

    .prologue
    .line 135
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/common/primitives/Doubles;->indexOf([DDII)I

    move-result v0

    return v0
.end method

.method private static indexOf([DDII)I
    .locals 5
    .param p0, "array"    # [D
    .param p1, "target"    # D
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 140
    move v0, p3

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_1

    .line 141
    aget-wide v2, p0, v0

    cmpl-double v1, v2, p1

    if-nez v1, :cond_0

    .line 145
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 140
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static indexOf([D[D)I
    .locals 6
    .param p0, "array"    # [D
    .param p1, "target"    # [D

    .prologue
    .line 161
    const-string v2, "array"

    invoke-static {p0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v2, "target"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    array-length v2, p1

    if-nez v2, :cond_1

    .line 164
    const/4 v0, 0x0

    .line 176
    :cond_0
    :goto_0
    return v0

    .line 168
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_3

    .line 169
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 170
    add-int v2, v0, v1

    aget-wide v2, p0, v2

    aget-wide v4, p1, v1

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_2

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 169
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 176
    .end local v1    # "j":I
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static isFinite(D)Z
    .locals 2
    .param p0, "value"    # D

    .prologue
    .line 105
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpg-double v0, v0, p0

    if-gez v0, :cond_0

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs join(Ljava/lang/String;[D)Ljava/lang/String;
    .locals 6
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [D

    .prologue
    .line 348
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    array-length v2, p1

    if-nez v2, :cond_0

    .line 350
    const-string v2, ""

    .line 359
    :goto_0
    return-object v2

    .line 354
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0xc

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 355
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget-wide v2, p1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 356
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 357
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-wide v4, p1, v1

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 356
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 359
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static lastIndexOf([DD)I
    .locals 3
    .param p0, "array"    # [D
    .param p1, "target"    # D

    .prologue
    .line 189
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/common/primitives/Doubles;->lastIndexOf([DDII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([DDII)I
    .locals 5
    .param p0, "array"    # [D
    .param p1, "target"    # D
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    .line 194
    add-int/lit8 v0, p4, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p3, :cond_1

    .line 195
    aget-wide v2, p0, v0

    cmpl-double v1, v2, p1

    if-nez v1, :cond_0

    .line 199
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 194
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 199
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[D>;"
        }
    .end annotation

    .prologue
    .line 376
    sget-object v0, Lcom/google/common/primitives/Doubles$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Doubles$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([D)D
    .locals 6
    .param p0, "array"    # [D

    .prologue
    const/4 v4, 0x0

    .line 230
    array-length v1, p0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 231
    aget-wide v2, p0, v4

    .line 232
    .local v2, "max":D
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 233
    aget-wide v4, p0, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v2    # "max":D
    :cond_0
    move v1, v4

    .line 230
    goto :goto_0

    .line 235
    .restart local v0    # "i":I
    .restart local v2    # "max":D
    :cond_1
    return-wide v2
.end method

.method public static varargs min([D)D
    .locals 6
    .param p0, "array"    # [D

    .prologue
    const/4 v4, 0x0

    .line 212
    array-length v1, p0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 213
    aget-wide v2, p0, v4

    .line 214
    .local v2, "min":D
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 215
    aget-wide v4, p0, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v2    # "min":D
    :cond_0
    move v1, v4

    .line 212
    goto :goto_0

    .line 217
    .restart local v0    # "i":I
    .restart local v2    # "min":D
    :cond_1
    return-wide v2
.end method

.method public static reverse([D)V
    .locals 2
    .param p0, "array"    # [D

    .prologue
    .line 436
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/primitives/Doubles;->reverse([DII)V

    .line 438
    return-void
.end method

.method public static reverse([DII)V
    .locals 6
    .param p0, "array"    # [D
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 451
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    array-length v4, p0

    invoke-static {p1, p2, v4}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 453
    move v0, p1

    .local v0, "i":I
    add-int/lit8 v1, p2, -0x1

    .local v1, "j":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 454
    aget-wide v2, p0, v0

    .line 455
    .local v2, "tmp":D
    aget-wide v4, p0, v1

    aput-wide v4, p0, v0

    .line 456
    aput-wide v2, p0, v1

    .line 453
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 458
    .end local v2    # "tmp":D
    :cond_0
    return-void
.end method

.method public static sortDescending([D)V
    .locals 2
    .param p0, "array"    # [D

    .prologue
    .line 409
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/primitives/Doubles;->sortDescending([DII)V

    .line 411
    return-void
.end method

.method public static sortDescending([DII)V
    .locals 1
    .param p0, "array"    # [D
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 423
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 425
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([DII)V

    .line 426
    invoke-static {p0, p1, p2}, Lcom/google/common/primitives/Doubles;->reverse([DII)V

    .line 427
    return-void
.end method

.method public static stringConverter()Lcom/google/common/base/Converter;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Converter",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    sget-object v0, Lcom/google/common/primitives/Doubles$DoubleConverter;->INSTANCE:Lcom/google/common/primitives/Doubles$DoubleConverter;

    return-object v0
.end method

.method public static toArray(Ljava/util/Collection;)[D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)[D"
        }
    .end annotation

    .prologue
    .line 474
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    instance-of v4, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;

    if-eqz v4, :cond_1

    .line 475
    check-cast p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;

    .end local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    invoke-virtual {p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->toDoubleArray()[D

    move-result-object v0

    .line 485
    .local v0, "array":[D
    .local v1, "boxedArray":[Ljava/lang/Object;
    .local v2, "i":I
    .local v3, "len":I
    .restart local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    :cond_0
    return-object v0

    .line 478
    .end local v0    # "array":[D
    .end local v1    # "boxedArray":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 479
    .restart local v1    # "boxedArray":[Ljava/lang/Object;
    array-length v3, v1

    .line 480
    .restart local v3    # "len":I
    new-array v0, v3, [D

    .line 481
    .restart local v0    # "array":[D
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 483
    aget-object v4, v1, v2

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 481
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static tryParse(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .line 681
    sget-object v0, Lcom/google/common/primitives/Doubles;->FLOATING_POINT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 691
    :goto_0
    return-object v0

    .line 686
    :catch_0
    move-exception v0

    .line 691
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
