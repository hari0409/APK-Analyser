.class final Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;
.super Lcom/google/common/util/concurrent/AbstractListeningExecutorService;
.source "MoreExecutors.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/MoreExecutors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DirectExecutorService"
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private runningTasks:I
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private shutdown:Z
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 237
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractListeningExecutorService;-><init>()V

    .line 239
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    .line 248
    iput v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    .line 251
    iput-boolean v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->shutdown:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/MoreExecutors$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/util/concurrent/MoreExecutors$1;

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;-><init>()V

    return-void
.end method

.method private endTask()V
    .locals 3

    .prologue
    .line 329
    iget-object v2, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 330
    :try_start_0
    iget v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    .line 331
    .local v0, "numRunning":I
    if-nez v0, :cond_0

    .line 332
    iget-object v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 334
    :cond_0
    monitor-exit v2

    .line 335
    return-void

    .line 334
    .end local v0    # "numRunning":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startTask()V
    .locals 3

    .prologue
    .line 319
    iget-object v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 320
    :try_start_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->shutdown:Z

    if-eqz v0, :cond_0

    .line 321
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v2, "Executor already shutdown"

    invoke-direct {v0, v2}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 323
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    .line 324
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    return-void
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 9
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 297
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 298
    .local v0, "nanos":J
    iget-object v5, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 300
    :goto_0
    :try_start_0
    iget-boolean v4, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->shutdown:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    if-nez v4, :cond_0

    .line 301
    const/4 v4, 0x1

    monitor-exit v5

    .line 303
    :goto_1
    return v4

    .line 302
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-gtz v4, :cond_1

    .line 303
    const/4 v4, 0x0

    monitor-exit v5

    goto :goto_1

    .line 310
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 305
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 306
    .local v2, "now":J
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    invoke-virtual {v4, v6, v0, v1}, Ljava/util/concurrent/TimeUnit;->timedWait(Ljava/lang/Object;J)V

    .line 307
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    sub-long/2addr v6, v2

    sub-long/2addr v0, v6

    .line 308
    goto :goto_0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->startTask()V

    .line 258
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    invoke-direct {p0}, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->endTask()V

    .line 262
    return-void

    .line 260
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->endTask()V

    throw v0
.end method

.method public isShutdown()Z
    .locals 2

    .prologue
    .line 266
    iget-object v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 267
    :try_start_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->shutdown:Z

    monitor-exit v1

    return v0

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isTerminated()Z
    .locals 2

    .prologue
    .line 290
    iget-object v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 291
    :try_start_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->shutdown:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 273
    iget-object v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 274
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->shutdown:Z

    .line 275
    iget v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->runningTasks:I

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 278
    :cond_0
    monitor-exit v1

    .line 279
    return-void

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/MoreExecutors$DirectExecutorService;->shutdown()V

    .line 285
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
