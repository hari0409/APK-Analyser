.class public final Lcom/google/common/primitives/Floats;
.super Ljava/lang/Object;
.source "Floats.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Floats$FloatArrayAsList;,
        Lcom/google/common/primitives/Floats$LexicographicalComparator;,
        Lcom/google/common/primitives/Floats$FloatConverter;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([FFII)I
    .locals 1
    .param p0, "x0"    # [F
    .param p1, "x1"    # F
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 49
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Floats;->indexOf([FFII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([FFII)I
    .locals 1
    .param p0, "x0"    # [F
    .param p1, "x1"    # F
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 49
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Floats;->lastIndexOf([FFII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([F)Ljava/util/List;
    .locals 1
    .param p0, "backingArray"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 500
    array-length v0, p0

    if-nez v0, :cond_0

    .line 501
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 503
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Floats$FloatArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Floats$FloatArrayAsList;-><init>([F)V

    goto :goto_0
.end method

.method public static compare(FF)I
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 89
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public static varargs concat([[F)[F
    .locals 8
    .param p0, "arrays"    # [[F

    .prologue
    const/4 v5, 0x0

    .line 262
    const/4 v1, 0x0

    .line 263
    .local v1, "length":I
    array-length v6, p0

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v0, p0, v4

    .line 264
    .local v0, "array":[F
    array-length v7, v0

    add-int/2addr v1, v7

    .line 263
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 266
    .end local v0    # "array":[F
    :cond_0
    new-array v3, v1, [F

    .line 267
    .local v3, "result":[F
    const/4 v2, 0x0

    .line 268
    .local v2, "pos":I
    array-length v6, p0

    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v0, p0, v4

    .line 269
    .restart local v0    # "array":[F
    array-length v7, v0

    invoke-static {v0, v5, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    array-length v7, v0

    add-int/2addr v2, v7

    .line 268
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 272
    .end local v0    # "array":[F
    :cond_1
    return-object v3
.end method

.method public static constrainToRange(FFF)F
    .locals 4
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 249
    cmpg-float v0, p1, p2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "min (%s) must be less than or equal to max (%s)"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 250
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0

    .line 249
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static contains([FF)Z
    .locals 5
    .param p0, "array"    # [F
    .param p1, "target"    # F

    .prologue
    const/4 v1, 0x0

    .line 113
    array-length v3, p0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, p0, v2

    .line 114
    .local v0, "value":F
    cmpl-float v4, v0, p1

    if-nez v4, :cond_1

    .line 115
    const/4 v1, 0x1

    .line 118
    .end local v0    # "value":F
    :cond_0
    return v1

    .line 113
    .restart local v0    # "value":F
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static ensureCapacity([FII)[F
    .locals 4
    .param p0, "array"    # [F
    .param p1, "minLength"    # I
    .param p2, "padding"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 326
    if-ltz p1, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Invalid minLength: %s"

    invoke-static {v0, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 327
    if-ltz p2, :cond_2

    :goto_1
    const-string v0, "Invalid padding: %s"

    invoke-static {v1, v0, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 328
    array-length v0, p0

    if-ge v0, p1, :cond_0

    add-int v0, p1, p2

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    .end local p0    # "array":[F
    :cond_0
    return-object p0

    .restart local p0    # "array":[F
    :cond_1
    move v0, v2

    .line 326
    goto :goto_0

    :cond_2
    move v1, v2

    .line 327
    goto :goto_1
.end method

.method public static hashCode(F)I
    .locals 1
    .param p0, "value"    # F

    .prologue
    .line 72
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->hashCode()I

    move-result v0

    return v0
.end method

.method public static indexOf([FF)I
    .locals 2
    .param p0, "array"    # [F
    .param p1, "target"    # F

    .prologue
    .line 131
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Floats;->indexOf([FFII)I

    move-result v0

    return v0
.end method

.method private static indexOf([FFII)I
    .locals 2
    .param p0, "array"    # [F
    .param p1, "target"    # F
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 136
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 137
    aget v1, p0, v0

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    .line 141
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 136
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static indexOf([F[F)I
    .locals 4
    .param p0, "array"    # [F
    .param p1, "target"    # [F

    .prologue
    .line 157
    const-string v2, "array"

    invoke-static {p0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v2, "target"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    array-length v2, p1

    if-nez v2, :cond_1

    .line 160
    const/4 v0, 0x0

    .line 172
    :cond_0
    :goto_0
    return v0

    .line 164
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_3

    .line 165
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 166
    add-int v2, v0, v1

    aget v2, p0, v2

    aget v3, p1, v1

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 165
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 172
    .end local v1    # "j":I
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static isFinite(F)Z
    .locals 1
    .param p0, "value"    # F

    .prologue
    .line 101
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    cmpg-float v0, v0, p0

    if-gez v0, :cond_0

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs join(Ljava/lang/String;[F)Ljava/lang/String;
    .locals 4
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [F

    .prologue
    .line 344
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    array-length v2, p1

    if-nez v2, :cond_0

    .line 346
    const-string v2, ""

    .line 355
    :goto_0
    return-object v2

    .line 350
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0xc

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 351
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 352
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 353
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 352
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 355
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static lastIndexOf([FF)I
    .locals 2
    .param p0, "array"    # [F
    .param p1, "target"    # F

    .prologue
    .line 185
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Floats;->lastIndexOf([FFII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([FFII)I
    .locals 2
    .param p0, "array"    # [F
    .param p1, "target"    # F
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 190
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_1

    .line 191
    aget v1, p0, v0

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    .line 195
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 190
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 195
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
            "<[F>;"
        }
    .end annotation

    .prologue
    .line 372
    sget-object v0, Lcom/google/common/primitives/Floats$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Floats$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([F)F
    .locals 4
    .param p0, "array"    # [F

    .prologue
    const/4 v3, 0x0

    .line 226
    array-length v2, p0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 227
    aget v1, p0, v3

    .line 228
    .local v1, "max":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 229
    aget v2, p0, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "max":F
    :cond_0
    move v2, v3

    .line 226
    goto :goto_0

    .line 231
    .restart local v0    # "i":I
    .restart local v1    # "max":F
    :cond_1
    return v1
.end method

.method public static varargs min([F)F
    .locals 4
    .param p0, "array"    # [F

    .prologue
    const/4 v3, 0x0

    .line 208
    array-length v2, p0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 209
    aget v1, p0, v3

    .line 210
    .local v1, "min":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 211
    aget v2, p0, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "min":F
    :cond_0
    move v2, v3

    .line 208
    goto :goto_0

    .line 213
    .restart local v0    # "i":I
    .restart local v1    # "min":F
    :cond_1
    return v1
.end method

.method public static reverse([F)V
    .locals 2
    .param p0, "array"    # [F

    .prologue
    .line 432
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/primitives/Floats;->reverse([FII)V

    .line 434
    return-void
.end method

.method public static reverse([FII)V
    .locals 4
    .param p0, "array"    # [F
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 447
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    array-length v3, p0

    invoke-static {p1, p2, v3}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 449
    move v0, p1

    .local v0, "i":I
    add-int/lit8 v1, p2, -0x1

    .local v1, "j":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 450
    aget v2, p0, v0

    .line 451
    .local v2, "tmp":F
    aget v3, p0, v1

    aput v3, p0, v0

    .line 452
    aput v2, p0, v1

    .line 449
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 454
    .end local v2    # "tmp":F
    :cond_0
    return-void
.end method

.method public static sortDescending([F)V
    .locals 2
    .param p0, "array"    # [F

    .prologue
    .line 405
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/primitives/Floats;->sortDescending([FII)V

    .line 407
    return-void
.end method

.method public static sortDescending([FII)V
    .locals 1
    .param p0, "array"    # [F
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 419
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 421
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([FII)V

    .line 422
    invoke-static {p0, p1, p2}, Lcom/google/common/primitives/Floats;->reverse([FII)V

    .line 423
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
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    sget-object v0, Lcom/google/common/primitives/Floats$FloatConverter;->INSTANCE:Lcom/google/common/primitives/Floats$FloatConverter;

    return-object v0
.end method

.method public static toArray(Ljava/util/Collection;)[F
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)[F"
        }
    .end annotation

    .prologue
    .line 470
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    instance-of v4, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;

    if-eqz v4, :cond_1

    .line 471
    check-cast p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;

    .end local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    invoke-virtual {p0}, Lcom/google/common/primitives/Floats$FloatArrayAsList;->toFloatArray()[F

    move-result-object v0

    .line 481
    .local v0, "array":[F
    .local v1, "boxedArray":[Ljava/lang/Object;
    .local v2, "i":I
    .local v3, "len":I
    .restart local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Number;>;"
    :cond_0
    return-object v0

    .line 474
    .end local v0    # "array":[F
    .end local v1    # "boxedArray":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 475
    .restart local v1    # "boxedArray":[Ljava/lang/Object;
    array-length v3, v1

    .line 476
    .restart local v3    # "len":I
    new-array v0, v3, [F

    .line 477
    .restart local v0    # "array":[F
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 479
    aget-object v4, v1, v2

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    aput v4, v0, v2

    .line 477
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static tryParse(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .line 655
    sget-object v0, Lcom/google/common/primitives/Doubles;->FLOATING_POINT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 665
    :goto_0
    return-object v0

    .line 660
    :catch_0
    move-exception v0

    .line 665
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
