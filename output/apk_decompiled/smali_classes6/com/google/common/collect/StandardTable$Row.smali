.class Lcom/google/common/collect/StandardTable$Row;
.super Lcom/google/common/collect/Maps$IteratorBasedAbstractMap;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/StandardTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Row"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$IteratorBasedAbstractMap",
        "<TC;TV;>;"
    }
.end annotation


# instance fields
.field backingRowMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TC;TV;>;"
        }
    .end annotation
.end field

.field final rowKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/StandardTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/common/collect/StandardTable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row;"
    .local p2, "rowKey":Ljava/lang/Object;, "TR;"
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$Row;->this$0:Lcom/google/common/collect/StandardTable;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$IteratorBasedAbstractMap;-><init>()V

    .line 271
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->rowKey:Ljava/lang/Object;

    .line 272
    return-void
.end method


# virtual methods
.method backingRowMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 277
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->backingRowMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->backingRowMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Row;->rowKey:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Row;->computeBackingRowMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->backingRowMap:Ljava/util/Map;

    .line 277
    :goto_0
    return-object v0

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->backingRowMap:Ljava/util/Map;

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 329
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Row;->backingRowMap()Ljava/util/Map;

    move-result-object v0

    .line 330
    .local v0, "backingRowMap":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    if-eqz v0, :cond_0

    .line 331
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 333
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Row;->maintainEmptyInvariant()V

    .line 334
    return-void
.end method

.method computeBackingRowMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Row;->rowKey:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 296
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Row;->backingRowMap()Ljava/util/Map;

    move-result-object v0

    .line 297
    .local v0, "backingRowMap":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->safeContainsKey(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 344
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Row;->backingRowMap()Ljava/util/Map;

    move-result-object v1

    .line 345
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    if-nez v1, :cond_0

    .line 346
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyModifiableIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 349
    :goto_0
    return-object v2

    .line 348
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 349
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TC;TV;>;>;"
    new-instance v2, Lcom/google/common/collect/StandardTable$Row$1;

    invoke-direct {v2, p0, v0}, Lcom/google/common/collect/StandardTable$Row$1;-><init>(Lcom/google/common/collect/StandardTable$Row;Ljava/util/Iterator;)V

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Row;->backingRowMap()Ljava/util/Map;

    move-result-object v0

    .line 303
    .local v0, "backingRowMap":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method maintainEmptyInvariant()V
    .locals 2

    .prologue
    .line 288
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Row;->backingRowMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->backingRowMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Row;->rowKey:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->backingRowMap:Ljava/util/Map;

    .line 292
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 308
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row;"
    .local p1, "key":Ljava/lang/Object;, "TC;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->backingRowMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->backingRowMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->backingRowMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 313
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Row;->rowKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/common/collect/StandardTable;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 318
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Row;->backingRowMap()Ljava/util/Map;

    move-result-object v0

    .line 319
    .local v0, "backingRowMap":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    if-nez v0, :cond_0

    .line 320
    const/4 v1, 0x0

    .line 324
    :goto_0
    return-object v1

    .line 322
    :cond_0
    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->safeRemove(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 323
    .local v1, "result":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Row;->maintainEmptyInvariant()V

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 338
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Row;->backingRowMap()Ljava/util/Map;

    move-result-object v0

    .line 339
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    goto :goto_0
.end method

.method wrapEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TC;TV;>;)",
            "Ljava/util/Map$Entry",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 369
    .local p0, "this":Lcom/google/common/collect/StandardTable$Row;, "Lcom/google/common/collect/StandardTable<TR;TC;TV;>.Row;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TC;TV;>;"
    new-instance v0, Lcom/google/common/collect/StandardTable$Row$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/StandardTable$Row$2;-><init>(Lcom/google/common/collect/StandardTable$Row;Ljava/util/Map$Entry;)V

    return-object v0
.end method
