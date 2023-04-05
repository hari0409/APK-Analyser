.class public final Lcom/afwsamples/testdpc/util/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl16;,
        Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl15;,
        Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl14;,
        Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl13;,
        Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl12;,
        Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl11;,
        Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl10;,
        Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl9;,
        Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl8;,
        Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl7;,
        Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl6;,
        Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl5;,
        Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl4;,
        Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl3;,
        Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl2;,
        Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl1;,
        Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl0;,
        Lcom/afwsamples/testdpc/util/Flags$CommandCallback16Params;,
        Lcom/afwsamples/testdpc/util/Flags$CommandCallback15Params;,
        Lcom/afwsamples/testdpc/util/Flags$CommandCallback14Params;,
        Lcom/afwsamples/testdpc/util/Flags$CommandCallback13Params;,
        Lcom/afwsamples/testdpc/util/Flags$CommandCallback12Params;,
        Lcom/afwsamples/testdpc/util/Flags$CommandCallback11Params;,
        Lcom/afwsamples/testdpc/util/Flags$CommandCallback10Params;,
        Lcom/afwsamples/testdpc/util/Flags$CommandCallback9Params;,
        Lcom/afwsamples/testdpc/util/Flags$CommandCallback8Params;,
        Lcom/afwsamples/testdpc/util/Flags$CommandCallback7Params;,
        Lcom/afwsamples/testdpc/util/Flags$CommandCallback6Params;,
        Lcom/afwsamples/testdpc/util/Flags$CommandCallback5Params;,
        Lcom/afwsamples/testdpc/util/Flags$CommandCallback4Params;,
        Lcom/afwsamples/testdpc/util/Flags$CommandCallback3Params;,
        Lcom/afwsamples/testdpc/util/Flags$CommandCallback2Params;,
        Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;,
        Lcom/afwsamples/testdpc/util/Flags$CommandCallback0Params;,
        Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;,
        Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;,
        Lcom/afwsamples/testdpc/util/Flags$ArgsContainer;,
        Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;,
        Lcom/afwsamples/testdpc/util/Flags$TypeParser;,
        Lcom/afwsamples/testdpc/util/Flags$Validator;,
        Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;,
        Lcom/afwsamples/testdpc/util/Flags$CommandMethod;,
        Lcom/afwsamples/testdpc/util/Flags$Params;,
        Lcom/afwsamples/testdpc/util/Flags$RepeatedNamedParam;,
        Lcom/afwsamples/testdpc/util/Flags$RepeatedOrdinalParam;,
        Lcom/afwsamples/testdpc/util/Flags$OptionalParam;,
        Lcom/afwsamples/testdpc/util/Flags$NamedParam;,
        Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;,
        Lcom/afwsamples/testdpc/util/Flags$Param;,
        Lcom/afwsamples/testdpc/util/Flags$BiFunction;,
        Lcom/afwsamples/testdpc/util/Flags$Function;,
        Lcom/afwsamples/testdpc/util/Flags$InvalidCommandInvocationException;
    }
.end annotation


# instance fields
.field private final commands:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;",
            ">;"
        }
    .end annotation
.end field

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

.field private final printWriter:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 663
    new-instance v0, Ljava/io/PrintWriter;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/util/Flags;-><init>(Ljava/io/PrintWriter;)V

    .line 664
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "printWriter"    # Ljava/io/PrintWriter;

    .prologue
    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 656
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/util/Flags;->parsers:Ljava/util/Map;

    .line 657
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/util/Flags;->commands:Ljava/util/Map;

    .line 671
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/Flags;->printWriter:Ljava/io/PrintWriter;

    .line 672
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/Flags;->registerDefaultArgumentParsers()V

    .line 673
    const-string v0, "help"

    new-instance v1, Lcom/afwsamples/testdpc/util/Flags$$Lambda$0;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/util/Flags$$Lambda$0;-><init>(Lcom/afwsamples/testdpc/util/Flags;)V

    .line 674
    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/Flags;->command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    const-string v1, "Prints this help text."

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 673
    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/util/Flags;->addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    .line 675
    return-void
.end method

