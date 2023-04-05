.class Lcom/google/common/collect/Ordering$ArbitraryOrdering;
.super Lcom/google/common/collect/Ordering;
.source "Ordering.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Ordering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArbitraryOrdering"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Ordering",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final counter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final uids:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/google/common/collect/Ordering;-><init>()V

    .line 322
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/collect/Ordering$ArbitraryOrdering;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 323
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    .line 324
    invoke-static {v0}, Lcom/google/common/collect/Platform;->tryWeakKeys(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Ordering$ArbitraryOrdering;->uids:Ljava/util/concurrent/ConcurrentMap;

    .line 323
    return-void
.end method

.method private getUid(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 327
    iget-object v2, p0, Lcom/google/common/collect/Ordering$ArbitraryOrdering;->uids:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 328
    .local v1, "uid":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 332
    iget-object v2, p0, Lcom/google/common/collect/Ordering$ArbitraryOrdering;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 333
    iget-object v2, p0, Lcom/google/common/collect/Ordering$ArbitraryOrdering;->uids:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 334
    .local v0, "alreadySet":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 335
    move-object v1, v0

    .line 338
    .end local v0    # "alreadySet":Ljava/lang/Integer;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
    .param p1, "left"    # Ljava/lang/Object;
    .param p2, "right"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 343
    if-ne p1, p2, :cond_1

    .line 344
    const/4 v3, 0x0

    .line 361
    :cond_0
    :goto_0
    return v3

    .line 345
    :cond_1
    if-eqz p1, :cond_0

    .line 347
    if-nez p2, :cond_2

    move v3, v4

    .line 348
    goto :goto_0

    .line 350
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Ordering$ArbitraryOrdering;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 351
    .local v0, "leftCode":I
    invoke-virtual {p0, p2}, Lcom/google/common/collect/Ordering$ArbitraryOrdering;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 352
    .local v2, "rightCode":I
    if-eq v0, v2, :cond_3

    .line 353
    if-lt v0, v2, :cond_0

    move v3, v4

    goto :goto_0

    .line 357
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/common/collect/Ordering$ArbitraryOrdering;->getUid(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/google/common/collect/Ordering$ArbitraryOrdering;->getUid(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v1

    .line 358
    .local v1, "result":I
    if-nez v1, :cond_4

    .line 359
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_4
    move v3, v1

    .line 361
    goto :goto_0
.end method

.method identityHashCode(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 378
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    const-string v0, "Ordering.arbitrary()"

    return-object v0
.end method
