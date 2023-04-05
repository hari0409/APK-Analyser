.class public Lcom/google/common/collect/ImmutableRangeMap;
.super Ljava/lang/Object;
.source "ImmutableRangeMap.java"

# interfaces
.implements Lcom/google/common/collect/RangeMap;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableRangeMap$SerializedForm;,
        Lcom/google/common/collect/ImmutableRangeMap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable",
        "<*>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/RangeMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final EMPTY:Lcom/google/common/collect/ImmutableRangeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableRangeMap",
            "<",
            "Ljava/lang/Comparable",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private final transient ranges:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/collect/Range",
            "<TK;>;>;"
        }
    .end annotation
.end field

.field private final transient values:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Lcom/google/common/collect/ImmutableRangeMap;

    .line 46
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ImmutableRangeMap;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V

    sput-object v0, Lcom/google/common/collect/ImmutableRangeMap;->EMPTY:Lcom/google/common/collect/ImmutableRangeMap;

    .line 45
    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/collect/Range",
            "<TK;>;>;",
            "Lcom/google/common/collect/ImmutableList",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeMap;, "Lcom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    .local p1, "ranges":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/common/collect/Range<TK;>;>;"
    .local p2, "values":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeMap;->ranges:Lcom/google/common/collect/ImmutableList;

    .line 146
    iput-object p2, p0, Lcom/google/common/collect/ImmutableRangeMap;->values:Lcom/google/common/collect/ImmutableList;

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/ImmutableRangeMap;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/ImmutableRangeMap;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap;->ranges:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public static builder()Lcom/google/common/collect/ImmutableRangeMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable",
            "<*>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableRangeMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lcom/google/common/collect/ImmutableRangeMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableRangeMap$Builder;-><init>()V

    return-object v0
.end method

.method public static copyOf(Lcom/google/common/collect/RangeMap;)Lcom/google/common/collect/ImmutableRangeMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable",
            "<*>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/RangeMap",
            "<TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableRangeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "rangeMap":Lcom/google/common/collect/RangeMap;, "Lcom/google/common/collect/RangeMap<TK;+TV;>;"
    instance-of v4, p0, Lcom/google/common/collect/ImmutableRangeMap;

    if-eqz v4, :cond_0

    .line 63
    check-cast p0, Lcom/google/common/collect/ImmutableRangeMap;

    .line 72
    .end local p0    # "rangeMap":Lcom/google/common/collect/RangeMap;, "Lcom/google/common/collect/RangeMap<TK;+TV;>;"
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/common/collect/Range<TK;>;+TV;>;"
    .local v2, "rangesBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/common/collect/Range<TK;>;>;"
    .local v3, "valuesBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<TV;>;"
    :goto_0
    return-object p0

    .line 65
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/common/collect/Range<TK;>;+TV;>;"
    .end local v2    # "rangesBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/common/collect/Range<TK;>;>;"
    .end local v3    # "valuesBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<TV;>;"
    .restart local p0    # "rangeMap":Lcom/google/common/collect/RangeMap;, "Lcom/google/common/collect/RangeMap<TK;+TV;>;"
    :cond_0
    invoke-interface {p0}, Lcom/google/common/collect/RangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object v1

    .line 66
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/common/collect/Range<TK;>;+TV;>;"
    new-instance v2, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v2, v4}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 67
    .restart local v2    # "rangesBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/common/collect/Range<TK;>;>;"
    new-instance v3, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 68
    .restart local v3    # "valuesBuilder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<TV;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 69
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Range<TK;>;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 70
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1

    .line 72
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Range<TK;>;+TV;>;"
    :cond_1
    new-instance p0, Lcom/google/common/collect/ImmutableRangeMap;

    .end local p0    # "rangeMap":Lcom/google/common/collect/RangeMap;, "Lcom/google/common/collect/RangeMap<TK;+TV;>;"
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/google/common/collect/ImmutableRangeMap;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V

    goto :goto_0
.end method

.method public static of()Lcom/google/common/collect/ImmutableRangeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable",
            "<*>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableRangeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 51
    sget-object v0, Lcom/google/common/collect/ImmutableRangeMap;->EMPTY:Lcom/google/common/collect/ImmutableRangeMap;

    return-object v0
.end method

