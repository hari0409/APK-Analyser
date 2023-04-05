.class public final Lcom/google/common/collect/Multisets;
.super Ljava/lang/Object;
.source "Multisets.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Multisets$DecreasingCount;,
        Lcom/google/common/collect/Multisets$MultisetIteratorImpl;,
        Lcom/google/common/collect/Multisets$EntrySet;,
        Lcom/google/common/collect/Multisets$ElementSet;,
        Lcom/google/common/collect/Multisets$AbstractEntry;,
        Lcom/google/common/collect/Multisets$FilteredMultiset;,
        Lcom/google/common/collect/Multisets$ImmutableEntry;,
        Lcom/google/common/collect/Multisets$UnmodifiableMultiset;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addAllImpl(Lcom/google/common/collect/Multiset;Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 841
    .local p0, "self":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TE;>;"
    .local p1, "elements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 842
    const/4 v2, 0x0

    .line 852
    :goto_0
    return v2

    .line 844
    :cond_0
    instance-of v2, p1, Lcom/google/common/collect/Multiset;

    if-eqz v2, :cond_1

    .line 845
    invoke-static {p1}, Lcom/google/common/collect/Multisets;->cast(Ljava/lang/Iterable;)Lcom/google/common/collect/Multiset;

    move-result-object v1

    .line 846
    .local v1, "that":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<+TE;>;"
    invoke-interface {v1}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 847
    .local v0, "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<+TE;>;"
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v4

    invoke-interface {p0, v3, v4}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    goto :goto_1

    .line 850
    .end local v0    # "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<+TE;>;"
    .end local v1    # "that":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<+TE;>;"
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 852
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method static cast(Ljava/lang/Iterable;)Lcom/google/common/collect/Multiset;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Lcom/google/common/collect/Multiset",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1059
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    check-cast p0, Lcom/google/common/collect/Multiset;

    .end local p0    # "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    return-object p0
.end method

.method public static containsOccurrences(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Z
    .locals 4
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<*>;",
            "Lcom/google/common/collect/Multiset",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 632
    .local p0, "superMultiset":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    .local p1, "subMultiset":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 635
    .local v0, "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v1

    .line 636
    .local v1, "superCount":I
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 637
    const/4 v2, 0x0

    .line 640
    .end local v0    # "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    .end local v1    # "superCount":I
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static copyHighestCountFirst(Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/ImmutableMultiset;
    .locals 3
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;)",
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1070
    .local p0, "multiset":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TE;>;"
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/common/collect/Multiset$Entry;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/common/collect/Multiset$Entry;

    move-object v0, v1

    check-cast v0, [Lcom/google/common/collect/Multiset$Entry;

    .line 1071
    .local v0, "entries":[Lcom/google/common/collect/Multiset$Entry;, "[Lcom/google/common/collect/Multiset$Entry<TE;>;"
    sget-object v1, Lcom/google/common/collect/Multisets$DecreasingCount;->INSTANCE:Lcom/google/common/collect/Multisets$DecreasingCount;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1072
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableMultiset;->copyFromEntries(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v1

    return-object v1
.end method

.method public static difference(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;",
            "Lcom/google/common/collect/Multiset",
            "<*>;)",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 587
    .local p0, "multiset1":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TE;>;"
    .local p1, "multiset2":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    new-instance v0, Lcom/google/common/collect/Multisets$4;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multisets$4;-><init>(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)V

    return-object v0
.end method

.method static equalsImpl(Lcom/google/common/collect/Multiset;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "multiset":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 815
    if-ne p1, p0, :cond_1

    .line 836
    :cond_0
    :goto_0
    return v2

    .line 818
    :cond_1
    instance-of v4, p1, Lcom/google/common/collect/Multiset;

    if-eqz v4, :cond_5

    move-object v1, p1

    .line 819
    check-cast v1, Lcom/google/common/collect/Multiset;

    .line 826
    .local v1, "that":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->size()I

    move-result v4

    invoke-interface {v1}, Lcom/google/common/collect/Multiset;->size()I

    move-result v5

    if-ne v4, v5, :cond_2

    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-interface {v1}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-eq v4, v5, :cond_3

    :cond_2
    move v2, v3

    .line 827
    goto :goto_0

    .line 829
    :cond_3
    invoke-interface {v1}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 830
    .local v0, "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p0, v5}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v6

    if-eq v5, v6, :cond_4

    move v2, v3

    .line 831
    goto :goto_0

    .end local v0    # "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    .end local v1    # "that":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    :cond_5
    move v2, v3

    .line 836
    goto :goto_0
.end method

.method public static filter(Lcom/google/common/collect/Multiset;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/Multiset;
    .locals 4
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;",
            "Lcom/google/common/base/Predicate",
            "<-TE;>;)",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 270
    .local p0, "unfiltered":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TE;>;"
    .local p1, "predicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<-TE;>;"
    instance-of v2, p0, Lcom/google/common/collect/Multisets$FilteredMultiset;

    if-eqz v2, :cond_0

    move-object v1, p0

    .line 273
    check-cast v1, Lcom/google/common/collect/Multisets$FilteredMultiset;

    .line 274
    .local v1, "filtered":Lcom/google/common/collect/Multisets$FilteredMultiset;, "Lcom/google/common/collect/Multisets$FilteredMultiset<TE;>;"
    iget-object v2, v1, Lcom/google/common/collect/Multisets$FilteredMultiset;->predicate:Lcom/google/common/base/Predicate;

    invoke-static {v2, p1}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    .line 275
    .local v0, "combinedPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<TE;>;"
    new-instance v2, Lcom/google/common/collect/Multisets$FilteredMultiset;

    iget-object v3, v1, Lcom/google/common/collect/Multisets$FilteredMultiset;->unfiltered:Lcom/google/common/collect/Multiset;

    invoke-direct {v2, v3, v0}, Lcom/google/common/collect/Multisets$FilteredMultiset;-><init>(Lcom/google/common/collect/Multiset;Lcom/google/common/base/Predicate;)V

    .line 277
    .end local v0    # "combinedPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<TE;>;"
    .end local v1    # "filtered":Lcom/google/common/collect/Multisets$FilteredMultiset;, "Lcom/google/common/collect/Multisets$FilteredMultiset<TE;>;"
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/google/common/collect/Multisets$FilteredMultiset;

    invoke-direct {v2, p0, p1}, Lcom/google/common/collect/Multisets$FilteredMultiset;-><init>(Lcom/google/common/collect/Multiset;Lcom/google/common/base/Predicate;)V

    goto :goto_0
.end method

.method public static immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;I)",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Lcom/google/common/collect/Multisets$ImmutableEntry;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multisets$ImmutableEntry;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method static inferDistinctElements(Ljava/lang/Iterable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 361
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    instance-of v0, p0, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_0

    .line 362
    check-cast p0, Lcom/google/common/collect/Multiset;

    .end local p0    # "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 364
    :goto_0
    return v0

    .restart local p0    # "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    :cond_0
    const/16 v0, 0xb

    goto :goto_0
.end method

.method public static intersection(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;",
            "Lcom/google/common/collect/Multiset",
            "<*>;)",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 453
    .local p0, "multiset1":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TE;>;"
    .local p1, "multiset2":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    new-instance v0, Lcom/google/common/collect/Multisets$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multisets$2;-><init>(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)V

    return-object v0
.end method

.method static iteratorImpl(Lcom/google/common/collect/Multiset;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;)",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 995
    .local p0, "multiset":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TE;>;"
    new-instance v0, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;

    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Multisets$MultisetIteratorImpl;-><init>(Lcom/google/common/collect/Multiset;Ljava/util/Iterator;)V

    return-object v0
.end method

.method static removeAllImpl(Lcom/google/common/collect/Multiset;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 857
    .local p0, "self":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    .local p1, "elementsToRemove":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v1, p1, Lcom/google/common/collect/Multiset;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/common/collect/Multiset;

    .line 859
    .end local p1    # "elementsToRemove":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    .line 862
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :goto_0
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v1

    return v1

    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .restart local p1    # "elementsToRemove":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_0
    move-object v0, p1

    .line 859
    goto :goto_0
.end method

.method public static removeOccurrences(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Z
    .locals 5
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<*>;",
            "Lcom/google/common/collect/Multiset",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 751
    .local p0, "multisetToModify":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    .local p1, "occurrencesToRemove":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    const/4 v0, 0x0

    .line 755
    .local v0, "changed":Z
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 756
    .local v2, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lcom/google/common/collect/Multiset$Entry<*>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 757
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Multiset$Entry;

    .line 758
    .local v1, "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v3

    .line 759
    .local v3, "removeCount":I
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 760
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 761
    const/4 v0, 0x1

    goto :goto_0

    .line 762
    :cond_1
    if-lez v3, :cond_0

    .line 763
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p0, v4, v3}, Lcom/google/common/collect/Multiset;->remove(Ljava/lang/Object;I)I

    .line 764
    const/4 v0, 0x1

    goto :goto_0

    .line 767
    .end local v1    # "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    .end local v3    # "removeCount":I
    :cond_2
    return v0
.end method

.method public static removeOccurrences(Lcom/google/common/collect/Multiset;Ljava/lang/Iterable;)Z
    .locals 4
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<*>;",
            "Ljava/lang/Iterable",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 713
    .local p0, "multisetToModify":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    .local p1, "occurrencesToRemove":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    instance-of v2, p1, Lcom/google/common/collect/Multiset;

    if-eqz v2, :cond_1

    .line 714
    check-cast p1, Lcom/google/common/collect/Multiset;

    .end local p1    # "occurrencesToRemove":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->removeOccurrences(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Z

    move-result v0

    .line 722
    :cond_0
    return v0

    .line 716
    .restart local p1    # "occurrencesToRemove":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    :cond_1
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    const/4 v0, 0x0

    .line 719
    .local v0, "changed":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 720
    .local v1, "o":Ljava/lang/Object;
    invoke-interface {p0, v1}, Lcom/google/common/collect/Multiset;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 721
    goto :goto_0
.end method

.method static retainAllImpl(Lcom/google/common/collect/Multiset;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 867
    .local p0, "self":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    .local p1, "elementsToRetain":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    instance-of v1, p1, Lcom/google/common/collect/Multiset;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/common/collect/Multiset;

    .line 870
    .end local p1    # "elementsToRetain":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    .line 873
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :goto_0
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v1

    return v1

    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .restart local p1    # "elementsToRetain":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_0
    move-object v0, p1

    .line 870
    goto :goto_0
.end method

.method public static retainOccurrences(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Z
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<*>;",
            "Lcom/google/common/collect/Multiset",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 662
    .local p0, "multisetToModify":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    .local p1, "multisetToRetain":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->retainOccurrencesImpl(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Z

    move-result v0

    return v0
.end method

.method private static retainOccurrencesImpl(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;",
            "Lcom/google/common/collect/Multiset",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 668
    .local p0, "multisetToModify":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TE;>;"
    .local p1, "occurrencesToRetain":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 672
    .local v2, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/collect/Multiset$Entry<TE;>;>;"
    const/4 v0, 0x0

    .line 673
    .local v0, "changed":Z
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 674
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Multiset$Entry;

    .line 675
    .local v1, "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<TE;>;"
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v3

    .line 676
    .local v3, "retainCount":I
    if-nez v3, :cond_1

    .line 677
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 678
    const/4 v0, 0x1

    goto :goto_0

    .line 679
    :cond_1
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 680
    invoke-interface {v1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p0, v4, v3}, Lcom/google/common/collect/Multiset;->setCount(Ljava/lang/Object;I)I

    .line 681
    const/4 v0, 0x1

    goto :goto_0

    .line 684
    .end local v1    # "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<TE;>;"
    .end local v3    # "retainCount":I
    :cond_2
    return v0
.end method

.method static setCountImpl(Lcom/google/common/collect/Multiset;Ljava/lang/Object;I)I
    .locals 3
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;TE;I)I"
        }
    .end annotation

    .prologue
    .line 878
    .local p0, "self":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const-string v2, "count"

    invoke-static {p2, v2}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 880
    invoke-interface {p0, p1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v1

    .line 882
    .local v1, "oldCount":I
    sub-int v0, p2, v1

    .line 883
    .local v0, "delta":I
    if-lez v0, :cond_1

    .line 884
    invoke-interface {p0, p1, v0}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    .line 889
    :cond_0
    :goto_0
    return v1

    .line 885
    :cond_1
    if-gez v0, :cond_0

    .line 886
    neg-int v2, v0

    invoke-interface {p0, p1, v2}, Lcom/google/common/collect/Multiset;->remove(Ljava/lang/Object;I)I

    goto :goto_0
.end method

.method static setCountImpl(Lcom/google/common/collect/Multiset;Ljava/lang/Object;II)Z
    .locals 1
    .param p2, "oldCount"    # I
    .param p3, "newCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;TE;II)Z"
        }
    .end annotation

    .prologue
    .line 894
    .local p0, "self":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    const-string v0, "oldCount"

    invoke-static {p2, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 895
    const-string v0, "newCount"

    invoke-static {p3, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 897
    invoke-interface {p0, p1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 898
    invoke-interface {p0, p1, p3}, Lcom/google/common/collect/Multiset;->setCount(Ljava/lang/Object;I)I

    .line 899
    const/4 v0, 0x1

    .line 901
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static sizeImpl(Lcom/google/common/collect/Multiset;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 1050
    .local p0, "multiset":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<*>;"
    const-wide/16 v2, 0x0

    .line 1051
    .local v2, "size":J
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 1052
    .local v0, "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 1053
    goto :goto_0

    .line 1054
    .end local v0    # "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<*>;"
    :cond_0
    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v1

    return v1
.end method

.method public static sum(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<+TE;>;",
            "Lcom/google/common/collect/Multiset",
            "<+TE;>;)",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 510
    .local p0, "multiset1":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<+TE;>;"
    .local p1, "multiset2":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<+TE;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    new-instance v0, Lcom/google/common/collect/Multisets$3;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multisets$3;-><init>(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)V

    return-object v0
.end method

.method public static union(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<+TE;>;",
            "Lcom/google/common/collect/Multiset",
            "<+TE;>;)",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 382
    .local p0, "multiset1":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<+TE;>;"
    .local p1, "multiset2":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<+TE;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    new-instance v0, Lcom/google/common/collect/Multisets$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multisets$1;-><init>(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)V

    return-object v0
.end method

.method public static unmodifiableMultiset(Lcom/google/common/collect/ImmutableMultiset;)Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;)",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 86
    .local p0, "multiset":Lcom/google/common/collect/ImmutableMultiset;, "Lcom/google/common/collect/ImmutableMultiset<TE;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset;

    return-object v0
.end method

.method public static unmodifiableMultiset(Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/Multiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<+TE;>;)",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "multiset":Lcom/google/common/collect/Multiset;, "Lcom/google/common/collect/Multiset<+TE;>;"
    instance-of v1, p0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;

    if-nez v1, :cond_0

    instance-of v1, p0, Lcom/google/common/collect/ImmutableMultiset;

    if-eqz v1, :cond_1

    .line 72
    :cond_0
    move-object v0, p0

    .line 75
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Multiset;

    invoke-direct {v0, v1}, Lcom/google/common/collect/Multisets$UnmodifiableMultiset;-><init>(Lcom/google/common/collect/Multiset;)V

    goto :goto_0
.end method

.method public static unmodifiableSortedMultiset(Lcom/google/common/collect/SortedMultiset;)Lcom/google/common/collect/SortedMultiset;
    .locals 2
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/SortedMultiset",
            "<TE;>;)",
            "Lcom/google/common/collect/SortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "sortedMultiset":Lcom/google/common/collect/SortedMultiset;, "Lcom/google/common/collect/SortedMultiset<TE;>;"
    new-instance v1, Lcom/google/common/collect/UnmodifiableSortedMultiset;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/SortedMultiset;

    invoke-direct {v1, v0}, Lcom/google/common/collect/UnmodifiableSortedMultiset;-><init>(Lcom/google/common/collect/SortedMultiset;)V

    return-object v1
.end method
