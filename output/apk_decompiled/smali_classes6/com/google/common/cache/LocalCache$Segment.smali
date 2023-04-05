.class Lcom/google/common/cache/LocalCache$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantLock;"
    }
.end annotation


# instance fields
.field final accessQueue:Ljava/util/Queue;
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field volatile count:I

.field final keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;"
        }
    .end annotation
.end field

.field final map:Lcom/google/common/cache/LocalCache;
    .annotation build Lcom/google/j2objc/annotations/Weak;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final maxSegmentWeight:J

.field modCount:I

.field final readCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final recencyQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

.field volatile table:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field threshold:I

.field totalWeight:J
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;"
        }
    .end annotation
.end field

.field final writeQueue:Ljava/util/Queue;
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache;IJLcom/google/common/cache/AbstractCache$StatsCounter;)V
    .locals 3
    .param p2, "initialCapacity"    # I
    .param p3, "maxSegmentWeight"    # J
    .param p5, "statsCounter"    # Lcom/google/common/cache/AbstractCache$StatsCounter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache",
            "<TK;TV;>;IJ",
            "Lcom/google/common/cache/AbstractCache$StatsCounter;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "map":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    const/4 v1, 0x0

    .line 1935
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 1912
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1936
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    .line 1937
    iput-wide p3, p0, Lcom/google/common/cache/LocalCache$Segment;->maxSegmentWeight:J

    .line 1938
    invoke-static {p5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/AbstractCache$StatsCounter;

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    .line 1939
    invoke-virtual {p0, p2}, Lcom/google/common/cache/LocalCache$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache$Segment;->initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 1941
    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache;->usesKeyReferences()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 1943
    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache;->usesValueReferences()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :cond_0
    iput-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 1946
    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache;->usesAccessQueue()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 1948
    :goto_1
    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->recencyQueue:Ljava/util/Queue;

    .line 1951
    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache;->usesWriteQueue()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/common/cache/LocalCache$WriteQueue;

    invoke-direct {v0}, Lcom/google/common/cache/LocalCache$WriteQueue;-><init>()V

    .line 1953
    :goto_2
    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    .line 1956
    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache;->usesAccessQueue()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/google/common/cache/LocalCache$AccessQueue;

    invoke-direct {v0}, Lcom/google/common/cache/LocalCache$AccessQueue;-><init>()V

    .line 1958
    :goto_3
    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    .line 1959
    return-void

    :cond_1
    move-object v0, v1

    .line 1941
    goto :goto_0

    .line 1948
    :cond_2
    invoke-static {}, Lcom/google/common/cache/LocalCache;->discardingQueue()Ljava/util/Queue;

    move-result-object v0

    goto :goto_1

    .line 1953
    :cond_3
    invoke-static {}, Lcom/google/common/cache/LocalCache;->discardingQueue()Ljava/util/Queue;

    move-result-object v0

    goto :goto_2

    .line 1958
    :cond_4
    invoke-static {}, Lcom/google/common/cache/LocalCache;->discardingQueue()Ljava/util/Queue;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method cleanUp()V
    .locals 3

    .prologue
    .line 3357
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v2, v2, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v2}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    .line 3358
    .local v0, "now":J
    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LocalCache$Segment;->runLockedCleanup(J)V

    .line 3359
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->runUnlockedCleanup()V

    .line 3360
    return-void
.end method

.method clear()V
    .locals 11

    .prologue
    .line 3098
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v0, :cond_6

    .line 3099
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3101
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v8

    .line 3102
    .local v8, "now":J
    invoke-virtual {p0, v8, v9}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 3104
    iget-object v10, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3105
    .local v10, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_4

    .line 3106
    invoke-virtual {v10, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/common/cache/ReferenceEntry;

    .local v6, "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :goto_1
    if-eqz v6, :cond_3

    .line 3108
    invoke-interface {v6}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3109
    invoke-interface {v6}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 3110
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v6}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v3

    .line 3111
    .local v3, "value":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_0

    if-nez v3, :cond_2

    :cond_0
    sget-object v5, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    .line 3114
    .local v5, "cause":Lcom/google/common/cache/RemovalCause;
    :goto_2
    invoke-interface {v6}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v2

    invoke-interface {v6}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->getWeight()I

    move-result v4

    move-object v0, p0

    .line 3113
    invoke-virtual/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    .line 3106
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    .end local v5    # "cause":Lcom/google/common/cache/RemovalCause;
    :cond_1
    invoke-interface {v6}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v6

    goto :goto_1

    .line 3111
    .restart local v1    # "key":Ljava/lang/Object;, "TK;"
    .restart local v3    # "value":Ljava/lang/Object;, "TV;"
    :cond_2
    sget-object v5, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;

    goto :goto_2

    .line 3105
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3118
    .end local v6    # "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :cond_4
    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_5

    .line 3119
    const/4 v0, 0x0

    invoke-virtual {v10, v7, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3118
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 3121
    :cond_5
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->clearReferenceQueues()V

    .line 3122
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 3123
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 3124
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3126
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3127
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3129
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3130
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3133
    .end local v7    # "i":I
    .end local v8    # "now":J
    .end local v10    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    :cond_6
    return-void

    .line 3129
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3130
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0
.end method

.method clearKeyReferenceQueue()V
    .locals 1

    .prologue
    .line 2383
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2384
    return-void
.end method

.method clearReferenceQueues()V
    .locals 1

    .prologue
    .line 2374
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->usesKeyReferences()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2375
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->clearKeyReferenceQueue()V

    .line 2377
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->usesValueReferences()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2378
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->clearValueReferenceQueue()V

    .line 2380
    :cond_1
    return-void
.end method

.method clearValueReferenceQueue()V
    .locals 1

    .prologue
    .line 2387
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2388
    return-void
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .prologue
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    const/4 v1, 0x0

    .line 2638
    :try_start_0
    iget v4, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v4, :cond_2

    .line 2639
    iget-object v4, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v4}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v2

    .line 2640
    .local v2, "now":J
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/google/common/cache/LocalCache$Segment;->getLiveEntry(Ljava/lang/Object;IJ)Lcom/google/common/cache/ReferenceEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2641
    .local v0, "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    if-nez v0, :cond_0

    .line 2649
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2647
    .end local v0    # "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v2    # "now":J
    :goto_0
    return v1

    .line 2644
    .restart local v0    # "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .restart local v2    # "now":J
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 2649
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    goto :goto_0

    .end local v0    # "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v2    # "now":J
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    throw v1
.end method

.method containsValue(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "value"    # Ljava/lang/Object;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 2660
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    :try_start_0
    iget v7, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v7, :cond_3

    .line 2661
    iget-object v7, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v7, v7, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v7}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v4

    .line 2662
    .local v4, "now":J
    iget-object v6, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2663
    .local v6, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    .line 2664
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 2665
    invoke-virtual {v6, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/ReferenceEntry;

    .local v0, "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_2

    .line 2666
    invoke-virtual {p0, v0, v4, v5}, Lcom/google/common/cache/LocalCache$Segment;->getLiveValue(Lcom/google/common/cache/ReferenceEntry;J)Ljava/lang/Object;

    move-result-object v1

    .line 2667
    .local v1, "entryValue":Ljava/lang/Object;, "TV;"
    if-nez v1, :cond_1

    .line 2665
    :cond_0
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    goto :goto_1

    .line 2670
    :cond_1
    iget-object v7, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v7, v7, Lcom/google/common/cache/LocalCache;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v7, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    .line 2671
    const/4 v7, 0x1

    .line 2679
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2677
    .end local v0    # "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v1    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v4    # "now":J
    .end local v6    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    :goto_2
    return v7

    .line 2664
    .restart local v0    # "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .restart local v2    # "i":I
    .restart local v3    # "length":I
    .restart local v4    # "now":J
    .restart local v6    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2677
    .end local v0    # "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v4    # "now":J
    .end local v6    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    :cond_3
    const/4 v7, 0x0

    .line 2679
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    goto :goto_2

    :catchall_0
    move-exception v7

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    throw v7
.end method

.method copyEntry(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;
    .locals 4
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "original":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .local p2, "newNext":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    const/4 v0, 0x0

    .line 1985
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1999
    :cond_0
    :goto_0
    return-object v0

    .line 1990
    :cond_1
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v2

    .line 1991
    .local v2, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 1992
    .local v1, "value":Ljava/lang/Object;, "TV;"
    if-nez v1, :cond_2

    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1997
    :cond_2
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v3, v3, Lcom/google/common/cache/LocalCache;->entryFactory:Lcom/google/common/cache/LocalCache$EntryFactory;

    invoke-virtual {v3, p0, p1, p2}, Lcom/google/common/cache/LocalCache$EntryFactory;->copyEntry(Lcom/google/common/cache/LocalCache$Segment;Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 1998
    .local v0, "newEntry":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {v2, v3, v1, v0}, Lcom/google/common/cache/LocalCache$ValueReference;->copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/common/cache/ReferenceEntry;->setValueReference(Lcom/google/common/cache/LocalCache$ValueReference;)V

    goto :goto_0
.end method

.method drainKeyReferenceQueue()V
    .locals 4
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2347
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    const/4 v1, 0x0

    .line 2348
    .local v1, "i":I
    :cond_0
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v3}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v2

    .local v2, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TK;>;"
    if-eqz v2, :cond_1

    move-object v0, v2

    .line 2350
    check-cast v0, Lcom/google/common/cache/ReferenceEntry;

    .line 2351
    .local v0, "entry":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v3, v0}, Lcom/google/common/cache/LocalCache;->reclaimKey(Lcom/google/common/cache/ReferenceEntry;)V

    .line 2352
    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0x10

    if-ne v1, v3, :cond_0

    .line 2356
    .end local v0    # "entry":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :cond_1
    return-void
.end method

.method drainRecencyQueue()V
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2450
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->recencyQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/ReferenceEntry;

    .local v0, "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    if-eqz v0, :cond_1

    .line 2455
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2456
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2459
    :cond_1
    return-void
.end method

.method drainReferenceQueues()V
    .locals 1
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2336
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->usesKeyReferences()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2337
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainKeyReferenceQueue()V

    .line 2339
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->usesValueReferences()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2340
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainValueReferenceQueue()V

    .line 2342
    :cond_1
    return-void
.end method

.method drainValueReferenceQueue()V
    .locals 4
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2361
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    const/4 v0, 0x0

    .line 2362
    .local v0, "i":I
    :cond_0
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v3}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    .local v1, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TV;>;"
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 2364
    check-cast v2, Lcom/google/common/cache/LocalCache$ValueReference;

    .line 2365
    .local v2, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v3, v2}, Lcom/google/common/cache/LocalCache;->reclaimValue(Lcom/google/common/cache/LocalCache$ValueReference;)V

    .line 2366
    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x10

    if-ne v0, v3, :cond_0

    .line 2370
    .end local v2    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_1
    return-void