.method static synthetic access$1300(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 36
    invoke-static {p0, p1}, Lcom/afwsamples/testdpc/util/Flags;->commandInvocationException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6100(Lcom/afwsamples/testdpc/util/Flags;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$ArgsContainer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/util/Flags;
    .param p1, "x1"    # Lcom/afwsamples/testdpc/util/Flags$Param;
    .param p2, "x2"    # Lcom/afwsamples/testdpc/util/Flags$ArgsContainer;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/util/Flags;->retrieveArg(Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$ArgsContainer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback0Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "command"    # Lcom/afwsamples/testdpc/util/Flags$CommandCallback0Params;

    .prologue
    .line 1079
    invoke-static {}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->access$4100()Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1080
    invoke-static {v0, p0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4200(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1081
    invoke-static {v1}, Lcom/afwsamples/testdpc/util/Flags$Params;->access$4000(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/Flags$Params;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4300(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/Flags$Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    new-instance v1, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl0;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl0;-><init>(Lcom/afwsamples/testdpc/util/Flags$CommandCallback0Params;Lcom/afwsamples/testdpc/util/Flags$1;)V

    .line 1082
    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4400(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback10Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;
    .locals 14
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "T10:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/Flags$CommandCallback10Params",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT1;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT2;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT3;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT4;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT5;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT6;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT7;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT8;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT9;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT10;>;)",
            "Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;"
        }
    .end annotation

    .prologue
    .line 1233
    .local p1, "callback":Lcom/afwsamples/testdpc/util/Flags$CommandCallback10Params;, "Lcom/afwsamples/testdpc/util/Flags$CommandCallback10Params<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;>;"
    .local p2, "param1":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT1;>;"
    .local p3, "param2":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT2;>;"
    .local p4, "param3":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT3;>;"
    .local p5, "param4":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT4;>;"
    .local p6, "param5":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT5;>;"
    .local p7, "param6":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT6;>;"
    .local p8, "param7":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT7;>;"
    .local p9, "param8":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT8;>;"
    .local p10, "param9":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT9;>;"
    .local p11, "param10":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT10;>;"
    invoke-static {}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->access$4100()Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1234
    invoke-static {v0, p0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4200(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    const/16 v1, 0xa

    new-array v1, v1, [Lcom/afwsamples/testdpc/util/Flags$Param;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    const/4 v2, 0x4

    aput-object p6, v1, v2

    const/4 v2, 0x5

    aput-object p7, v1, v2

    const/4 v2, 0x6

    aput-object p8, v1, v2

    const/4 v2, 0x7

    aput-object p9, v1, v2

    const/16 v2, 0x8

    aput-object p10, v1, v2

    const/16 v2, 0x9

    aput-object p11, v1, v2

    .line 1237
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1236
    invoke-static {v1}, Lcom/afwsamples/testdpc/util/Flags$Params;->access$4000(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/Flags$Params;

    move-result-object v1

    .line 1235
    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4300(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/Flags$Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v13

    new-instance v0, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl10;

    const/4 v12, 0x0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v12}, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl10;-><init>(Lcom/afwsamples/testdpc/util/Flags$CommandCallback10Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$1;)V

    .line 1240
    invoke-static {v13, v0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4400(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback11Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;
    .locals 15
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "T10:",
            "Ljava/lang/Object;",
            "T11:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/Flags$CommandCallback11Params",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT1;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT2;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT3;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT4;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT5;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT6;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT7;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT8;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT9;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT10;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT11;>;)",
            "Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;"
        }
    .end annotation

    .prologue
    .line 1260
    .local p1, "callback":Lcom/afwsamples/testdpc/util/Flags$CommandCallback11Params;, "Lcom/afwsamples/testdpc/util/Flags$CommandCallback11Params<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;>;"
    .local p2, "param1":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT1;>;"
    .local p3, "param2":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT2;>;"
    .local p4, "param3":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT3;>;"
    .local p5, "param4":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT4;>;"
    .local p6, "param5":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT5;>;"
    .local p7, "param6":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT6;>;"
    .local p8, "param7":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT7;>;"
    .local p9, "param8":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT8;>;"
    .local p10, "param9":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT9;>;"
    .local p11, "param10":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT10;>;"
    .local p12, "param11":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT11;>;"
    invoke-static {}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->access$4100()Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1261
    invoke-static {v0, p0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4200(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    const/16 v1, 0xb

    new-array v1, v1, [Lcom/afwsamples/testdpc/util/Flags$Param;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    const/4 v2, 0x4

    aput-object p6, v1, v2

    const/4 v2, 0x5

    aput-object p7, v1, v2

    const/4 v2, 0x6

    aput-object p8, v1, v2

    const/4 v2, 0x7

    aput-object p9, v1, v2

    const/16 v2, 0x8

    aput-object p10, v1, v2

    const/16 v2, 0x9

    aput-object p11, v1, v2

    const/16 v2, 0xa

    aput-object p12, v1, v2

    .line 1264
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1263
    invoke-static {v1}, Lcom/afwsamples/testdpc/util/Flags$Params;->access$4000(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/Flags$Params;

    move-result-object v1

    .line 1262
    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4300(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/Flags$Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v14

    new-instance v0, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl11;

    const/4 v13, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v13}, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl11;-><init>(Lcom/afwsamples/testdpc/util/Flags$CommandCallback11Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$1;)V

    .line 1267
    invoke-static {v14, v0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4400(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback12Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;
    .locals 17
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "T10:",
            "Ljava/lang/Object;",
            "T11:",
            "Ljava/lang/Object;",
            "T12:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/Flags$CommandCallback12Params",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;TT12;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT1;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT2;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT3;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT4;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT5;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT6;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT7;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT8;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT9;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT10;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT11;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT12;>;)",
            "Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;"
        }
    .end annotation

    .prologue
    .line 1289
    .local p1, "callback":Lcom/afwsamples/testdpc/util/Flags$CommandCallback12Params;, "Lcom/afwsamples/testdpc/util/Flags$CommandCallback12Params<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;TT12;>;"
    .local p2, "param1":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT1;>;"
    .local p3, "param2":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT2;>;"
    .local p4, "param3":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT3;>;"
    .local p5, "param4":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT4;>;"
    .local p6, "param5":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT5;>;"
    .local p7, "param6":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT6;>;"
    .local p8, "param7":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT7;>;"
    .local p9, "param8":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT8;>;"
    .local p10, "param9":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT9;>;"
    .local p11, "param10":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT10;>;"
    .local p12, "param11":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT11;>;"
    .local p13, "param12":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT12;>;"
    invoke-static {}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->access$4100()Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 1290
    move-object/from16 v0, p0

    invoke-static {v1, v0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4200(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v1

    const/16 v2, 0xc

    new-array v2, v2, [Lcom/afwsamples/testdpc/util/Flags$Param;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    aput-object p5, v2, v3

    const/4 v3, 0x4

    aput-object p6, v2, v3

    const/4 v3, 0x5

    aput-object p7, v2, v3

    const/4 v3, 0x6

    aput-object p8, v2, v3

    const/4 v3, 0x7

    aput-object p9, v2, v3

    const/16 v3, 0x8

    aput-object p10, v2, v3

    const/16 v3, 0x9

    aput-object p11, v2, v3

    const/16 v3, 0xa

    aput-object p12, v2, v3

    const/16 v3, 0xb

    aput-object p13, v2, v3

    .line 1293
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1292
    invoke-static {v2}, Lcom/afwsamples/testdpc/util/Flags$Params;->access$4000(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/Flags$Params;

    move-result-object v2

    .line 1291
    invoke-static {v1, v2}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4300(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/Flags$Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v16

    new-instance v1, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl12;

    const/4 v15, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    invoke-direct/range {v1 .. v15}, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl12;-><init>(Lcom/afwsamples/testdpc/util/Flags$CommandCallback12Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$1;)V

    .line 1296
    move-object/from16 v0, v16

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4400(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v1

    return-object v1
.end method

.method public static command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback13Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;
    .locals 18
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "T10:",
            "Ljava/lang/Object;",
            "T11:",
            "Ljava/lang/Object;",
            "T12:",
            "Ljava/lang/Object;",
            "T13:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/Flags$CommandCallback13Params",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;TT12;TT13;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT1;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT2;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT3;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT4;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT5;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT6;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT7;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT8;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT9;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT10;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT11;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT12;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT13;>;)",
            "Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;"
        }
    .end annotation

    .prologue
    .line 1319
    .local p1, "callback":Lcom/afwsamples/testdpc/util/Flags$CommandCallback13Params;, "Lcom/afwsamples/testdpc/util/Flags$CommandCallback13Params<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;TT12;TT13;>;"
    .local p2, "param1":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT1;>;"
    .local p3, "param2":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT2;>;"
    .local p4, "param3":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT3;>;"
    .local p5, "param4":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT4;>;"
    .local p6, "param5":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT5;>;"
    .local p7, "param6":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT6;>;"
    .local p8, "param7":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT7;>;"
    .local p9, "param8":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT8;>;"
    .local p10, "param9":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT9;>;"
    .local p11, "param10":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT10;>;"
    .local p12, "param11":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT11;>;"
    .local p13, "param12":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT12;>;"
    .local p14, "param13":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT13;>;"
    invoke-static {}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->access$4100()Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 1320
    move-object/from16 v0, p0

    invoke-static {v1, v0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4200(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v1

    const/16 v2, 0xd

    new-array v2, v2, [Lcom/afwsamples/testdpc/util/Flags$Param;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    aput-object p5, v2, v3

    const/4 v3, 0x4

    aput-object p6, v2, v3

    const/4 v3, 0x5

    aput-object p7, v2, v3

    const/4 v3, 0x6

    aput-object p8, v2, v3

    const/4 v3, 0x7

    aput-object p9, v2, v3

    const/16 v3, 0x8

    aput-object p10, v2, v3

    const/16 v3, 0x9

    aput-object p11, v2, v3

    const/16 v3, 0xa

    aput-object p12, v2, v3

    const/16 v3, 0xb

    aput-object p13, v2, v3

    const/16 v3, 0xc

    aput-object p14, v2, v3

    .line 1323
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1322
    invoke-static {v2}, Lcom/afwsamples/testdpc/util/Flags$Params;->access$4000(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/Flags$Params;

    move-result-object v2

    .line 1321
    invoke-static {v1, v2}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4300(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/Flags$Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v17

    new-instance v1, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl13;

    const/16 v16, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    invoke-direct/range {v1 .. v16}, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl13;-><init>(Lcom/afwsamples/testdpc/util/Flags$CommandCallback13Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$1;)V

    .line 1326
    move-object/from16 v0, v17

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4400(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v1

    return-object v1
.end method

.method public static command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback14Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;
    .locals 19
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "T10:",
            "Ljava/lang/Object;",
            "T11:",
            "Ljava/lang/Object;",
            "T12:",
            "Ljava/lang/Object;",
            "T13:",
            "Ljava/lang/Object;",
            "T14:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/Flags$CommandCallback14Params",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;TT12;TT13;TT14;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT1;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT2;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT3;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT4;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT5;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT6;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT7;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT8;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT9;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT10;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT11;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT12;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT13;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT14;>;)",
            "Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;"
        }
    .end annotation

    .prologue
    .line 1351
    .local p1, "callback":Lcom/afwsamples/testdpc/util/Flags$CommandCallback14Params;, "Lcom/afwsamples/testdpc/util/Flags$CommandCallback14Params<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;TT12;TT13;TT14;>;"
    .local p2, "param1":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT1;>;"
    .local p3, "param2":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT2;>;"
    .local p4, "param3":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT3;>;"
    .local p5, "param4":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT4;>;"
    .local p6, "param5":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT5;>;"
    .local p7, "param6":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT6;>;"
    .local p8, "param7":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT7;>;"
    .local p9, "param8":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT8;>;"
    .local p10, "param9":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT9;>;"
    .local p11, "param10":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT10;>;"
    .local p12, "param11":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT11;>;"
    .local p13, "param12":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT12;>;"
    .local p14, "param13":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT13;>;"
    .local p15, "param14":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT14;>;"
    invoke-static {}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->access$4100()Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 1352
    move-object/from16 v0, p0

    invoke-static {v1, v0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4200(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v1

    const/16 v2, 0xe

    new-array v2, v2, [Lcom/afwsamples/testdpc/util/Flags$Param;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    aput-object p5, v2, v3

    const/4 v3, 0x4

    aput-object p6, v2, v3

    const/4 v3, 0x5

    aput-object p7, v2, v3

    const/4 v3, 0x6

    aput-object p8, v2, v3

    const/4 v3, 0x7

    aput-object p9, v2, v3

    const/16 v3, 0x8

    aput-object p10, v2, v3

    const/16 v3, 0x9

    aput-object p11, v2, v3

    const/16 v3, 0xa

    aput-object p12, v2, v3

    const/16 v3, 0xb

    aput-object p13, v2, v3

    const/16 v3, 0xc

    aput-object p14, v2, v3

    const/16 v3, 0xd

    aput-object p15, v2, v3

    .line 1355
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1354
    invoke-static {v2}, Lcom/afwsamples/testdpc/util/Flags$Params;->access$4000(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/Flags$Params;

    move-result-object v2

    .line 1353
    invoke-static {v1, v2}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4300(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/Flags$Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v18

    new-instance v1, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl14;

    const/16 v17, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    invoke-direct/range {v1 .. v17}, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl14;-><init>(Lcom/afwsamples/testdpc/util/Flags$CommandCallback14Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$1;)V

    .line 1358
    move-object/from16 v0, v18

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4400(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v1

    return-object v1
.end method

.method public static command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback15Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;
    .locals 20
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "T10:",
            "Ljava/lang/Object;",
            "T11:",
            "Ljava/lang/Object;",
            "T12:",
            "Ljava/lang/Object;",
            "T13:",
            "Ljava/lang/Object;",
            "T14:",
            "Ljava/lang/Object;",
            "T15:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/Flags$CommandCallback15Params",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;TT12;TT13;TT14;TT15;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT1;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT2;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT3;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT4;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT5;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT6;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT7;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT8;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT9;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT10;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT11;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT12;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT13;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT14;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT15;>;)",
            "Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;"
        }
    .end annotation

    .prologue
    .line 1384
    .local p1, "callback":Lcom/afwsamples/testdpc/util/Flags$CommandCallback15Params;, "Lcom/afwsamples/testdpc/util/Flags$CommandCallback15Params<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;TT12;TT13;TT14;TT15;>;"
    .local p2, "param1":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT1;>;"
    .local p3, "param2":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT2;>;"
    .local p4, "param3":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT3;>;"
    .local p5, "param4":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT4;>;"
    .local p6, "param5":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT5;>;"
    .local p7, "param6":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT6;>;"
    .local p8, "param7":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT7;>;"
    .local p9, "param8":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT8;>;"
    .local p10, "param9":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT9;>;"
    .local p11, "param10":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT10;>;"
    .local p12, "param11":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT11;>;"
    .local p13, "param12":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT12;>;"
    .local p14, "param13":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT13;>;"
    .local p15, "param14":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT14;>;"
    .local p16, "param15":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT15;>;"
    invoke-static {}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->access$4100()Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 1385
    move-object/from16 v0, p0

    invoke-static {v1, v0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4200(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v1

    const/16 v2, 0xf

    new-array v2, v2, [Lcom/afwsamples/testdpc/util/Flags$Param;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    aput-object p5, v2, v3

    const/4 v3, 0x4

    aput-object p6, v2, v3

    const/4 v3, 0x5

    aput-object p7, v2, v3

    const/4 v3, 0x6

    aput-object p8, v2, v3

    const/4 v3, 0x7

    aput-object p9, v2, v3

    const/16 v3, 0x8

    aput-object p10, v2, v3

    const/16 v3, 0x9

    aput-object p11, v2, v3

    const/16 v3, 0xa

    aput-object p12, v2, v3

    const/16 v3, 0xb

    aput-object p13, v2, v3

    const/16 v3, 0xc

    aput-object p14, v2, v3

    const/16 v3, 0xd

    aput-object p15, v2, v3

    const/16 v3, 0xe

    aput-object p16, v2, v3

    .line 1388
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1387
    invoke-static {v2}, Lcom/afwsamples/testdpc/util/Flags$Params;->access$4000(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/Flags$Params;

    move-result-object v2

    .line 1386
    invoke-static {v1, v2}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4300(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/Flags$Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v19

    new-instance v1, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl15;

    const/16 v18, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    invoke-direct/range {v1 .. v18}, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl15;-><init>(Lcom/afwsamples/testdpc/util/Flags$CommandCallback15Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$1;)V

    .line 1391
    move-object/from16 v0, v19

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4400(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v1

    return-object v1
.end method

.method public static command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback16Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;
    .locals 21
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "T10:",
            "Ljava/lang/Object;",
            "T11:",
            "Ljava/lang/Object;",
            "T12:",
            "Ljava/lang/Object;",
            "T13:",
            "Ljava/lang/Object;",
            "T14:",
            "Ljava/lang/Object;",
            "T15:",
            "Ljava/lang/Object;",
            "T16:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/Flags$CommandCallback16Params",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;TT12;TT13;TT14;TT15;TT16;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT1;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT2;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT3;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT4;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT5;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT6;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT7;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT8;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT9;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT10;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT11;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT12;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT13;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT14;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT15;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT16;>;)",
            "Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;"
        }
    .end annotation

    .prologue
    .line 1419
    .local p1, "callback":Lcom/afwsamples/testdpc/util/Flags$CommandCallback16Params;, "Lcom/afwsamples/testdpc/util/Flags$CommandCallback16Params<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TT10;TT11;TT12;TT13;TT14;TT15;TT16;>;"
    .local p2, "param1":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT1;>;"
    .local p3, "param2":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT2;>;"
    .local p4, "param3":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT3;>;"
    .local p5, "param4":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT4;>;"
    .local p6, "param5":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT5;>;"
    .local p7, "param6":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT6;>;"
    .local p8, "param7":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT7;>;"
    .local p9, "param8":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT8;>;"
    .local p10, "param9":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT9;>;"
    .local p11, "param10":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT10;>;"
    .local p12, "param11":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT11;>;"
    .local p13, "param12":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT12;>;"
    .local p14, "param13":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT13;>;"
    .local p15, "param14":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT14;>;"
    .local p16, "param15":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT15;>;"
    .local p17, "param16":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT16;>;"
    invoke-static {}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->access$4100()Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v1

    .line 1420
    move-object/from16 v0, p0

    invoke-static {v1, v0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4200(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v1

    const/16 v2, 0x10

    new-array v2, v2, [Lcom/afwsamples/testdpc/util/Flags$Param;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    aput-object p5, v2, v3

    const/4 v3, 0x4

    aput-object p6, v2, v3

    const/4 v3, 0x5

    aput-object p7, v2, v3

    const/4 v3, 0x6

    aput-object p8, v2, v3

    const/4 v3, 0x7

    aput-object p9, v2, v3

    const/16 v3, 0x8

    aput-object p10, v2, v3

    const/16 v3, 0x9

    aput-object p11, v2, v3

    const/16 v3, 0xa

    aput-object p12, v2, v3

    const/16 v3, 0xb

    aput-object p13, v2, v3

    const/16 v3, 0xc

    aput-object p14, v2, v3

    const/16 v3, 0xd

    aput-object p15, v2, v3

    const/16 v3, 0xe

    aput-object p16, v2, v3

    const/16 v3, 0xf

    aput-object p17, v2, v3

    .line 1423
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1422
    invoke-static {v2}, Lcom/afwsamples/testdpc/util/Flags$Params;->access$4000(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/Flags$Params;

    move-result-object v2

    .line 1421
    invoke-static {v1, v2}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4300(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/Flags$Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v20

    new-instance v1, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl16;

    const/16 v19, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    invoke-direct/range {v1 .. v19}, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl16;-><init>(Lcom/afwsamples/testdpc/util/Flags$CommandCallback16Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$1;)V

    .line 1426
    move-object/from16 v0, v20

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4400(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v1

    return-object v1
.end method

.method public static command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params",
            "<TT1;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT1;>;)",
            "Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;"
        }
    .end annotation

    .prologue
    .line 1087
    .local p1, "callback":Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;, "Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params<TT1;>;"
    .local p2, "param1":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT1;>;"
    invoke-static {}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->access$4100()Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1088
    invoke-static {v0, p0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4200(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/afwsamples/testdpc/util/Flags$Param;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 1089
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/util/Flags$Params;->access$4000(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/Flags$Params;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4300(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/Flags$Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    new-instance v1, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl1;-><init>(Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$1;)V

    .line 1090
    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4400(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback2Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/Flags$CommandCallback2Params",
            "<TT1;TT2;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT1;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT2;>;)",
            "Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;"
        }
    .end annotation

    .prologue
    .line 1095
    .local p1, "callback":Lcom/afwsamples/testdpc/util/Flags$CommandCallback2Params;, "Lcom/afwsamples/testdpc/util/Flags$CommandCallback2Params<TT1;TT2;>;"
    .local p2, "param1":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT1;>;"
    .local p3, "param2":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT2;>;"
    invoke-static {}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->access$4100()Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1096
    invoke-static {v0, p0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4200(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/afwsamples/testdpc/util/Flags$Param;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    .line 1097
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/util/Flags$Params;->access$4000(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/Flags$Params;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4300(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/Flags$Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    new-instance v1, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl2;-><init>(Lcom/afwsamples/testdpc/util/Flags$CommandCallback2Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$1;)V

    .line 1098
    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4400(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback3Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/Flags$CommandCallback3Params",
            "<TT1;TT2;TT3;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT1;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT2;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT3;>;)",
            "Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;"
        }
    .end annotation

    .prologue
    .line 1107
    .local p1, "callback":Lcom/afwsamples/testdpc/util/Flags$CommandCallback3Params;, "Lcom/afwsamples/testdpc/util/Flags$CommandCallback3Params<TT1;TT2;TT3;>;"
    .local p2, "param1":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT1;>;"
    .local p3, "param2":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT2;>;"
    .local p4, "param3":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT3;>;"
    invoke-static {}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->access$4100()Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1108
    invoke-static {v0, p0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4200(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/afwsamples/testdpc/util/Flags$Param;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    .line 1109
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/util/Flags$Params;->access$4000(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/Flags$Params;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4300(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/Flags$Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v6

    new-instance v0, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl3;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl3;-><init>(Lcom/afwsamples/testdpc/util/Flags$CommandCallback3Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$1;)V

    .line 1110
    invoke-static {v6, v0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4400(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback4Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;
    .locals 8
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/Flags$CommandCallback4Params",
            "<TT1;TT2;TT3;TT4;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT1;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT2;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT3;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT4;>;)",
            "Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;"
        }
    .end annotation

    .prologue
    .line 1120
    .local p1, "callback":Lcom/afwsamples/testdpc/util/Flags$CommandCallback4Params;, "Lcom/afwsamples/testdpc/util/Flags$CommandCallback4Params<TT1;TT2;TT3;TT4;>;"
    .local p2, "param1":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT1;>;"
    .local p3, "param2":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT2;>;"
    .local p4, "param3":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT3;>;"
    .local p5, "param4":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT4;>;"
    invoke-static {}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->access$4100()Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1121
    invoke-static {v0, p0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4200(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/afwsamples/testdpc/util/Flags$Param;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    .line 1122
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/util/Flags$Params;->access$4000(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/Flags$Params;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4300(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/Flags$Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v7

    new-instance v0, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl4;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl4;-><init>(Lcom/afwsamples/testdpc/util/Flags$CommandCallback4Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$1;)V

    .line 1123
    invoke-static {v7, v0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4400(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback5Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;
    .locals 9
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/Flags$CommandCallback5Params",
            "<TT1;TT2;TT3;TT4;TT5;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT1;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT2;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT3;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT4;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT5;>;)",
            "Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;"
        }
    .end annotation

    .prologue
    .line 1134
    .local p1, "callback":Lcom/afwsamples/testdpc/util/Flags$CommandCallback5Params;, "Lcom/afwsamples/testdpc/util/Flags$CommandCallback5Params<TT1;TT2;TT3;TT4;TT5;>;"
    .local p2, "param1":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT1;>;"
    .local p3, "param2":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT2;>;"
    .local p4, "param3":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT3;>;"
    .local p5, "param4":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT4;>;"
    .local p6, "param5":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT5;>;"
    invoke-static {}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->access$4100()Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1135
    invoke-static {v0, p0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4200(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/afwsamples/testdpc/util/Flags$Param;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    const/4 v2, 0x4

    aput-object p6, v1, v2

    .line 1136
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/util/Flags$Params;->access$4000(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/Flags$Params;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4300(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/Flags$Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v8

    new-instance v0, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl5;

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl5;-><init>(Lcom/afwsamples/testdpc/util/Flags$CommandCallback5Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$1;)V

    .line 1137
    invoke-static {v8, v0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4400(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback6Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;
    .locals 10
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/Flags$CommandCallback6Params",
            "<TT1;TT2;TT3;TT4;TT5;TT6;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT1;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT2;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT3;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT4;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT5;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT6;>;)",
            "Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;"
        }
    .end annotation

    .prologue
    .line 1150
    .local p1, "callback":Lcom/afwsamples/testdpc/util/Flags$CommandCallback6Params;, "Lcom/afwsamples/testdpc/util/Flags$CommandCallback6Params<TT1;TT2;TT3;TT4;TT5;TT6;>;"
    .local p2, "param1":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT1;>;"
    .local p3, "param2":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT2;>;"
    .local p4, "param3":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT3;>;"
    .local p5, "param4":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT4;>;"
    .local p6, "param5":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT5;>;"
    .local p7, "param6":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT6;>;"
    invoke-static {}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->access$4100()Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1151
    invoke-static {v0, p0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4200(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/afwsamples/testdpc/util/Flags$Param;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    const/4 v2, 0x4

    aput-object p6, v1, v2

    const/4 v2, 0x5

    aput-object p7, v1, v2

    .line 1152
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/util/Flags$Params;->access$4000(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/Flags$Params;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4300(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/Flags$Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v9

    new-instance v0, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl6;

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl6;-><init>(Lcom/afwsamples/testdpc/util/Flags$CommandCallback6Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$1;)V

    .line 1153
    invoke-static {v9, v0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4400(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback7Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;
    .locals 11
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/Flags$CommandCallback7Params",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT1;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT2;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT3;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT4;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT5;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT6;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT7;>;)",
            "Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;"
        }
    .end annotation

    .prologue
    .line 1167
    .local p1, "callback":Lcom/afwsamples/testdpc/util/Flags$CommandCallback7Params;, "Lcom/afwsamples/testdpc/util/Flags$CommandCallback7Params<TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;"
    .local p2, "param1":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT1;>;"
    .local p3, "param2":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT2;>;"
    .local p4, "param3":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT3;>;"
    .local p5, "param4":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT4;>;"
    .local p6, "param5":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT5;>;"
    .local p7, "param6":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT6;>;"
    .local p8, "param7":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT7;>;"
    invoke-static {}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->access$4100()Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1168
    invoke-static {v0, p0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4200(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/afwsamples/testdpc/util/Flags$Param;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    const/4 v2, 0x4

    aput-object p6, v1, v2

    const/4 v2, 0x5

    aput-object p7, v1, v2

    const/4 v2, 0x6

    aput-object p8, v1, v2

    .line 1170
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/util/Flags$Params;->access$4000(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/Flags$Params;

    move-result-object v1

    .line 1169
    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4300(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/Flags$Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v10

    new-instance v0, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl7;

    const/4 v9, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl7;-><init>(Lcom/afwsamples/testdpc/util/Flags$CommandCallback7Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$1;)V

    .line 1171
    invoke-static {v10, v0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4400(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback8Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;
    .locals 12
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/Flags$CommandCallback8Params",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT1;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT2;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT3;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT4;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT5;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT6;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT7;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT8;>;)",
            "Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;"
        }
    .end annotation

    .prologue
    .line 1187
    .local p1, "callback":Lcom/afwsamples/testdpc/util/Flags$CommandCallback8Params;, "Lcom/afwsamples/testdpc/util/Flags$CommandCallback8Params<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;"
    .local p2, "param1":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT1;>;"
    .local p3, "param2":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT2;>;"
    .local p4, "param3":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT3;>;"
    .local p5, "param4":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT4;>;"
    .local p6, "param5":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT5;>;"
    .local p7, "param6":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT6;>;"
    .local p8, "param7":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT7;>;"
    .local p9, "param8":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT8;>;"
    invoke-static {}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->access$4100()Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1188
    invoke-static {v0, p0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4200(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/afwsamples/testdpc/util/Flags$Param;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    const/4 v2, 0x4

    aput-object p6, v1, v2

    const/4 v2, 0x5

    aput-object p7, v1, v2

    const/4 v2, 0x6

    aput-object p8, v1, v2

    const/4 v2, 0x7

    aput-object p9, v1, v2

    .line 1191
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1190
    invoke-static {v1}, Lcom/afwsamples/testdpc/util/Flags$Params;->access$4000(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/Flags$Params;

    move-result-object v1

    .line 1189
    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4300(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/Flags$Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v11

    new-instance v0, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl8;

    const/4 v10, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl8;-><init>(Lcom/afwsamples/testdpc/util/Flags$CommandCallback8Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$1;)V

    .line 1192
    invoke-static {v11, v0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4400(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static command(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$CommandCallback9Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;
    .locals 13
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/Flags$CommandCallback9Params",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT1;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT2;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT3;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT4;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT5;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT6;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT7;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT8;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT9;>;)",
            "Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;"
        }
    .end annotation

    .prologue
    .line 1209
    .local p1, "callback":Lcom/afwsamples/testdpc/util/Flags$CommandCallback9Params;, "Lcom/afwsamples/testdpc/util/Flags$CommandCallback9Params<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    .local p2, "param1":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT1;>;"
    .local p3, "param2":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT2;>;"
    .local p4, "param3":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT3;>;"
    .local p5, "param4":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT4;>;"
    .local p6, "param5":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT5;>;"
    .local p7, "param6":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT6;>;"
    .local p8, "param7":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT7;>;"
    .local p9, "param8":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT8;>;"
    .local p10, "param9":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT9;>;"
    invoke-static {}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->access$4100()Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    .line 1210
    invoke-static {v0, p0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4200(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [Lcom/afwsamples/testdpc/util/Flags$Param;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    aput-object p5, v1, v2

    const/4 v2, 0x4

    aput-object p6, v1, v2

    const/4 v2, 0x5

    aput-object p7, v1, v2

    const/4 v2, 0x6

    aput-object p8, v1, v2

    const/4 v2, 0x7

    aput-object p9, v1, v2

    const/16 v2, 0x8

    aput-object p10, v1, v2

    .line 1213
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1212
    invoke-static {v1}, Lcom/afwsamples/testdpc/util/Flags$Params;->access$4000(Ljava/lang/Iterable;)Lcom/afwsamples/testdpc/util/Flags$Params;

    move-result-object v1

    .line 1211
    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4300(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/Flags$Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v12

    new-instance v0, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl9;

    const/4 v11, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl9;-><init>(Lcom/afwsamples/testdpc/util/Flags$CommandCallback9Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$1;)V

    .line 1215
    invoke-static {v12, v0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$4400(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static varargs commandInvocationException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 50
    new-instance v0, Lcom/afwsamples/testdpc/util/Flags$InvalidCommandInvocationException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afwsamples/testdpc/util/Flags$InvalidCommandInvocationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private execute([Ljava/lang/String;)V
    .locals 7
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 710
    aget-object v1, p1, v4

    .line 712
    .local v1, "commandName":Ljava/lang/String;
    iget-object v2, p0, Lcom/afwsamples/testdpc/util/Flags;->commands:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 713
    const-string v2, "Command \'%s\' was not found."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/util/Flags;->commandInvocationException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 716
    :cond_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/util/Flags;->commands:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;

    .line 718
    .local v0, "command":Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;
    invoke-static {v0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->access$2700(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;)Lcom/afwsamples/testdpc/util/Flags$CommandMethod;

    move-result-object v2

    new-instance v3, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;

    new-instance v4, Lcom/afwsamples/testdpc/util/Flags$TypeParser;

    iget-object v5, p0, Lcom/afwsamples/testdpc/util/Flags;->parsers:Ljava/util/Map;

    invoke-direct {v4, v5, v6}, Lcom/afwsamples/testdpc/util/Flags$TypeParser;-><init>(Ljava/util/Map;Lcom/afwsamples/testdpc/util/Flags$1;)V

    invoke-direct {v3, v4, p1, v6}, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;-><init>(Lcom/afwsamples/testdpc/util/Flags$TypeParser;[Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$1;)V

    .line 720
    invoke-static {v0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->access$2300(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;)Lcom/afwsamples/testdpc/util/Flags$Params;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;->access$2600(Lcom/afwsamples/testdpc/util/Flags$CommandLineParser;Lcom/afwsamples/testdpc/util/Flags$Params;)Lcom/afwsamples/testdpc/util/Flags$ArgsContainer;

    move-result-object v3

    .line 719
    invoke-interface {v2, p0, v3}, Lcom/afwsamples/testdpc/util/Flags$CommandMethod;->execute(Lcom/afwsamples/testdpc/util/Flags;Lcom/afwsamples/testdpc/util/Flags$ArgsContainer;)V

    .line 721
    return-void
.end method

.method static final synthetic lambda$numericParser$20$Flags(Lcom/afwsamples/testdpc/util/Flags$Function;Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$Validator;)Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "validator"    # Lcom/afwsamples/testdpc/util/Flags$Validator;

    .prologue
    .line 953
    :try_start_0
    invoke-interface {p0, p1}, Lcom/afwsamples/testdpc/util/Flags$Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 958
    .local v1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p2, v1}, Lcom/afwsamples/testdpc/util/Flags$Validator;->valid(Ljava/lang/Object;)Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;

    move-result-object v2

    .end local v1    # "value":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object v2

    .line 954
    :catch_0
    move-exception v0

    .line 955
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p2}, Lcom/afwsamples/testdpc/util/Flags$Validator;->invalid()Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;

    move-result-object v2

    goto :goto_0
.end method

.method static final synthetic lambda$registerDefaultArgumentParsers$17$Flags(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$Validator;)Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "validator"    # Lcom/afwsamples/testdpc/util/Flags$Validator;

    .prologue
    .line 891
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 893
    .local v0, "lowercaseString":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 894
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/afwsamples/testdpc/util/Flags$Validator;->valid(Ljava/lang/Object;)Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;

    move-result-object v1

    .line 901
    :goto_0
    return-object v1

    .line 897
    :cond_0
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 898
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/afwsamples/testdpc/util/Flags$Validator;->valid(Ljava/lang/Object;)Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;

    move-result-object v1

    goto :goto_0

    .line 901
    :cond_1
    invoke-virtual {p1}, Lcom/afwsamples/testdpc/util/Flags$Validator;->invalid()Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;

    move-result-object v1

    goto :goto_0
.end method

.method static final synthetic lambda$registerDefaultArgumentParsers$18$Flags(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$Validator;)Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "validator"    # Lcom/afwsamples/testdpc/util/Flags$Validator;

    .prologue
    .line 909
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 910
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/afwsamples/testdpc/util/Flags$Validator;->valid(Ljava/lang/Object;)Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;

    move-result-object v0

    .line 913
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/afwsamples/testdpc/util/Flags$Validator;->invalid()Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;

    move-result-object v0

    goto :goto_0
.end method

.method static final synthetic lambda$registerDefaultArgumentParsers$19$Flags(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$Validator;)Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "validator"    # Lcom/afwsamples/testdpc/util/Flags$Validator;

    .prologue
    .line 943
    invoke-virtual {p1, p0}, Lcom/afwsamples/testdpc/util/Flags$Validator;->valid(Ljava/lang/Object;)Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;

    move-result-object v0

    return-object v0
.end method

.method public static namedParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$NamedParam;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/afwsamples/testdpc/util/Flags$NamedParam",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 977
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/afwsamples/testdpc/util/Flags$NamedParam;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/afwsamples/testdpc/util/Flags$NamedParam;-><init>(Ljava/lang/Class;Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$1;)V

    return-object v0
.end method

.method private static numericParser(Lcom/afwsamples/testdpc/util/Flags$Function;)Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/afwsamples/testdpc/util/Flags$Function",
            "<",
            "Ljava/lang/String;",
            "TT;>;)",
            "Lcom/afwsamples/testdpc/util/Flags$ArgumentParser",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 948
    .local p0, "parsingFunc":Lcom/afwsamples/testdpc/util/Flags$Function;, "Lcom/afwsamples/testdpc/util/Flags$Function<Ljava/lang/String;TT;>;"
    new-instance v0, Lcom/afwsamples/testdpc/util/Flags$$Lambda$10;

    invoke-direct {v0, p0}, Lcom/afwsamples/testdpc/util/Flags$$Lambda$10;-><init>(Lcom/afwsamples/testdpc/util/Flags$Function;)V

    invoke-static {v0}, Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;->access$1900(Lcom/afwsamples/testdpc/util/Flags$BiFunction;)Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;

    move-result-object v0

    return-object v0
.end method

.method public static optional(Lcom/afwsamples/testdpc/util/Flags$NamedParam;)Lcom/afwsamples/testdpc/util/Flags$OptionalParam;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/afwsamples/testdpc/util/Flags$NamedParam",
            "<TT;>;)",
            "Lcom/afwsamples/testdpc/util/Flags$OptionalParam",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 988
    .local p0, "namedParam":Lcom/afwsamples/testdpc/util/Flags$NamedParam;, "Lcom/afwsamples/testdpc/util/Flags$NamedParam<TT;>;"
    new-instance v0, Lcom/afwsamples/testdpc/util/Flags$OptionalParam;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/afwsamples/testdpc/util/Flags$OptionalParam;-><init>(Lcom/afwsamples/testdpc/util/Flags$NamedParam;Lcom/afwsamples/testdpc/util/Flags$1;)V

    return-object v0
.end method

.method public static ordinalParam(Ljava/lang/Class;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/afwsamples/testdpc/util/Flags$OrdinalParam",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 967
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;-><init>(Ljava/lang/Class;Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$1;)V

    return-object v0
.end method

.method private registerDefaultArgumentParsers()V
    .locals 11

    .prologue
    .line 888
    sget-object v8, Lcom/afwsamples/testdpc/util/Flags$$Lambda$1;->$instance:Lcom/afwsamples/testdpc/util/Flags$BiFunction;

    .line 889
    invoke-static {v8}, Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;->access$1900(Lcom/afwsamples/testdpc/util/Flags$BiFunction;)Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;

    move-result-object v0

    .line 903
    .local v0, "booleanParser":Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;, "Lcom/afwsamples/testdpc/util/Flags$ArgumentParser<*>;"
    iget-object v8, p0, Lcom/afwsamples/testdpc/util/Flags;->parsers:Ljava/util/Map;

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    iget-object v8, p0, Lcom/afwsamples/testdpc/util/Flags;->parsers:Ljava/util/Map;

    const-class v9, Ljava/lang/Boolean;

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    sget-object v8, Lcom/afwsamples/testdpc/util/Flags$$Lambda$2;->$instance:Lcom/afwsamples/testdpc/util/Flags$BiFunction;

    .line 907
    invoke-static {v8}, Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;->access$1900(Lcom/afwsamples/testdpc/util/Flags$BiFunction;)Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;

    move-result-object v2

    .line 915
    .local v2, "charParser":Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;, "Lcom/afwsamples/testdpc/util/Flags$ArgumentParser<*>;"
    iget-object v8, p0, Lcom/afwsamples/testdpc/util/Flags;->parsers:Ljava/util/Map;

    sget-object v9, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v8, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    iget-object v8, p0, Lcom/afwsamples/testdpc/util/Flags;->parsers:Ljava/util/Map;

    const-class v9, Ljava/lang/Character;

    invoke-interface {v8, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    sget-object v8, Lcom/afwsamples/testdpc/util/Flags$$Lambda$3;->$instance:Lcom/afwsamples/testdpc/util/Flags$Function;

    invoke-static {v8}, Lcom/afwsamples/testdpc/util/Flags;->numericParser(Lcom/afwsamples/testdpc/util/Flags$Function;)Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;

    move-result-object v4

    .line 919
    .local v4, "floatParser":Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;, "Lcom/afwsamples/testdpc/util/Flags$ArgumentParser<*>;"
    iget-object v8, p0, Lcom/afwsamples/testdpc/util/Flags;->parsers:Ljava/util/Map;

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v8, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    iget-object v8, p0, Lcom/afwsamples/testdpc/util/Flags;->parsers:Ljava/util/Map;

    const-class v9, Ljava/lang/Float;

    invoke-interface {v8, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    sget-object v8, Lcom/afwsamples/testdpc/util/Flags$$Lambda$4;->$instance:Lcom/afwsamples/testdpc/util/Flags$Function;

    invoke-static {v8}, Lcom/afwsamples/testdpc/util/Flags;->numericParser(Lcom/afwsamples/testdpc/util/Flags$Function;)Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;

    move-result-object v3

    .line 923
    .local v3, "doubleParser":Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;, "Lcom/afwsamples/testdpc/util/Flags$ArgumentParser<*>;"
    iget-object v8, p0, Lcom/afwsamples/testdpc/util/Flags;->parsers:Ljava/util/Map;

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v8, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    iget-object v8, p0, Lcom/afwsamples/testdpc/util/Flags;->parsers:Ljava/util/Map;

    const-class v9, Ljava/lang/Double;

    invoke-interface {v8, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    sget-object v8, Lcom/afwsamples/testdpc/util/Flags$$Lambda$5;->$instance:Lcom/afwsamples/testdpc/util/Flags$Function;

    invoke-static {v8}, Lcom/afwsamples/testdpc/util/Flags;->numericParser(Lcom/afwsamples/testdpc/util/Flags$Function;)Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;

    move-result-object v1

    .line 927
    .local v1, "byteParser":Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;, "Lcom/afwsamples/testdpc/util/Flags$ArgumentParser<*>;"
    iget-object v8, p0, Lcom/afwsamples/testdpc/util/Flags;->parsers:Ljava/util/Map;

    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v8, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    iget-object v8, p0, Lcom/afwsamples/testdpc/util/Flags;->parsers:Ljava/util/Map;

    const-class v9, Ljava/lang/Byte;

    invoke-interface {v8, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    sget-object v8, Lcom/afwsamples/testdpc/util/Flags$$Lambda$6;->$instance:Lcom/afwsamples/testdpc/util/Flags$Function;

    invoke-static {v8}, Lcom/afwsamples/testdpc/util/Flags;->numericParser(Lcom/afwsamples/testdpc/util/Flags$Function;)Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;

    move-result-object v7

    .line 931
    .local v7, "shortParser":Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;, "Lcom/afwsamples/testdpc/util/Flags$ArgumentParser<*>;"
    iget-object v8, p0, Lcom/afwsamples/testdpc/util/Flags;->parsers:Ljava/util/Map;

    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    iget-object v8, p0, Lcom/afwsamples/testdpc/util/Flags;->parsers:Ljava/util/Map;

    const-class v9, Ljava/lang/Short;

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    sget-object v8, Lcom/afwsamples/testdpc/util/Flags$$Lambda$7;->$instance:Lcom/afwsamples/testdpc/util/Flags$Function;

    invoke-static {v8}, Lcom/afwsamples/testdpc/util/Flags;->numericParser(Lcom/afwsamples/testdpc/util/Flags$Function;)Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;

    move-result-object v5

    .line 935
    .local v5, "integerParser":Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;, "Lcom/afwsamples/testdpc/util/Flags$ArgumentParser<*>;"
    iget-object v8, p0, Lcom/afwsamples/testdpc/util/Flags;->parsers:Ljava/util/Map;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    iget-object v8, p0, Lcom/afwsamples/testdpc/util/Flags;->parsers:Ljava/util/Map;

    const-class v9, Ljava/lang/Integer;

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    sget-object v8, Lcom/afwsamples/testdpc/util/Flags$$Lambda$8;->$instance:Lcom/afwsamples/testdpc/util/Flags$Function;

    invoke-static {v8}, Lcom/afwsamples/testdpc/util/Flags;->numericParser(Lcom/afwsamples/testdpc/util/Flags$Function;)Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;

    move-result-object v6

    .line 939
    .local v6, "longParser":Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;, "Lcom/afwsamples/testdpc/util/Flags$ArgumentParser<*>;"
    iget-object v8, p0, Lcom/afwsamples/testdpc/util/Flags;->parsers:Ljava/util/Map;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    iget-object v8, p0, Lcom/afwsamples/testdpc/util/Flags;->parsers:Ljava/util/Map;

    const-class v9, Ljava/lang/Long;

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    iget-object v8, p0, Lcom/afwsamples/testdpc/util/Flags;->parsers:Ljava/util/Map;

    const-class v9, Ljava/lang/String;

    sget-object v10, Lcom/afwsamples/testdpc/util/Flags$$Lambda$9;->$instance:Lcom/afwsamples/testdpc/util/Flags$BiFunction;

    .line 943
    invoke-static {v10}, Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;->access$1900(Lcom/afwsamples/testdpc/util/Flags$BiFunction;)Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;

    move-result-object v10

    .line 942
    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    return-void
.end method

.method public static repeated(Lcom/afwsamples/testdpc/util/Flags$NamedParam;)Lcom/afwsamples/testdpc/util/Flags$RepeatedNamedParam;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/afwsamples/testdpc/util/Flags$NamedParam",
            "<TT;>;)",
            "Lcom/afwsamples/testdpc/util/Flags$RepeatedNamedParam",
            "<[TT;>;"
        }
    .end annotation

    .prologue
    .line 1014
    .local p0, "innerParam":Lcom/afwsamples/testdpc/util/Flags$NamedParam;, "Lcom/afwsamples/testdpc/util/Flags$NamedParam<TT;>;"
    new-instance v0, Lcom/afwsamples/testdpc/util/Flags$RepeatedNamedParam;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/afwsamples/testdpc/util/Flags$RepeatedNamedParam;-><init>(Lcom/afwsamples/testdpc/util/Flags$NamedParam;Lcom/afwsamples/testdpc/util/Flags$1;)V

    return-object v0
.end method

.method public static repeated(Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;)Lcom/afwsamples/testdpc/util/Flags$RepeatedOrdinalParam;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/afwsamples/testdpc/util/Flags$OrdinalParam",
            "<TT;>;)",
            "Lcom/afwsamples/testdpc/util/Flags$RepeatedOrdinalParam",
            "<[TT;>;"
        }
    .end annotation

    .prologue
    .line 1000
    .local p0, "innerParam":Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;, "Lcom/afwsamples/testdpc/util/Flags$OrdinalParam<TT;>;"
    new-instance v0, Lcom/afwsamples/testdpc/util/Flags$RepeatedOrdinalParam;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/afwsamples/testdpc/util/Flags$RepeatedOrdinalParam;-><init>(Lcom/afwsamples/testdpc/util/Flags$OrdinalParam;Lcom/afwsamples/testdpc/util/Flags$1;)V

    return-object v0
.end method

.method private retrieveArg(Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$ArgsContainer;)Ljava/lang/Object;
    .locals 1
    .param p2, "args"    # Lcom/afwsamples/testdpc/util/Flags$ArgsContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT;>;",
            "Lcom/afwsamples/testdpc/util/Flags$ArgsContainer;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 727
    .local p1, "param":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT;>;"
    invoke-static {p2, p1}, Lcom/afwsamples/testdpc/util/Flags$ArgsContainer;->access$2800(Lcom/afwsamples/testdpc/util/Flags$ArgsContainer;Lcom/afwsamples/testdpc/util/Flags$Param;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static varargs usageException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 54
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private usagePrinter()Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;
    .locals 4

    .prologue
    .line 706
    new-instance v0, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;

    iget-object v1, p0, Lcom/afwsamples/testdpc/util/Flags;->printWriter:Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/afwsamples/testdpc/util/Flags;->commands:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;-><init>(Ljava/io/PrintWriter;Ljava/lang/Iterable;Lcom/afwsamples/testdpc/util/Flags$1;)V

    return-object v0
.end method

.method private validateCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;)V
    .locals 9
    .param p1, "command"    # Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;

    .prologue
    const/4 v8, 0x0

    .line 1039
    iget-object v5, p0, Lcom/afwsamples/testdpc/util/Flags;->commands:Ljava/util/Map;

    invoke-static {p1}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->access$2900(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1040
    const-string v5, "Duplicate command name \'%s\'."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->access$2900(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/afwsamples/testdpc/util/Flags;->usageException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 1043
    :cond_0
    invoke-static {p1}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->access$2300(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;)Lcom/afwsamples/testdpc/util/Flags$Params;

    move-result-object v5

    invoke-static {v5}, Lcom/afwsamples/testdpc/util/Flags$Params;->access$1600(Lcom/afwsamples/testdpc/util/Flags$Params;)Ljava/util/List;

    move-result-object v2

    .line 1044
    .local v2, "ordinalParams":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/util/Flags$Param<*>;>;"
    invoke-static {p1}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->access$2300(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;)Lcom/afwsamples/testdpc/util/Flags$Params;

    move-result-object v5

    invoke-static {v5}, Lcom/afwsamples/testdpc/util/Flags$Params;->access$1500(Lcom/afwsamples/testdpc/util/Flags$Params;)Ljava/util/Map;

    move-result-object v1

    .line 1046
    .local v1, "namedParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$Param<*>;>;"
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_2

    .line 1047
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/afwsamples/testdpc/util/Flags$Param;

    .line 1049
    .local v3, "param":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<*>;"
    invoke-interface {v3}, Lcom/afwsamples/testdpc/util/Flags$Param;->acceptsMultipleValues()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1050
    const-string v5, "Repeated ordinal parameters must be at the end of the ordinal parameter list."

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/afwsamples/testdpc/util/Flags;->usageException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 1046
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1055
    .end local v3    # "param":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<*>;"
    :cond_2
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1056
    .local v4, "paramNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/afwsamples/testdpc/util/Flags$Param;

    .line 1057
    .restart local v3    # "param":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<*>;"
    invoke-direct {p0, v3, v4}, Lcom/afwsamples/testdpc/util/Flags;->validateParam(Lcom/afwsamples/testdpc/util/Flags$Param;Ljava/util/Set;)V

    goto :goto_1

    .line 1059
    .end local v3    # "param":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<*>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/afwsamples/testdpc/util/Flags$Param;

    .line 1060
    .restart local v3    # "param":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<*>;"
    invoke-direct {p0, v3, v4}, Lcom/afwsamples/testdpc/util/Flags;->validateParam(Lcom/afwsamples/testdpc/util/Flags$Param;Ljava/util/Set;)V

    goto :goto_2

    .line 1062
    .end local v3    # "param":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<*>;"
    :cond_4
    return-void
.end method

.method private validateParam(Lcom/afwsamples/testdpc/util/Flags$Param;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "param":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<*>;"
    .local p2, "paramNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1065
    invoke-interface {p1}, Lcom/afwsamples/testdpc/util/Flags$Param;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1066
    const-string v0, "Duplicate parameter name \'%s\'."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/afwsamples/testdpc/util/Flags$Param;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/Flags;->usageException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1069
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/Flags;->parsers:Ljava/util/Map;

    invoke-interface {p1}, Lcom/afwsamples/testdpc/util/Flags$Param;->dataType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1070
    const-string v0, "No custom parser registered for data type \'%s\' of param \'%s\'."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 1072
    invoke-interface {p1}, Lcom/afwsamples/testdpc/util/Flags$Param;->dataType()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-interface {p1}, Lcom/afwsamples/testdpc/util/Flags$Param;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 1070
    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/util/Flags;->usageException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1075
    :cond_1
    invoke-interface {p1}, Lcom/afwsamples/testdpc/util/Flags$Param;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1076
    return-void
.end method


# virtual methods
.method public addCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V
    .locals 3
    .param p1, "commandBuilder"    # Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    .prologue
    .line 1033
    invoke-static {p1}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$3800(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;

    move-result-object v0

    .line 1034
    .local v0, "command":Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;
    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/util/Flags;->validateCommand(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;)V

    .line 1035
    iget-object v1, p0, Lcom/afwsamples/testdpc/util/Flags;->commands:Ljava/util/Map;

    invoke-static {v0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->access$2900(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    return-void
.end method

.method final synthetic lambda$new$16$Flags()V
    .locals 1

    .prologue
    .line 674
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/Flags;->usagePrinter()Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;->access$2000(Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;)V

    return-void
.end method

.method public registerCustomParser(Ljava/lang/Class;Lcom/afwsamples/testdpc/util/Flags$BiFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/afwsamples/testdpc/util/Flags$BiFunction",
            "<",
            "Ljava/lang/String;",
            "Lcom/afwsamples/testdpc/util/Flags$Validator",
            "<TT;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 686
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "parserFunc":Lcom/afwsamples/testdpc/util/Flags$BiFunction;, "Lcom/afwsamples/testdpc/util/Flags$BiFunction<Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$Validator<TT;>;Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult<TT;>;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/Flags;->parsers:Ljava/util/Map;

    invoke-static {p2}, Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;->access$1900(Lcom/afwsamples/testdpc/util/Flags$BiFunction;)Lcom/afwsamples/testdpc/util/Flags$ArgumentParser;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    return-void
.end method

.method public run([Ljava/lang/String;)V
    .locals 3
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 693
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 694
    :cond_0
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/Flags;->usagePrinter()Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;

    move-result-object v1

    invoke-static {v1}, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;->access$2000(Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;)V

    .line 703
    :goto_0
    return-void

    .line 699
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/util/Flags;->execute([Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/afwsamples/testdpc/util/Flags$InvalidCommandInvocationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 700
    :catch_0
    move-exception v0

    .line 701
    .local v0, "e":Lcom/afwsamples/testdpc/util/Flags$InvalidCommandInvocationException;
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/Flags;->usagePrinter()Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/util/Flags$InvalidCommandInvocationException;->message()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;->access$2100(Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;Ljava/lang/String;)V

    goto :goto_0
.end method