.method public static of(Lcom/google/common/collect/Range;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableRangeMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable",
            "<*>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;)",
            "Lcom/google/common/collect/ImmutableRangeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TK;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lcom/google/common/collect/ImmutableRangeMap;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ImmutableRangeMap;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method


# virtual methods
.method public asDescendingMapOfRanges()Lcom/google/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;>;"
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeMap;, "Lcom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeMap;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    .line 272
    :goto_0
    return-object v1

    .line 270
    :cond_0
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedSet;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeMap;->ranges:Lcom/google/common/collect/ImmutableList;

    .line 271
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->reverse()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/Range;->rangeLexOrdering()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    .line 272
    .local v0, "rangeSet":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<Lcom/google/common/collect/Range<TK;>;>;"
    new-instance v1, Lcom/google/common/collect/ImmutableSortedMap;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableRangeMap;->values:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->reverse()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/common/collect/ImmutableSortedMap;-><init>(Lcom/google/common/collect/RegularImmutableSortedSet;Lcom/google/common/collect/ImmutableList;)V

    goto :goto_0
.end method

.method public bridge synthetic asDescendingMapOfRanges()Ljava/util/Map;
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeMap;, "Lcom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeMap;->asDescendingMapOfRanges()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public asMapOfRanges()Lcom/google/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;>;"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeMap;, "Lcom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeMap;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    .line 262
    :goto_0
    return-object v1

    .line 260
    :cond_0
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedSet;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeMap;->ranges:Lcom/google/common/collect/ImmutableList;

    .line 261
    invoke-static {}, Lcom/google/common/collect/Range;->rangeLexOrdering()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    .line 262
    .local v0, "rangeSet":Lcom/google/common/collect/RegularImmutableSortedSet;, "Lcom/google/common/collect/RegularImmutableSortedSet<Lcom/google/common/collect/Range<TK;>;>;"
    new-instance v1, Lcom/google/common/collect/ImmutableSortedMap;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableRangeMap;->values:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v1, v0, v2}, Lcom/google/common/collect/ImmutableSortedMap;-><init>(Lcom/google/common/collect/RegularImmutableSortedSet;Lcom/google/common/collect/ImmutableList;)V

    goto :goto_0
.end method

