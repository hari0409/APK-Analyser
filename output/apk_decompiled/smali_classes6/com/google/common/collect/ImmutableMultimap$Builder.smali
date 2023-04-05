.class public Lcom/google/common/collect/ImmutableMultimap$Builder;
.super Ljava/lang/Object;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field builderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field keyComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field valueComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 147
    .local p0, "this":Lcom/google/common/collect/ImmutableMultimap$Builder;, "Lcom/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-static {}, Lcom/google/common/collect/Platform;->preservesInsertionOrderOnPutsMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Builder;->builderMap:Ljava/util/Map;

    .line 149
    return-void
.end method


# virtual methods
.method public build()Lcom/google/common/collect/ImmutableMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "this":Lcom/google/common/collect/ImmutableMultimap$Builder;, "Lcom/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultimap$Builder;->builderMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 285
    .local v0, "mapEntries":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultimap$Builder;->keyComparator:Ljava/util/Comparator;

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultimap$Builder;->keyComparator:Ljava/util/Comparator;

    invoke-static {v1}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Ordering;->onKeys()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/collect/Ordering;->immutableSortedCopy(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultimap$Builder;->valueComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableListMultimap;->fromMapEntries(Ljava/util/Collection;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v1

    return-object v1
.end method

.method combine(Lcom/google/common/collect/ImmutableMultimap$Builder;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .locals 4
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMultimap$Builder",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/ImmutableMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 276
    .local p0, "this":Lcom/google/common/collect/ImmutableMultimap$Builder;, "Lcom/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    .local p1, "other":Lcom/google/common/collect/ImmutableMultimap$Builder;, "Lcom/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    iget-object v1, p1, Lcom/google/common/collect/ImmutableMultimap$Builder;->builderMap:Ljava/util/Map;

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

    .line 277
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {p0, v3, v1}, Lcom/google/common/collect/ImmutableMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    goto :goto_0

    .line 279
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;"
    :cond_0
    return-object p0
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
    .line 152
    .local p0, "this":Lcom/google/common/collect/ImmutableMultimap$Builder;, "Lcom/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public orderKeysBy(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)",
            "Lcom/google/common/collect/ImmutableMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lcom/google/common/collect/ImmutableMultimap$Builder;, "Lcom/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    .local p1, "keyComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Builder;->keyComparator:Ljava/util/Comparator;

    .line 260
    return-object p0
.end method

.method public orderValuesBy(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TV;>;)",
            "Lcom/google/common/collect/ImmutableMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 270
    .local p0, "this":Lcom/google/common/collect/ImmutableMultimap$Builder;, "Lcom/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    .local p1, "valueComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TV;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$Builder;->valueComparator:Ljava/util/Comparator;

    .line 271
    return-object p0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/collect/ImmutableMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lcom/google/common/collect/ImmutableMultimap$Builder;, "Lcom/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1, p2}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultimap$Builder;->builderMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 160
    .local v0, "valueCollection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_0

    .line 161
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultimap$Builder;->builderMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultimap$Builder;->newMutableValueCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 164
    return-object p0
.end method

.method public put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "this":Lcom/google/common/collect/ImmutableMultimap$Builder;, "Lcom/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ImmutableMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .locals 4
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, "this":Lcom/google/common/collect/ImmutableMultimap$Builder;, "Lcom/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
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

    .line 247
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+Ljava/util/Collection<+TV;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-virtual {p0, v3, v1}, Lcom/google/common/collect/ImmutableMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    goto :goto_0

    .line 249
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+Ljava/util/Collection<+TV;>;>;"
    :cond_0
    return-object p0
.end method

.method public putAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .locals 3
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
            "Lcom/google/common/collect/ImmutableMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "this":Lcom/google/common/collect/ImmutableMultimap$Builder;, "Lcom/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    .local p1, "entries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 186
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMultimap$Builder;->put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    goto :goto_0

    .line 188
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return-object p0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .locals 6
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)",
            "Lcom/google/common/collect/ImmutableMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lcom/google/common/collect/ImmutableMultimap$Builder;, "Lcom/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    if-nez p1, :cond_0

    .line 200
    new-instance v3, Ljava/lang/NullPointerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "null key in entry: null="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Lcom/google/common/collect/Iterables;->toString(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 202
    :cond_0
    iget-object v3, p0, Lcom/google/common/collect/ImmutableMultimap$Builder;->builderMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 203
    .local v1, "valueCollection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v1, :cond_1

    .line 204
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 205
    .local v0, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1, v0}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 206
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 211
    .local v2, "valuesItr":Ljava/util/Iterator;, "Ljava/util/Iterator<+TV;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 221
    .end local v2    # "valuesItr":Ljava/util/Iterator;, "Ljava/util/Iterator<+TV;>;"
    :cond_2
    :goto_1
    return-object p0

    .line 214
    .restart local v2    # "valuesItr":Ljava/util/Iterator;, "Ljava/util/Iterator<+TV;>;"
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultimap$Builder;->newMutableValueCollection()Ljava/util/Collection;

    move-result-object v1

    .line 215
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 216
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 217
    .restart local v0    # "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1, v0}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 218
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 220
    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    :cond_4
    iget-object v3, p0, Lcom/google/common/collect/ImmutableMultimap$Builder;->builderMap:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public varargs putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[TV;)",
            "Lcom/google/common/collect/ImmutableMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, "this":Lcom/google/common/collect/ImmutableMultimap$Builder;, "Lcom/google/common/collect/ImmutableMultimap$Builder<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":[Ljava/lang/Object;, "[TV;"
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    move-result-object v0

    return-object v0
.end method
