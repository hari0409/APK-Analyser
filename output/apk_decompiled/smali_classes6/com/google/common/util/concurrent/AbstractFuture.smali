.class public abstract Lcom/google/common/util/concurrent/AbstractFuture;
.super Lcom/google/common/util/concurrent/FluentFuture;
.source "AbstractFuture.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/DoNotMock;
    value = "Use Futures.immediate*Future or SettableFuture"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AbstractFuture$SynchronizedHelper;,
        Lcom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;,
        Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper;,
        Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;,
        Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;,
        Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;,
        Lcom/google/common/util/concurrent/AbstractFuture$Failure;,
        Lcom/google/common/util/concurrent/AbstractFuture$Listener;,
        Lcom/google/common/util/concurrent/AbstractFuture$Waiter;,
        Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/FluentFuture",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

.field private static final GENERATE_CANCELLATION_CAUSES:Z

.field private static final NULL:Ljava/lang/Object;

.field private static final SPIN_THRESHOLD_NANOS:J = 0x3e8L

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private volatile listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

.field private volatile value:Ljava/lang/Object;

.field private volatile waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 73
    const-string v1, "guava.concurrent.generate_cancellation_cause"

    const-string v2, "false"

    .line 75
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/google/common/util/concurrent/AbstractFuture;->GENERATE_CANCELLATION_CAUSES:Z

    .line 118
    const-class v1, Lcom/google/common/util/concurrent/AbstractFuture;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->log:Ljava/util/logging/Logger;

    .line 128
    const/4 v9, 0x0

    .line 129
    .local v9, "thrownUnsafeFailure":Ljava/lang/Throwable;
    const/4 v8, 0x0

    .line 132
    .local v8, "thrownAtomicReferenceFieldUpdaterFailure":Ljava/lang/Throwable;
    :try_start_0
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper;-><init>(Lcom/google/common/util/concurrent/AbstractFuture$1;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .local v0, "helper":Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;
    :goto_0
    sput-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    .line 160
    const-class v7, Ljava/util/concurrent/locks/LockSupport;

    .line 164
    .local v7, "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v8, :cond_0

    .line 165
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "UnsafeAtomicHelper is broken!"

    invoke-virtual {v1, v2, v3, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "SafeAtomicHelper is broken!"

    invoke-virtual {v1, v2, v3, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 262
    :cond_0
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->NULL:Ljava/lang/Object;

    return-void

    .line 133
    .end local v0    # "helper":Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;
    .end local v7    # "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v10

    .line 134
    .local v10, "unsafeFailure":Ljava/lang/Throwable;
    move-object v9, v10

    .line 139
    :try_start_1
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;

    const-class v1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    const-class v2, Ljava/lang/Thread;

    const-string v3, "thread"

    .line 141
    invoke-static {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    const-class v2, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    const-class v3, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    const-string v4, "next"

    .line 142
    invoke-static {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    const-class v3, Lcom/google/common/util/concurrent/AbstractFuture;

    const-class v4, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    const-string v5, "waiters"

    .line 143
    invoke-static {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    const-class v4, Lcom/google/common/util/concurrent/AbstractFuture;

    const-class v5, Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    const-string v11, "listeners"

    .line 144
    invoke-static {v4, v5, v11}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v4

    const-class v5, Lcom/google/common/util/concurrent/AbstractFuture;

    const-class v11, Ljava/lang/Object;

    const-string v12, "value"

    .line 145
    invoke-static {v5, v11, v12}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/common/util/concurrent/AbstractFuture$SafeAtomicHelper;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v0    # "helper":Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;
    goto :goto_0

    .line 146
    .end local v0    # "helper":Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;
    :catch_1
    move-exception v6

    .line 151
    .local v6, "atomicReferenceFieldUpdaterFailure":Ljava/lang/Throwable;
    move-object v8, v6

    .line 152
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$SynchronizedHelper;

    invoke-direct {v0, v13}, Lcom/google/common/util/concurrent/AbstractFuture$SynchronizedHelper;-><init>(Lcom/google/common/util/concurrent/AbstractFuture$1;)V

    .restart local v0    # "helper":Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;
    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 355
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    invoke-direct {p0}, Lcom/google/common/util/concurrent/FluentFuture;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Lcom/google/common/util/concurrent/AbstractFuture;->GENERATE_CANCELLATION_CAUSES:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/common/util/concurrent/AbstractFuture;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AbstractFuture;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AbstractFuture;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/util/concurrent/ListenableFuture;

    .prologue
    .line 70
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/common/util/concurrent/AbstractFuture;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AbstractFuture;

    .prologue
    .line 70
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->complete(Lcom/google/common/util/concurrent/AbstractFuture;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/common/util/concurrent/AbstractFuture;)Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AbstractFuture;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    .locals 0
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AbstractFuture;
    .param p1, "x1"    # Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/common/util/concurrent/AbstractFuture;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AbstractFuture;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .locals 0
    .param p0, "x0"    # Lcom/google/common/util/concurrent/AbstractFuture;
    .param p1, "x1"    # Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    return-object p1
.end method

.method private addDoneString(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 998
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    :try_start_0
    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    .line 999
    .local v1, "value":Ljava/lang/Object;, "TV;"
    const-string v2, "SUCCESS, result=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1007
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    :goto_0
    return-void

    .line 1000
    :catch_0
    move-exception v0

    .line 1001
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    const-string v2, "FAILURE, cause=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1002
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v0

    .line 1003
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    const-string v2, "CANCELLED"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1004
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    :catch_2
    move-exception v0

    .line 1005
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "UNKNOWN, cause=["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " thrown from get()]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p1, "cause"    # Ljava/lang/Throwable;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .prologue
    .line 1227
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 1228
    .local v0, "exception":Ljava/util/concurrent/CancellationException;
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1229
    return-object v0
.end method

.method private clearListeners(Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .locals 5
    .param p1, "onto"    # Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .prologue
    .line 935
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 936
    .local v0, "head":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    sget-object v4, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    invoke-virtual {v3, p0, v0, v4}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casListeners(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Listener;Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 937
    move-object v1, p1

    .line 938
    .local v1, "reversedList":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    :goto_0
    if-eqz v0, :cond_1

    .line 939
    move-object v2, v0

    .line 940
    .local v2, "tmp":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->next:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 941
    iput-object v1, v2, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->next:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 942
    move-object v1, v2

    .line 943
    goto :goto_0

    .line 944
    .end local v2    # "tmp":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    :cond_1
    return-object v1
.end method

.method private static complete(Lcom/google/common/util/concurrent/AbstractFuture;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/AbstractFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 836
    .local p0, "future":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<*>;"
    const/4 v1, 0x0

    .line 839
    .local v1, "next":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    :goto_0
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->releaseWaiters()V

    .line 844
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->afterDone()V

    .line 846
    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/AbstractFuture;->clearListeners(Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    move-result-object v1

    .line 847
    const/4 p0, 0x0

    .line 848
    :cond_0
    :goto_1
    if-eqz v1, :cond_2

    .line 849
    move-object v0, v1

    .line 850
    .local v0, "curr":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    iget-object v1, v1, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->next:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 851
    iget-object v3, v0, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->task:Ljava/lang/Runnable;

    .line 852
    .local v3, "task":Ljava/lang/Runnable;
    instance-of v5, v3, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    if-eqz v5, :cond_1

    move-object v2, v3

    .line 853
    check-cast v2, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    .line 859
    .local v2, "setFuture":Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;, "Lcom/google/common/util/concurrent/AbstractFuture$SetFuture<*>;"
    iget-object p0, v2, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;->owner:Lcom/google/common/util/concurrent/AbstractFuture;

    .line 860
    iget-object v5, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    if-ne v5, v2, :cond_0

    .line 861
    iget-object v5, v2, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v5}, Lcom/google/common/util/concurrent/AbstractFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v4

    .line 862
    .local v4, "valueToSet":Ljava/lang/Object;
    sget-object v5, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v5, p0, v2, v4}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 868
    .end local v2    # "setFuture":Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;, "Lcom/google/common/util/concurrent/AbstractFuture$SetFuture<*>;"
    .end local v4    # "valueToSet":Ljava/lang/Object;
    :cond_1
    iget-object v5, v0, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->executor:Ljava/util/concurrent/Executor;

    invoke-static {v3, v5}, Lcom/google/common/util/concurrent/AbstractFuture;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_1

    .line 873
    .end local v0    # "curr":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .end local v3    # "task":Ljava/lang/Runnable;
    :cond_2
    return-void
.end method

.method private static executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 5
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 1015
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1025
    :goto_0
    return-void

    .line 1016
    :catch_0
    move-exception v0

    .line 1020
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RuntimeException while executing runnable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with executor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 525
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    instance-of v1, p1, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    if-eqz v1, :cond_0

    .line 526
    const-string v1, "Task was cancelled."

    check-cast p1, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v2, p1, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->cause:Ljava/lang/Throwable;

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/AbstractFuture;->cancellationExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object v1

    throw v1

    .line 527
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v1, p1, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    if-eqz v1, :cond_1

    .line 528
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    check-cast p1, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v2, p1, Lcom/google/common/util/concurrent/AbstractFuture$Failure;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 529
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->NULL:Ljava/lang/Object;

    if-ne p1, v1, :cond_2

    .line 530
    const/4 v0, 0x0

    .line 534
    :goto_0
    return-object v0

    .line 533
    :cond_2
    move-object v0, p1

    .line 534
    .local v0, "asV":Ljava/lang/Object;, "TV;"
    goto :goto_0
.end method

.method private static getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    const/4 v7, 0x0

    .line 799
    instance-of v6, p0, Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;

    if-eqz v6, :cond_2

    .line 804
    check-cast p0, Lcom/google/common/util/concurrent/AbstractFuture;

    .end local p0    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    iget-object v4, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 805
    .local v4, "v":Ljava/lang/Object;
    instance-of v6, v4, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    if-eqz v6, :cond_0

    move-object v0, v4

    .line 809
    check-cast v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    .line 810
    .local v0, "c":Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;
    iget-boolean v6, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->wasInterrupted:Z

    if-eqz v6, :cond_0

    .line 811
    iget-object v6, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->cause:Ljava/lang/Throwable;

    if-eqz v6, :cond_1

    new-instance v4, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    .end local v4    # "v":Ljava/lang/Object;
    iget-object v6, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->cause:Ljava/lang/Throwable;

    invoke-direct {v4, v7, v6}, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    .line 831
    .end local v0    # "c":Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;
    .restart local p0    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    :cond_0
    :goto_0
    return-object v4

    .line 811
    .end local p0    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    .restart local v0    # "c":Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;
    .restart local v4    # "v":Ljava/lang/Object;
    :cond_1
    sget-object v4, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->CAUSELESS_CANCELLED:Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    goto :goto_0

    .line 821
    .end local v0    # "c":Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;
    .end local v4    # "v":Ljava/lang/Object;
    .restart local p0    # "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    :cond_2
    :try_start_0
    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v4

    .line 822
    .restart local v4    # "v":Ljava/lang/Object;
    if-nez v4, :cond_3

    sget-object v5, Lcom/google/common/util/concurrent/AbstractFuture;->NULL:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .end local v4    # "v":Ljava/lang/Object;
    :goto_1
    move-object v4, v5

    .line 831
    goto :goto_0

    .restart local v4    # "v":Ljava/lang/Object;
    :cond_3
    move-object v5, v4

    .line 822
    goto :goto_1

    .line 823
    .end local v4    # "v":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 824
    .local v2, "exception":Ljava/util/concurrent/ExecutionException;
    new-instance v5, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/common/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 829
    .local v5, "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$Failure;
    goto :goto_1

    .line 825
    .end local v2    # "exception":Ljava/util/concurrent/ExecutionException;
    .end local v5    # "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$Failure;
    :catch_1
    move-exception v1

    .line 826
    .local v1, "cancellation":Ljava/util/concurrent/CancellationException;
    new-instance v5, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    invoke-direct {v5, v7, v1}, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    .line 829
    .local v5, "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;
    goto :goto_1

    .line 827
    .end local v1    # "cancellation":Ljava/util/concurrent/CancellationException;
    .end local v5    # "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;
    :catch_2
    move-exception v3

    .line 828
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v5, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    invoke-direct {v5, v3}, Lcom/google/common/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    .local v5, "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$Failure;
    goto :goto_1
.end method

.method private releaseWaiters()V
    .locals 4

    .prologue
    .line 915
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    :cond_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 916
    .local v1, "head":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    sget-object v2, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    invoke-virtual {v2, p0, v1, v3}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casWaiters(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 917
    move-object v0, v1

    .local v0, "currentWaiter":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    :goto_0
    if-eqz v0, :cond_1

    .line 918
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->unpark()V

    .line 917
    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->next:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    goto :goto_0

    .line 920
    :cond_1
    return-void
.end method

.method private removeWaiter(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V
    .locals 4
    .param p1, "node"    # Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .prologue
    .line 219
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    .line 222
    :goto_0
    const/4 v1, 0x0

    .line 223
    .local v1, "pred":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 224
    .local v0, "curr":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    if-ne v0, v3, :cond_1

    .line 244
    :cond_0
    return-void

    .line 228
    :cond_1
    :goto_1
    if-eqz v0, :cond_0

    .line 229
    iget-object v2, v0, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->next:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 230
    .local v2, "succ":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    iget-object v3, v0, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    if-eqz v3, :cond_3

    .line 231
    move-object v1, v0

    .line 240
    :cond_2
    move-object v0, v2

    goto :goto_1

    .line 232
    :cond_3
    if-eqz v1, :cond_4

    .line 233
    iput-object v2, v1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->next:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 234
    iget-object v3, v1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    if-nez v3, :cond_2

    goto :goto_0

    .line 237
    :cond_4
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v3, p0, v0, v2}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casWaiters(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1, "listener"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 657
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    const-string v2, "Runnable was null."

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    const-string v2, "Executor was null."

    invoke-static {p2, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 660
    .local v1, "oldHead":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    sget-object v2, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    if-eq v1, v2, :cond_2

    .line 661
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    invoke-direct {v0, p1, p2}, Lcom/google/common/util/concurrent/AbstractFuture$Listener;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 663
    .local v0, "newNode":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    :cond_0
    iput-object v1, v0, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->next:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 664
    sget-object v2, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v2, p0, v1, v0}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casListeners(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Listener;Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 673
    .end local v0    # "newNode":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    :goto_0
    return-void

    .line 667
    .restart local v0    # "newNode":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    :cond_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->listeners:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 668
    sget-object v2, Lcom/google/common/util/concurrent/AbstractFuture$Listener;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    if-ne v1, v2, :cond_0

    .line 672
    .end local v0    # "newNode":Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    :cond_2
    invoke-static {p1, p2}, Lcom/google/common/util/concurrent/AbstractFuture;->executeListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_0
.end method

.method protected afterDone()V
    .locals 0
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/ForOverride;
    .end annotation

    .prologue
    .line 888
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    return-void
.end method

.method public cancel(Z)Z
    .locals 10
    .param p1, "mayInterruptIfRunning"    # Z
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 566
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 567
    .local v2, "localValue":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 568
    .local v3, "rValue":Z
    if-nez v2, :cond_2

    move v6, v7

    :goto_0
    instance-of v9, v2, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    or-int/2addr v6, v9

    if-eqz v6, :cond_7

    .line 571
    sget-boolean v6, Lcom/google/common/util/concurrent/AbstractFuture;->GENERATE_CANCELLATION_CAUSES:Z

    if-eqz v6, :cond_3

    new-instance v5, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    new-instance v6, Ljava/util/concurrent/CancellationException;

    const-string v9, "Future.cancel() was called."

    invoke-direct {v6, v9}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, p1, v6}, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;-><init>(ZLjava/lang/Throwable;)V

    .line 578
    .local v5, "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;
    :goto_1
    move-object v0, p0

    .line 580
    .local v0, "abstractFuture":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<*>;"
    :cond_0
    :goto_2
    sget-object v6, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v6, v0, v2, v5}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 581
    const/4 v3, 0x1

    .line 584
    if-eqz p1, :cond_1

    .line 585
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractFuture;->interruptTask()V

    .line 587
    :cond_1
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractFuture;->complete(Lcom/google/common/util/concurrent/AbstractFuture;)V

    .line 588
    instance-of v6, v2, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    if-eqz v6, :cond_7

    move-object v6, v2

    .line 591
    check-cast v6, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    iget-object v1, v6, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 592
    .local v1, "futureToPropagateTo":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    instance-of v6, v1, Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;

    if-eqz v6, :cond_6

    move-object v4, v1

    .line 600
    check-cast v4, Lcom/google/common/util/concurrent/AbstractFuture;

    .line 601
    .local v4, "trusted":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<*>;"
    iget-object v2, v4, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 602
    if-nez v2, :cond_5

    move v6, v7

    :goto_3
    instance-of v9, v2, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    or-int/2addr v6, v9

    if-eqz v6, :cond_7

    .line 603
    move-object v0, v4

    .line 604
    goto :goto_2

    .end local v0    # "abstractFuture":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<*>;"
    .end local v1    # "futureToPropagateTo":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    .end local v4    # "trusted":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<*>;"
    .end local v5    # "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;
    :cond_2
    move v6, v8

    .line 568
    goto :goto_0

    .line 571
    :cond_3
    if-eqz p1, :cond_4

    sget-object v5, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->CAUSELESS_INTERRUPTED:Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    goto :goto_1

    :cond_4
    sget-object v5, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->CAUSELESS_CANCELLED:Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    goto :goto_1

    .restart local v0    # "abstractFuture":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<*>;"
    .restart local v1    # "futureToPropagateTo":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    .restart local v4    # "trusted":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<*>;"
    .restart local v5    # "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;
    :cond_5
    move v6, v8

    .line 602
    goto :goto_3

    .line 608
    .end local v4    # "trusted":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<*>;"
    :cond_6
    invoke-interface {v1, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 623
    .end local v0    # "abstractFuture":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<*>;"
    .end local v1    # "futureToPropagateTo":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<*>;"
    .end local v5    # "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;
    :cond_7
    :goto_4
    return v3

    .line 614
    .restart local v0    # "abstractFuture":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<*>;"
    .restart local v5    # "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;
    :cond_8
    iget-object v2, v0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 615
    instance-of v6, v2, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    if-nez v6, :cond_0

    goto :goto_4
.end method

.method public get()Ljava/lang/Object;
    .locals 7
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 484
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 485
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 488
    .local v0, "localValue":Ljava/lang/Object;
    if-eqz v0, :cond_1

    move v3, v4

    :goto_0
    instance-of v6, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    if-nez v6, :cond_2

    move v6, v4

    :goto_1
    and-int/2addr v3, v6

    if-eqz v3, :cond_3

    .line 489
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 518
    :goto_2
    return-object v3

    :cond_1
    move v3, v5

    .line 488
    goto :goto_0

    :cond_2
    move v6, v5

    goto :goto_1

    .line 491
    :cond_3
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 492
    .local v2, "oldHead":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    if-eq v2, v3, :cond_a

    .line 493
    new-instance v1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    invoke-direct {v1}, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;-><init>()V

    .line 495
    .local v1, "node":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    :cond_4
    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->setNext(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V

    .line 496
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v3, p0, v2, v1}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casWaiters(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 499
    :cond_5
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 501
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 502
    invoke-direct {p0, v1}, Lcom/google/common/util/concurrent/AbstractFuture;->removeWaiter(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V

    .line 503
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 507
    :cond_6
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 508
    if-eqz v0, :cond_7

    move v3, v4

    :goto_3
    instance-of v6, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    if-nez v6, :cond_8

    move v6, v4

    :goto_4
    and-int/2addr v3, v6

    if-eqz v3, :cond_5

    .line 509
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    :cond_7
    move v3, v5

    .line 508
    goto :goto_3

    :cond_8
    move v6, v5

    goto :goto_4

    .line 513
    :cond_9
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 514
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    if-ne v2, v3, :cond_4

    .line 518
    .end local v1    # "node":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    :cond_a
    iget-object v3, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    invoke-direct {p0, v3}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 11
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 395
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    .line 396
    .local v6, "remainingNanos":J
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 397
    new-instance v8, Ljava/lang/InterruptedException;

    invoke-direct {v8}, Ljava/lang/InterruptedException;-><init>()V

    throw v8

    .line 399
    :cond_0
    iget-object v3, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 400
    .local v3, "localValue":Ljava/lang/Object;
    if-eqz v3, :cond_1

    const/4 v8, 0x1

    :goto_0
    instance-of v9, v3, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    if-nez v9, :cond_2

    const/4 v9, 0x1

    :goto_1
    and-int/2addr v8, v9

    if-eqz v8, :cond_3

    .line 401
    invoke-direct {p0, v3}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 449
    :goto_2
    return-object v8

    .line 400
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 404
    :cond_3
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    add-long v0, v8, v6

    .line 406
    .local v0, "endNanos":J
    :goto_3
    const-wide/16 v8, 0x3e8

    cmp-long v8, v6, v8

    if-ltz v8, :cond_b

    .line 407
    iget-object v5, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 408
    .local v5, "oldHead":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    sget-object v8, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    if-eq v5, v8, :cond_d

    .line 409
    new-instance v4, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    invoke-direct {v4}, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;-><init>()V

    .line 411
    .local v4, "node":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    :cond_4
    invoke-virtual {v4, v5}, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->setNext(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V

    .line 412
    sget-object v8, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v8, p0, v5, v4}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casWaiters(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 414
    :cond_5
    invoke-static {p0, v6, v7}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 416
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 417
    invoke-direct {p0, v4}, Lcom/google/common/util/concurrent/AbstractFuture;->removeWaiter(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V

    .line 418
    new-instance v8, Ljava/lang/InterruptedException;

    invoke-direct {v8}, Ljava/lang/InterruptedException;-><init>()V

    throw v8

    .line 404
    .end local v0    # "endNanos":J
    .end local v4    # "node":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    .end local v5    # "oldHead":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    :cond_6
    const-wide/16 v0, 0x0

    goto :goto_3

    .line 423
    .restart local v0    # "endNanos":J
    .restart local v4    # "node":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    .restart local v5    # "oldHead":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    :cond_7
    iget-object v3, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 424
    if-eqz v3, :cond_8

    const/4 v8, 0x1

    :goto_4
    instance-of v9, v3, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    if-nez v9, :cond_9

    const/4 v9, 0x1

    :goto_5
    and-int/2addr v8, v9

    if-eqz v8, :cond_a

    .line 425
    invoke-direct {p0, v3}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_2

    .line 424
    :cond_8
    const/4 v8, 0x0

    goto :goto_4

    :cond_9
    const/4 v9, 0x0

    goto :goto_5

    .line 429
    :cond_a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long v6, v0, v8

    .line 430
    const-wide/16 v8, 0x3e8

    cmp-long v8, v6, v8

    if-gez v8, :cond_5

    .line 432
    invoke-direct {p0, v4}, Lcom/google/common/util/concurrent/AbstractFuture;->removeWaiter(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V

    .line 446
    .end local v4    # "node":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    .end local v5    # "oldHead":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    :cond_b
    :goto_6
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_12

    .line 447
    iget-object v3, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 448
    if-eqz v3, :cond_e

    const/4 v8, 0x1

    :goto_7
    instance-of v9, v3, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    if-nez v9, :cond_f

    const/4 v9, 0x1

    :goto_8
    and-int/2addr v8, v9

    if-eqz v8, :cond_10

    .line 449
    invoke-direct {p0, v3}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_2

    .line 437
    .restart local v4    # "node":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    .restart local v5    # "oldHead":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    :cond_c
    iget-object v5, p0, Lcom/google/common/util/concurrent/AbstractFuture;->waiters:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 438
    sget-object v8, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->TOMBSTONE:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    if-ne v5, v8, :cond_4

    .line 442
    .end local v4    # "node":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    :cond_d
    iget-object v8, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    invoke-direct {p0, v8}, Lcom/google/common/util/concurrent/AbstractFuture;->getDoneValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_2

    .line 448
    .end local v5    # "oldHead":Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    :cond_e
    const/4 v8, 0x0

    goto :goto_7

    :cond_f
    const/4 v9, 0x0

    goto :goto_8

    .line 451
    :cond_10
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 452
    new-instance v8, Ljava/lang/InterruptedException;

    invoke-direct {v8}, Ljava/lang/InterruptedException;-><init>()V

    throw v8

    .line 454
    :cond_11
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long v6, v0, v8

    goto :goto_6

    .line 457
    :cond_12
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->toString()Ljava/lang/String;

    move-result-object v2

    .line 461
    .local v2, "futureToString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isDone()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 462
    new-instance v8, Ljava/util/concurrent/TimeoutException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Waited "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 466
    invoke-virtual {p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but future completed as timeout expired"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 469
    :cond_13
    new-instance v8, Ljava/util/concurrent/TimeoutException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Waited "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 470
    invoke-virtual {p3}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method protected interruptTask()V
    .locals 0

    .prologue
    .line 637
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    return-void
.end method

.method public isCancelled()Z
    .locals 2

    .prologue
    .line 546
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 547
    .local v0, "localValue":Ljava/lang/Object;
    instance-of v1, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    return v1
.end method

.method public isDone()Z
    .locals 5

    .prologue
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 540
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 541
    .local v0, "localValue":Ljava/lang/Object;
    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    instance-of v4, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    if-nez v4, :cond_1

    :goto_1
    and-int/2addr v1, v2

    return v1

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method final maybePropagateCancellationTo(Ljava/util/concurrent/Future;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/Future;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 906
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    .local p1, "related":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isCancelled()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 907
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->wasInterrupted()Z

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 909
    :cond_0
    return-void

    .line 906
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected pendingToString()Ljava/lang/String;
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .line 985
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 986
    .local v0, "localValue":Ljava/lang/Object;
    instance-of v1, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    if-eqz v1, :cond_0

    .line 987
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFuture=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    .end local v0    # "localValue":Ljava/lang/Object;
    iget-object v2, v0, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;->future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 993
    .end local p0    # "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    :goto_0
    return-object v1

    .line 988
    .restart local v0    # "localValue":Ljava/lang/Object;
    .restart local p0    # "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    :cond_0
    instance-of v1, p0, Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    .line 989
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remaining delay=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p0, Ljava/util/concurrent/ScheduledFuture;

    .end local p0    # "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 990
    invoke-interface {p0, v2}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 993
    .restart local p0    # "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected set(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 689
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->NULL:Ljava/lang/Object;

    .line 690
    .local v0, "valueToSet":Ljava/lang/Object;
    :goto_0
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 691
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->complete(Lcom/google/common/util/concurrent/AbstractFuture;)V

    .line 692
    const/4 v1, 0x1

    .line 694
    :goto_1
    return v1

    .end local v0    # "valueToSet":Ljava/lang/Object;
    :cond_0
    move-object v0, p1

    .line 689
    goto :goto_0

    .line 694
    .restart local v0    # "valueToSet":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected setException(Ljava/lang/Throwable;)Z
    .locals 3
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .prologue
    .line 711
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V

    .line 712
    .local v0, "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$Failure;
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 713
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->complete(Lcom/google/common/util/concurrent/AbstractFuture;)V

    .line 714
    const/4 v1, 0x1

    .line 716
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z
    .locals 10
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    .local p1, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 748
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 750
    .local v1, "localValue":Ljava/lang/Object;
    if-nez v1, :cond_3

    .line 751
    invoke-interface {p1}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 752
    invoke-static {p1}, Lcom/google/common/util/concurrent/AbstractFuture;->getFutureValue(Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v4

    .line 753
    .local v4, "value":Ljava/lang/Object;
    sget-object v8, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v8, p0, v9, v4}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 754
    invoke-static {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->complete(Lcom/google/common/util/concurrent/AbstractFuture;)V

    .line 788
    .end local v4    # "value":Ljava/lang/Object;
    :goto_0
    return v6

    .restart local v4    # "value":Ljava/lang/Object;
    :cond_0
    move v6, v7

    .line 757
    goto :goto_0

    .line 759
    .end local v4    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v5, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;

    invoke-direct {v5, p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;-><init>(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 760
    .local v5, "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;
    sget-object v8, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v8, p0, v9, v5}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 764
    :try_start_0
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v7

    invoke-interface {p1, v5, v7}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 765
    :catch_0
    move-exception v3

    .line 771
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_1
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    invoke-direct {v0, v3}, Lcom/google/common/util/concurrent/AbstractFuture$Failure;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 776
    .local v0, "failure":Lcom/google/common/util/concurrent/AbstractFuture$Failure;
    :goto_1
    sget-object v7, Lcom/google/common/util/concurrent/AbstractFuture;->ATOMIC_HELPER:Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;

    invoke-virtual {v7, p0, v5, v0}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;->casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 772
    .end local v0    # "failure":Lcom/google/common/util/concurrent/AbstractFuture$Failure;
    :catch_1
    move-exception v2

    .line 773
    .local v2, "oomMostLikely":Ljava/lang/Throwable;
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;->FALLBACK_INSTANCE:Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    .restart local v0    # "failure":Lcom/google/common/util/concurrent/AbstractFuture$Failure;
    goto :goto_1

    .line 780
    .end local v0    # "failure":Lcom/google/common/util/concurrent/AbstractFuture$Failure;
    .end local v2    # "oomMostLikely":Ljava/lang/Throwable;
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_2
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 784
    .end local v5    # "valueToSet":Lcom/google/common/util/concurrent/AbstractFuture$SetFuture;
    :cond_3
    instance-of v6, v1, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    if-eqz v6, :cond_4

    move-object v6, v1

    .line 786
    check-cast v6, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    iget-boolean v6, v6, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->wasInterrupted:Z

    invoke-interface {p1, v6}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    :cond_4
    move v6, v7

    .line 788
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 950
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "[status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 951
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 952
    const-string v3, "CANCELLED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    :goto_0
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 953
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isDone()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 954
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->addDoneString(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 958
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->pendingToString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 966
    .local v2, "pendingDescription":Ljava/lang/String;
    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 967
    const-string v3, "PENDING, info=["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 959
    .end local v2    # "pendingDescription":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 962
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception thrown from implementation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "pendingDescription":Ljava/lang/String;
    goto :goto_1

    .line 968
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isDone()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 969
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->addDoneString(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 971
    :cond_3
    const-string v3, "PENDING"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method final trustedGetException()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 898
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$Failure;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method protected final wasInterrupted()Z
    .locals 2

    .prologue
    .line 646
    .local p0, "this":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<TV;>;"
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->value:Ljava/lang/Object;

    .line 647
    .local v0, "localValue":Ljava/lang/Object;
    instance-of v1, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;

    .end local v0    # "localValue":Ljava/lang/Object;
    iget-boolean v1, v0, Lcom/google/common/util/concurrent/AbstractFuture$Cancellation;->wasInterrupted:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
