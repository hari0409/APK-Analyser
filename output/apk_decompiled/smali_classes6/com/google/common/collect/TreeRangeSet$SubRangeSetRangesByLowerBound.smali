.class final Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;
.super Lcom/google/common/collect/AbstractNavigableMap;
.source "TreeRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubRangeSetRangesByLowerBound"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable",
        "<*>;>",
        "Lcom/google/common/collect/AbstractNavigableMap",
        "<",
        "Lcom/google/common/collect/Cut",
        "<TC;>;",
        "Lcom/google/common/collect/Range",
        "<TC;>;>;"
    }
.end annotation


# instance fields
.field private final lowerBoundWindow:Lcom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Range",
            "<",
            "Lcom/google/common/collect/Cut",
            "<TC;>;>;"
        }
    .end annotation
.end field

.field private final rangesByLowerBound:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap",
            "<",
            "Lcom/google/common/collect/Cut",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation
.end field

.field private final rangesByUpperBound:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap",
            "<",
            "Lcom/google/common/collect/Cut",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation
.end field

.field private final restriction:Lcom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;Ljava/util/NavigableMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<",
            "Lcom/google/common/collect/Cut",
            "<TC;>;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;",
            "Ljava/util/NavigableMap",
            "<",
            "Lcom/google/common/collect/Cut",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;)V"
        }
    .end annotation

    .prologue
    .line 697
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    .local p1, "lowerBoundWindow":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<Lcom/google/common/collect/Cut<TC;>;>;"
    .local p2, "restriction":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    .local p3, "rangesByLowerBound":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Lcom/google/common/collect/Cut<TC;>;Lcom/google/common/collect/Range<TC;>;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractNavigableMap;-><init>()V

    .line 698
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lcom/google/common/collect/Range;

    .line 699
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lcom/google/common/collect/Range;

    .line 700
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 701
    new-instance v0, Lcom/google/common/collect/TreeRangeSet$RangesByUpperBound;

    invoke-direct {v0, p3}, Lcom/google/common/collect/TreeRangeSet$RangesByUpperBound;-><init>(Ljava/util/NavigableMap;)V

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->rangesByUpperBound:Ljava/util/NavigableMap;

    .line 702
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;Ljava/util/NavigableMap;Lcom/google/common/collect/TreeRangeSet$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/collect/Range;
    .param p2, "x1"    # Lcom/google/common/collect/Range;
    .param p3, "x2"    # Ljava/util/NavigableMap;
    .param p4, "x3"    # Lcom/google/common/collect/TreeRangeSet$1;

    .prologue
    .line 677
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;-><init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;Ljava/util/NavigableMap;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;)Lcom/google/common/collect/Range;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;

    .prologue
    .line 677
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lcom/google/common/collect/Range;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;)Lcom/google/common/collect/Range;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;

    .prologue
    .line 677
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lcom/google/common/collect/Range;

    return-object v0
.end method

