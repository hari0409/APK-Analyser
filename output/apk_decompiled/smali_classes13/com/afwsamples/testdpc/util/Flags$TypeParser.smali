.class final Lcom/afwsamples/testdpc/util/Flags$TypeParser;
.super Ljava/lang/Object;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/util/Flags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TypeParser"
.end annotation


# instance fields
.field private final parsers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/afwsamples/testdpc/util/Flags$ArgumentParser",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/afwsamples/testdpc/util/Flags$ArgumentParser",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 421
    .local p1, "parsers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lcom/afwsamples/testdpc/util/Flags$ArgumentParser<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/Flags$TypeParser;->parsers:Ljava/util/Map;

    .line 423
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lcom/afwsamples/testdpc/util/Flags$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Map;
    .param p2, "x1"    # Lcom/afwsamples/testdpc/util/Flags$1;

    .prologue
    .line 418
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/util/Flags$TypeParser;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/afwsamples/testdpc/util/Flags$TypeParser;Lcom/afwsamples/testdpc/util/Flags$Param;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/util/Flags$TypeParser;
    .param p1, "x1"    # Lcom/afwsamples/testdpc/util/Flags$Param;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 418
    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/util/Flags$TypeParser;->parse(Lcom/afwsamples/testdpc/util/Flags$Param;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private parse(Lcom/afwsamples/testdpc/util/Flags$Param;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p1, "param":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT;>;"
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 428
    iget-object v2, p0, Lcom/afwsamples/testdpc/util/Flags$TypeParser;->parsers:Ljava/util/Map;

    invoke-interface {p1}, Lcom/afwsamples/testdpc/util/Flags$Param;->dataType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;

    .line 429
    .local v0, "parser":Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;, "Lcom/afwsamples/testdpc/util/Flags$ArgumentParser<TT;>;"
    invoke-static {v0}, Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;->access$900(Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;)Lcom/afwsamples/testdpc/util/Flags$BiFunction;

    move-result-object v2

    invoke-static {v0}, Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;->access$800(Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;)Lcom/afwsamples/testdpc/util/Flags$Validator;

    move-result-object v3

    invoke-interface {v2, p2, v3}, Lcom/afwsamples/testdpc/util/Flags$BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;

    .line 431
    .local v1, "result":Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;, "Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult<TT;>;"
    invoke-static {v1}, Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;->access$1000(Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 432
    invoke-static {v1}, Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;->access$1100(Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 433
    const-string v2, "Parameter \'%s\' could not be parsed as \'%s\'.\n%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 435
    invoke-interface {p1}, Lcom/afwsamples/testdpc/util/Flags$Param;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {p1}, Lcom/afwsamples/testdpc/util/Flags$Param;->dataType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1}, Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;->access$1200(Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 433
    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/Flags;->access$1300(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 438
    :cond_0
    const-string v2, "Parameter \'%s\' could not be parsed as \'%s\'."

    new-array v3, v7, [Ljava/lang/Object;

    .line 440
    invoke-interface {p1}, Lcom/afwsamples/testdpc/util/Flags$Param;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {p1}, Lcom/afwsamples/testdpc/util/Flags$Param;->dataType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 438
    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/Flags;->access$1300(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 443
    :cond_1
    invoke-static {v1}, Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;->access$1400(Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
