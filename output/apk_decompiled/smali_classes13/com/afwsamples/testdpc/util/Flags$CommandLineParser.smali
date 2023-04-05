.class final Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;
.super Ljava/lang/Object;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/util/Flags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CommandLineParser"
.end annotation


# instance fields
.field private final args:[Ljava/lang/String;

.field private currentIndex:I

.field private final parsedOrdinalParams:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final parsedParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final typeParser:Lcom/afwsamples/testdpc/util/Flags$TypeParser;


# direct methods
.method private constructor <init>(Lcom/afwsamples/testdpc/util/Flags$TypeParser;[Ljava/lang/String;)V
    .locals 1
    .param p1, "typeParser"    # Lcom/afwsamples/testdpc/util/Flags$TypeParser;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->parsedParams:Ljava/util/Map;

    .line 450
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->parsedOrdinalParams:Ljava/util/Set;

    .line 456
    const/4 v0, 0x1

    iput v0, p0, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->currentIndex:I

    .line 459
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->typeParser:Lcom/afwsamples/testdpc/util/Flags$TypeParser;

    .line 460
    iput-object p2, p0, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->args:[Ljava/lang/String;

    .line 461
    return-void
.end method

.method synthetic constructor <init>(Lcom/afwsamples/testdpc/util/Flags$TypeParser;[Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/afwsamples/testdpc/util/Flags$TypeParser;
    .param p2, "x1"    # [Ljava/lang/String;
    .param p3, "x2"    # Lcom/afwsamples/testdpc/util/Flags$1;

    .prologue
    .line 447
    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;-><init>(Lcom/afwsamples/testdpc/util/Flags$TypeParser;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;Lcom/afwsamples/testdpc/util/Flags$Params;)Lcom/afwsamples/testdpc/util/Flags$ArgsContainer;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;
    .param p1, "x1"    # Lcom/afwsamples/testdpc/util/Flags$Params;

    .prologue
    .line 447
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->parse(Lcom/afwsamples/testdpc/util/Flags$Params;)Lcom/afwsamples/testdpc/util/Flags$ArgsContainer;

    move-result-object v0

    return-object v0
.end method

.method private advance()V
    .locals 1

    .prologue
    .line 537
    iget v0, p0, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->currentIndex:I

    .line 538
    return-void
.end method

.method private static asArray(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 583
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 585
    .local v0, "array":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 586
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 585
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 589
    :cond_0
    return-object v0
.end method

.method private getCurrentOrdinalParam(Lcom/afwsamples/testdpc/util/Flags$Params;)Lcom/afwsamples/testdpc/util/Flags$Param;
    .locals 2
    .param p1, "params"    # Lcom/afwsamples/testdpc/util/Flags$Params;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/afwsamples/testdpc/util/Flags$Params;",
            ")",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 557
    invoke-static {p1}, Lcom/afwsamples/testdpc/util/Flags$Params;->access$1600(Lcom/afwsamples/testdpc/util/Flags$Params;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->parsedOrdinalParams:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/util/Flags$Param;

    return-object v0
.end method

.method private getNextValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 545
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->args:[Ljava/lang/String;

    iget v1, p0, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->currentIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->currentIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method private hasNextValue()Z
    .locals 2

    .prologue
    .line 541
    iget v0, p0, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->currentIndex:I

    iget-object v1, p0, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->args:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasOrdinalParamForCurrentArg(Lcom/afwsamples/testdpc/util/Flags$Params;)Z
    .locals 2
    .param p1, "params"    # Lcom/afwsamples/testdpc/util/Flags$Params;

    .prologue
    .line 553
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->parsedOrdinalParams:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {p1}, Lcom/afwsamples/testdpc/util/Flags$Params;->access$1600(Lcom/afwsamples/testdpc/util/Flags$Params;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNamedArg(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 575
    const-string v0, "--"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static namedArgValueToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "arg"    # Ljava/lang/String;

    .prologue
    .line 579
    const-string v0, "--"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parse(Lcom/afwsamples/testdpc/util/Flags$Params;)Lcom/afwsamples/testdpc/util/Flags$ArgsContainer;
    .locals 8
    .param p1, "params"    # Lcom/afwsamples/testdpc/util/Flags$Params;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 464
    :goto_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->hasNextValue()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 465
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->peekNextValue()Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, "currentArg":Ljava/lang/String;
    invoke-static {v1}, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->isNamedArg(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 468
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->advance()V

    .line 470
    invoke-static {v1}, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->namedArgValueToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "argName":Ljava/lang/String;
    invoke-static {p1}, Lcom/afwsamples/testdpc/util/Flags$Params;->access$1500(Lcom/afwsamples/testdpc/util/Flags$Params;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 473
    const-string v4, "Named argument \'%s\' does not exist."

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->access$1300(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 476
    :cond_0
    invoke-static {p1}, Lcom/afwsamples/testdpc/util/Flags$Params;->access$1500(Lcom/afwsamples/testdpc/util/Flags$Params;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/afwsamples/testdpc/util/Flags$Param;

    .line 478
    .local v2, "param":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<*>;"
    iget-object v4, p0, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->parsedParams:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 479
    const-string v4, "Named argument \'%s\' was called repeatedly."

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->access$1300(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 482
    :cond_1
    invoke-interface {v2}, Lcom/afwsamples/testdpc/util/Flags$Param;->acceptsMultipleValues()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 483
    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->parseMultipleValues(Lcom/afwsamples/testdpc/util/Flags$Param;)V

    goto :goto_0

    .line 485
    :cond_2
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->hasNextValue()Z

    move-result v4

    if-nez v4, :cond_3

    .line 486
    const-string v4, "Expected value for parameter \'%s\' but it was not provided."

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->access$1300(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 490
    :cond_3
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->getNextValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->parseSingleValue(Lcom/afwsamples/testdpc/util/Flags$Param;Ljava/lang/String;)V

    goto :goto_0

    .line 493
    .end local v0    # "argName":Ljava/lang/String;
    .end local v2    # "param":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<*>;"
    :cond_4
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->hasOrdinalParamForCurrentArg(Lcom/afwsamples/testdpc/util/Flags$Params;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 494
    const-string v4, "More ordinal parameters were provided than the command accepts."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->access$1300(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 498
    :cond_5
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->getCurrentOrdinalParam(Lcom/afwsamples/testdpc/util/Flags$Params;)Lcom/afwsamples/testdpc/util/Flags$Param;

    move-result-object v2

    .line 500
    .restart local v2    # "param":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<*>;"
    invoke-interface {v2}, Lcom/afwsamples/testdpc/util/Flags$Param;->acceptsMultipleValues()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 501
    invoke-direct {p0, v2}, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->parseMultipleValues(Lcom/afwsamples/testdpc/util/Flags$Param;)V

    .line 506
    :goto_1
    iget-object v4, p0, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->parsedOrdinalParams:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 508
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->advance()V

    goto/16 :goto_0

    .line 503
    :cond_6
    invoke-direct {p0, v2, v1}, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->parseSingleValue(Lcom/afwsamples/testdpc/util/Flags$Param;Ljava/lang/String;)V

    goto :goto_1

    .line 512
    .end local v1    # "currentArg":Ljava/lang/String;
    .end local v2    # "param":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<*>;"
    :cond_7
    iget-object v4, p0, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->parsedOrdinalParams:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {p1}, Lcom/afwsamples/testdpc/util/Flags$Params;->access$1600(Lcom/afwsamples/testdpc/util/Flags$Params;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_9

    .line 513
    invoke-static {p1}, Lcom/afwsamples/testdpc/util/Flags$Params;->access$1600(Lcom/afwsamples/testdpc/util/Flags$Params;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/afwsamples/testdpc/util/Flags$Param;

    .line 514
    .restart local v2    # "param":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<*>;"
    iget-object v5, p0, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->parsedOrdinalParams:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-interface {v2}, Lcom/afwsamples/testdpc/util/Flags$Param;->acceptsMultipleValues()Z

    move-result v5

    if-nez v5, :cond_8

    .line 515
    const-string v4, "Ordinal parameter \'%s\' was not provided."

    new-array v5, v6, [Ljava/lang/Object;

    .line 516
    invoke-interface {v2}, Lcom/afwsamples/testdpc/util/Flags$Param;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 515
    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->access$1300(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 521
    .end local v2    # "param":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<*>;"
    :cond_9
    iget-object v4, p0, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->parsedParams:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    iget-object v5, p0, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->parsedOrdinalParams:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    sub-int v3, v4, v5

    .line 522
    .local v3, "parsedNamedParamsCount":I
    invoke-static {p1}, Lcom/afwsamples/testdpc/util/Flags$Params;->access$1500(Lcom/afwsamples/testdpc/util/Flags$Params;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    .line 523
    invoke-static {p1}, Lcom/afwsamples/testdpc/util/Flags$Params;->access$1500(Lcom/afwsamples/testdpc/util/Flags$Params;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/afwsamples/testdpc/util/Flags$Param;

    .line 524
    .restart local v2    # "param":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<*>;"
    iget-object v5, p0, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->parsedParams:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 525
    invoke-interface {v2}, Lcom/afwsamples/testdpc/util/Flags$Param;->isOptional()Z

    move-result v5

    if-nez v5, :cond_a

    .line 526
    invoke-interface {v2}, Lcom/afwsamples/testdpc/util/Flags$Param;->acceptsMultipleValues()Z

    move-result v5

    if-nez v5, :cond_a

    .line 527
    const-string v4, "Named parameter \'%s\' was not provided."

    new-array v5, v6, [Ljava/lang/Object;

    .line 528
    invoke-interface {v2}, Lcom/afwsamples/testdpc/util/Flags$Param;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 527
    invoke-static {v4, v5}, Lcom/afwsamples/testdpc/util/Flags;->access$1300(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 533
    .end local v2    # "param":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<*>;"
    :cond_b
    new-instance v4, Lcom/afwsamples/testdpc/util/Flags$ArgsContainer;

    iget-object v5, p0, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->parsedParams:Ljava/util/Map;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/afwsamples/testdpc/util/Flags$ArgsContainer;-><init>(Ljava/util/Map;Lcom/afwsamples/testdpc/util/Flags$1;)V

    return-object v4
.end method

.method private parseMultipleValues(Lcom/afwsamples/testdpc/util/Flags$Param;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 565
    .local p1, "param":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 567
    .local v0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->hasNextValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->peekNextValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->isNamedArg(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 568
    iget-object v1, p0, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->typeParser:Lcom/afwsamples/testdpc/util/Flags$TypeParser;

    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->getNextValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/afwsamples/testdpc/util/Flags$TypeParser;->access$1800(Lcom/afwsamples/testdpc/util/Flags$TypeParser;Lcom/afwsamples/testdpc/util/Flags$Param;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 571
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->parsedParams:Ljava/util/Map;

    invoke-interface {p1}, Lcom/afwsamples/testdpc/util/Flags$Param;->dataType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->asArray(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    return-void
.end method

.method private parseSingleValue(Lcom/afwsamples/testdpc/util/Flags$Param;Ljava/lang/String;)V
    .locals 2
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 561
    .local p1, "param":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<*>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->parsedParams:Ljava/util/Map;

    iget-object v1, p0, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->typeParser:Lcom/afwsamples/testdpc/util/Flags$TypeParser;

    invoke-static {v1, p1, p2}, Lcom/afwsamples/testdpc/util/Flags$TypeParser;->access$1800(Lcom/afwsamples/testdpc/util/Flags$TypeParser;Lcom/afwsamples/testdpc/util/Flags$Param;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    return-void
.end method

.method private peekNextValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->args:[Ljava/lang/String;

    iget v1, p0, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->currentIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method
