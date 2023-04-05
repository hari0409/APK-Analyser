.class abstract Lcom/google/common/util/concurrent/InterruptibleTask;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "InterruptibleTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/InterruptibleTask$DoNothingRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Ljava/lang/Runnable;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final DONE:Ljava/lang/Runnable;

.field private static final INTERRUPTING:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    new-instance v0, Lcom/google/common/util/concurrent/InterruptibleTask$DoNothingRunnable;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/InterruptibleTask$DoNothingRunnable;-><init>(Lcom/google/common/util/concurrent/InterruptibleTask$1;)V

    sput-object v0, Lcom/google/common/util/concurrent/InterruptibleTask;->DONE:Ljava/lang/Runnable;

    .line 37
    new-instance v0, Lcom/google/common/util/concurrent/InterruptibleTask$DoNothingRunnable;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/InterruptibleTask$DoNothingRunnable;-><init>(Lcom/google/common/util/concurrent/InterruptibleTask$1;)V

    sput-object v0, Lcom/google/common/util/concurrent/InterruptibleTask;->INTERRUPTING:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    .local p0, "this":Lcom/google/common/util/concurrent/InterruptibleTask;, "Lcom/google/common/util/concurrent/InterruptibleTask<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method abstract afterRanInterruptibly(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation
.end method

.method final interruptTask()V
    .locals 2

    .prologue
    .line 107
    .local p0, "this":Lcom/google/common/util/concurrent/InterruptibleTask;, "Lcom/google/common/util/concurrent/InterruptibleTask<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 108
    .local v0, "currentRunner":Ljava/lang/Runnable;
    instance-of v1, v0, Ljava/lang/Thread;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/common/util/concurrent/InterruptibleTask;->INTERRUPTING:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v1}, Lcom/google/common/util/concurrent/InterruptibleTask;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    check-cast v0, Ljava/lang/Thread;

    .end local v0    # "currentRunner":Ljava/lang/Runnable;
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 110
    sget-object v1, Lcom/google/common/util/concurrent/InterruptibleTask;->DONE:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/InterruptibleTask;->set(Ljava/lang/Object;)V

    .line 112
    :cond_0
    return-void
.end method

.method abstract isDone()Z
.end method

.method public final run()V
    .locals 8

    .prologue
    .line 47
    .local p0, "this":Lcom/google/common/util/concurrent/InterruptibleTask;, "Lcom/google/common/util/concurrent/InterruptibleTask<TT;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 48
    .local v0, "currentThread":Ljava/lang/Thread;
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v0}, Lcom/google/common/util/concurrent/InterruptibleTask;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;->isDone()Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v3, 0x1

    .line 53
    .local v3, "run":Z
    :goto_1
    const/4 v2, 0x0

    .line 54
    .local v2, "result":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .line 56
    .local v1, "error":Ljava/lang/Throwable;
    if-eqz v3, :cond_2

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;->runInterruptibly()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 63
    .end local v2    # "result":Ljava/lang/Object;, "TT;"
    :cond_2
    sget-object v5, Lcom/google/common/util/concurrent/InterruptibleTask;->DONE:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v5}, Lcom/google/common/util/concurrent/InterruptibleTask;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 70
    :goto_2
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;->get()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/google/common/util/concurrent/InterruptibleTask;->INTERRUPTING:Ljava/lang/Runnable;

    if-ne v5, v6, :cond_4

    .line 71
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_2

    .line 52
    .end local v1    # "error":Ljava/lang/Throwable;
    .end local v3    # "run":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 79
    .restart local v1    # "error":Ljava/lang/Throwable;
    .restart local v3    # "run":Z
    :cond_4
    if-eqz v3, :cond_0

    .line 80
    invoke-virtual {p0, v2, v1}, Lcom/google/common/util/concurrent/InterruptibleTask;->afterRanInterruptibly(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 59
    .restart local v2    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v4

    .line 60
    .local v4, "t":Ljava/lang/Throwable;
    move-object v1, v4

    .line 63
    sget-object v5, Lcom/google/common/util/concurrent/InterruptibleTask;->DONE:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v5}, Lcom/google/common/util/concurrent/InterruptibleTask;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 70
    :goto_3
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;->get()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/google/common/util/concurrent/InterruptibleTask;->INTERRUPTING:Ljava/lang/Runnable;

    if-ne v5, v6, :cond_5

    .line 71
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_3

    .line 79
    :cond_5
    if-eqz v3, :cond_0

    .line 80
    invoke-virtual {p0, v2, v1}, Lcom/google/common/util/concurrent/InterruptibleTask;->afterRanInterruptibly(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 63
    .end local v4    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    sget-object v6, Lcom/google/common/util/concurrent/InterruptibleTask;->DONE:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v6}, Lcom/google/common/util/concurrent/InterruptibleTask;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 70
    :goto_4
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;->get()Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lcom/google/common/util/concurrent/InterruptibleTask;->INTERRUPTING:Ljava/lang/Runnable;

    if-ne v6, v7, :cond_6

    .line 71
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_4

    .line 79
    :cond_6
    if-eqz v3, :cond_7

    .line 80
    invoke-virtual {p0, v2, v1}, Lcom/google/common/util/concurrent/InterruptibleTask;->afterRanInterruptibly(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_7
    throw v5
.end method

.method abstract runInterruptibly()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method
