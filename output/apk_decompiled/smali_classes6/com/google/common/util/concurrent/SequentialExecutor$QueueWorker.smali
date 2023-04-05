.class final Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;
.super Ljava/lang/Object;
.source "SequentialExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/SequentialExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueueWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/SequentialExecutor;


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/SequentialExecutor;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SequentialExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/SequentialExecutor;Lcom/google/common/util/concurrent/SequentialExecutor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/util/concurrent/SequentialExecutor;
    .param p2, "x1"    # Lcom/google/common/util/concurrent/SequentialExecutor$1;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;-><init>(Lcom/google/common/util/concurrent/SequentialExecutor;)V

    return-void
.end method

.method private workOnQueue()V
    .locals 7

    .prologue
    .line 134
    const/4 v1, 0x0

    .line 141
    .local v1, "interruptedDuringTask":Z
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    or-int/2addr v1, v3

    .line 143
    iget-object v3, p0, Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SequentialExecutor;

    invoke-static {v3}, Lcom/google/common/util/concurrent/SequentialExecutor;->access$100(Lcom/google/common/util/concurrent/SequentialExecutor;)Ljava/util/Queue;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :try_start_1
    iget-object v3, p0, Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SequentialExecutor;

    invoke-static {v3}, Lcom/google/common/util/concurrent/SequentialExecutor;->access$100(Lcom/google/common/util/concurrent/SequentialExecutor;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 145
    .local v2, "task":Ljava/lang/Runnable;
    if-nez v2, :cond_1

    .line 146
    iget-object v3, p0, Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SequentialExecutor;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/google/common/util/concurrent/SequentialExecutor;->access$202(Lcom/google/common/util/concurrent/SequentialExecutor;Z)Z

    .line 147
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 160
    if-eqz v1, :cond_0

    .line 161
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 147
    :cond_0
    return-void

    .line 149
    :cond_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 151
    :try_start_3
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_4
    invoke-static {}, Lcom/google/common/util/concurrent/SequentialExecutor;->access$300()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while executing runnable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 160
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "task":Ljava/lang/Runnable;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_2

    .line 161
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    throw v3

    .line 149
    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 110
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;->workOnQueue()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Error;
    iget-object v1, p0, Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SequentialExecutor;

    invoke-static {v1}, Lcom/google/common/util/concurrent/SequentialExecutor;->access$100(Lcom/google/common/util/concurrent/SequentialExecutor;)Ljava/util/Queue;

    move-result-object v2

    monitor-enter v2

    .line 113
    :try_start_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/SequentialExecutor$QueueWorker;->this$0:Lcom/google/common/util/concurrent/SequentialExecutor;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/google/common/util/concurrent/SequentialExecutor;->access$202(Lcom/google/common/util/concurrent/SequentialExecutor;Z)Z

    .line 114
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    throw v0

    .line 114
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
