.class public final Lcom/google/common/collect/ImmutableRangeSet;
.super Lcom/google/common/collect/AbstractRangeSet;
.source "ImmutableRangeSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableRangeSet$SerializedForm;,
        Lcom/google/common/collect/ImmutableRangeSet$Builder;,
        Lcom/google/common/collect/ImmutableRangeSet$AsSetSerializedForm;,
        Lcom/google/common/collect/ImmutableRangeSet$AsSet;,
        Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lcom/google/common/collect/AbstractRangeSet",
        "<TC;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final ALL:Lcom/google/common/collect/ImmutableRangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableRangeSet",
            "<",
            "Ljava/lang/Comparable",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final EMPTY:Lcom/google/common/collect/ImmutableRangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableRangeSet",
            "<",
            "Ljava/lang/Comparable",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private transient complement:Lcom/google/common/collect/ImmutableRangeSet;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableRangeSet",
            "<TC;>;"
        }
    .end annotation
.end field

.field private final transient ranges:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet;

    .line 52
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableRangeSet;-><init>(Lcom/google/common/collect/ImmutableList;)V

    sput-object v0, Lcom/google/common/collect/ImmutableRangeSet;->EMPTY:Lcom/google/common/collect/ImmutableRangeSet;

    .line 54
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet;

    .line 55
    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableRangeSet;-><init>(Lcom/google/common/collect/ImmutableList;)V

    sput-object v0, Lcom/google/common/collect/ImmutableRangeSet;->ALL:Lcom/google/common/collect/ImmutableRangeSet;

    .line 54
    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "ranges":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/common/collect/Range<TC;>;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractRangeSet;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    .line 128
    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableRangeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;",
            "Lcom/google/common/collect/ImmutableRangeSet",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "ranges":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/common/collect/Range<TC;>;>;"
    .local p2, "complement":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractRangeSet;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    .line 132
    iput-object p2, p0, Lcom/google/common/collect/ImmutableRangeSet;->complement:Lcom/google/common/collect/ImmutableRangeSet;

    .line 133
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/ImmutableRangeSet;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method static all()Lcom/google/common/collect/ImmutableRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/ImmutableRangeSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 66
    sget-object v0, Lcom/google/common/collect/ImmutableRangeSet;->ALL:Lcom/google/common/collect/ImmutableRangeSet;

    return-object v0
.end method

.method public static builder()Lcom/google/common/collect/ImmutableRangeSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>()",
            "Lcom/google/common/collect/ImmutableRangeSet$Builder",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 695
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableRangeSet$Builder;-><init>()V

    return-object v0
.end method

