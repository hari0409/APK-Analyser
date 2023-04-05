.class public Lcom/google/common/base/internal/Finalizer;
.super Ljava/lang/Object;
.source "Finalizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final FINALIZABLE_REFERENCE:Ljava/lang/String; = "com.google.common.base.FinalizableReference"

.field private static final bigThreadConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private static final inheritableThreadLocals:Ljava/lang/reflect/Field;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final finalizableReferenceClassReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final frqReference:Ljava/lang/ref/PhantomReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/PhantomReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/google/common/base/internal/Finalizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/internal/Finalizer;->logger:Ljava/util/logging/Logger;

    .line 120
    invoke-static {}, Lcom/google/common/base/internal/Finalizer;->getBigThreadConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/internal/Finalizer;->bigThreadConstructor:Ljava/lang/reflect/Constructor;

    .line 123
    sget-object v0, Lcom/google/common/base/internal/Finalizer;->bigThreadConstructor:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_0

    .line 124
    invoke-static {}, Lcom/google/common/base/internal/Finalizer;->getInheritableThreadLocalsField()Ljava/lang/reflect/Field;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/google/common/base/internal/Finalizer;->inheritableThreadLocals:Ljava/lang/reflect/Field;

    .line 123
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/ref/ReferenceQueue;Ljava/lang/ref/PhantomReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/ref/PhantomReference",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "finalizableReferenceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava/lang/Object;>;"
    .local p3, "frqReference":Ljava/lang/ref/PhantomReference;, "Ljava/lang/ref/PhantomReference<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p2, p0, Lcom/google/common/base/internal/Finalizer;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 133
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/common/base/internal/Finalizer;->finalizableReferenceClassReference:Ljava/lang/ref/WeakReference;

    .line 137
    iput-object p3, p0, Lcom/google/common/base/internal/Finalizer;->frqReference:Ljava/lang/ref/PhantomReference;

    .line 138
    return-void
.end method

