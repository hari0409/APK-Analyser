.class final Lcom/google/common/util/concurrent/AbstractFuture$SynchronizedHelper;
.super Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SynchronizedHelper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1180
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;-><init>(Lcom/google/common/util/concurrent/AbstractFuture$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/AbstractFuture$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/util/concurrent/AbstractFuture$1;

    .prologue
    .line 1180
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$SynchronizedHelper;-><init>()V

    return-void
.end method


# virtual methods
.method casListeners(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Listener;Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Z
    .locals 1
    .param p2, "expect"    # Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .param p3, "update"    # Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/AbstractFuture",
            "<*>;",
            "Lcom/google/common/util/concurrent/AbstractFuture$Listener;",
            "Lcom/google/common/util/concurrent/AbstractFuture$Listener;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1204
    .local p1, "future":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<*>;"
    monitor-enter p1

    .line 1205
    :try_start_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/AbstractFuture;->access$900(Lcom/google/common/util/concurrent/AbstractFuture;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 1206
    invoke-static {p1, p3}, Lcom/google/common/util/concurrent/AbstractFuture;->access$902(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 1207
    const/4 v0, 0x1

    monitor-exit p1

    .line 1209
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p1

    goto :goto_0

    .line 1210
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p2, "expect"    # Ljava/lang/Object;
    .param p3, "update"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/AbstractFuture",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1215
    .local p1, "future":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<*>;"
    monitor-enter p1

    .line 1216
    :try_start_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/AbstractFuture;->access$400(Lcom/google/common/util/concurrent/AbstractFuture;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 1217
    invoke-static {p1, p3}, Lcom/google/common/util/concurrent/AbstractFuture;->access$402(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    const/4 v0, 0x1

    monitor-exit p1

    .line 1220
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p1

    goto :goto_0

    .line 1221
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method casWaiters(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Z
    .locals 1
    .param p2, "expect"    # Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    .param p3, "update"    # Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/AbstractFuture",
            "<*>;",
            "Lcom/google/common/util/concurrent/AbstractFuture$Waiter;",
            "Lcom/google/common/util/concurrent/AbstractFuture$Waiter;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1193
    .local p1, "future":Lcom/google/common/util/concurrent/AbstractFuture;, "Lcom/google/common/util/concurrent/AbstractFuture<*>;"
    monitor-enter p1

    .line 1194
    :try_start_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/AbstractFuture;->access$800(Lcom/google/common/util/concurrent/AbstractFuture;)Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 1195
    invoke-static {p1, p3}, Lcom/google/common/util/concurrent/AbstractFuture;->access$802(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 1196
    const/4 v0, 0x1

    monitor-exit p1

    .line 1198
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p1

    goto :goto_0

    .line 1199
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method putNext(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V
    .locals 0
    .param p1, "waiter"    # Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    .param p2, "newValue"    # Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .prologue
    .line 1188
    iput-object p2, p1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->next:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 1189
    return-void
.end method

.method putThread(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;Ljava/lang/Thread;)V
    .locals 0
    .param p1, "waiter"    # Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    .param p2, "newValue"    # Ljava/lang/Thread;

    .prologue
    .line 1183
    iput-object p2, p1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    .line 1184
    return-void
.end method