.method private subMap(Lcom/google/common/collect/Range;)Ljava/util/NavigableMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<",
            "Lcom/google/common/collect/Cut",
            "<TC;>;>;)",
            "Ljava/util/NavigableMap",
            "<",
            "Lcom/google/common/collect/Cut",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 705
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    .local p1, "window":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<Lcom/google/common/collect/Cut<TC;>;>;"
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lcom/google/common/collect/Range;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 706
    invoke-static {}, Lcom/google/common/collect/ImmutableSortedMap;->of()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    .line 708
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lcom/google/common/collect/Range;

    .line 709
    invoke-virtual {v1, p1}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lcom/google/common/collect/Range;

    iget-object v3, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;-><init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;Ljava/util/NavigableMap;)V

    goto :goto_0
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-",
            "Lcom/google/common/collect/Cut",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 736
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    .line 741
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->get(Ljava/lang/Object;)Lcom/google/common/collect/Range;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method descendingEntryIterator()Ljava/util/Iterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/google/common/collect/Cut",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;>;"
        }
    .end annotation

    .prologue
    .line 818
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lcom/google/common/collect/Range;

    invoke-virtual {v2}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 819
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    .line 832
    :goto_0
    return-object v2

    .line 822
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lcom/google/common/collect/Range;

    iget-object v3, v3, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    iget-object v4, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lcom/google/common/collect/Range;

    iget-object v4, v4, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    .line 823
    invoke-static {v4}, Lcom/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/common/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Cut;

    .line 824
    .local v1, "upperBoundOnLowerBounds":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<Lcom/google/common/collect/Cut<TC;>;>;"
    iget-object v3, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 827
    invoke-virtual {v1}, Lcom/google/common/collect/Cut;->endpoint()Ljava/lang/Comparable;

    move-result-object v4

    .line 828
    invoke-virtual {v1}, Lcom/google/common/collect/Cut;->typeAsUpperBound()Lcom/google/common/collect/BoundType;

    move-result-object v2

    sget-object v5, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne v2, v5, :cond_1

    const/4 v2, 0x1

    .line 826
    :goto_1
    invoke-interface {v3, v4, v2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v2

    .line 829
    invoke-interface {v2}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v2

    .line 830
    invoke-interface {v2}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 831
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 832
    .local v0, "completeRangeItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/collect/Range<TC;>;>;"
    new-instance v2, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound$2;

    invoke-direct {v2, p0, v0}, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound$2;-><init>(Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;Ljava/util/Iterator;)V

    goto :goto_0

    .line 828
    .end local v0    # "completeRangeItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/collect/Range<TC;>;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/google/common/collect/Cut",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    const/4 v2, 0x0

    .line 776
    iget-object v3, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lcom/google/common/collect/Range;

    invoke-virtual {v3}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 777
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    .line 799
    :goto_0
    return-object v2

    .line 780
    :cond_0
    iget-object v3, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lcom/google/common/collect/Range;

    iget-object v3, v3, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    iget-object v4, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lcom/google/common/collect/Range;

    iget-object v4, v4, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v3, v4}, Lcom/google/common/collect/Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 781
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    goto :goto_0

    .line 782
    :cond_1
    iget-object v3, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lcom/google/common/collect/Range;

    iget-object v3, v3, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    iget-object v4, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lcom/google/common/collect/Range;

    iget-object v4, v4, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v3, v4}, Lcom/google/common/collect/Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 784
    iget-object v3, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->rangesByUpperBound:Ljava/util/NavigableMap;

    iget-object v4, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lcom/google/common/collect/Range;

    iget-object v4, v4, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    .line 785
    invoke-interface {v3, v4, v2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 797
    .local v0, "completeRangeItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/collect/Range<TC;>;>;"
    :goto_1
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lcom/google/common/collect/Range;

    iget-object v3, v3, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    iget-object v4, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lcom/google/common/collect/Range;

    iget-object v4, v4, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    .line 798
    invoke-static {v4}, Lcom/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/common/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Cut;

    .line 799
    .local v1, "upperBoundOnLowerBounds":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<Lcom/google/common/collect/Cut<TC;>;>;"
    new-instance v2, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound$1;-><init>(Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;Ljava/util/Iterator;Lcom/google/common/collect/Cut;)V

    goto :goto_0

    .line 788
    .end local v0    # "completeRangeItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/collect/Range<TC;>;>;"
    .end local v1    # "upperBoundOnLowerBounds":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<Lcom/google/common/collect/Cut<TC;>;>;"
    :cond_2
    iget-object v3, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v4, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lcom/google/common/collect/Range;

    iget-object v4, v4, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    .line 791
    invoke-virtual {v4}, Lcom/google/common/collect/Cut;->endpoint()Ljava/lang/Comparable;

    move-result-object v4

    iget-object v5, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lcom/google/common/collect/Range;

    .line 792
    invoke-virtual {v5}, Lcom/google/common/collect/Range;->lowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v5

    sget-object v6, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne v5, v6, :cond_3

    const/4 v2, 0x1

    .line 790
    :cond_3
    invoke-interface {v3, v4, v2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v2

    .line 793
    invoke-interface {v2}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 794
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "completeRangeItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/collect/Range<TC;>;>;"
    goto :goto_1
.end method

.method public get(Ljava/lang/Object;)Lcom/google/common/collect/Range;
    .locals 8
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    const/4 v5, 0x0

    .line 747
    instance-of v6, p1, Lcom/google/common/collect/Cut;

    if-eqz v6, :cond_0

    .line 750
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/Cut;

    move-object v2, v0

    .line 751
    .local v2, "cut":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    iget-object v6, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->lowerBoundWindow:Lcom/google/common/collect/Range;

    invoke-virtual {v6, v2}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lcom/google/common/collect/Range;

    iget-object v6, v6, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    .line 752
    invoke-virtual {v2, v6}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v6

    if-ltz v6, :cond_0

    iget-object v6, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lcom/google/common/collect/Range;

    iget-object v6, v6, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    .line 753
    invoke-virtual {v2, v6}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 771
    .end local v2    # "cut":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    :cond_0
    :goto_0
    return-object v5

    .line 755
    .restart local v2    # "cut":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    :cond_1
    iget-object v6, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lcom/google/common/collect/Range;

    iget-object v6, v6, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v2, v6}, Lcom/google/common/collect/Cut;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 757
    iget-object v6, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v6, v2}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/collect/Maps;->valueOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    .line 758
    .local v1, "candidate":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    if-eqz v1, :cond_0

    iget-object v6, v1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    iget-object v7, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lcom/google/common/collect/Range;

    iget-object v7, v7, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v6, v7}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v6

    if-lez v6, :cond_0

    .line 759
    iget-object v6, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lcom/google/common/collect/Range;

    invoke-virtual {v1, v6}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v5

    goto :goto_0

    .line 762
    .end local v1    # "candidate":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :cond_2
    iget-object v6, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v6, v2}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/Range;

    .line 763
    .local v4, "result":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    if-eqz v4, :cond_0

    .line 764
    iget-object v6, p0, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->restriction:Lcom/google/common/collect/Range;

    invoke-virtual {v4, v6}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 767
    .end local v2    # "cut":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    .end local v4    # "result":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :catch_0
    move-exception v3

    .line 768
    .local v3, "e":Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .line 677
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->get(Ljava/lang/Object;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Lcom/google/common/collect/Cut;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Cut",
            "<TC;>;Z)",
            "Ljava/util/NavigableMap",
            "<",
            "Lcom/google/common/collect/Cut",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 726
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    .local p1, "toKey":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/Range;->upTo(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->subMap(Lcom/google/common/collect/Range;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 677
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    check-cast p1, Lcom/google/common/collect/Cut;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->headMap(Lcom/google/common/collect/Cut;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 854
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->size(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

.method public subMap(Lcom/google/common/collect/Cut;ZLcom/google/common/collect/Cut;Z)Ljava/util/NavigableMap;
    .locals 2
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Cut",
            "<TC;>;Z",
            "Lcom/google/common/collect/Cut",
            "<TC;>;Z)",
            "Ljava/util/NavigableMap",
            "<",
            "Lcom/google/common/collect/Cut",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 716
    .line 719
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    .local p1, "fromKey":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    .local p3, "toKey":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object v0

    .line 721
    invoke-static {p4}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object v1

    .line 717
    invoke-static {p1, v0, p3, v1}, Lcom/google/common/collect/Range;->range(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object v0

    .line 716
    invoke-direct {p0, v0}, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->subMap(Lcom/google/common/collect/Range;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 677
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    check-cast p1, Lcom/google/common/collect/Cut;

    check-cast p3, Lcom/google/common/collect/Cut;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->subMap(Lcom/google/common/collect/Cut;ZLcom/google/common/collect/Cut;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Lcom/google/common/collect/Cut;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Cut",
            "<TC;>;Z)",
            "Ljava/util/NavigableMap",
            "<",
            "Lcom/google/common/collect/Cut",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 731
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    .local p1, "fromKey":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->forBoolean(Z)Lcom/google/common/collect/BoundType;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/Range;->downTo(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->subMap(Lcom/google/common/collect/Range;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 677
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;, "Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound<TC;>;"
    check-cast p1, Lcom/google/common/collect/Cut;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TreeRangeSet$SubRangeSetRangesByLowerBound;->tailMap(Lcom/google/common/collect/Cut;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method