.method private cleanUp(Ljava/lang/ref/Reference;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    const/4 v2, 0x0

    .line 162
    invoke-direct {p0}, Lcom/google/common/base/internal/Finalizer;->getFinalizeReferentMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 163
    .local v0, "finalizeReferentMethod":Ljava/lang/reflect/Method;
    if-nez v0, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v2

    .line 171
    :cond_1
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    .line 173
    iget-object v3, p0, Lcom/google/common/base/internal/Finalizer;->frqReference:Ljava/lang/ref/PhantomReference;

    if-eq p1, v3, :cond_0

    .line 181
    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_1
    iget-object v3, p0, Lcom/google/common/base/internal/Finalizer;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v3}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object p1

    if-nez p1, :cond_1

    .line 191
    const/4 v2, 0x1

    goto :goto_0

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v3, Lcom/google/common/base/internal/Finalizer;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v5, "Error cleaning up after reference."

    invoke-virtual {v3, v4, v5, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static getBigThreadConstructor()Ljava/lang/reflect/Constructor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .line 232
    :try_start_0
    const-class v1, Ljava/lang/Thread;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/ThreadGroup;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/Runnable;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 236
    .local v0, "t":Ljava/lang/Throwable;
    :goto_0
    return-object v1

    .line 234
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 236
    .restart local v0    # "t":Ljava/lang/Throwable;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getFinalizeReferentMethod()Ljava/lang/reflect/Method;
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .line 197
    iget-object v2, p0, Lcom/google/common/base/internal/Finalizer;->finalizableReferenceClassReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 198
    .local v1, "finalizableReferenceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_0

    .line 205
    const/4 v2, 0x0

    .line 208
    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    const-string v2, "finalizeReferent"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method private static getInheritableThreadLocalsField()Ljava/lang/reflect/Field;
    .locals 5
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .prologue
    .line 217
    :try_start_0
    const-class v2, Ljava/lang/Thread;

    const-string v3, "inheritableThreadLocals"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 218
    .local v0, "inheritableThreadLocals":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .end local v0    # "inheritableThreadLocals":Ljava/lang/reflect/Field;
    :goto_0
    return-object v0

    .line 220
    .restart local v0    # "inheritableThreadLocals":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 221
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/google/common/base/internal/Finalizer;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "Couldn\'t access Thread.inheritableThreadLocals. Reference finalizer threads will inherit thread local values."

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 225
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static startFinalizer(Ljava/lang/Class;Ljava/lang/ref/ReferenceQueue;Ljava/lang/ref/PhantomReference;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/ref/PhantomReference",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "finalizableReferenceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava/lang/Object;>;"
    .local p2, "frqReference":Ljava/lang/ref/PhantomReference;, "Ljava/lang/ref/PhantomReference<Ljava/lang/Object;>;"
    const/4 v14, 0x1

    const/4 v10, 0x0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v11, "com.google.common.base.FinalizableReference"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 75
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Expected com.google.common.base.FinalizableReference."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 78
    :cond_0
    new-instance v4, Lcom/google/common/base/internal/Finalizer;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v4, p0, v0, v1}, Lcom/google/common/base/internal/Finalizer;-><init>(Ljava/lang/Class;Ljava/lang/ref/ReferenceQueue;Ljava/lang/ref/PhantomReference;)V

    .line 79
    .local v4, "finalizer":Lcom/google/common/base/internal/Finalizer;
    const-class v9, Lcom/google/common/base/internal/Finalizer;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 80
    .local v8, "threadName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 81
    .local v7, "thread":Ljava/lang/Thread;
    sget-object v9, Lcom/google/common/base/internal/Finalizer;->bigThreadConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v9, :cond_1

    .line 83
    const/4 v5, 0x0

    .line 84
    .local v5, "inheritThreadLocals":Z
    const-wide/16 v2, 0x0

    .line 85
    .local v2, "defaultStackSize":J
    :try_start_0
    sget-object v11, Lcom/google/common/base/internal/Finalizer;->bigThreadConstructor:Ljava/lang/reflect/Constructor;

    const/4 v9, 0x5

    new-array v12, v9, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v9, 0x0

    check-cast v9, Ljava/lang/ThreadGroup;

    aput-object v9, v12, v13

    const/4 v9, 0x1

    aput-object v4, v12, v9

    const/4 v9, 0x2

    aput-object v8, v12, v9

    const/4 v9, 0x3

    .line 87
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v12, v9

    const/4 v9, 0x4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v9

    .line 86
    invoke-virtual {v11, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/Thread;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v2    # "defaultStackSize":J
    .end local v5    # "inheritThreadLocals":Z
    :cond_1
    :goto_0
    if-nez v7, :cond_2

    .line 94
    new-instance v7, Ljava/lang/Thread;

    .end local v7    # "thread":Ljava/lang/Thread;
    move-object v9, v10

    check-cast v9, Ljava/lang/ThreadGroup;

    invoke-direct {v7, v9, v4, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 96
    .restart local v7    # "thread":Ljava/lang/Thread;
    :cond_2
    invoke-virtual {v7, v14}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 99
    :try_start_1
    sget-object v9, Lcom/google/common/base/internal/Finalizer;->inheritableThreadLocals:Ljava/lang/reflect/Field;

    if-eqz v9, :cond_3

    .line 100
    sget-object v9, Lcom/google/common/base/internal/Finalizer;->inheritableThreadLocals:Ljava/lang/reflect/Field;

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    :cond_3
    :goto_1
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 110
    return-void

    .line 88
    .restart local v2    # "defaultStackSize":J
    .restart local v5    # "inheritThreadLocals":Z
    :catch_0
    move-exception v6

    .line 89
    .local v6, "t":Ljava/lang/Throwable;
    sget-object v9, Lcom/google/common/base/internal/Finalizer;->logger:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v12, "Failed to create a thread without inherited thread-local values"

    invoke-virtual {v9, v11, v12, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 102
    .end local v2    # "defaultStackSize":J
    .end local v5    # "inheritThreadLocals":Z
    .end local v6    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v6

    .line 103
    .restart local v6    # "t":Ljava/lang/Throwable;
    sget-object v9, Lcom/google/common/base/internal/Finalizer;->logger:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v11, "Failed to clear thread local values inherited by reference finalizer thread."

    invoke-virtual {v9, v10, v11, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 146
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/common/base/internal/Finalizer;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/base/internal/Finalizer;->cleanUp(Ljava/lang/ref/Reference;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 153
    return-void

    .line 149
    :catch_0
    move-exception v0

    goto :goto_0
.end method
