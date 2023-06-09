.class public Lcom/google/common/util/concurrent/CycleDetectingLockFactory;
.super Ljava/lang/Object;
.source "CycleDetectingLockFactory.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantWriteLock;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantLock;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$WithExplicitOrdering;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;
    }
.end annotation


# static fields
.field private static final acquiredLocks:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final lockGraphNodesPerType:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum;",
            ">;",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/Enum;",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field final policy:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 272
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->weakKeys()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->lockGraphNodesPerType:Ljava/util/concurrent/ConcurrentMap;

    .line 445
    const-class v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->logger:Ljava/util/logging/Logger;

    .line 459
    new-instance v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$1;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$1;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->acquiredLocks:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;)V
    .locals 1
    .param p1, "policy"    # Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;

    .prologue
    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;

    iput-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->policy:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;

    .line 451
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;
    .param p2, "x1"    # Lcom/google/common/util/concurrent/CycleDetectingLockFactory$1;

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;)V

    return-void
.end method

.method private aboutToAcquire(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V
    .locals 3
    .param p1, "lock"    # Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;

    .prologue
    .line 708
    invoke-interface {p1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;->isAcquiredByCurrentThread()Z

    move-result v2

    if-nez v2, :cond_0

    .line 709
    sget-object v2, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->acquiredLocks:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 710
    .local v0, "acquiredLockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;>;"
    invoke-interface {p1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;->getLockGraphNode()Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;

    move-result-object v1

    .line 711
    .local v1, "node":Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;
    iget-object v2, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->policy:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;

    invoke-virtual {v1, v2, v0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->checkAcquiredLocks(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;Ljava/util/List;)V

    .line 712
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    .end local v0    # "acquiredLockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;>;"
    .end local v1    # "node":Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;
    :cond_0
    return-void
.end method

.method static synthetic access$100()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/common/util/concurrent/CycleDetectingLockFactory;
    .param p1, "x1"    # Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->aboutToAcquire(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;

    .prologue
    .line 165
    invoke-static {p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->lockStateChanged(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V

    return-void
.end method

.method static createNodes(Ljava/lang/Class;)Ljava/util/Map;
    .locals 11
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/Map",
            "<TE;",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    const/4 v8, 0x0

    .line 304
    invoke-static {p0}, Lcom/google/common/collect/Maps;->newEnumMap(Ljava/lang/Class;)Ljava/util/EnumMap;

    move-result-object v3

    .line 305
    .local v3, "map":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TE;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Enum;

    .line 306
    .local v2, "keys":[Ljava/lang/Enum;, "[TE;"
    array-length v6, v2

    .line 307
    .local v6, "numKeys":I
    invoke-static {v6}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 309
    .local v5, "nodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;>;"
    array-length v9, v2

    move v7, v8

    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v1, v2, v7

    .line 310
    .local v1, "key":Ljava/lang/Enum;, "TE;"
    new-instance v4, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;

    invoke-static {v1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->getLockName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;-><init>(Ljava/lang/String;)V

    .line 311
    .local v4, "node":Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-virtual {v3, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 315
    .end local v1    # "key":Ljava/lang/Enum;, "TE;"
    .end local v4    # "node":Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;
    :cond_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-ge v0, v6, :cond_1

    .line 316
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;

    sget-object v9, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->THROW:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    invoke-virtual {v5, v8, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->checkAcquiredLocks(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;Ljava/util/List;)V

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 319
    :cond_1
    const/4 v0, 0x0

    :goto_2
    add-int/lit8 v7, v6, -0x1

    if-ge v0, v7, :cond_2

    .line 320
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;

    sget-object v8, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->DISABLED:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v5, v9, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->checkAcquiredLocks(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;Ljava/util/List;)V

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 322
    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    return-object v7
.end method

.method private static getLockName(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, "rank":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getOrCreateNodes(Ljava/lang/Class;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum;",
            ">;)",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/Enum;",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Enum;>;"
    sget-object v3, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->lockGraphNodesPerType:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 288
    .local v1, "existing":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/Enum;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;>;"
    if-eqz v1, :cond_0

    move-object v2, v1

    .end local v1    # "existing":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/Enum;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;>;"
    .local v2, "existing":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/Enum;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;>;"
    move-object v3, v1

    .line 293
    :goto_0
    return-object v3

    .line 291
    .end local v2    # "existing":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/Enum;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;>;"
    .restart local v1    # "existing":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/Enum;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;>;"
    :cond_0
    invoke-static {p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->createNodes(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    .line 292
    .local v0, "created":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/Enum;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;>;"
    sget-object v3, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->lockGraphNodesPerType:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "existing":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/Enum;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;>;"
    check-cast v1, Ljava/util/Map;

    .line 293
    .restart local v1    # "existing":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/Enum;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;>;"
    invoke-static {v1, v0}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    move-object v2, v1

    .end local v1    # "existing":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/Enum;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;>;"
    .restart local v2    # "existing":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/Enum;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;>;"
    goto :goto_0
.end method

.method private static lockStateChanged(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;)V
    .locals 4
    .param p0, "lock"    # Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;

    .prologue
    .line 722
    invoke-interface {p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;->isAcquiredByCurrentThread()Z

    move-result v3

    if-nez v3, :cond_0

    .line 723
    sget-object v3, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->acquiredLocks:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 724
    .local v0, "acquiredLockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;>;"
    invoke-interface {p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;->getLockGraphNode()Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;

    move-result-object v2

    .line 727
    .local v2, "node":Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 728
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 729
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 734
    .end local v0    # "acquiredLockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;>;"
    .end local v1    # "i":I
    .end local v2    # "node":Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;
    :cond_0
    return-void

    .line 727
    .restart local v0    # "acquiredLockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;>;"
    .restart local v1    # "i":I
    .restart local v2    # "node":Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static newInstance(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;)Lcom/google/common/util/concurrent/CycleDetectingLockFactory;
    .locals 1
    .param p0, "policy"    # Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;

    .prologue
    .line 236
    new-instance v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;)V

    return-object v0
.end method

.method public static newInstanceWithExplicitOrdering(Ljava/lang/Class;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;)Lcom/google/common/util/concurrent/CycleDetectingLockFactory$WithExplicitOrdering;
    .locals 2
    .param p1, "policy"    # Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;",
            ")",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$WithExplicitOrdering",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 279
    .local p0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-static {p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->getOrCreateNodes(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    .line 283
    .local v0, "lockGraphNodes":Ljava/util/Map;, "Ljava/util/Map<TE;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;>;"
    new-instance v1, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$WithExplicitOrdering;

    invoke-direct {v1, p1, v0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$WithExplicitOrdering;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;Ljava/util/Map;)V

    return-object v1
.end method


# virtual methods
.method public newReentrantLock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p1, "lockName"    # Ljava/lang/String;

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->newReentrantLock(Ljava/lang/String;Z)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    return-object v0
.end method

.method public newReentrantLock(Ljava/lang/String;Z)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 3
    .param p1, "lockName"    # Ljava/lang/String;
    .param p2, "fair"    # Z

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->policy:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;

    sget-object v1, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->DISABLED:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, p2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantLock;

    new-instance v1, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;

    invoke-direct {v1, p1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p2, v2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantLock;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;ZLcom/google/common/util/concurrent/CycleDetectingLockFactory$1;)V

    goto :goto_0
.end method

.method public newReentrantReadWriteLock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1
    .param p1, "lockName"    # Ljava/lang/String;

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->newReentrantReadWriteLock(Ljava/lang/String;Z)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    return-object v0
.end method

.method public newReentrantReadWriteLock(Ljava/lang/String;Z)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 3
    .param p1, "lockName"    # Ljava/lang/String;
    .param p2, "fair"    # Z

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->policy:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;

    sget-object v1, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->DISABLED:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0, p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    new-instance v1, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;

    invoke-direct {v1, p1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p2, v2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;ZLcom/google/common/util/concurrent/CycleDetectingLockFactory$1;)V

    goto :goto_0
.end method
