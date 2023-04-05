.class public final Lcom/google/common/collect/Range;
.super Lcom/google/common/collect/RangeGwtSerializationDependencies;
.source "Range.java"

# interfaces
.implements Lcom/google/common/base/Predicate;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Range$RangeLexOrdering;,
        Lcom/google/common/collect/Range$UpperBoundFn;,
        Lcom/google/common/collect/Range$LowerBoundFn;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lcom/google/common/collect/RangeGwtSerializationDependencies;",
        "Lcom/google/common/base/Predicate",
        "<TC;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ALL:Lcom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Range",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field final lowerBound:Lcom/google/common/collect/Cut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Cut",
            "<TC;>;"
        }
    .end annotation
.end field

.field final upperBound:Lcom/google/common/collect/Cut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Cut",
            "<TC;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 292
    new-instance v0, Lcom/google/common/collect/Range;

    invoke-static {}, Lcom/google/common/collect/Cut;->belowAll()Lcom/google/common/collect/Cut;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/Cut;->aboveAll()Lcom/google/common/collect/Cut;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/Range;-><init>(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)V

    sput-object v0, Lcom/google/common/collect/Range;->ALL:Lcom/google/common/collect/Range;

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Cut",
            "<TC;>;",
            "Lcom/google/common/collect/Cut",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 346
    .local p0, "this":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    .local p1, "lowerBound":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    .local p2, "upperBound":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    invoke-direct {p0}, Lcom/google/common/collect/RangeGwtSerializationDependencies;-><init>()V

    .line 347
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Cut;

    iput-object v0, p0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    .line 348
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Cut;

    iput-object v0, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    .line 349
    invoke-virtual {p1, p2}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 350
    invoke-static {}, Lcom/google/common/collect/Cut;->aboveAll()Lcom/google/common/collect/Cut;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 351
    invoke-static {}, Lcom/google/common/collect/Cut;->belowAll()Lcom/google/common/collect/Cut;

    move-result-object v0

    if-ne p2, v0, :cond_1

    .line 352
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/google/common/collect/Range;->toString(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_1
    return-void
.end method

.method public static all()Lcom/google/common/collect/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>()",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 301
    sget-object v0, Lcom/google/common/collect/Range;->ALL:Lcom/google/common/collect/Range;

    return-object v0
.end method

.method public static atLeast(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(TC;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "endpoint":Ljava/lang/Comparable;, "TC;"
    invoke-static {p0}, Lcom/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v0

    invoke-static {}, Lcom/google/common/collect/Cut;->aboveAll()Lcom/google/common/collect/Cut;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method public static atMost(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(TC;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 237
    .local p0, "endpoint":Ljava/lang/Comparable;, "TC;"
    invoke-static {}, Lcom/google/common/collect/Cut;->belowAll()Lcom/google/common/collect/Cut;

    move-result-object v0

    invoke-static {p0}, Lcom/google/common/collect/Cut;->aboveValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method private static cast(Ljava/lang/Iterable;)Ljava/util/SortedSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Ljava/util/SortedSet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 653
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    check-cast p0, Ljava/util/SortedSet;

    .end local p0    # "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    return-object p0
.end method

.method public static closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(TC;TC;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "lower":Ljava/lang/Comparable;, "TC;"
    .local p1, "upper":Ljava/lang/Comparable;, "TC;"
    invoke-static {p0}, Lcom/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/collect/Cut;->aboveValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method public static closedOpen(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(TC;TC;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "lower":Ljava/lang/Comparable;, "TC;"
    .local p1, "upper":Ljava/lang/Comparable;, "TC;"
    invoke-static {p0}, Lcom/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method static compareOrThrow(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1
    .param p0, "left"    # Ljava/lang/Comparable;
    .param p1, "right"    # Ljava/lang/Comparable;

    .prologue
    .line 666
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(",
            "Lcom/google/common/collect/Cut",
            "<TC;>;",
            "Lcom/google/common/collect/Cut",
            "<TC;>;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "lowerBound":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    .local p1, "upperBound":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    new-instance v0, Lcom/google/common/collect/Range;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Range;-><init>(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)V

    return-object v0
.end method

.method public static downTo(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;
    .locals 2
    .param p1, "boundType"    # Lcom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(TC;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 282
    .local p0, "endpoint":Ljava/lang/Comparable;, "TC;"
    sget-object v0, Lcom/google/common/collect/Range$1;->$SwitchMap$com$google$common$collect$BoundType:[I

    invoke-virtual {p1}, Lcom/google/common/collect/BoundType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 288
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 284
    :pswitch_0
    invoke-static {p0}, Lcom/google/common/collect/Range;->greaterThan(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    .line 286
    :goto_0
    return-object v0

    :pswitch_1
    invoke-static {p0}, Lcom/google/common/collect/Range;->atLeast(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    goto :goto_0

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static encloseAll(Ljava/lang/Iterable;)Lcom/google/common/collect/Range;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(",
            "Ljava/lang/Iterable",
            "<TC;>;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 324
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TC;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    instance-of v6, p0, Ljava/util/SortedSet;

    if-eqz v6, :cond_1

    .line 326
    invoke-static {p0}, Lcom/google/common/collect/Range;->cast(Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object v3

    .line 327
    .local v3, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<+TC;>;"
    invoke-interface {v3}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 328
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    if-nez v0, :cond_1

    .line 329
    :cond_0
    invoke-interface {v3}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Comparable;

    invoke-interface {v3}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Comparable;

    invoke-static {v6, v7}, Lcom/google/common/collect/Range;->closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v6

    .line 340
    .end local v0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    .end local v3    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<+TC;>;"
    :goto_0
    return-object v6

    .line 332
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 333
    .local v5, "valueIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TC;>;"
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    .line 334
    .local v2, "min":Ljava/lang/Comparable;, "TC;"
    move-object v1, v2

    .line 335
    .local v1, "max":Ljava/lang/Comparable;, "TC;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 336
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    .line 337
    .local v4, "value":Ljava/lang/Comparable;, "TC;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v6

    invoke-virtual {v6, v2, v4}, Lcom/google/common/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "min":Ljava/lang/Comparable;, "TC;"
    check-cast v2, Ljava/lang/Comparable;

    .line 338
    .restart local v2    # "min":Ljava/lang/Comparable;, "TC;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v6

    invoke-virtual {v6, v1, v4}, Lcom/google/common/collect/Ordering;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "max":Ljava/lang/Comparable;, "TC;"
    check-cast v1, Ljava/lang/Comparable;

    .line 339
    .restart local v1    # "max":Ljava/lang/Comparable;, "TC;"
    goto :goto_1

    .line 340
    .end local v4    # "value":Ljava/lang/Comparable;, "TC;"
    :cond_2
    invoke-static {v2, v1}, Lcom/google/common/collect/Range;->closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v6

    goto :goto_0
.end method

.method public static greaterThan(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(TC;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 263
    .local p0, "endpoint":Ljava/lang/Comparable;, "TC;"
    invoke-static {p0}, Lcom/google/common/collect/Cut;->aboveValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v0

    invoke-static {}, Lcom/google/common/collect/Cut;->aboveAll()Lcom/google/common/collect/Cut;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method public static lessThan(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(TC;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "endpoint":Ljava/lang/Comparable;, "TC;"
    invoke-static {}, Lcom/google/common/collect/Cut;->belowAll()Lcom/google/common/collect/Cut;

    move-result-object v0

    invoke-static {p0}, Lcom/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method static lowerBoundFn()Lcom/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>()",
            "Lcom/google/common/base/Function",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;",
            "Lcom/google/common/collect/Cut",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 142
    sget-object v0, Lcom/google/common/collect/Range$LowerBoundFn;->INSTANCE:Lcom/google/common/collect/Range$LowerBoundFn;

    return-object v0
.end method

.method public static open(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(TC;TC;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "lower":Ljava/lang/Comparable;, "TC;"
    .local p1, "upper":Ljava/lang/Comparable;, "TC;"
    invoke-static {p0}, Lcom/google/common/collect/Cut;->aboveValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method public static openClosed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(TC;TC;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "lower":Ljava/lang/Comparable;, "TC;"
    .local p1, "upper":Ljava/lang/Comparable;, "TC;"
    invoke-static {p0}, Lcom/google/common/collect/Cut;->aboveValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/collect/Cut;->aboveValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method public static range(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;
    .locals 3
    .param p1, "lowerType"    # Lcom/google/common/collect/BoundType;
    .param p3, "upperType"    # Lcom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(TC;",
            "Lcom/google/common/collect/BoundType;",
            "TC;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "lower":Ljava/lang/Comparable;, "TC;"
    .local p2, "upper":Ljava/lang/Comparable;, "TC;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v2, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne p1, v2, :cond_0

    .line 216
    invoke-static {p0}, Lcom/google/common/collect/Cut;->aboveValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v0

    .line 217
    .local v0, "lowerBound":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    :goto_0
    sget-object v2, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne p3, v2, :cond_1

    .line 218
    invoke-static {p2}, Lcom/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v1

    .line 219
    .local v1, "upperBound":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    :goto_1
    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v2

    return-object v2

    .line 216
    .end local v0    # "lowerBound":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    .end local v1    # "upperBound":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v0

    goto :goto_0

    .line 218
    .restart local v0    # "lowerBound":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    :cond_1
    invoke-static {p2}, Lcom/google/common/collect/Cut;->aboveValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v1

    goto :goto_1
.end method

.method static rangeLexOrdering()Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>()",
            "Lcom/google/common/collect/Ordering",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 151
    sget-object v0, Lcom/google/common/collect/Range$RangeLexOrdering;->INSTANCE:Lcom/google/common/collect/Ordering;

    return-object v0
.end method

.method public static singleton(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(TC;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 311
    .local p0, "value":Ljava/lang/Comparable;, "TC;"
    invoke-static {p0, p0}, Lcom/google/common/collect/Range;->closed(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method private static toString(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Cut",
            "<*>;",
            "Lcom/google/common/collect/Cut",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 644
    .local p0, "lowerBound":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<*>;"
    .local p1, "upperBound":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 645
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/google/common/collect/Cut;->describeAsLowerBound(Ljava/lang/StringBuilder;)V

    .line 646
    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    invoke-virtual {p1, v0}, Lcom/google/common/collect/Cut;->describeAsUpperBound(Ljava/lang/StringBuilder;)V

    .line 648
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static upTo(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;
    .locals 2
    .param p1, "boundType"    # Lcom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(TC;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 247
    .local p0, "endpoint":Ljava/lang/Comparable;, "TC;"
    sget-object v0, Lcom/google/common/collect/Range$1;->$SwitchMap$com$google$common$collect$BoundType:[I

    invoke-virtual {p1}, Lcom/google/common/collect/BoundType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 253
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 249
    :pswitch_0
    invoke-static {p0}, Lcom/google/common/collect/Range;->lessThan(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    .line 251
    :goto_0
    return-object v0

    :pswitch_1
    invoke-static {p0}, Lcom/google/common/collect/Range;->atMost(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    goto :goto_0

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static upperBoundFn()Lcom/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>()",
            "Lcom/google/common/base/Function",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;",
            "Lcom/google/common/collect/Cut",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 147
    sget-object v0, Lcom/google/common/collect/Range$UpperBoundFn;->INSTANCE:Lcom/google/common/collect/Range$UpperBoundFn;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 439
    .local p0, "this":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    .local p1, "input":Ljava/lang/Comparable;, "TC;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Range;->apply(Ljava/lang/Comparable;)Z

    move-result v0

    return v0
.end method

.method public canonical(Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 606
    .local p0, "this":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    .local p1, "domain":Lcom/google/common/collect/DiscreteDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    iget-object v2, p0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/Cut;->canonical(Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/Cut;

    move-result-object v0

    .line 608
    .local v0, "lower":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    iget-object v2, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/Cut;->canonical(Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/Cut;

    move-result-object v1

    .line 609
    .local v1, "upper":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    iget-object v2, p0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    if-ne v1, v2, :cond_0

    .end local p0    # "this":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :cond_0
    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object p0

    goto :goto_0
.end method

.method public contains(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .prologue
    .line 427
    .local p0, "this":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TC;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget-object v0, p0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsAll(Ljava/lang/Iterable;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TC;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TC;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 447
    invoke-static {p1}, Lcom/google/common/collect/Iterables;->isEmpty(Ljava/lang/Iterable;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 465
    :cond_0
    :goto_0
    return v4

    .line 452
    :cond_1
    instance-of v3, p1, Ljava/util/SortedSet;

    if-eqz v3, :cond_4

    .line 453
    invoke-static {p1}, Lcom/google/common/collect/Range;->cast(Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object v1

    .line 454
    .local v1, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<+TC;>;"
    invoke-interface {v1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 455
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v0, :cond_4

    .line 456
    :cond_2
    invoke-interface {v1}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    invoke-virtual {p0, v3}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    invoke-virtual {p0, v3}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_3
    move v3, v5

    goto :goto_1

    .line 460
    .end local v0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    .end local v1    # "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<+TC;>;"
    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    .line 461
    .local v2, "value":Ljava/lang/Comparable;, "TC;"
    invoke-virtual {p0, v2}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v6

    if-nez v6, :cond_5

    move v4, v5

    .line 462
    goto :goto_0
.end method

.method public encloses(Lcom/google/common/collect/Range;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)Z"
        }
    .end annotation

    .prologue
    .line 492
    .local p0, "this":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    .local p1, "other":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    iget-object v1, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    iget-object v1, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    .line 493
    invoke-virtual {v0, v1}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    .line 492
    :goto_0
    return v0

    .line 493
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    const/4 v1, 0x0

    .line 621
    instance-of v2, p1, Lcom/google/common/collect/Range;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 622
    check-cast v0, Lcom/google/common/collect/Range;

    .line 623
    .local v0, "other":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<*>;"
    iget-object v2, p0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    iget-object v3, v0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/Cut;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    iget-object v3, v0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/Cut;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 625
    .end local v0    # "other":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<*>;"
    :cond_0
    return v1
.end method

.method public hasLowerBound()Z
    .locals 2

    .prologue
    .line 358
    .local p0, "this":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-static {}, Lcom/google/common/collect/Cut;->belowAll()Lcom/google/common/collect/Cut;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUpperBound()Z
    .locals 2

    .prologue
    .line 384
    .local p0, "this":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-static {}, Lcom/google/common/collect/Cut;->aboveAll()Lcom/google/common/collect/Cut;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 631
    .local p0, "this":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v0}, Lcom/google/common/collect/Cut;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v1}, Lcom/google/common/collect/Cut;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 543
    .local p0, "this":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    .local p1, "connectedRange":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    iget-object v4, p0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    iget-object v5, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v4, v5}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v0

    .line 544
    .local v0, "lowerCmp":I
    iget-object v4, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    iget-object v5, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v4, v5}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v3

    .line 545
    .local v3, "upperCmp":I
    if-ltz v0, :cond_0

    if-gtz v3, :cond_0

    .line 552
    .end local p0    # "this":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :goto_0
    return-object p0

    .line 547
    .restart local p0    # "this":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :cond_0
    if-gtz v0, :cond_1

    if-ltz v3, :cond_1

    move-object p0, p1

    .line 548
    goto :goto_0

    .line 550
    :cond_1
    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    .line 551
    .local v1, "newLower":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    :goto_1
    if-gtz v3, :cond_3

    iget-object v2, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    .line 552
    .local v2, "newUpper":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    :goto_2
    invoke-static {v1, v2}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object p0

    goto :goto_0

    .line 550
    .end local v1    # "newLower":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    .end local v2    # "newUpper":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    :cond_2
    iget-object v1, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    goto :goto_1

    .line 551
    .restart local v1    # "newLower":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    :cond_3
    iget-object v2, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    goto :goto_2
.end method

.method public isConnected(Lcom/google/common/collect/Range;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)Z"
        }
    .end annotation

    .prologue
    .line 522
    .local p0, "this":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    .local p1, "other":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    iget-object v1, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    iget-object v1, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    .line 523
    invoke-virtual {v0, v1}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    .line 522
    :goto_0
    return v0

    .line 523
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 418
    .local p0, "this":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    iget-object v1, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Cut;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public lowerBoundType()Lcom/google/common/collect/BoundType;
    .locals 1

    .prologue
    .line 379
    .local p0, "this":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v0}, Lcom/google/common/collect/Cut;->typeAsLowerBound()Lcom/google/common/collect/BoundType;

    move-result-object v0

    return-object v0
.end method

.method public lowerEndpoint()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 368
    .local p0, "this":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v0}, Lcom/google/common/collect/Cut;->endpoint()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 657
    .local p0, "this":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    sget-object v0, Lcom/google/common/collect/Range;->ALL:Lcom/google/common/collect/Range;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object p0

    .line 660
    .end local p0    # "this":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :cond_0
    return-object p0
.end method

.method public span(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 568
    .local p0, "this":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    .local p1, "other":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    iget-object v4, p0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    iget-object v5, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v4, v5}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v0

    .line 569
    .local v0, "lowerCmp":I
    iget-object v4, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    iget-object v5, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v4, v5}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v3

    .line 570
    .local v3, "upperCmp":I
    if-gtz v0, :cond_0

    if-ltz v3, :cond_0

    .line 577
    .end local p0    # "this":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :goto_0
    return-object p0

    .line 572
    .restart local p0    # "this":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :cond_0
    if-ltz v0, :cond_1

    if-gtz v3, :cond_1

    move-object p0, p1

    .line 573
    goto :goto_0

    .line 575
    :cond_1
    if-gtz v0, :cond_2

    iget-object v1, p0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    .line 576
    .local v1, "newLower":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    :goto_1
    if-ltz v3, :cond_3

    iget-object v2, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    .line 577
    .local v2, "newUpper":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    :goto_2
    invoke-static {v1, v2}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object p0

    goto :goto_0

    .line 575
    .end local v1    # "newLower":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    .end local v2    # "newUpper":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    :cond_2
    iget-object v1, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    goto :goto_1

    .line 576
    .restart local v1    # "newLower":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    :cond_3
    iget-object v2, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 640
    .local p0, "this":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    iget-object v1, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->toString(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public upperBoundType()Lcom/google/common/collect/BoundType;
    .locals 1

    .prologue
    .line 405
    .local p0, "this":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v0}, Lcom/google/common/collect/Cut;->typeAsUpperBound()Lcom/google/common/collect/BoundType;

    move-result-object v0

    return-object v0
.end method

.method public upperEndpoint()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 394
    .local p0, "this":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v0}, Lcom/google/common/collect/Cut;->endpoint()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method
