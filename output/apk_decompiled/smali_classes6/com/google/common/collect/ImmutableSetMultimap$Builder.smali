.class public final Lcom/google/common/collect/ImmutableSetMultimap$Builder;
.super Lcom/google/common/collect/ImmutableMultimap$Builder;
.source "ImmutableSetMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSetMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMultimap$Builder",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 152
    .local p0, "this":Lcom/google/common/collect/ImmutableSetMultimap$Builder;, "Lcom/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMultimap$Builder;-><init>()V

    .line 153
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/common/collect/ImmutableMultimap;
    .locals 1

    .prologue
    .line 146
    .local p0, "this":Lcom/google/common/collect/ImmutableSetMultimap$Builder;, "Lcom/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->build()Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/common/collect/ImmutableSetMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 249
    .local p0, "this":Lcom/google/common/collect/ImmutableSetMultimap$Builder;, "Lcom/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->builderMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 250
    .local v0, "mapEntries":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->keyComparator:Ljava/util/Comparator;

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->keyComparator:Ljava/util/Comparator;

    invoke-static {v1}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Ordering;->onKeys()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/collect/Ordering;->immutableSortedCopy(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->valueComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSetMultimap;->fromMapEntries(Ljava/util/Collection;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v1

    return-object v1
.end method

.method newMutableValueCollection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "this":Lcom/google/common/collect/ImmutableSetMultimap$Builder;, "Lcom/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    invoke-static {}, Lcom/google/common/collect/Platform;->preservesInsertionOrderOnAddsSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic orderKeysBy(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lcom/google/common/collect/ImmutableSetMultimap$Builder;, "Lcom/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->orderKeysBy(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public orderKeysBy(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)",
            "Lcom/google/common/collect/ImmutableSetMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "this":Lcom/google/common/collect/ImmutableSetMultimap$Builder;, "Lcom/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    .local p1, "keyComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$Builder;->orderKeysBy(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    .line 225
    return-object p0
.end method

.method public bridge synthetic orderValuesBy(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lcom/google/common/collect/ImmutableSetMultimap$Builder;, "Lcom/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->orderValuesBy(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public orderValuesBy(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TV;>;)",
            "Lcom/google/common/collect/ImmutableSetMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, "this":Lcom/google/common/collect/ImmutableSetMultimap$Builder;, "Lcom/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    .local p1, "valueComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$Builder;->orderValuesBy(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    .line 243
    return-object p0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lcom/google/common/collect/ImmutableSetMultimap$Builder;, "Lcom/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lcom/google/common/collect/ImmutableSetMultimap$Builder;, "Lcom/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/collect/ImmutableSetMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lcom/google/common/collect/ImmutableSetMultimap$Builder;, "Lcom/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    .line 165
    return-object p0
.end method

.method public put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableSetMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Lcom/google/common/collect/ImmutableSetMultimap$Builder;, "Lcom/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$Builder;->put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    .line 177
    return-object p0
.end method

.method public bridge synthetic putAll(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lcom/google/common/collect/ImmutableSetMultimap$Builder;, "Lcom/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->putAll(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lcom/google/common/collect/ImmutableSetMultimap$Builder;, "Lcom/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->putAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lcom/google/common/collect/ImmutableSetMultimap$Builder;, "Lcom/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lcom/google/common/collect/ImmutableSetMultimap$Builder;, "Lcom/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;
    .locals 4
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableSetMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, "this":Lcom/google/common/collect/ImmutableSetMultimap$Builder;, "Lcom/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    .local p1, "multimap":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<+TK;+TV;>;"
    invoke-interface {p1}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 211
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+Ljava/util/Collection<+TV;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {p0, v3, v1}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    goto :goto_0

    .line 213
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+Ljava/util/Collection<+TV;>;>;"
    :cond_0
    return-object p0
.end method

.method public putAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;
    .locals 0
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/util/Map$Entry",
            "<+TK;+TV;>;>;)",
            "Lcom/google/common/collect/ImmutableSetMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "this":Lcom/google/common/collect/ImmutableSetMultimap$Builder;, "Lcom/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    .local p1, "entries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$Builder;->putAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    .line 190
    return-object p0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)",
            "Lcom/google/common/collect/ImmutableSetMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "this":Lcom/google/common/collect/ImmutableSetMultimap$Builder;, "Lcom/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ImmutableMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    .line 197
    return-object p0
.end method

.method public varargs putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[TV;)",
            "Lcom/google/common/collect/ImmutableSetMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, "this":Lcom/google/common/collect/ImmutableSetMultimap$Builder;, "Lcom/google/common/collect/ImmutableSetMultimap$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":[Ljava/lang/Object;, "[TV;"
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    return-object v0
.end method
