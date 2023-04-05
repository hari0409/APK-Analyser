.class final Landroidx/multidex/MultiDex$V19;
.super Ljava/lang/Object;
.source "MultiDex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/multidex/MultiDex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "V19"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static install(Ljava/lang/ClassLoader;Ljava/util/List;Ljava/io/File;)V
    .locals 12
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "optimizedDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/List",
            "<+",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "additionalClassPathEntries":Ljava/util/List;, "Ljava/util/List<+Ljava/io/File;>;"
    const/4 v11, 0x0

    .line 510
    const-string v8, "pathList"

    invoke-static {p0, v8}, Landroidx/multidex/MultiDex;->access$000(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 511
    .local v5, "pathListField":Ljava/lang/reflect/Field;
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 512
    .local v2, "dexPathList":Ljava/lang/Object;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 513
    .local v6, "suppressedExceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/IOException;>;"
    const-string v8, "dexElements"

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, v9, p2, v6}, Landroidx/multidex/MultiDex$V19;->makeDexElements(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;)[Ljava/lang/Object;

    move-result-object v9

    invoke-static {v2, v8, v9}, Landroidx/multidex/MultiDex;->access$100(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 516
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 517
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/IOException;

    .line 518
    .local v3, "e":Ljava/io/IOException;
    const-string v9, "MultiDex"

    const-string v10, "Exception in makeDexElement"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 520
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    const-string v8, "dexElementsSuppressedExceptions"

    .line 521
    invoke-static {v2, v8}, Landroidx/multidex/MultiDex;->access$000(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 523
    .local v7, "suppressedExceptionsField":Ljava/lang/reflect/Field;
    invoke-virtual {v7, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/io/IOException;

    move-object v1, v8

    check-cast v1, [Ljava/io/IOException;

    .line 525
    .local v1, "dexElementsSuppressedExceptions":[Ljava/io/IOException;
    if-nez v1, :cond_1

    .line 528
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/io/IOException;

    .line 527
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "dexElementsSuppressedExceptions":[Ljava/io/IOException;
    check-cast v1, [Ljava/io/IOException;

    .line 539
    .restart local v1    # "dexElementsSuppressedExceptions":[Ljava/io/IOException;
    :goto_1
    invoke-virtual {v7, v2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 541
    new-instance v4, Ljava/io/IOException;

    const-string v8, "I/O exception during makeDexElement"

    invoke-direct {v4, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 542
    .local v4, "exception":Ljava/io/IOException;
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Throwable;

    invoke-virtual {v4, v8}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 543
    throw v4

    .line 531
    .end local v4    # "exception":Ljava/io/IOException;
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v1

    add-int/2addr v8, v9

    new-array v0, v8, [Ljava/io/IOException;

    .line 533
    .local v0, "combined":[Ljava/io/IOException;
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 535
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v1

    .line 534
    invoke-static {v1, v11, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 536
    move-object v1, v0

    goto :goto_1

    .line 545
    .end local v0    # "combined":[Ljava/io/IOException;
    .end local v1    # "dexElementsSuppressedExceptions":[Ljava/io/IOException;
    .end local v7    # "suppressedExceptionsField":Ljava/lang/reflect/Field;
    :cond_2
    return-void
.end method

.method private static makeDexElements(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/io/File;Ljava/util/ArrayList;)[Ljava/lang/Object;
    .locals 8
    .param p0, "dexPathList"    # Ljava/lang/Object;
    .param p2, "optimizedDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/IOException;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .local p1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    .local p3, "suppressedExceptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/IOException;>;"
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 556
    const-string v1, "makeDexElements"

    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Ljava/util/ArrayList;

    aput-object v3, v2, v4

    const-class v3, Ljava/io/File;

    aput-object v3, v2, v5

    const-class v3, Ljava/util/ArrayList;

    aput-object v3, v2, v6

    .line 557
    invoke-static {p0, v1, v2}, Landroidx/multidex/MultiDex;->access$200(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 560
    .local v0, "makeDexElements":Ljava/lang/reflect/Method;
    new-array v1, v7, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    aput-object p3, v1, v6

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    return-object v1
.end method
