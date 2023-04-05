.class final Lcom/afwsamples/testdpc/util/Flags$Params;
.super Ljava/lang/Object;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/util/Flags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Params"
.end annotation


# instance fields
.field private final namedParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final ordinalParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<*>;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "ordinalParams":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/util/Flags$Param<*>;>;"
    .local p2, "namedParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$Param<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/Flags$Params;->ordinalParams:Ljava/util/List;

    .line 254
    iput-object p2, p0, Lcom/afwsamples/testdpc/util/Flags$Params;->namedParams:Ljava/util/Map;

    .line 255
    return-void
.end method

.method static synthetic access$1500(Lcom/afwsamples/testdpc/util/Flags$Params;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/util/Flags$Params;

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/Flags$Params;->namedParams()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/afwsamples/testdpc/util/Flags$Params;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/util/Flags$Params;

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/Flags$Params;->ordinalParams()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/Flags$Params;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Iterable;

    .prologue
    .line 248
    invoke-static {p0}, Lcom/afwsamples/testdpc/util/Flags$Params;->create(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/Flags$Params;

    move-result-object v0

    return-object v0
.end method

.method private static create(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/Flags$Params;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<*>;>;)",
            "Lcom/afwsamples/testdpc/util/Flags$Params;"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "params":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/afwsamples/testdpc/util/Flags$Param<*>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v1, "ordinalParams":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/util/Flags$Param<*>;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 261
    .local v0, "namedParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$Param<*>;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/afwsamples/testdpc/util/Flags$Param;

    .line 262
    .local v2, "param":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<*>;"
    invoke-interface {v2}, Lcom/afwsamples/testdpc/util/Flags$Param;->isOrdinal()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 263
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 265
    :cond_0
    invoke-interface {v2}, Lcom/afwsamples/testdpc/util/Flags$Param;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 269
    .end local v2    # "param":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<*>;"
    :cond_1
    new-instance v3, Lcom/afwsamples/testdpc/util/Flags$Params;

    invoke-direct {v3, v1, v0}, Lcom/afwsamples/testdpc/util/Flags$Params;-><init>(Ljava/util/List;Ljava/util/Map;)V

    return-object v3
.end method

.method private namedParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/Flags$Params;->namedParams:Ljava/util/Map;

    return-object v0
.end method

.method private ordinalParams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/Flags$Params;->ordinalParams:Ljava/util/List;

    return-object v0
.end method
