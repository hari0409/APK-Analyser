.class Lcom/google/common/collect/Multimaps$MapMultimap;
.super Lcom/google/common/collect/AbstractMultimap;
.source "Multimaps.java"

# interfaces
.implements Lcom/google/common/collect/SetMultimap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractMultimap",
        "<TK;TV;>;",
        "Lcom/google/common/collect/SetMultimap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6cdfd44a398c560fL


# instance fields
.field final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 907
    .local p0, "this":Lcom/google/common/collect/Multimaps$MapMultimap;, "Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultimap;-><init>()V

    .line 908
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    .line 909
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1006
    .local p0, "this":Lcom/google/common/collect/Multimaps$MapMultimap;, "Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1007
    return-void
.end method

.method public containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 928
    .local p0, "this":Lcom/google/common/collect/Multimaps$MapMultimap;, "Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 918
    .local p0, "this":Lcom/google/common/collect/Multimaps$MapMultimap;, "Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 923
    .local p0, "this":Lcom/google/common/collect/Multimaps$MapMultimap;, "Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method createAsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1041
    .local p0, "this":Lcom/google/common/collect/Multimaps$MapMultimap;, "Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/Multimaps$AsMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$AsMap;-><init>(Lcom/google/common/collect/Multimap;)V

    return-object v0
.end method

.method createEntries()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1026
    .local p0, "this":Lcom/google/common/collect/Multimaps$MapMultimap;, "Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "unreachable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method createKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1011
    .local p0, "this":Lcom/google/common/collect/Multimaps$MapMultimap;, "Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method createKeys()Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1031
    .local p0, "this":Lcom/google/common/collect/Multimaps$MapMultimap;, "Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/Multimaps$Keys;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$Keys;-><init>(Lcom/google/common/collect/Multimap;)V

    return-object v0
.end method

.method createValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1016
    .local p0, "this":Lcom/google/common/collect/Multimaps$MapMultimap;, "Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 903
    .local p0, "this":Lcom/google/common/collect/Multimaps$MapMultimap;, "Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Multimaps$MapMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1021
    .local p0, "this":Lcom/google/common/collect/Multimaps$MapMultimap;, "Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1036
    .local p0, "this":Lcom/google/common/collect/Multimaps$MapMultimap;, "Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 903
    .local p0, "this":Lcom/google/common/collect/Multimaps$MapMultimap;, "Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$MapMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 933
    .local p0, "this":Lcom/google/common/collect/Multimaps$MapMultimap;, "Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    new-instance v0, Lcom/google/common/collect/Multimaps$MapMultimap$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multimaps$MapMultimap$1;-><init>(Lcom/google/common/collect/Multimaps$MapMultimap;Ljava/lang/Object;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1046
    .local p0, "this":Lcom/google/common/collect/Multimaps$MapMultimap;, "Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 971
    .local p0, "this":Lcom/google/common/collect/Multimaps$MapMultimap;, "Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Lcom/google/common/collect/Multimap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap",
            "<+TK;+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 981
    .local p0, "this":Lcom/google/common/collect/Multimaps$MapMultimap;, "Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    .local p1, "multimap":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<+TK;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 976
    .local p0, "this":Lcom/google/common/collect/Multimaps$MapMultimap;, "Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 991
    .local p0, "this":Lcom/google/common/collect/Multimaps$MapMultimap;, "Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 903
    .local p0, "this":Lcom/google/common/collect/Multimaps$MapMultimap;, "Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$MapMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 996
    .local p0, "this":Lcom/google/common/collect/Multimaps$MapMultimap;, "Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 997
    .local v0, "values":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1001
    :goto_0
    return-object v0

    .line 1000
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 903
    .local p0, "this":Lcom/google/common/collect/Multimaps$MapMultimap;, "Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Multimaps$MapMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 986
    .local p0, "this":Lcom/google/common/collect/Multimaps$MapMultimap;, "Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 913
    .local p0, "this":Lcom/google/common/collect/Multimaps$MapMultimap;, "Lcom/google/common/collect/Multimaps$MapMultimap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$MapMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