.method public bridge synthetic asMapOfRanges()Ljava/util/Map;
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeMap;, "Lcom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeMap;->asMapOfRanges()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 240
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeMap;, "Lcom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    .line 343
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeMap;, "Lcom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    instance-of v1, p1, Lcom/google/common/collect/RangeMap;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 344
    check-cast v0, Lcom/google/common/collect/RangeMap;

    .line 345
    .local v0, "rangeMap":Lcom/google/common/collect/RangeMap;, "Lcom/google/common/collect/RangeMap<**>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeMap;->asMapOfRanges()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/RangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 347
    .end local v0    # "rangeMap":Lcom/google/common/collect/RangeMap;, "Lcom/google/common/collect/RangeMap<**>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Comparable;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeMap;, "Lcom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Comparable;, "TK;"
    const/4 v2, 0x0

    .line 152
    iget-object v3, p0, Lcom/google/common/collect/ImmutableRangeMap;->ranges:Lcom/google/common/collect/ImmutableList;

    .line 155
    invoke-static {}, Lcom/google/common/collect/Range;->lowerBoundFn()Lcom/google/common/base/Function;

    move-result-object v4

    .line 156
    invoke-static {p1}, Lcom/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v5

    sget-object v6, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v7, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_LOWER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 153
    invoke-static {v3, v4, v5, v6, v7}, Lcom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Comparable;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    .line 159
    .local v0, "index":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-object v2

    .line 162
    :cond_1
    iget-object v3, p0, Lcom/google/common/collect/ImmutableRangeMap;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    .line 163
    .local v1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TK;>;"
    invoke-virtual {v1, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/ImmutableRangeMap;->values:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public getEntry(Ljava/lang/Comparable;)Ljava/util/Map$Entry;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeMap;, "Lcom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Comparable;, "TK;"
    const/4 v2, 0x0

    .line 170
    iget-object v3, p0, Lcom/google/common/collect/ImmutableRangeMap;->ranges:Lcom/google/common/collect/ImmutableList;

    .line 173
    invoke-static {}, Lcom/google/common/collect/Range;->lowerBoundFn()Lcom/google/common/base/Function;

    move-result-object v4

    .line 174
    invoke-static {p1}, Lcom/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v5

    sget-object v6, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v7, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_LOWER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 171
    invoke-static {v3, v4, v5, v6, v7}, Lcom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Comparable;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    .line 177
    .local v0, "index":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-object v2

    .line 180
    :cond_1
    iget-object v3, p0, Lcom/google/common/collect/ImmutableRangeMap;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    .line 181
    .local v1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TK;>;"
    invoke-virtual {v1, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/ImmutableRangeMap;->values:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 338
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeMap;, "Lcom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeMap;->asMapOfRanges()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public put(Lcom/google/common/collect/Range;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 204
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeMap;, "Lcom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    .local p1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TK;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Lcom/google/common/collect/RangeMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 228
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeMap;, "Lcom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    .local p1, "rangeMap":Lcom/google/common/collect/RangeMap;, "Lcom/google/common/collect/RangeMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putCoalescing(Lcom/google/common/collect/Range;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 216
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeMap;, "Lcom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    .local p1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TK;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Lcom/google/common/collect/Range;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TK;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 252
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeMap;, "Lcom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    .local p1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TK;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public span()Lcom/google/common/collect/Range;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Range",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeMap;, "Lcom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    iget-object v2, p0, Lcom/google/common/collect/ImmutableRangeMap;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 190
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/ImmutableRangeMap;->ranges:Lcom/google/common/collect/ImmutableList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 191
    .local v0, "firstRange":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TK;>;"
    iget-object v2, p0, Lcom/google/common/collect/ImmutableRangeMap;->ranges:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p0, Lcom/google/common/collect/ImmutableRangeMap;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    .line 192
    .local v1, "lastRange":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TK;>;"
    iget-object v2, v0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    iget-object v3, v1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-static {v2, v3}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v2

    return-object v2
.end method

.method public subRangeMap(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TK;>;)",
            "Lcom/google/common/collect/ImmutableRangeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 277
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeMap;, "Lcom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    .local p1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TK;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeMap;->of()Lcom/google/common/collect/ImmutableRangeMap;

    move-result-object v0

    .line 324
    :goto_0
    return-object v0

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeMap;->span()Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move-object v0, p0

    .line 280
    goto :goto_0

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap;->ranges:Lcom/google/common/collect/ImmutableList;

    .line 285
    invoke-static {}, Lcom/google/common/collect/Range;->upperBoundFn()Lcom/google/common/base/Function;

    move-result-object v1

    iget-object v3, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    sget-object v4, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->FIRST_AFTER:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v10, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 283
    invoke-static {v0, v1, v3, v4, v10}, Lcom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Comparable;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v7

    .line 289
    .local v7, "lowerIndex":I
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap;->ranges:Lcom/google/common/collect/ImmutableList;

    .line 292
    invoke-static {}, Lcom/google/common/collect/Range;->lowerBoundFn()Lcom/google/common/base/Function;

    move-result-object v1

    iget-object v3, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    sget-object v4, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v10, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 290
    invoke-static {v0, v1, v3, v4, v10}, Lcom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Comparable;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v9

    .line 296
    .local v9, "upperIndex":I
    if-lt v7, v9, :cond_3

    .line 297
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeMap;->of()Lcom/google/common/collect/ImmutableRangeMap;

    move-result-object v0

    goto :goto_0

    .line 299
    :cond_3
    move v8, v7

    .line 300
    .local v8, "off":I
    sub-int v6, v9, v7

    .line 301
    .local v6, "len":I
    new-instance v2, Lcom/google/common/collect/ImmutableRangeMap$1;

    invoke-direct {v2, p0, v6, v8, p1}, Lcom/google/common/collect/ImmutableRangeMap$1;-><init>(Lcom/google/common/collect/ImmutableRangeMap;IILcom/google/common/collect/Range;)V

    .line 323
    .local v2, "subRanges":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/common/collect/Range<TK;>;>;"
    move-object v5, p0

    .line 324
    .local v5, "outer":Lcom/google/common/collect/ImmutableRangeMap;, "Lcom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableRangeMap$2;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeMap;->values:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v7, v9}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/common/collect/ImmutableRangeMap$2;-><init>(Lcom/google/common/collect/ImmutableRangeMap;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/Range;Lcom/google/common/collect/ImmutableRangeMap;)V

    goto :goto_0
.end method

.method public bridge synthetic subRangeMap(Lcom/google/common/collect/Range;)Lcom/google/common/collect/RangeMap;
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeMap;, "Lcom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableRangeMap;->subRangeMap(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeMap;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeMap;, "Lcom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeMap;->asMapOfRanges()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 387
    .local p0, "this":Lcom/google/common/collect/ImmutableRangeMap;, "Lcom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableRangeMap$SerializedForm;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeMap;->asMapOfRanges()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableRangeMap$SerializedForm;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-object v0
.end method
