.class final Lcom/google/common/eventbus/SubscriberRegistry$1;
.super Lcom/google/common/cache/CacheLoader;
.source "SubscriberRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/eventbus/SubscriberRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/CacheLoader",
        "<",
        "Ljava/lang/Class",
        "<*>;",
        "Lcom/google/common/collect/ImmutableList",
        "<",
        "Ljava/lang/reflect/Method;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/google/common/cache/CacheLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "concreteClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lcom/google/common/eventbus/SubscriberRegistry;->access$000(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 151
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/google/common/eventbus/SubscriberRegistry$1;->load(Ljava/lang/Class;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
