.class final Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;
.super Ljava/lang/Object;
.source "ListenerCallQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ListenerCallQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PerListenerQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final executor:Ljava/util/concurrent/Executor;

.field isThreadScheduled:Z
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final labelQueue:Ljava/util/Queue;
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final listener:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field final waitQueue:Ljava/util/Queue;
    .annotation build Lcom/google/errorprone/annotations/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event",
            "<T",
            "L;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;, "Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue<TL;>;"
    .local p1, "listener":Ljava/lang/Object;, "TL;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    invoke-static {}, Lcom/google/common/collect/Queues;->newArrayDeque()Ljava/util/ArrayDeque;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->waitQueue:Ljava/util/Queue;

    .line 139
    invoke-static {}, Lcom/google/common/collect/Queues;->newArrayDeque()Ljava/util/ArrayDeque;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->labelQueue:Ljava/util/Queue;

    .line 145
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->listener:Ljava/lang/Object;

    .line 146
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->executor:Ljava/util/concurrent/Executor;

    .line 147
    return-void
.end method


# virtual methods
.method declared-synchronized add(Lcom/google/common/util/concurrent/ListenerCallQueue$Event;Ljava/lang/Object;)V
    .locals 1
    .param p2, "label"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenerCallQueue$Event",
            "<T",
            "L;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;, "Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue<TL;>;"
    .local p1, "event":Lcom/google/common/util/concurrent/ListenerCallQueue$Event;, "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<TL;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->waitQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->labelQueue:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method dispatch()V
    .locals 6

    .prologue
    .line 160
    .local p0, "this":Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;, "Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue<TL;>;"
    const/4 v1, 0x0

    .line 161
    .local v1, "scheduleEventRunner":Z
    monitor-enter p0

    .line 162
    :try_start_0
    iget-boolean v2, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->isThreadScheduled:Z

    if-nez v2, :cond_0

    .line 163
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->isThreadScheduled:Z

    .line 164
    const/4 v1, 0x1

    .line 166
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    if-eqz v1, :cond_1

    .line 169
    :try_start_1
    iget-object v2, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v2, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 183
    :cond_1
    return-void

    .line 166
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 170
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/RuntimeException;
    monitor-enter p0

    .line 173
    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->isThreadScheduled:Z

    .line 174
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 176
    invoke-static {}, Lcom/google/common/util/concurrent/ListenerCallQueue;->access$000()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while running callbacks for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->listener:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    throw v0

    .line 174
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method public run()V
    .locals 8

    .prologue
    .line 187
    .local p0, "this":Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;, "Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue<TL;>;"
    const/4 v3, 0x1

    .line 192
    .local v3, "stillRunning":Z
    :goto_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :try_start_1
    iget-boolean v4, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->isThreadScheduled:Z

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 194
    iget-object v4, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->waitQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 195
    .local v2, "nextToRun":Lcom/google/common/util/concurrent/ListenerCallQueue$Event;, "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<TL;>;"
    iget-object v4, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->labelQueue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    .line 196
    .local v1, "nextLabel":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 197
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->isThreadScheduled:Z

    .line 198
    const/4 v3, 0x0

    .line 199
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 215
    if-eqz v3, :cond_0

    .line 218
    monitor-enter p0

    .line 219
    const/4 v4, 0x0

    :try_start_2
    iput-boolean v4, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->isThreadScheduled:Z

    .line 220
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 223
    :cond_0
    return-void

    .line 201
    :cond_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 205
    :try_start_4
    iget-object v4, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->listener:Ljava/lang/Object;

    invoke-interface {v2, v4}, Lcom/google/common/util/concurrent/ListenerCallQueue$Event;->call(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_5
    invoke-static {}, Lcom/google/common/util/concurrent/ListenerCallQueue;->access$000()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while executing callback: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->listener:Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 215
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "nextLabel":Ljava/lang/Object;
    .end local v2    # "nextToRun":Lcom/google/common/util/concurrent/ListenerCallQueue$Event;, "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<TL;>;"
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_2

    .line 218
    monitor-enter p0

    .line 219
    const/4 v5, 0x0

    :try_start_6
    iput-boolean v5, p0, Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;->isThreadScheduled:Z

    .line 220
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_2
    throw v4

    .line 201
    :catchall_1
    move-exception v4

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 220
    .restart local v1    # "nextLabel":Ljava/lang/Object;
    .restart local v2    # "nextToRun":Lcom/google/common/util/concurrent/ListenerCallQueue$Event;, "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<TL;>;"
    :catchall_2
    move-exception v4

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v4

    .end local v1    # "nextLabel":Ljava/lang/Object;
    .end local v2    # "nextToRun":Lcom/google/common/util/concurrent/ListenerCallQueue$Event;, "Lcom/google/common/util/concurrent/ListenerCallQueue$Event<TL;>;"
    :catchall_3
    move-exception v4

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v4
.end method