.method public static copyOf(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/ImmutableRangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(",
            "Lcom/google/common/collect/RangeSet",
            "<TC;>;)",
            "Lcom/google/common/collect/ImmutableRangeSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "rangeSet":Lcom/google/common/collect/RangeSet;, "Lcom/google/common/collect/RangeSet<TC;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-interface {p0}, Lcom/google/common/collect/RangeSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->of()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    .line 99
    :cond_0
    :goto_0
    return-object v0

    .line 89
    :cond_1
    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/google/common/collect/RangeSet;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->all()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_2
    instance-of v1, p0, Lcom/google/common/collect/ImmutableRangeSet;

    if-eqz v1, :cond_3

    move-object v0, p0

    .line 94
    check-cast v0, Lcom/google/common/collect/ImmutableRangeSet;

    .line 95
    .local v0, "immutableRangeSet":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableRangeSet;->isPartialView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    .end local v0    # "immutableRangeSet":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    :cond_3
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet;

    invoke-interface {p0}, Lcom/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableRangeSet;-><init>(Lcom/google/common/collect/ImmutableList;)V

    goto :goto_0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;)",
            "Lcom/google/common/collect/ImmutableRangeSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "ranges":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/common/collect/Range<TC;>;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableRangeSet$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableRangeSet$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableRangeSet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableRangeSet$Builder;->build()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    return-object v0
.end method

.method private intersectRanges(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 407
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    iget-object v3, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 408
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 442
    :goto_0
    return-object v3

    .line 409
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->span()Lcom/google/common/collect/Range;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 410
    iget-object v3, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    goto :goto_0

    .line 414
    :cond_2
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->hasLowerBound()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 415
    iget-object v3, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    .line 418
    invoke-static {}, Lcom/google/common/collect/Range;->upperBoundFn()Lcom/google/common/base/Function;

    move-result-object v4

    iget-object v5, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    sget-object v6, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->FIRST_AFTER:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v7, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 416
    invoke-static {v3, v4, v5, v6, v7}, Lcom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Comparable;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    .line 427
    .local v0, "fromIndex":I
    :goto_1
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 428
    iget-object v3, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    .line 431
    invoke-static {}, Lcom/google/common/collect/Range;->lowerBoundFn()Lcom/google/common/base/Function;

    move-result-object v4

    iget-object v5, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    sget-object v6, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->FIRST_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v7, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 429
    invoke-static {v3, v4, v5, v6, v7}, Lcom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Comparable;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v2

    .line 438
    .local v2, "toIndex":I
    :goto_2
    sub-int v1, v2, v0

    .line 439
    .local v1, "length":I
    if-nez v1, :cond_5

    .line 440
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    goto :goto_0

    .line 423
    .end local v0    # "fromIndex":I
    .end local v1    # "length":I
    .end local v2    # "toIndex":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "fromIndex":I
    goto :goto_1

    .line 436
    :cond_4
    iget-object v3, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    .restart local v2    # "toIndex":I
    goto :goto_2

    .line 442
    .restart local v1    # "length":I
    :cond_5
    new-instance v3, Lcom/google/common/collect/ImmutableRangeSet$1;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/google/common/collect/ImmutableRangeSet$1;-><init>(Lcom/google/common/collect/ImmutableRangeSet;IILcom/google/common/collect/Range;)V

    goto :goto_0
.end method

.method public static of()Lcom/google/common/collect/ImmutableRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/ImmutableRangeSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 60
    sget-object v0, Lcom/google/common/collect/ImmutableRangeSet;->EMPTY:Lcom/google/common/collect/ImmutableRangeSet;

    return-object v0
.end method

.method public static of(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)",
            "Lcom/google/common/collect/ImmutableRangeSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {p0}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->of()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    .line 77
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->all()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_1
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableRangeSet;-><init>(Lcom/google/common/collect/ImmutableList;)V

    goto :goto_0
.end method

.method public static unionOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;)",
            "Lcom/google/common/collect/ImmutableRangeSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "ranges":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/common/collect/Range<TC;>;>;"
    invoke-static {p0}, Lcom/google/common/collect/TreeRangeSet;->create(Ljava/lang/Iterable;)Lcom/google/common/collect/TreeRangeSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableRangeSet;->copyOf(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Lcom/google/common/collect/Range;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 209
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Lcom/google/common/collect/RangeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeSet",
            "<TC;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 221
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "other":Lcom/google/common/collect/RangeSet;, "Lcom/google/common/collect/RangeSet<TC;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 233
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "other":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/common/collect/Range<TC;>;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public asDescendingSetOfRanges()Lcom/google/common/collect/ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 282
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 285
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedSet;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->reverse()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/Range;->rangeLexOrdering()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public bridge synthetic asDescendingSetOfRanges()Ljava/util/Set;
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->asDescendingSetOfRanges()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public asRanges()Lcom/google/common/collect/ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 277
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedSet;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-static {}, Lcom/google/common/collect/Range;->rangeLexOrdering()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public bridge synthetic asRanges()Ljava/util/Set;
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->asRanges()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public asSet(Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 500
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "domain":Lcom/google/common/collect/DiscreteDomain;, "Lcom/google/common/collect/DiscreteDomain<TC;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 502
    invoke-static {}, Lcom/google/common/collect/ImmutableSortedSet;->of()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v2

    .line 519
    :goto_0
    return-object v2

    .line 504
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->span()Lcom/google/common/collect/Range;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/common/collect/Range;->canonical(Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/Range;

    move-result-object v1

    .line 505
    .local v1, "span":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    invoke-virtual {v1}, Lcom/google/common/collect/Range;->hasLowerBound()Z

    move-result v2

    if-nez v2, :cond_1

    .line 508
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Neither the DiscreteDomain nor this range set are bounded below"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 510
    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v2

    if-nez v2, :cond_2

    .line 512
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/collect/DiscreteDomain;->maxValue()Ljava/lang/Comparable;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :cond_2
    new-instance v2, Lcom/google/common/collect/ImmutableRangeSet$AsSet;

    invoke-direct {v2, p0, p1}, Lcom/google/common/collect/ImmutableRangeSet$AsSet;-><init>(Lcom/google/common/collect/ImmutableRangeSet;Lcom/google/common/collect/DiscreteDomain;)V

    goto :goto_0

    .line 513
    :catch_0
    move-exception v0

    .line 514
    .local v0, "e":Ljava/util/NoSuchElementException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Neither the DiscreteDomain nor this range set are bounded above"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 46
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    invoke-super {p0}, Lcom/google/common/collect/AbstractRangeSet;->clear()V

    return-void
.end method

.method public complement()Lcom/google/common/collect/ImmutableRangeSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableRangeSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 347
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->complement:Lcom/google/common/collect/ImmutableRangeSet;

    .line 348
    .local v1, "result":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    if-eqz v1, :cond_0

    move-object v2, v1

    .end local v1    # "result":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    .local v2, "result":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    move-object v3, v1

    .line 358
    :goto_0
    return-object v3

    .line 350
    .end local v2    # "result":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    .restart local v1    # "result":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    :cond_0
    iget-object v3, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 351
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->all()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object v3

    iput-object v3, p0, Lcom/google/common/collect/ImmutableRangeSet;->complement:Lcom/google/common/collect/ImmutableRangeSet;

    move-object v2, v1

    .end local v1    # "result":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    .restart local v2    # "result":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    goto :goto_0

    .line 352
    .end local v2    # "result":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    .restart local v1    # "result":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    :cond_1
    iget-object v3, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/Range;

    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 353
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->of()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object v3

    iput-object v3, p0, Lcom/google/common/collect/ImmutableRangeSet;->complement:Lcom/google/common/collect/ImmutableRangeSet;

    move-object v2, v1

    .end local v1    # "result":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    .restart local v2    # "result":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    goto :goto_0

    .line 355
    .end local v2    # "result":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    .restart local v1    # "result":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    :cond_2
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableRangeSet$ComplementRanges;-><init>(Lcom/google/common/collect/ImmutableRangeSet;)V

    .line 356
    .local v0, "complementRanges":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/common/collect/Range<TC;>;>;"
    new-instance v1, Lcom/google/common/collect/ImmutableRangeSet;

    .end local v1    # "result":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    invoke-direct {v1, v0, p0}, Lcom/google/common/collect/ImmutableRangeSet;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableRangeSet;)V

    iput-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->complement:Lcom/google/common/collect/ImmutableRangeSet;

    .restart local v1    # "result":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    move-object v2, v1

    .end local v1    # "result":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    .restart local v2    # "result":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    move-object v3, v1

    .line 358
    goto :goto_0
.end method

.method public bridge synthetic complement()Lcom/google/common/collect/RangeSet;
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->complement()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic contains(Ljava/lang/Comparable;)Z
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractRangeSet;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    return v0
.end method

.method public difference(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/ImmutableRangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeSet",
            "<TC;>;)",
            "Lcom/google/common/collect/ImmutableRangeSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 397
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "other":Lcom/google/common/collect/RangeSet;, "Lcom/google/common/collect/RangeSet<TC;>;"
    invoke-static {p0}, Lcom/google/common/collect/TreeRangeSet;->create(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/TreeRangeSet;

    move-result-object v0

    .line 398
    .local v0, "copy":Lcom/google/common/collect/RangeSet;, "Lcom/google/common/collect/RangeSet<TC;>;"
    invoke-interface {v0, p1}, Lcom/google/common/collect/RangeSet;->removeAll(Lcom/google/common/collect/RangeSet;)V

    .line 399
    invoke-static {v0}, Lcom/google/common/collect/ImmutableRangeSet;->copyOf(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object v1

    return-object v1
.end method

.method public encloses(Lcom/google/common/collect/Range;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)Z"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "otherRange":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    .line 162
    invoke-static {}, Lcom/google/common/collect/Range;->lowerBoundFn()Lcom/google/common/base/Function;

    move-result-object v1

    iget-object v2, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    .line 164
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v5, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_LOWER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 160
    invoke-static/range {v0 .. v5}, Lcom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v6

    .line 167
    .local v6, "index":I
    const/4 v0, -0x1

    if-eq v6, v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v6}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic enclosesAll(Lcom/google/common/collect/RangeSet;)Z
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractRangeSet;->enclosesAll(Lcom/google/common/collect/RangeSet;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic enclosesAll(Ljava/lang/Iterable;)Z
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractRangeSet;->enclosesAll(Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    .line 46
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractRangeSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public intersection(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/ImmutableRangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeSet",
            "<TC;>;)",
            "Lcom/google/common/collect/ImmutableRangeSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 383
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "other":Lcom/google/common/collect/RangeSet;, "Lcom/google/common/collect/RangeSet<TC;>;"
    invoke-static {p0}, Lcom/google/common/collect/TreeRangeSet;->create(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/TreeRangeSet;

    move-result-object v0

    .line 384
    .local v0, "copy":Lcom/google/common/collect/RangeSet;, "Lcom/google/common/collect/RangeSet<TC;>;"
    invoke-interface {p1}, Lcom/google/common/collect/RangeSet;->complement()Lcom/google/common/collect/RangeSet;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/RangeSet;->removeAll(Lcom/google/common/collect/RangeSet;)V

    .line 385
    invoke-static {v0}, Lcom/google/common/collect/ImmutableRangeSet;->copyOf(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object v1

    return-object v1
.end method

.method public intersects(Lcom/google/common/collect/Range;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "otherRange":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    const/4 v7, 0x1

    .line 139
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    .line 142
    invoke-static {}, Lcom/google/common/collect/Range;->lowerBoundFn()Lcom/google/common/base/Function;

    move-result-object v1

    iget-object v2, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    .line 144
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v5, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 140
    invoke-static/range {v0 .. v5}, Lcom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v6

    .line 147
    .local v6, "ceilingIndex":I
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    .line 148
    invoke-virtual {v0, v6}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    .line 149
    invoke-virtual {v0, v6}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return v7

    :cond_0
    if-lez v6, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    add-int/lit8 v1, v6, -0x1

    .line 153
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    add-int/lit8 v1, v6, -0x1

    .line 154
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v7

    :goto_1
    move v7, v0

    .line 152
    goto :goto_0

    .line 154
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 197
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 690
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public rangeContaining(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TC;"
    const/4 v8, 0x0

    .line 172
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    .line 175
    invoke-static {}, Lcom/google/common/collect/Range;->lowerBoundFn()Lcom/google/common/base/Function;

    move-result-object v1

    .line 176
    invoke-static {p1}, Lcom/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v2

    .line 177
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v5, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_LOWER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 173
    invoke-static/range {v0 .. v5}, Lcom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v6

    .line 180
    .local v6, "index":I
    const/4 v0, -0x1

    if-eq v6, v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v6}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/common/collect/Range;

    .line 182
    .local v7, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    invoke-virtual {v7, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    .end local v7    # "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :goto_0
    return-object v7

    .restart local v7    # "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :cond_0
    move-object v7, v8

    .line 182
    goto :goto_0

    .end local v7    # "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :cond_1
    move-object v7, v8

    .line 184
    goto :goto_0
.end method

.method public remove(Lcom/google/common/collect/Range;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 245
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Lcom/google/common/collect/RangeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeSet",
            "<TC;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 257
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "other":Lcom/google/common/collect/RangeSet;, "Lcom/google/common/collect/RangeSet<TC;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 269
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "other":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/common/collect/Range<TC;>;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public span()Lcom/google/common/collect/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iget-object v1, v0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-static {v1, v0}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method public subRangeSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)",
            "Lcom/google/common/collect/ImmutableRangeSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 469
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 470
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->span()Lcom/google/common/collect/Range;

    move-result-object v0

    .line 471
    .local v0, "span":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    .end local v0    # "span":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    .end local p0    # "this":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    :goto_0
    return-object p0

    .line 473
    .restart local v0    # "span":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    .restart local p0    # "this":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 474
    new-instance v1, Lcom/google/common/collect/ImmutableRangeSet;

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableRangeSet;->intersectRanges(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/common/collect/ImmutableRangeSet;-><init>(Lcom/google/common/collect/ImmutableList;)V

    move-object p0, v1

    goto :goto_0

    .line 477
    .end local v0    # "span":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->of()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object p0

    goto :goto_0
.end method

.method public bridge synthetic subRangeSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/RangeSet;
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableRangeSet;->subRangeSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    return-object v0
.end method

.method public union(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/ImmutableRangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeSet",
            "<TC;>;)",
            "Lcom/google/common/collect/ImmutableRangeSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 370
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    .local p1, "other":Lcom/google/common/collect/RangeSet;, "Lcom/google/common/collect/RangeSet<TC;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->asRanges()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableRangeSet;->unionOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 808
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeSet;, "Lcom/google/common/collect/ImmutableRangeSet<TC;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet$SerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableRangeSet$SerializedForm;-><init>(Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method
