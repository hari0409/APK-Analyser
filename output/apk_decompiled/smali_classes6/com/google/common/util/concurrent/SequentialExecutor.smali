.class final Lcom/google/common/util/concurrent/SequentialExecutor;
.super Ljava/lang/Object;
.source "SequentialExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private isWorkerRunning:Z
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "queue"
    .end annotation
.end field

.field private final queue:Ljava/util/Queue;
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "queue"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final worker:Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/google/common/util/concurrent/SequentialExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/SequentialExecutor;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->queue:Ljava/util/Queue;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->isWorkerRunning:Z

    .line 54
    new-instance v0, Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;-><init>(Lcom/google/common/util/concurrent/SequentialExecutor;Lcom/google/common/util/concurrent/SequentialExecutor$1;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->worker:Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;

    .line 58
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->executor:Ljava/util/concurrent/Executor;

    .line 59
    return-void
.end method

.method static synthetic access$100(Lcom/google/common/util/concurrent/SequentialExecutor;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/util/concurrent/SequentialExecutor;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->queue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/common/util/concurrent/SequentialExecutor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/common/util/concurrent/SequentialExecutor;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->isWorkerRunning:Z

    return p1
.end method

.method static synthetic access$300()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/common/util/concurrent/SequentialExecutor;->log:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private startQueueWorker()V
    .locals 4

    .prologue
    .line 89
    const/4 v0, 0x1

    .line 91
    .local v0, "executionRejected":Z
    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->worker:Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 92
    const/4 v0, 0x0

    .line 94
    if-eqz v0, :cond_0

    .line 97
    iget-object v2, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->queue:Ljava/util/Queue;

    monitor-enter v2

    .line 98
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->isWorkerRunning:Z

    .line 99
    monitor-exit v2

    .line 102
    :cond_0
    return-void

    .line 99
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 94
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    .line 97
    iget-object v2, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->queue:Ljava/util/Queue;

    monitor-enter v2

    .line 98
    const/4 v3, 0x0

    :try_start_2
    iput-boolean v3, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->isWorkerRunning:Z

    .line 99
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_1
    throw v1

    :catchall_2
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 69
    iget-object v1, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->queue:Ljava/util/Queue;

    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 71
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->isWorkerRunning:Z

    if-eqz v0, :cond_0

    .line 72
    monitor-exit v1

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/SequentialExecutor;->isWorkerRunning:Z

    .line 75
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-direct {p0}, Lcom/google/common/util/concurrent/SequentialExecutor;->startQueueWorker()V

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
