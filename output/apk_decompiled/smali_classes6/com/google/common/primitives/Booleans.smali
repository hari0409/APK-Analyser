.class public final Lcom/google/common/primitives/Booleans;
.super Ljava/lang/Object;
.source "Booleans.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Booleans$BooleanArrayAsList;,
        Lcom/google/common/primitives/Booleans$LexicographicalComparator;,
        Lcom/google/common/primitives/Booleans$BooleanComparator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([ZZII)I
    .locals 1
    .param p0, "x0"    # [Z
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 45
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Booleans;->indexOf([ZZII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([ZZII)I
    .locals 1
    .param p0, "x0"    # [Z
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 45
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Booleans;->lastIndexOf([ZZII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([Z)Ljava/util/List;
    .locals 1
    .param p0, "backingArray"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    array-length v0, p0

    if-nez v0, :cond_0

    .line 372
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 374
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;-><init>([Z)V

    goto :goto_0
.end method

.method public static compare(ZZ)I
    .locals 1
    .param p0, "a"    # Z
    .param p1, "b"    # Z

    .prologue
    .line 127
    if-ne p0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static varargs concat([[Z)[Z
    .locals 8
    .param p0, "arrays"    # [[Z

    .prologue
    const/4 v5, 0x0

    .line 235
    const/4 v1, 0x0

    .line 236
    .local v1, "length":I
    array-length v6, p0

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v0, p0, v4

    .line 237
    .local v0, "array":[Z
    array-length v7, v0

    add-int/2addr v1, v7

    .line 236
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 239
    .end local v0    # "array":[Z
    :cond_0
    new-array v3, v1, [Z

    .line 240
    .local v3, "result":[Z
    const/4 v2, 0x0

    .line 241
    .local v2, "pos":I
    array-length v6, p0

    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v0, p0, v4

    .line 242
    .restart local v0    # "array":[Z
    array-length v7, v0

    invoke-static {v0, v5, v3, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    array-length v7, v0

    add-int/2addr v2, v7

    .line 241
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 245
    .end local v0    # "array":[Z
    :cond_1
    return-object v3
.end method

.method public static contains([ZZ)Z
    .locals 4
    .param p0, "array"    # [Z
    .param p1, "target"    # Z

    .prologue
    const/4 v1, 0x0

    .line 142
    array-length v3, p0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-boolean v0, p0, v2

    .line 143
    .local v0, "value":Z
    if-ne v0, p1, :cond_1

    .line 144
    const/4 v1, 0x1

    .line 147
    .end local v0    # "value":Z
    :cond_0
    return v1

    .line 142
    .restart local v0    # "value":Z
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static varargs countTrue([Z)I
    .locals 4
    .param p0, "values"    # [Z
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 514
    const/4 v0, 0x0

    .line 515
    .local v0, "count":I
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-boolean v1, p0, v2

    .line 516
    .local v1, "value":Z
    if-eqz v1, :cond_0

    .line 517
    add-int/lit8 v0, v0, 0x1

    .line 515
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 520
    .end local v1    # "value":Z
    :cond_1
    return v0
.end method

.method public static ensureCapacity([ZII)[Z
    .locals 4
    .param p0, "array"    # [Z
    .param p1, "minLength"    # I
    .param p2, "padding"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 262
    if-ltz p1, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Invalid minLength: %s"

    invoke-static {v0, v3, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 263
    if-ltz p2, :cond_2

    :goto_1
    const-string v0, "Invalid padding: %s"

    invoke-static {v1, v0, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 264
    array-length v0, p0

    if-ge v0, p1, :cond_0

    add-int v0, p1, p2

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p0

    .end local p0    # "array":[Z
    :cond_0
    return-object p0

    .restart local p0    # "array":[Z
    :cond_1
    move v0, v2

    .line 262
    goto :goto_0

    :cond_2
    move v1, v2

    .line 263
    goto :goto_1
.end method

.method public static falseFirst()Ljava/util/Comparator;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    sget-object v0, Lcom/google/common/primitives/Booleans$BooleanComparator;->FALSE_FIRST:Lcom/google/common/primitives/Booleans$BooleanComparator;

    return-object v0
.end method

.method public static hashCode(Z)I
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 110
    if-eqz p0, :cond_0

    const/16 v0, 0x4cf

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0
.end method

.method public static indexOf([ZZ)I
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "target"    # Z

    .prologue
    .line 162
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Booleans;->indexOf([ZZII)I

    move-result v0

    return v0
.end method

.method private static indexOf([ZZII)I
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "target"    # Z
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 167
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 168
    aget-boolean v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 172
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 167
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static indexOf([Z[Z)I
    .locals 4
    .param p0, "array"    # [Z
    .param p1, "target"    # [Z

    .prologue
    .line 186
    const-string v2, "array"

    invoke-static {p0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v2, "target"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    array-length v2, p1

    if-nez v2, :cond_1

    .line 189
    const/4 v0, 0x0

    .line 201
    :cond_0
    :goto_0
    return v0

    .line 193
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_3

    .line 194
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 195
    add-int v2, v0, v1

    aget-boolean v2, p0, v2

    aget-boolean v3, p1, v1

    if-eq v2, v3, :cond_2

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 194
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 201
    .end local v1    # "j":I
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static varargs join(Ljava/lang/String;[Z)Ljava/lang/String;
    .locals 4
    .param p0, "separator"    # Ljava/lang/String;
    .param p1, "array"    # [Z

    .prologue
    .line 277
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    array-length v2, p1

    if-nez v2, :cond_0

    .line 279
    const-string v2, ""

    .line 288
    :goto_0
    return-object v2

    .line 283
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x7

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 284
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget-boolean v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 285
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 286
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-boolean v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 285
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 288
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static lastIndexOf([ZZ)I
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "target"    # Z

    .prologue
    .line 213
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Booleans;->lastIndexOf([ZZII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([ZZII)I
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "target"    # Z
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 218
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_1

    .line 219
    aget-boolean v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 223
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 218
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 223
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
            "<[Z>;"
        }
    .end annotation

    .prologue
    .line 305
    sget-object v0, Lcom/google/common/primitives/Booleans$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Booleans$LexicographicalComparator;

    return-object v0
.end method

.method public static reverse([Z)V
    .locals 2
    .param p0, "array"    # [Z

    .prologue
    .line 530
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/primitives/Booleans;->reverse([ZII)V

    .line 532
    return-void
.end method

.method public static reverse([ZII)V
    .locals 4
    .param p0, "array"    # [Z
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 545
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    array-length v3, p0

    invoke-static {p1, p2, v3}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 547
    move v0, p1

    .local v0, "i":I
    add-int/lit8 v1, p2, -0x1

    .local v1, "j":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 548
    aget-boolean v2, p0, v0

    .line 549
    .local v2, "tmp":Z
    aget-boolean v3, p0, v1

    aput-boolean v3, p0, v0

    .line 550
    aput-boolean v2, p0, v1

    .line 547
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 552
    .end local v2    # "tmp":Z
    :cond_0
    return-void
.end method

.method public static toArray(Ljava/util/Collection;)[Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Boolean;",
            ">;)[Z"
        }
    .end annotation

    .prologue
    .line 344
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Boolean;>;"
    instance-of v4, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;

    if-eqz v4, :cond_1

    .line 345
    check-cast p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;

    .end local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->toBooleanArray()[Z

    move-result-object v0

    .line 355
    .local v0, "array":[Z
    .local v1, "boxedArray":[Ljava/lang/Object;
    .local v2, "i":I
    .local v3, "len":I
    .restart local p0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Boolean;>;"
    :cond_0
    return-object v0

    .line 348
    .end local v0    # "array":[Z
    .end local v1    # "boxedArray":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 349
    .restart local v1    # "boxedArray":[Ljava/lang/Object;
    array-length v3, v1

    .line 350
    .restart local v3    # "len":I
    new-array v0, v3, [Z

    .line 351
    .restart local v0    # "array":[Z
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 353
    aget-object v4, v1, v2

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    aput-boolean v4, v0, v2

    .line 351
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static trueFirst()Ljava/util/Comparator;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    sget-object v0, Lcom/google/common/primitives/Booleans$BooleanComparator;->TRUE_FIRST:Lcom/google/common/primitives/Booleans$BooleanComparator;

    return-object v0
.end method
