.class Lcom/google/common/util/concurrent/Striped$SmallLazyStriped;
.super Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped;
.source "Striped.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SmallLazyStriped"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped",
        "<T",
        "L;",
        ">;"
    }
.end annotation


# instance fields
.field final locks:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference",
            "<+T",
            "L;",
            ">;>;"
        }
    .end annotation
.end field

.field final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field final size:I

.field final supplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<T",
            "L;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILcom/google/common/base/Supplier;)V
    .locals 2
    .param p1, "stripes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/base/Supplier",
            "<T",
            "L;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 432
    .local p0, "this":Lcom/google/common/util/concurrent/Striped$SmallLazyStriped;, "Lcom/google/common/util/concurrent/Striped$SmallLazyStriped<TL;>;"
    .local p2, "supplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<TL;>;"
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Striped$PowerOfTwoStriped;-><init>(I)V

    .line 429
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/Striped$SmallLazyStriped;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 433
    iget v0, p0, Lcom/google/common/util/concurrent/Striped$SmallLazyStriped;->mask:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7fffffff

    :goto_0
    iput v0, p0, Lcom/google/common/util/concurrent/Striped$SmallLazyStriped;->size:I

    .line 434
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lcom/google/common/util/concurrent/Striped$SmallLazyStriped;->size:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/Striped$SmallLazyStriped;->locks:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 435
    iput-object p2, p0, Lcom/google/common/util/concurrent/Striped$SmallLazyStriped;->supplier:Lcom/google/common/base/Supplier;

    .line 436
    return-void

    .line 433
    :cond_0
    iget v0, p0, Lcom/google/common/util/concurrent/Striped$SmallLazyStriped;->mask:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private drainQueue()V
    .locals 5

    .prologue
    .line 467
    .local p0, "this":Lcom/google/common/util/concurrent/Striped$SmallLazyStriped;, "Lcom/google/common/util/concurrent/Striped$SmallLazyStriped<TL;>;"
    :goto_0
    iget-object v2, p0, Lcom/google/common/util/concurrent/Striped$SmallLazyStriped;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    .local v1, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<+TL;>;"
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 469
    check-cast v0, Lcom/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference;

    .line 472
    .local v0, "arrayRef":Lcom/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference;, "Lcom/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference<+TL;>;"
    iget-object v2, p0, Lcom/google/common/util/concurrent/Striped$SmallLazyStriped;->locks:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v3, v0, Lcom/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference;->index:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 474
    .end local v0    # "arrayRef":Lcom/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference;, "Lcom/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference<+TL;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public getAt(I)Ljava/lang/Object;
    .locals 8
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)T",
            "L;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/util/concurrent/Striped$SmallLazyStriped;, "Lcom/google/common/util/concurrent/Striped$SmallLazyStriped<TL;>;"
    const/4 v5, 0x0

    .line 440
    iget v6, p0, Lcom/google/common/util/concurrent/Striped$SmallLazyStriped;->size:I

    const v7, 0x7fffffff

    if-eq v6, v7, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Striped$SmallLazyStriped;->size()I

    move-result v6

    invoke-static {p1, v6}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 443
    :cond_0
    iget-object v6, p0, Lcom/google/common/util/concurrent/Striped$SmallLazyStriped;->locks:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v6, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference;

    .line 444
    .local v3, "existingRef":Lcom/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference;, "Lcom/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference<+TL;>;"
    if-nez v3, :cond_1

    move-object v1, v5

    .line 445
    .local v1, "existing":Ljava/lang/Object;, "TL;"
    :goto_0
    if-eqz v1, :cond_2

    move-object v2, v1

    .end local v1    # "existing":Ljava/lang/Object;, "TL;"
    .local v2, "existing":Ljava/lang/Object;, "TL;"
    move-object v0, v1

    .line 459
    :goto_1
    return-object v0

    .line 444
    .end local v2    # "existing":Ljava/lang/Object;, "TL;"
    :cond_1
    invoke-virtual {v3}, Lcom/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference;->get()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 448
    .restart local v1    # "existing":Ljava/lang/Object;, "TL;"
    :cond_2
    iget-object v6, p0, Lcom/google/common/util/concurrent/Striped$SmallLazyStriped;->supplier:Lcom/google/common/base/Supplier;

    invoke-interface {v6}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 449
    .local v0, "created":Ljava/lang/Object;, "TL;"
    new-instance v4, Lcom/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference;

    iget-object v6, p0, Lcom/google/common/util/concurrent/Striped$SmallLazyStriped;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v4, v0, p1, v6}, Lcom/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference;-><init>(Ljava/lang/Object;ILjava/lang/ref/ReferenceQueue;)V

    .line 450
    .local v4, "newRef":Lcom/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference;, "Lcom/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference<TL;>;"
    :cond_3
    iget-object v6, p0, Lcom/google/common/util/concurrent/Striped$SmallLazyStriped;->locks:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v6, p1, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 452
    iget-object v6, p0, Lcom/google/common/util/concurrent/Striped$SmallLazyStriped;->locks:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v6, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "existingRef":Lcom/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference;, "Lcom/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference<+TL;>;"
    check-cast v3, Lcom/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference;

    .line 453
    .restart local v3    # "existingRef":Lcom/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference;, "Lcom/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference<+TL;>;"
    if-nez v3, :cond_4

    move-object v1, v5

    .line 454
    :goto_2
    if-eqz v1, :cond_3

    move-object v2, v1

    .end local v1    # "existing":Ljava/lang/Object;, "TL;"
    .restart local v2    # "existing":Ljava/lang/Object;, "TL;"
    move-object v0, v1

    .line 455
    goto :goto_1

    .line 453
    .end local v2    # "existing":Ljava/lang/Object;, "TL;"
    .restart local v1    # "existing":Ljava/lang/Object;, "TL;"
    :cond_4
    invoke-virtual {v3}, Lcom/google/common/util/concurrent/Striped$SmallLazyStriped$ArrayReference;->get()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 458
    :cond_5
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Striped$SmallLazyStriped;->drainQueue()V

    move-object v2, v1

    .line 459
    .end local v1    # "existing":Ljava/lang/Object;, "TL;"
    .restart local v2    # "existing":Ljava/lang/Object;, "TL;"
    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 478
    .local p0, "this":Lcom/google/common/util/concurrent/Striped$SmallLazyStriped;, "Lcom/google/common/util/concurrent/Striped$SmallLazyStriped<TL;>;"
    iget v0, p0, Lcom/google/common/util/concurrent/Striped$SmallLazyStriped;->size:I

    return v0
.end method