.end method

.method enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/RemovalCause;)V
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2, "hash"    # I
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p4, "weight"    # I
    .param p5, "cause"    # Lcom/google/common/cache/RemovalCause;
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;I",
            "Lcom/google/common/cache/RemovalCause;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2497
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget-wide v2, p0, Lcom/google/common/cache/LocalCache$Segment;->totalWeight:J

    int-to-long v4, p4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/cache/LocalCache$Segment;->totalWeight:J

    .line 2498
    invoke-virtual {p5}, Lcom/google/common/cache/RemovalCause;->wasEvicted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2499
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v1}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordEviction()V

    .line 2501
    :cond_0
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->removalNotificationQueue:Ljava/util/Queue;

    sget-object v2, Lcom/google/common/cache/LocalCache;->DISCARDING_QUEUE:Ljava/util/Queue;

    if-eq v1, v2, :cond_1

    .line 2502
    invoke-static {p1, p3, p5}, Lcom/google/common/cache/RemovalNotification;->create(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/RemovalNotification;

    move-result-object v0

    .line 2503
    .local v0, "notification":Lcom/google/common/cache/RemovalNotification;, "Lcom/google/common/cache/RemovalNotification<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->removalNotificationQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2505
    .end local v0    # "notification":Lcom/google/common/cache/RemovalNotification;, "Lcom/google/common/cache/RemovalNotification<TK;TV;>;"
    :cond_1
    return-void
.end method

.method evictEntries(Lcom/google/common/cache/ReferenceEntry;)V
    .locals 6
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2515
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "newest":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v1}, Lcom/google/common/cache/LocalCache;->evictsBySize()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2535
    :cond_0
    return-void

    .line 2519
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainRecencyQueue()V

    .line 2523
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ValueReference;->getWeight()I

    move-result v1

    int-to-long v2, v1

    iget-wide v4, p0, Lcom/google/common/cache/LocalCache$Segment;->maxSegmentWeight:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 2524
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v1

    sget-object v2, Lcom/google/common/cache/RemovalCause;->SIZE:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/common/cache/LocalCache$Segment;->removeEntry(Lcom/google/common/cache/ReferenceEntry;ILcom/google/common/cache/RemovalCause;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2525
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2529
    :cond_2
    iget-wide v2, p0, Lcom/google/common/cache/LocalCache$Segment;->totalWeight:J

    iget-wide v4, p0, Lcom/google/common/cache/LocalCache$Segment;->maxSegmentWeight:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 2530
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->getNextEvictable()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 2531
    .local v0, "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v1

    sget-object v2, Lcom/google/common/cache/RemovalCause;->SIZE:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/cache/LocalCache$Segment;->removeEntry(Lcom/google/common/cache/ReferenceEntry;ILcom/google/common/cache/RemovalCause;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2532
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method expand()V
    .locals 18
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2761
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2762
    .local v14, "oldTable":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v12

    .line 2763
    .local v12, "oldCapacity":I
    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v0, v17

    if-lt v12, v0, :cond_0

    .line 2826
    :goto_0
    return-void

    .line 2777
    :cond_0
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2778
    .local v5, "newCount":I
    shl-int/lit8 v17, v12, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/common/cache/LocalCache$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v10

    .line 2779
    .local v10, "newTable":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v17

    mul-int/lit8 v17, v17, 0x3

    div-int/lit8 v17, v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    .line 2780
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v17

    add-int/lit8 v8, v17, -0x1

    .line 2781
    .local v8, "newMask":I
    const/4 v13, 0x0

    .local v13, "oldIndex":I
    :goto_1
    if-ge v13, v12, :cond_6

    .line 2784
    invoke-virtual {v14, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/cache/ReferenceEntry;

    .line 2786
    .local v3, "head":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    if-eqz v3, :cond_1

    .line 2787
    invoke-interface {v3}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v11

    .line 2788
    .local v11, "next":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {v3}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v17

    and-int v4, v17, v8

    .line 2791
    .local v4, "headIndex":I
    if-nez v11, :cond_2

    .line 2792
    invoke-virtual {v10, v4, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2781
    .end local v4    # "headIndex":I
    .end local v11    # "next":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 2797
    .restart local v4    # "headIndex":I
    .restart local v11    # "next":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :cond_2
    move-object v15, v3

    .line 2798
    .local v15, "tail":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    move/from16 v16, v4

    .line 2799
    .local v16, "tailIndex":I
    move-object v2, v11

    .local v2, "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :goto_2
    if-eqz v2, :cond_4

    .line 2800
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v17

    and-int v7, v17, v8

    .line 2801
    .local v7, "newIndex":I
    move/from16 v0, v16

    if-eq v7, v0, :cond_3

    .line 2803
    move/from16 v16, v7

    .line 2804
    move-object v15, v2

    .line 2799
    :cond_3
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v2

    goto :goto_2

    .line 2807
    .end local v7    # "newIndex":I
    :cond_4
    move/from16 v0, v16

    invoke-virtual {v10, v0, v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2810
    move-object v2, v3

    :goto_3
    if-eq v2, v15, :cond_1

    .line 2811
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v17

    and-int v7, v17, v8

    .line 2812
    .restart local v7    # "newIndex":I
    invoke-virtual {v10, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/common/cache/ReferenceEntry;

    .line 2813
    .local v9, "newNext":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/google/common/cache/LocalCache$Segment;->copyEntry(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v6

    .line 2814
    .local v6, "newFirst":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    if-eqz v6, :cond_5

    .line 2815
    invoke-virtual {v10, v7, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2810
    :goto_4
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v2

    goto :goto_3

    .line 2817
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/common/cache/LocalCache$Segment;->removeCollectedEntry(Lcom/google/common/cache/ReferenceEntry;)V

    .line 2818
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 2824
    .end local v2    # "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v3    # "head":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v4    # "headIndex":I
    .end local v6    # "newFirst":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v7    # "newIndex":I
    .end local v9    # "newNext":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v11    # "next":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v15    # "tail":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v16    # "tailIndex":I
    :cond_6
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2825
    move-object/from16 v0, p0

    iput v5, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    goto/16 :goto_0
.end method

.method expireEntries(J)V
    .locals 3
    .param p1, "now"    # J
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2477
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainRecencyQueue()V

    .line 2480
    :cond_0
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/ReferenceEntry;

    .local v0, "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/common/cache/LocalCache;->isExpired(Lcom/google/common/cache/ReferenceEntry;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2481
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v1

    sget-object v2, Lcom/google/common/cache/RemovalCause;->EXPIRED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/cache/LocalCache$Segment;->removeEntry(Lcom/google/common/cache/ReferenceEntry;ILcom/google/common/cache/RemovalCause;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2482
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2485
    :cond_1
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    check-cast v0, Lcom/google/common/cache/ReferenceEntry;

    .restart local v0    # "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/common/cache/LocalCache;->isExpired(Lcom/google/common/cache/ReferenceEntry;J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2486
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v1

    sget-object v2, Lcom/google/common/cache/RemovalCause;->EXPIRED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/cache/LocalCache$Segment;->removeEntry(Lcom/google/common/cache/ReferenceEntry;ILcom/google/common/cache/RemovalCause;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2487
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2490
    :cond_2
    return-void
.end method

.method get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 9
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    const/4 v0, 0x0

    .line 2616
    :try_start_0
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v1, :cond_2

    .line 2617
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v1}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v6

    .line 2618
    .local v6, "now":J
    invoke-virtual {p0, p1, p2, v6, v7}, Lcom/google/common/cache/LocalCache$Segment;->getLiveEntry(Ljava/lang/Object;IJ)Lcom/google/common/cache/ReferenceEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2619
    .local v2, "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    if-nez v2, :cond_0

    .line 2632
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2630
    .end local v2    # "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v6    # "now":J
    :goto_0
    return-object v0

    .line 2623
    .restart local v2    # "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .restart local v6    # "now":J
    :cond_0
    :try_start_1
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v5

    .line 2624
    .local v5, "value":Ljava/lang/Object;, "TV;"
    if-eqz v5, :cond_1

    .line 2625
    invoke-virtual {p0, v2, v6, v7}, Lcom/google/common/cache/LocalCache$Segment;->recordRead(Lcom/google/common/cache/ReferenceEntry;J)V

    .line 2626
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v8, v0, Lcom/google/common/cache/LocalCache;->defaultLoader:Lcom/google/common/cache/CacheLoader;

    move-object v1, p0

    move v4, p2

    invoke-virtual/range {v1 .. v8}, Lcom/google/common/cache/LocalCache$Segment;->scheduleRefresh(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 2632
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    goto :goto_0

    .line 2628
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryDrainReferenceQueues()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2632
    .end local v2    # "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v5    # "value":Ljava/lang/Object;, "TV;"
    .end local v6    # "now":J
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    throw v0
.end method

.method get(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 11
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 2019
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "loader":Lcom/google/common/cache/CacheLoader;, "Lcom/google/common/cache/CacheLoader<-TK;TV;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2020
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2022
    :try_start_0
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v1, :cond_1

    .line 2024
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->getEntry(Ljava/lang/Object;I)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v2

    .line 2025
    .local v2, "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    if-eqz v2, :cond_1

    .line 2026
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v1}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v6

    .line 2027
    .local v6, "now":J
    invoke-virtual {p0, v2, v6, v7}, Lcom/google/common/cache/LocalCache$Segment;->getLiveValue(Lcom/google/common/cache/ReferenceEntry;J)Ljava/lang/Object;

    move-result-object v5

    .line 2028
    .local v5, "value":Ljava/lang/Object;, "TV;"
    if-eqz v5, :cond_0

    .line 2029
    invoke-virtual {p0, v2, v6, v7}, Lcom/google/common/cache/LocalCache$Segment;->recordRead(Lcom/google/common/cache/ReferenceEntry;J)V

    .line 2030
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordHits(I)V

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v8, p3

    .line 2031
    invoke-virtual/range {v1 .. v8}, Lcom/google/common/cache/LocalCache$Segment;->scheduleRefresh(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2051
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    .line 2041
    .end local v2    # "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v5    # "value":Ljava/lang/Object;, "TV;"
    .end local v6    # "now":J
    :goto_0
    return-object v1

    .line 2033
    .restart local v2    # "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .restart local v5    # "value":Ljava/lang/Object;, "TV;"
    .restart local v6    # "now":J
    :cond_0
    :try_start_1
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v10

    .line 2034
    .local v10, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-interface {v10}, Lcom/google/common/cache/LocalCache$ValueReference;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2035
    invoke-virtual {p0, v2, p1, v10}, Lcom/google/common/cache/LocalCache$Segment;->waitForLoadingValue(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 2051
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    goto :goto_0

    .line 2041
    .end local v2    # "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v5    # "value":Ljava/lang/Object;, "TV;"
    .end local v6    # "now":J
    .end local v10    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$Segment;->lockedGetOrLoad(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 2051
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    goto :goto_0

    .line 2042
    :catch_0
    move-exception v9

    .line 2043
    .local v9, "ee":Ljava/util/concurrent/ExecutionException;
    :try_start_3
    invoke-virtual {v9}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 2044
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_2

    .line 2045
    new-instance v1, Lcom/google/common/util/concurrent/ExecutionError;

    check-cast v0, Ljava/lang/Error;

    .end local v0    # "cause":Ljava/lang/Throwable;
    invoke-direct {v1, v0}, Lcom/google/common/util/concurrent/ExecutionError;-><init>(Ljava/lang/Error;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2051
    .end local v9    # "ee":Ljava/util/concurrent/ExecutionException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    throw v1

    .line 2046
    .restart local v0    # "cause":Ljava/lang/Throwable;
    .restart local v9    # "ee":Ljava/util/concurrent/ExecutionException;
    :cond_2
    :try_start_4
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_3

    .line 2047
    new-instance v1, Lcom/google/common/util/concurrent/UncheckedExecutionException;

    invoke-direct {v1, v0}, Lcom/google/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2049
    :cond_3
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method getAndRecordStats(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .locals 6
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$LoadingValueReference",
            "<TK;TV;>;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 2202
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .local p4, "newValue":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    const/4 v0, 0x0

    .line 2204
    .local v0, "value":Ljava/lang/Object;, "TV;"
    :try_start_0
    invoke-static {p4}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    .line 2205
    if-nez v0, :cond_1

    .line 2206
    new-instance v1, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CacheLoader returned null for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2212
    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v1

    if-nez v0, :cond_0

    .line 2213
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-virtual {p3}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->elapsedNanos()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    .line 2214
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$Segment;->removeLoadingValue(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;)Z

    :cond_0
    throw v1

    .line 2208
    .restart local v0    # "value":Ljava/lang/Object;, "TV;"
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-virtual {p3}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->elapsedNanos()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordLoadSuccess(J)V

    .line 2209
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/common/cache/LocalCache$Segment;->storeLoadedValue(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2212
    if-nez v0, :cond_2

    .line 2213
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-virtual {p3}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->elapsedNanos()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    .line 2214
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$Segment;->removeLoadingValue(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;)Z

    .line 2210
    :cond_2
    return-object v0
.end method

.method getEntry(Ljava/lang/Object;I)Lcom/google/common/cache/ReferenceEntry;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .line 2560
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    invoke-virtual {p0, p2}, Lcom/google/common/cache/LocalCache$Segment;->getFirst(I)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    .local v0, "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_3

    .line 2561
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v2

    if-eq v2, p2, :cond_1

    .line 2560
    :cond_0
    :goto_1
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    goto :goto_0

    .line 2565
    :cond_1
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2566
    .local v1, "entryKey":Ljava/lang/Object;, "TK;"
    if-nez v1, :cond_2

    .line 2567
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryDrainReferenceQueues()V

    goto :goto_1

    .line 2571
    :cond_2
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v2, v2, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2576
    .end local v0    # "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    :goto_2
    return-object v0

    .restart local v0    # "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method getFirst(I)Lcom/google/common/cache/ReferenceEntry;
    .locals 2
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2552
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2553
    .local v0, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/ReferenceEntry;

    return-object v1
.end method

.method getLiveEntry(Ljava/lang/Object;IJ)Lcom/google/common/cache/ReferenceEntry;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "IJ)",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    const/4 v1, 0x0

    .line 2581
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->getEntry(Ljava/lang/Object;I)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 2582
    .local v0, "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    if-nez v0, :cond_1

    move-object v0, v1

    .line 2588
    .end local v0    # "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :cond_0
    :goto_0
    return-object v0

    .line 2584
    .restart local v0    # "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :cond_1
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v2, v0, p3, p4}, Lcom/google/common/cache/LocalCache;->isExpired(Lcom/google/common/cache/ReferenceEntry;J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2585
    invoke-virtual {p0, p3, p4}, Lcom/google/common/cache/LocalCache$Segment;->tryExpireEntries(J)V

    move-object v0, v1

    .line 2586
    goto :goto_0
.end method

.method getLiveValue(Lcom/google/common/cache/ReferenceEntry;J)Ljava/lang/Object;
    .locals 4
    .param p2, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;J)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    const/4 v1, 0x0

    .line 2596
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2597
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryDrainReferenceQueues()V

    move-object v0, v1

    .line 2610
    :cond_0
    :goto_0
    return-object v0

    .line 2600
    :cond_1
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2601
    .local v0, "value":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_2

    .line 2602
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryDrainReferenceQueues()V

    move-object v0, v1

    .line 2603
    goto :goto_0

    .line 2606
    :cond_2
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v2, p1, p2, p3}, Lcom/google/common/cache/LocalCache;->isExpired(Lcom/google/common/cache/ReferenceEntry;J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2607
    invoke-virtual {p0, p2, p3}, Lcom/google/common/cache/LocalCache$Segment;->tryExpireEntries(J)V

    move-object v0, v1

    .line 2608
    goto :goto_0
.end method

.method getNextEvictable()Lcom/google/common/cache/ReferenceEntry;
    .locals 4
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2540
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/ReferenceEntry;

    .line 2541
    .local v0, "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/common/cache/LocalCache$ValueReference;->getWeight()I

    move-result v1

    .line 2542
    .local v1, "weight":I
    if-lez v1, :cond_0

    .line 2543
    return-object v0

    .line 2546
    .end local v0    # "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v1    # "weight":I
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1966
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "newTable":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    .line 1967
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->customWeigher()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/common/cache/LocalCache$Segment;->maxSegmentWeight:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1969
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    .line 1971
    :cond_0
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1972
    return-void
.end method

.method insertLoadingValueReference(Ljava/lang/Object;IZ)Lcom/google/common/cache/LocalCache$LoadingValueReference;
    .locals 18
    .param p2, "hash"    # I
    .param p3, "checkTime"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;IZ)",
            "Lcom/google/common/cache/LocalCache$LoadingValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .line 2269
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v4, 0x0

    .line 2270
    .local v4, "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 2272
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v13, v13, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v13}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v10

    .line 2273
    .local v10, "now":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2275
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2276
    .local v9, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    and-int v7, p2, v13

    .line 2277
    .local v7, "index":I
    invoke-virtual {v9, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/common/cache/ReferenceEntry;

    .line 2280
    .local v6, "first":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    move-object v4, v6

    :goto_0
    if-eqz v4, :cond_3

    .line 2281
    invoke-interface {v4}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 2282
    .local v5, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v4}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v13

    move/from16 v0, p2

    if-ne v13, v0, :cond_2

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v13, v13, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 2284
    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2287
    invoke-interface {v4}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v12

    .line 2288
    .local v12, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-interface {v12}, Lcom/google/common/cache/LocalCache$ValueReference;->isLoading()Z

    move-result v13

    if-nez v13, :cond_0

    if-eqz p3, :cond_1

    .line 2289
    invoke-interface {v4}, Lcom/google/common/cache/ReferenceEntry;->getWriteTime()J

    move-result-wide v14

    sub-long v14, v10, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-wide v0, v13, Lcom/google/common/cache/LocalCache;->refreshNanos:J

    move-wide/from16 v16, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v13, v14, v16

    if-gez v13, :cond_1

    .line 2293
    :cond_0
    const/4 v8, 0x0

    .line 2312
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2313
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2310
    .end local v5    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v12    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :goto_1
    return-object v8

    .line 2297
    .restart local v5    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v12    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2298
    new-instance v8, Lcom/google/common/cache/LocalCache$LoadingValueReference;

    invoke-direct {v8, v12}, Lcom/google/common/cache/LocalCache$LoadingValueReference;-><init>(Lcom/google/common/cache/LocalCache$ValueReference;)V

    .line 2300
    .local v8, "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    invoke-interface {v4, v8}, Lcom/google/common/cache/ReferenceEntry;->setValueReference(Lcom/google/common/cache/LocalCache$ValueReference;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2312
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2313
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_1

    .line 2280
    .end local v8    # "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .end local v12    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_2
    :try_start_2
    invoke-interface {v4}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v4

    goto :goto_0

    .line 2305
    .end local v5    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2306
    new-instance v8, Lcom/google/common/cache/LocalCache$LoadingValueReference;

    invoke-direct {v8}, Lcom/google/common/cache/LocalCache$LoadingValueReference;-><init>()V

    .line 2307
    .restart local v8    # "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/common/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v4

    .line 2308
    invoke-interface {v4, v8}, Lcom/google/common/cache/ReferenceEntry;->setValueReference(Lcom/google/common/cache/LocalCache$ValueReference;)V

    .line 2309
    invoke-virtual {v9, v7, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2312
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2313
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_1

    .line 2312
    .end local v6    # "first":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v7    # "index":I
    .end local v8    # "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .end local v9    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    .end local v10    # "now":J
    :catchall_0
    move-exception v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2313
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v13
.end method

.method loadAsync(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$LoadingValueReference",
            "<TK;TV;>;",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 2178
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .local p4, "loader":Lcom/google/common/cache/CacheLoader;, "Lcom/google/common/cache/CacheLoader<-TK;TV;>;"
    invoke-virtual {p3, p1, p4}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->loadFuture(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v5

    .line 2179
    .local v5, "loadingFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    new-instance v0, Lcom/google/common/cache/LocalCache$Segment$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment$1;-><init>(Lcom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 2191
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 2179
    invoke-interface {v5, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 2192
    return-object v5
.end method

.method loadSync(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 2
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$LoadingValueReference",
            "<TK;TV;>;",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 2169
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .local p4, "loader":Lcom/google/common/cache/CacheLoader;, "Lcom/google/common/cache/CacheLoader<-TK;TV;>;"
    invoke-virtual {p3, p1, p4}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->loadFuture(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 2170
    .local v0, "loadingFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/common/cache/LocalCache$Segment;->getAndRecordStats(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method lockedGetOrLoad(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 21
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 2057
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "loader":Lcom/google/common/cache/CacheLoader;, "Lcom/google/common/cache/CacheLoader<-TK;TV;>;"
    const/16 v20, 0x0

    .line 2058
    .local v20, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    const/4 v14, 0x0

    .line 2059
    .local v14, "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    const/4 v10, 0x1

    .line 2061
    .local v10, "createNewEntry":Z
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 2064
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v4}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v18

    .line 2065
    .local v18, "now":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2067
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v16, v4, -0x1

    .line 2068
    .local v16, "newCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-object/from16 v17, v0

    .line 2069
    .local v17, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    and-int v13, p2, v4

    .line 2070
    .local v13, "index":I
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/common/cache/ReferenceEntry;

    .line 2072
    .local v12, "first":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    move-object v11, v12

    .local v11, "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v11, :cond_0

    .line 2073
    invoke-interface {v11}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 2074
    .local v5, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v11}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v4

    move/from16 v0, p2

    if-ne v4, v0, :cond_5

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 2076
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2077
    invoke-interface {v11}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v20

    .line 2078
    invoke-interface/range {v20 .. v20}, Lcom/google/common/cache/LocalCache$ValueReference;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2079
    const/4 v10, 0x0

    .line 2106
    .end local v5    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_0
    :goto_1
    if-eqz v10, :cond_1

    .line 2107
    new-instance v15, Lcom/google/common/cache/LocalCache$LoadingValueReference;

    invoke-direct {v15}, Lcom/google/common/cache/LocalCache$LoadingValueReference;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2109
    .end local v14    # "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .local v15, "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    if-nez v11, :cond_6

    .line 2110
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v12}, Lcom/google/common/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v11

    .line 2111
    invoke-interface {v11, v15}, Lcom/google/common/cache/ReferenceEntry;->setValueReference(Lcom/google/common/cache/LocalCache$ValueReference;)V

    .line 2112
    move-object/from16 v0, v17

    invoke-virtual {v0, v13, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v14, v15

    .line 2118
    .end local v15    # "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .restart local v14    # "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    :cond_1
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2119
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2122
    if-eqz v10, :cond_7

    .line 2127
    :try_start_2
    monitor-enter v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2128
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v14, v3}, Lcom/google/common/cache/LocalCache$Segment;->loadSync(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v7

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2131
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    .line 2135
    :goto_3
    return-object v7

    .line 2081
    .restart local v5    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_2
    :try_start_4
    invoke-interface/range {v20 .. v20}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v7

    .line 2082
    .local v7, "value":Ljava/lang/Object;, "TV;"
    if-nez v7, :cond_3

    .line 2084
    invoke-interface/range {v20 .. v20}, Lcom/google/common/cache/LocalCache$ValueReference;->getWeight()I

    move-result v8

    sget-object v9, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object/from16 v4, p0

    move/from16 v6, p2

    .line 2083
    invoke-virtual/range {v4 .. v9}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    .line 2098
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v4, v11}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2099
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v4, v11}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2100
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 2118
    .end local v5    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v7    # "value":Ljava/lang/Object;, "TV;"
    .end local v11    # "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v12    # "first":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v13    # "index":I
    .end local v16    # "newCount":I
    .end local v17    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    .end local v18    # "now":J
    :catchall_0
    move-exception v4

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2119
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v4

    .line 2085
    .restart local v5    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v7    # "value":Ljava/lang/Object;, "TV;"
    .restart local v11    # "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .restart local v12    # "first":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .restart local v13    # "index":I
    .restart local v16    # "newCount":I
    .restart local v17    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    .restart local v18    # "now":J
    :cond_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    move-wide/from16 v0, v18

    invoke-virtual {v4, v11, v0, v1}, Lcom/google/common/cache/LocalCache;->isExpired(Lcom/google/common/cache/ReferenceEntry;J)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2089
    invoke-interface/range {v20 .. v20}, Lcom/google/common/cache/LocalCache$ValueReference;->getWeight()I

    move-result v8

    sget-object v9, Lcom/google/common/cache/RemovalCause;->EXPIRED:Lcom/google/common/cache/RemovalCause;

    move-object/from16 v4, p0

    move/from16 v6, p2

    .line 2088
    invoke-virtual/range {v4 .. v9}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    goto :goto_4

    .line 2091
    :cond_4
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v11, v1, v2}, Lcom/google/common/cache/LocalCache$Segment;->recordLockedRead(Lcom/google/common/cache/ReferenceEntry;J)V

    .line 2092
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordHits(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2118
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2119
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_3

    .line 2072
    .end local v7    # "value":Ljava/lang/Object;, "TV;"
    :cond_5
    :try_start_6
    invoke-interface {v11}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v11

    goto/16 :goto_0

    .line 2114
    .end local v5    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v14    # "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .restart local v15    # "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    :cond_6
    :try_start_7
    invoke-interface {v11, v15}, Lcom/google/common/cache/ReferenceEntry;->setValueReference(Lcom/google/common/cache/LocalCache$ValueReference;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object v14, v15

    .end local v15    # "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .restart local v14    # "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    goto/16 :goto_2

    .line 2129
    :catchall_1
    move-exception v4

    :try_start_8
    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 2131
    :catchall_2
    move-exception v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    const/4 v8, 0x1

    invoke-interface {v6, v8}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    throw v4

    .line 2135
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v11, v1, v2}, Lcom/google/common/cache/LocalCache$Segment;->waitForLoadingValue(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;)Ljava/lang/Object;

    move-result-object v7

    goto/16 :goto_3

    .line 2118
    .end local v14    # "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .restart local v15    # "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    :catchall_3
    move-exception v4

    move-object v14, v15

    .end local v15    # "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .restart local v14    # "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    goto :goto_5
.end method

.method newEntry(Ljava/lang/Object;ILcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;
    .locals 2
    .param p2, "hash"    # I
    .param p3    # Lcom/google/common/cache/ReferenceEntry;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1976
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->entryFactory:Lcom/google/common/cache/LocalCache$EntryFactory;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p2, p3}, Lcom/google/common/cache/LocalCache$EntryFactory;->newEntry(Lcom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1962
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method postReadCleanup()V
    .locals 1

    .prologue
    .line 3335
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_0

    .line 3336
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->cleanUp()V

    .line 3338
    :cond_0
    return-void
.end method

.method postWriteCleanup()V
    .locals 0

    .prologue
    .line 3353
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->runUnlockedCleanup()V

    .line 3354
    return-void
.end method

.method preWriteCleanup(J)V
    .locals 1
    .param p1, "now"    # J
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 3348
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->runLockedCleanup(J)V

    .line 3349
    return-void
.end method

.method put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 21
    .param p2, "hash"    # I
    .param p4, "onlyIfAbsent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .line 2685
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 2687
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v4}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v12

    .line 2688
    .local v12, "now":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2690
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v18, v4, 0x1

    .line 2691
    .local v18, "newCount":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    move/from16 v0, v18

    if-le v0, v4, :cond_0

    .line 2692
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->expand()V

    .line 2693
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v18, v4, 0x1

    .line 2696
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-object/from16 v19, v0

    .line 2697
    .local v19, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    and-int v17, p2, v4

    .line 2698
    .local v17, "index":I
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/common/cache/ReferenceEntry;

    .line 2701
    .local v16, "first":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    move-object/from16 v14, v16

    .local v14, "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v14, :cond_5

    .line 2702
    invoke-interface {v14}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v15

    .line 2703
    .local v15, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v14}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v4

    move/from16 v0, p2

    if-ne v4, v0, :cond_4

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 2705
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v15}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2708
    invoke-interface {v14}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v20

    .line 2709
    .local v20, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-interface/range {v20 .. v20}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v7

    .line 2711
    .local v7, "entryValue":Ljava/lang/Object;, "TV;"
    if-nez v7, :cond_2

    .line 2712
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2713
    invoke-interface/range {v20 .. v20}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2715
    invoke-interface/range {v20 .. v20}, Lcom/google/common/cache/LocalCache$ValueReference;->getWeight()I

    move-result v8

    sget-object v9, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    .line 2714
    invoke-virtual/range {v4 .. v9}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    move-object/from16 v8, p0

    move-object v9, v14

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    .line 2716
    invoke-virtual/range {v8 .. v13}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2717
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    move/from16 v18, v0

    .line 2722
    :goto_1
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2723
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries(Lcom/google/common/cache/ReferenceEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2724
    const/4 v7, 0x0

    .line 2753
    .end local v7    # "entryValue":Ljava/lang/Object;, "TV;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2754
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2751
    .end local v15    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v20    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :goto_2
    return-object v7

    .restart local v7    # "entryValue":Ljava/lang/Object;, "TV;"
    .restart local v15    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v20    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_1
    move-object/from16 v8, p0

    move-object v9, v14

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    .line 2719
    :try_start_1
    invoke-virtual/range {v8 .. v13}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2720
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v18, v4, 0x1

    goto :goto_1

    .line 2725
    :cond_2
    if-eqz p4, :cond_3

    .line 2729
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12, v13}, Lcom/google/common/cache/LocalCache$Segment;->recordLockedRead(Lcom/google/common/cache/ReferenceEntry;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2753
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2754
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_2

    .line 2733
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2735
    invoke-interface/range {v20 .. v20}, Lcom/google/common/cache/LocalCache$ValueReference;->getWeight()I

    move-result v8

    sget-object v9, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    .line 2734
    invoke-virtual/range {v4 .. v9}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    move-object/from16 v8, p0

    move-object v9, v14

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    .line 2736
    invoke-virtual/range {v8 .. v13}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2737
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries(Lcom/google/common/cache/ReferenceEntry;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2753
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2754
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_2

    .line 2701
    .end local v7    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v20    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_4
    :try_start_3
    invoke-interface {v14}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v14

    goto/16 :goto_0

    .line 2744
    .end local v15    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2745
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v9

    .local v9, "newEntry":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    move-object/from16 v8, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    .line 2746
    invoke-virtual/range {v8 .. v13}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2747
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2748
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v18, v4, 0x1

    .line 2749
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2750
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries(Lcom/google/common/cache/ReferenceEntry;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2751
    const/4 v7, 0x0

    .line 2753
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2754
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto/16 :goto_2

    .line 2753
    .end local v9    # "newEntry":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v12    # "now":J
    .end local v14    # "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v16    # "first":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v17    # "index":I
    .end local v18    # "newCount":I
    .end local v19    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    :catchall_0
    move-exception v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2754
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v4
.end method

.method reclaimKey(Lcom/google/common/cache/ReferenceEntry;I)Z
    .locals 12
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;I)Z"
        }
    .end annotation

    .prologue
    .line 3190
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3192
    :try_start_0
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v9, v0, -0x1

    .line 3193
    .local v9, "newCount":I
    iget-object v11, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3194
    .local v11, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v8, p2, v0

    .line 3195
    .local v8, "index":I
    invoke-virtual {v11, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/ReferenceEntry;

    .line 3197
    .local v1, "first":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    move-object v2, v1

    .local v2, "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 3198
    if-ne v2, p1, :cond_0

    .line 3199
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3204
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 3206
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v5

    .line 3207
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v6

    sget-object v7, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object v0, p0

    move v4, p2

    .line 3201
    invoke-virtual/range {v0 .. v7}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v10

    .line 3209
    .local v10, "newFirst":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v9, v0, -0x1

    .line 3210
    invoke-virtual {v11, v8, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3211
    iput v9, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3212
    const/4 v0, 0x1

    .line 3218
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3219
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3216
    .end local v10    # "newFirst":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :goto_1
    return v0

    .line 3197
    :cond_0
    :try_start_1
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3216
    :cond_1
    const/4 v0, 0x0

    .line 3218
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3219
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_1

    .line 3218
    .end local v1    # "first":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v2    # "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v8    # "index":I
    .end local v9    # "newCount":I
    .end local v11    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3219
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0
.end method

.method reclaimValue(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;)Z
    .locals 14
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$ValueReference",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 3225
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3227
    :try_start_0
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v10, v1, -0x1

    .line 3228
    .local v10, "newCount":I
    iget-object v12, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3229
    .local v12, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v9, p2, v1

    .line 3230
    .local v9, "index":I
    invoke-virtual {v12, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/cache/ReferenceEntry;

    .line 3232
    .local v2, "first":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    move-object v3, v2

    .local v3, "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v3, :cond_3

    .line 3233
    invoke-interface {v3}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 3234
    .local v4, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v3}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v1

    move/from16 v0, p2

    if-ne v1, v0, :cond_2

    if-eqz v4, :cond_2

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 3236
    invoke-virtual {v1, p1, v4}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3237
    invoke-interface {v3}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v13

    .line 3238
    .local v13, "v":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    move-object/from16 v0, p3

    if-ne v13, v0, :cond_1

    .line 3239
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3246
    invoke-interface/range {p3 .. p3}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v6

    sget-object v8, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object v1, p0

    move/from16 v5, p2

    move-object/from16 v7, p3

    .line 3241
    invoke-virtual/range {v1 .. v8}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v11

    .line 3249
    .local v11, "newFirst":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v10, v1, -0x1

    .line 3250
    invoke-virtual {v12, v9, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3251
    iput v10, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3252
    const/4 v1, 0x1

    .line 3260
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3261
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3262
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3258
    .end local v4    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v11    # "newFirst":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v13    # "v":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_0
    :goto_1
    return v1

    .line 3254
    .restart local v4    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v13    # "v":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_1
    const/4 v1, 0x0

    .line 3260
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3261
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3262
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_1

    .line 3232
    .end local v13    # "v":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_2
    :try_start_1
    invoke-interface {v3}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    goto :goto_0

    .line 3258
    .end local v4    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_3
    const/4 v1, 0x0

    .line 3260
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3261
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3262
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_1

    .line 3260
    .end local v2    # "first":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v3    # "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v9    # "index":I
    .end local v10    # "newCount":I
    .end local v12    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3261
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result v5

    if-nez v5, :cond_4

    .line 3262
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    :cond_4
    throw v1
.end method

.method recordLockedRead(Lcom/google/common/cache/ReferenceEntry;J)V
    .locals 2
    .param p2, "now"    # J
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;J)V"
        }
    .end annotation

    .prologue
    .line 2415
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->recordsAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2416
    invoke-interface {p1, p2, p3}, Lcom/google/common/cache/ReferenceEntry;->setAccessTime(J)V

    .line 2418
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2419
    return-void
.end method

.method recordRead(Lcom/google/common/cache/ReferenceEntry;J)V
    .locals 2
    .param p2, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;J)V"
        }
    .end annotation

    .prologue
    .line 2400
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->recordsAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2401
    invoke-interface {p1, p2, p3}, Lcom/google/common/cache/ReferenceEntry;->setAccessTime(J)V

    .line 2403
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->recencyQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2404
    return-void
.end method

.method recordWrite(Lcom/google/common/cache/ReferenceEntry;IJ)V
    .locals 5
    .param p2, "weight"    # I
    .param p3, "now"    # J
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;IJ)V"
        }
    .end annotation

    .prologue
    .line 2428
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainRecencyQueue()V

    .line 2429
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache$Segment;->totalWeight:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/cache/LocalCache$Segment;->totalWeight:J

    .line 2431
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->recordsAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2432
    invoke-interface {p1, p3, p4}, Lcom/google/common/cache/ReferenceEntry;->setAccessTime(J)V

    .line 2434
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->recordsWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2435
    invoke-interface {p1, p3, p4}, Lcom/google/common/cache/ReferenceEntry;->setWriteTime(J)V

    .line 2437
    :cond_1
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2438
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2439
    return-void
.end method

.method refresh(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;Z)Ljava/lang/Object;
    .locals 4
    .param p2, "hash"    # I
    .param p4, "checkTime"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;Z)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "loader":Lcom/google/common/cache/CacheLoader;, "Lcom/google/common/cache/CacheLoader<-TK;TV;>;"
    const/4 v2, 0x0

    .line 2245
    .line 2246
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/common/cache/LocalCache$Segment;->insertLoadingValueReference(Ljava/lang/Object;IZ)Lcom/google/common/cache/LocalCache$LoadingValueReference;

    move-result-object v0

    .line 2247
    .local v0, "loadingValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    if-nez v0, :cond_1

    .line 2259
    :cond_0
    :goto_0
    return-object v2

    .line 2251
    :cond_1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/google/common/cache/LocalCache$Segment;->loadAsync(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 2252
    .local v1, "result":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<TV;>;"
    invoke-interface {v1}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2254
    :try_start_0
    invoke-static {v1}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 2255
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 16
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .line 2946
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 2948
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v2, v2, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v2}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v14

    .line 2949
    .local v14, "now":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2951
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v11, v2, -0x1

    .line 2952
    .local v11, "newCount":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2953
    .local v13, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    and-int v10, p2, v2

    .line 2954
    .local v10, "index":I
    invoke-virtual {v13, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/cache/ReferenceEntry;

    .line 2956
    .local v3, "first":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    move-object v4, v3

    .local v4, "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v4, :cond_3

    .line 2957
    invoke-interface {v4}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 2958
    .local v5, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v4}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v2

    move/from16 v0, p2

    if-ne v2, v0, :cond_2

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v2, v2, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 2960
    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2961
    invoke-interface {v4}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v8

    .line 2962
    .local v8, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-interface {v8}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v7

    .line 2965
    .local v7, "entryValue":Ljava/lang/Object;, "TV;"
    if-eqz v7, :cond_0

    .line 2966
    sget-object v9, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;

    .line 2974
    .local v9, "cause":Lcom/google/common/cache/RemovalCause;
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    move-object/from16 v2, p0

    move/from16 v6, p2

    .line 2976
    invoke-virtual/range {v2 .. v9}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v12

    .line 2977
    .local v12, "newFirst":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v11, v2, -0x1

    .line 2978
    invoke-virtual {v13, v10, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2979
    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2986
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2987
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2984
    .end local v5    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v7    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v8    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .end local v9    # "cause":Lcom/google/common/cache/RemovalCause;
    .end local v12    # "newFirst":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :goto_2
    return-object v7

    .line 2967
    .restart local v5    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v7    # "entryValue":Ljava/lang/Object;, "TV;"
    .restart local v8    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_0
    :try_start_1
    invoke-interface {v8}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2968
    sget-object v9, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v9    # "cause":Lcom/google/common/cache/RemovalCause;
    goto :goto_1

    .line 2971
    .end local v9    # "cause":Lcom/google/common/cache/RemovalCause;
    :cond_1
    const/4 v7, 0x0

    .line 2986
    .end local v7    # "entryValue":Ljava/lang/Object;, "TV;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2987
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_2

    .line 2956
    .end local v8    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_2
    :try_start_2
    invoke-interface {v4}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    goto :goto_0

    .line 2984
    .end local v5    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_3
    const/4 v7, 0x0

    .line 2986
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2987
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_2

    .line 2986
    .end local v3    # "first":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v4    # "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v10    # "index":I
    .end local v11    # "newCount":I
    .end local v13    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    .end local v14    # "now":J
    :catchall_0
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2987
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v2
.end method

.method remove(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 16
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 3052
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3054
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v2, v2, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v2}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v14

    .line 3055
    .local v14, "now":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 3057
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v11, v2, -0x1

    .line 3058
    .local v11, "newCount":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3059
    .local v13, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    and-int v10, p2, v2

    .line 3060
    .local v10, "index":I
    invoke-virtual {v13, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/cache/ReferenceEntry;

    .line 3062
    .local v3, "first":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    move-object v4, v3

    .local v4, "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v4, :cond_4

    .line 3063
    invoke-interface {v4}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 3064
    .local v5, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v4}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v2

    move/from16 v0, p2

    if-ne v2, v0, :cond_3

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v2, v2, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 3066
    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3067
    invoke-interface {v4}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v8

    .line 3068
    .local v8, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-interface {v8}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v7

    .line 3071
    .local v7, "entryValue":Ljava/lang/Object;, "TV;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v2, v2, Lcom/google/common/cache/LocalCache;->valueEquivalence:Lcom/google/common/base/Equivalence;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v7}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3072
    sget-object v9, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;

    .line 3080
    .local v9, "cause":Lcom/google/common/cache/RemovalCause;
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    move-object/from16 v2, p0

    move/from16 v6, p2

    .line 3082
    invoke-virtual/range {v2 .. v9}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v12

    .line 3083
    .local v12, "newFirst":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v11, v2, -0x1

    .line 3084
    invoke-virtual {v13, v10, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3085
    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3086
    sget-object v2, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v9, v2, :cond_2

    const/4 v2, 0x1

    .line 3092
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3093
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3090
    .end local v5    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v7    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v8    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .end local v9    # "cause":Lcom/google/common/cache/RemovalCause;
    .end local v12    # "newFirst":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :goto_3
    return v2

    .line 3073
    .restart local v5    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v7    # "entryValue":Ljava/lang/Object;, "TV;"
    .restart local v8    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_0
    if-nez v7, :cond_1

    :try_start_1
    invoke-interface {v8}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3074
    sget-object v9, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v9    # "cause":Lcom/google/common/cache/RemovalCause;
    goto :goto_1

    .line 3077
    .end local v9    # "cause":Lcom/google/common/cache/RemovalCause;
    :cond_1
    const/4 v2, 0x0

    .line 3092
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3093
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_3

    .line 3086
    .restart local v9    # "cause":Lcom/google/common/cache/RemovalCause;
    .restart local v12    # "newFirst":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 3062
    .end local v7    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v8    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    .end local v9    # "cause":Lcom/google/common/cache/RemovalCause;
    .end local v12    # "newFirst":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :cond_3
    :try_start_2
    invoke-interface {v4}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    goto :goto_0

    .line 3090
    .end local v5    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_4
    const/4 v2, 0x0

    .line 3092
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3093
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_3

    .line 3092
    .end local v3    # "first":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v4    # "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v10    # "index":I
    .end local v11    # "newCount":I
    .end local v13    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    .end local v14    # "now":J
    :catchall_0
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3093
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v2
.end method

.method removeCollectedEntry(Lcom/google/common/cache/ReferenceEntry;)V
    .locals 6
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3178
    .line 3179
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 3180
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v2

    .line 3181
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v3

    .line 3182
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->getWeight()I

    move-result v4

    sget-object v5, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object v0, p0

    .line 3178
    invoke-virtual/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    .line 3184
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3185
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3186
    return-void
.end method

.method removeEntry(Lcom/google/common/cache/ReferenceEntry;ILcom/google/common/cache/RemovalCause;)Z
    .locals 12
    .param p2, "hash"    # I
    .param p3, "cause"    # Lcom/google/common/cache/RemovalCause;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;I",
            "Lcom/google/common/cache/RemovalCause;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 3303
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v9, v0, -0x1

    .line 3304
    .local v9, "newCount":I
    iget-object v11, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3305
    .local v11, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v8, p2, v0

    .line 3306
    .local v8, "index":I
    invoke-virtual {v11, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/ReferenceEntry;

    .line 3308
    .local v1, "first":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    move-object v2, v1

    .local v2, "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 3309
    if-ne v2, p1, :cond_0

    .line 3310
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3315
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 3317
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v5

    .line 3318
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v6

    move-object v0, p0

    move v4, p2

    move-object v7, p3

    .line 3312
    invoke-virtual/range {v0 .. v7}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v10

    .line 3320
    .local v10, "newFirst":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v9, v0, -0x1

    .line 3321
    invoke-virtual {v11, v8, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3322
    iput v9, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3323
    const/4 v0, 0x1

    .line 3327
    .end local v10    # "newFirst":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :goto_1
    return v0

    .line 3308
    :cond_0
    invoke-interface {v2}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v2

    goto :goto_0

    .line 3327
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method removeEntryFromChain(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;
    .locals 4
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .line 3161
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "first":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .local p2, "entry":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3162
    .local v1, "newCount":I
    invoke-interface {p2}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v2

    .line 3163
    .local v2, "newFirst":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    move-object v0, p1

    .local v0, "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eq v0, p2, :cond_1

    .line 3164
    invoke-virtual {p0, v0, v2}, Lcom/google/common/cache/LocalCache$Segment;->copyEntry(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v3

    .line 3165
    .local v3, "next":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    if-eqz v3, :cond_0

    .line 3166
    move-object v2, v3

    .line 3163
    :goto_1
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    goto :goto_0

    .line 3168
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache$Segment;->removeCollectedEntry(Lcom/google/common/cache/ReferenceEntry;)V

    .line 3169
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 3172
    .end local v3    # "next":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :cond_1
    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3173
    return-object v2
.end method

.method removeLoadingValue(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;)Z
    .locals 9
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$LoadingValueReference",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "valueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    const/4 v7, 0x0

    .line 3268
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3270
    :try_start_0
    iget-object v5, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3271
    .local v5, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    and-int v3, p2, v8

    .line 3272
    .local v3, "index":I
    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/cache/ReferenceEntry;

    .line 3274
    .local v2, "first":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    move-object v0, v2

    .local v0, "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_3

    .line 3275
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 3276
    .local v1, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v8

    if-ne v8, p2, :cond_2

    if-eqz v1, :cond_2

    iget-object v8, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v8, v8, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 3278
    invoke-virtual {v8, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3279
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v6

    .line 3280
    .local v6, "v":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    if-ne v6, p3, :cond_1

    .line 3281
    invoke-virtual {p3}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->isActive()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3282
    invoke-virtual {p3}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->getOldValue()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v7

    invoke-interface {v0, v7}, Lcom/google/common/cache/ReferenceEntry;->setValueReference(Lcom/google/common/cache/LocalCache$ValueReference;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3287
    :goto_1
    const/4 v7, 0x1

    .line 3295
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3296
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3293
    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v6    # "v":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :goto_2
    return v7

    .line 3284
    .restart local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v6    # "v":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_0
    :try_start_1
    invoke-virtual {p0, v2, v0}, Lcom/google/common/cache/LocalCache$Segment;->removeEntryFromChain(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v4

    .line 3285
    .local v4, "newFirst":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3295
    .end local v0    # "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v2    # "first":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v3    # "index":I
    .end local v4    # "newFirst":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v5    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    .end local v6    # "v":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :catchall_0
    move-exception v7

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3296
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v7

    .line 3295
    .restart local v0    # "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .restart local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v2    # "first":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .restart local v3    # "index":I
    .restart local v5    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    .restart local v6    # "v":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3296
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_2

    .line 3274
    .end local v6    # "v":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_2
    :try_start_2
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 3295
    .end local v1    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3296
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_2
.end method

.method removeValueFromChain(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/ReferenceEntry;
    .locals 6
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p4, "hash"    # I
    .param p7, "cause"    # Lcom/google/common/cache/RemovalCause;
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;TK;ITV;",
            "Lcom/google/common/cache/LocalCache$ValueReference",
            "<TK;TV;>;",
            "Lcom/google/common/cache/RemovalCause;",
            ")",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .line 3145
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "first":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .local p2, "entry":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .local p3, "key":Ljava/lang/Object;, "TK;"
    .local p5, "value":Ljava/lang/Object;, "TV;"
    .local p6, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-interface {p6}, Lcom/google/common/cache/LocalCache$ValueReference;->getWeight()I

    move-result v4

    move-object v0, p0

    move-object v1, p3

    move v2, p4

    move-object v3, p5

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    .line 3146
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3147
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3149
    invoke-interface {p6}, Lcom/google/common/cache/LocalCache$ValueReference;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3150
    const/4 v0, 0x0

    invoke-interface {p6, v0}, Lcom/google/common/cache/LocalCache$ValueReference;->notifyNewValue(Ljava/lang/Object;)V

    .line 3153
    .end local p1    # "first":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :goto_0
    return-object p1

    .restart local p1    # "first":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->removeEntryFromChain(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object p1

    goto :goto_0
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 24
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .line 2891
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 2893
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v4}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v22

    .line 2894
    .local v22, "now":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-object/from16 v21, v0

    .line 2897
    .local v21, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    and-int v18, p2, v4

    .line 2898
    .local v18, "index":I
    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/cache/ReferenceEntry;

    .line 2900
    .local v5, "first":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    move-object v6, v5

    .local v6, "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v6, :cond_3

    .line 2901
    invoke-interface {v6}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 2902
    .local v7, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v6}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v4

    move/from16 v0, p2

    if-ne v4, v0, :cond_2

    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 2904
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v7}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2905
    invoke-interface {v6}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v10

    .line 2906
    .local v10, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-interface {v10}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v9

    .line 2907
    .local v9, "entryValue":Ljava/lang/Object;, "TV;"
    if-nez v9, :cond_1

    .line 2908
    invoke-interface {v10}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2910
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v19, v4, -0x1

    .line 2911
    .local v19, "newCount":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2912
    sget-object v11, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object/from16 v4, p0

    move/from16 v8, p2

    .line 2913
    invoke-virtual/range {v4 .. v11}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v20

    .line 2921
    .local v20, "newFirst":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v19, v4, -0x1

    .line 2922
    move-object/from16 v0, v21

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2923
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2925
    .end local v19    # "newCount":I
    .end local v20    # "newFirst":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :cond_0
    const/4 v9, 0x0

    .line 2939
    .end local v9    # "entryValue":Ljava/lang/Object;, "TV;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2940
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2937
    .end local v7    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v10    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :goto_1
    return-object v9

    .line 2928
    .restart local v7    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v9    # "entryValue":Ljava/lang/Object;, "TV;"
    .restart local v10    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2930
    invoke-interface {v10}, Lcom/google/common/cache/LocalCache$ValueReference;->getWeight()I

    move-result v15

    sget-object v16, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    move-object v14, v9

    .line 2929
    invoke-virtual/range {v11 .. v16}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    move-object/from16 v12, p0

    move-object v13, v6

    move-object/from16 v14, p1

    move-object/from16 v15, p3

    move-wide/from16 v16, v22

    .line 2931
    invoke-virtual/range {v12 .. v17}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2932
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries(Lcom/google/common/cache/ReferenceEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2939
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2940
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_1

    .line 2900
    .end local v9    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v10    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_2
    :try_start_2
    invoke-interface {v6}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    goto/16 :goto_0

    .line 2937
    .end local v7    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_3
    const/4 v9, 0x0

    .line 2939
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2940
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_1

    .line 2939
    .end local v5    # "first":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v6    # "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v18    # "index":I
    .end local v21    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    .end local v22    # "now":J
    :catchall_0
    move-exception v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2940
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v4
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 24
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 2829
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "oldValue":Ljava/lang/Object;, "TV;"
    .local p4, "newValue":Ljava/lang/Object;, "TV;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 2831
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v4}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v22

    .line 2832
    .local v22, "now":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-object/from16 v21, v0

    .line 2835
    .local v21, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    and-int v18, p2, v4

    .line 2836
    .local v18, "index":I
    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/cache/ReferenceEntry;

    .line 2838
    .local v5, "first":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    move-object v6, v5

    .local v6, "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v6, :cond_4

    .line 2839
    invoke-interface {v6}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 2840
    .local v7, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v6}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v4

    move/from16 v0, p2

    if-ne v4, v0, :cond_3

    if-eqz v7, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 2842
    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v7}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2843
    invoke-interface {v6}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v10

    .line 2844
    .local v10, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-interface {v10}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v9

    .line 2845
    .local v9, "entryValue":Ljava/lang/Object;, "TV;"
    if-nez v9, :cond_1

    .line 2846
    invoke-interface {v10}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2848
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v19, v4, -0x1

    .line 2849
    .local v19, "newCount":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2850
    sget-object v11, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object/from16 v4, p0

    move/from16 v8, p2

    .line 2851
    invoke-virtual/range {v4 .. v11}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v20

    .line 2859
    .local v20, "newFirst":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v19, v4, -0x1

    .line 2860
    move-object/from16 v0, v21

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2861
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2863
    .end local v19    # "newCount":I
    .end local v20    # "newFirst":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :cond_0
    const/4 v4, 0x0

    .line 2884
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2885
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2882
    .end local v7    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v9    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v10    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :goto_1
    return v4

    .line 2866
    .restart local v7    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v9    # "entryValue":Ljava/lang/Object;, "TV;"
    .restart local v10    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->valueEquivalence:Lcom/google/common/base/Equivalence;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v9}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2867
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2869
    invoke-interface {v10}, Lcom/google/common/cache/LocalCache$ValueReference;->getWeight()I

    move-result v15

    sget-object v16, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    move-object v14, v9

    .line 2868
    invoke-virtual/range {v11 .. v16}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    move-object/from16 v12, p0

    move-object v13, v6

    move-object/from16 v14, p1

    move-object/from16 v15, p4

    move-wide/from16 v16, v22

    .line 2870
    invoke-virtual/range {v12 .. v17}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2871
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries(Lcom/google/common/cache/ReferenceEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2872
    const/4 v4, 0x1

    .line 2884
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2885
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_1

    .line 2876
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v6, v1, v2}, Lcom/google/common/cache/LocalCache$Segment;->recordLockedRead(Lcom/google/common/cache/ReferenceEntry;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2877
    const/4 v4, 0x0

    .line 2884
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2885
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_1

    .line 2838
    .end local v9    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v10    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_3
    :try_start_3
    invoke-interface {v6}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    goto/16 :goto_0

    .line 2882
    .end local v7    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_4
    const/4 v4, 0x0

    .line 2884
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2885
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_1

    .line 2884
    .end local v5    # "first":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v6    # "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v18    # "index":I
    .end local v21    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    .end local v22    # "now":J
    :catchall_0
    move-exception v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2885
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v4
.end method

.method runLockedCleanup(J)V
    .locals 3
    .param p1, "now"    # J

    .prologue
    .line 3363
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3365
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainReferenceQueues()V

    .line 3366
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->expireEntries(J)V

    .line 3367
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3369
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3372
    :cond_0
    return-void

    .line 3369
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    throw v0
.end method

.method runUnlockedCleanup()V
    .locals 1

    .prologue
    .line 3376
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3377
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->processPendingNotifications()V

    .line 3379
    :cond_0
    return-void
.end method

.method scheduleRefresh(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 7
    .param p3, "hash"    # I
    .param p5, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;TK;ITV;J",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 2226
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "oldValue":Ljava/lang/Object;, "TV;"
    .local p7, "loader":Lcom/google/common/cache/CacheLoader;, "Lcom/google/common/cache/CacheLoader<-TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v1}, Lcom/google/common/cache/LocalCache;->refreshes()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2227
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getWriteTime()J

    move-result-wide v2

    sub-long v2, p5, v2

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-wide v4, v1, Lcom/google/common/cache/LocalCache;->refreshNanos:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 2228
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ValueReference;->isLoading()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2229
    const/4 v1, 0x1

    invoke-virtual {p0, p2, p3, p7, v1}, Lcom/google/common/cache/LocalCache$Segment;->refresh(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;Z)Ljava/lang/Object;

    move-result-object v0

    .line 2230
    .local v0, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    .line 2234
    .end local v0    # "newValue":Ljava/lang/Object;, "TV;"
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p4

    goto :goto_0
.end method

.method setValue(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 6
    .param p4, "now"    # J
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;TK;TV;J)V"
        }
    .end annotation

    .prologue
    .line 2005
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    .line 2006
    .local v0, "previous":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v3, v3, Lcom/google/common/cache/LocalCache;->weigher:Lcom/google/common/cache/Weigher;

    invoke-interface {v3, p2, p3}, Lcom/google/common/cache/Weigher;->weigh(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 2007
    .local v2, "weight":I
    if-ltz v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    const-string v4, "Weights must be non-negative"

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 2009
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v3, v3, Lcom/google/common/cache/LocalCache;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    .line 2010
    invoke-virtual {v3, p0, p1, p3, v2}, Lcom/google/common/cache/LocalCache$Strength;->referenceValue(Lcom/google/common/cache/LocalCache$Segment;Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;I)Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v1

    .line 2011
    .local v1, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-interface {p1, v1}, Lcom/google/common/cache/ReferenceEntry;->setValueReference(Lcom/google/common/cache/LocalCache$ValueReference;)V

    .line 2012
    invoke-virtual {p0, p1, v2, p4, p5}, Lcom/google/common/cache/LocalCache$Segment;->recordWrite(Lcom/google/common/cache/ReferenceEntry;IJ)V

    .line 2013
    invoke-interface {v0, p3}, Lcom/google/common/cache/LocalCache$ValueReference;->notifyNewValue(Ljava/lang/Object;)V

    .line 2014
    return-void

    .line 2007
    .end local v1    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method storeLoadedValue(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Ljava/lang/Object;)Z
    .locals 28
    .param p2, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$LoadingValueReference",
            "<TK;TV;>;TV;)Z"
        }
    .end annotation

    .prologue
    .line 2993
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "oldValueReference":Lcom/google/common/cache/LocalCache$LoadingValueReference;, "Lcom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .local p4, "newValue":Ljava/lang/Object;, "TV;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 2995
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v4}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v14

    .line 2996
    .local v14, "now":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2998
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v25, v4, 0x1

    .line 2999
    .local v25, "newCount":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    move/from16 v0, v25

    if-le v0, v4, :cond_0

    .line 3000
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->expand()V

    .line 3001
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v25, v4, 0x1

    .line 3004
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-object/from16 v26, v0

    .line 3005
    .local v26, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    and-int v24, p2, v4

    .line 3006
    .local v24, "index":I
    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/google/common/cache/ReferenceEntry;

    .line 3008
    .local v23, "first":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    move-object/from16 v11, v23

    .local v11, "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :goto_0
    if-eqz v11, :cond_6

    .line 3009
    invoke-interface {v11}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v22

    .line 3010
    .local v22, "entryKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v11}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v4

    move/from16 v0, p2

    if-ne v4, v0, :cond_5

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 3012
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3013
    invoke-interface {v11}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v27

    .line 3014
    .local v27, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-interface/range {v27 .. v27}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v7

    .line 3017
    .local v7, "entryValue":Ljava/lang/Object;, "TV;"
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_1

    if-nez v7, :cond_4

    sget-object v4, Lcom/google/common/cache/LocalCache;->UNSET:Lcom/google/common/cache/LocalCache$ValueReference;

    move-object/from16 v0, v27

    if-eq v0, v4, :cond_4

    .line 3019
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3020
    invoke-virtual/range {p3 .. p3}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->isActive()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3021
    if-nez v7, :cond_3

    sget-object v9, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    .line 3023
    .local v9, "cause":Lcom/google/common/cache/RemovalCause;
    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->getWeight()I

    move-result v8

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-virtual/range {v4 .. v9}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/RemovalCause;)V

    .line 3024
    add-int/lit8 v25, v25, -0x1

    .end local v9    # "cause":Lcom/google/common/cache/RemovalCause;
    :cond_2
    move-object/from16 v10, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p4

    .line 3026
    invoke-virtual/range {v10 .. v15}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3027
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3028
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries(Lcom/google/common/cache/ReferenceEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3029
    const/4 v4, 0x1

    .line 3046
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3047
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3044
    .end local v7    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v22    # "entryKey":Ljava/lang/Object;, "TK;"
    .end local v27    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :goto_2
    return v4

    .line 3021
    .restart local v7    # "entryValue":Ljava/lang/Object;, "TV;"
    .restart local v22    # "entryKey":Ljava/lang/Object;, "TK;"
    .restart local v27    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_3
    :try_start_1
    sget-object v9, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    goto :goto_1

    .line 3033
    :cond_4
    const/16 v20, 0x0

    sget-object v21, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move/from16 v18, p2

    move-object/from16 v19, p4

    invoke-virtual/range {v16 .. v21}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/RemovalCause;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3034
    const/4 v4, 0x0

    .line 3046
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3047
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_2

    .line 3008
    .end local v7    # "entryValue":Ljava/lang/Object;, "TV;"
    .end local v27    # "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    :cond_5
    :try_start_2
    invoke-interface {v11}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v11

    goto/16 :goto_0

    .line 3038
    .end local v22    # "entryKey":Ljava/lang/Object;, "TK;"
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3039
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v17

    .local v17, "newEntry":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    move-object/from16 v16, p0

    move-object/from16 v18, p1

    move-object/from16 v19, p4

    move-wide/from16 v20, v14

    .line 3040
    invoke-virtual/range {v16 .. v21}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3041
    move-object/from16 v0, v26

    move/from16 v1, v24

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3042
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3043
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries(Lcom/google/common/cache/ReferenceEntry;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3044
    const/4 v4, 0x1

    .line 3046
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3047
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_2

    .line 3046
    .end local v11    # "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v14    # "now":J
    .end local v17    # "newEntry":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v23    # "first":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .end local v24    # "index":I
    .end local v25    # "newCount":I
    .end local v26    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    :catchall_0
    move-exception v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3047
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v4
.end method

.method tryDrainReferenceQueues()V
    .locals 1

    .prologue
    .line 2321
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2323
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainReferenceQueues()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2325
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2328
    :cond_0
    return-void

    .line 2325
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    throw v0
.end method

.method tryExpireEntries(J)V
    .locals 1
    .param p1, "now"    # J

    .prologue
    .line 2465
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2467
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->expireEntries(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2469
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2473
    :cond_0
    return-void

    .line 2469
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    throw v0
.end method

.method waitForLoadingValue(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry",
            "<TK;TV;>;TK;",
            "Lcom/google/common/cache/LocalCache$ValueReference",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local p1, "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    const/4 v4, 0x1

    .line 2141
    invoke-interface {p3}, Lcom/google/common/cache/LocalCache$ValueReference;->isLoading()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2142
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2145
    :cond_0
    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    :goto_0
    const-string v5, "Recursive load of: %s"

    invoke-static {v3, v5, p2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2148
    :try_start_0
    invoke-interface {p3}, Lcom/google/common/cache/LocalCache$ValueReference;->waitForValue()Ljava/lang/Object;

    move-result-object v2

    .line 2149
    .local v2, "value":Ljava/lang/Object;, "TV;"
    if-nez v2, :cond_2

    .line 2150
    new-instance v3, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CacheLoader returned null for key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2157
    .end local v2    # "value":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v3

    iget-object v5, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v5, v4}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    throw v3

    .line 2145
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 2153
    .restart local v2    # "value":Ljava/lang/Object;, "TV;"
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v3, v3, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v3}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    .line 2154
    .local v0, "now":J
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/cache/LocalCache$Segment;->recordRead(Lcom/google/common/cache/ReferenceEntry;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2157
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v3, v4}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    .line 2155
    return-object v2
.end method
