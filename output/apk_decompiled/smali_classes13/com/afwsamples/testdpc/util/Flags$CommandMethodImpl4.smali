.class final Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl4;
.super Ljava/lang/Object;
.source "Flags.java"

# interfaces
.implements Lcom/afwsamples/testdpc/util/Flags$CommandMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/util/Flags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CommandMethodImpl4"
.end annotation

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
        ">",
        "Ljava/lang/Object;",
        "Lcom/afwsamples/testdpc/util/Flags$CommandMethod;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/afwsamples/testdpc/util/Flags$CommandCallback4Params;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/afwsamples/testdpc/util/Flags$CommandCallback4Params",
            "<TT1;TT2;TT3;TT4;>;"
        }
    .end annotation
.end field

.field private final param1:Lcom/afwsamples/testdpc/util/Flags$Param;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT1;>;"
        }
    .end annotation
.end field

.field private final param2:Lcom/afwsamples/testdpc/util/Flags$Param;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT2;>;"
        }
    .end annotation
.end field

.field private final param3:Lcom/afwsamples/testdpc/util/Flags$Param;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT3;>;"
        }
    .end annotation
.end field

.field private final param4:Lcom/afwsamples/testdpc/util/Flags$Param;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT4;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/afwsamples/testdpc/util/Flags$CommandCallback4Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/afwsamples/testdpc/util/Flags$CommandCallback4Params",
            "<TT1;TT2;TT3;TT4;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT1;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT2;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT3;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT4;>;)V"
        }
    .end annotation

    .prologue
    .line 1679
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl4;, "Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl4<TT1;TT2;TT3;TT4;>;"
    .local p1, "callback":Lcom/afwsamples/testdpc/util/Flags$CommandCallback4Params;, "Lcom/afwsamples/testdpc/util/Flags$CommandCallback4Params<TT1;TT2;TT3;TT4;>;"
    .local p2, "param1":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT1;>;"
    .local p3, "param2":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT2;>;"
    .local p4, "param3":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT3;>;"
    .local p5, "param4":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT4;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1680
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl4;->callback:Lcom/afwsamples/testdpc/util/Flags$CommandCallback4Params;

    .line 1681
    iput-object p2, p0, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl4;->param1:Lcom/afwsamples/testdpc/util/Flags$Param;

    .line 1682
    iput-object p3, p0, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl4;->param2:Lcom/afwsamples/testdpc/util/Flags$Param;

    .line 1683
    iput-object p4, p0, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl4;->param3:Lcom/afwsamples/testdpc/util/Flags$Param;

    .line 1684
    iput-object p5, p0, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl4;->param4:Lcom/afwsamples/testdpc/util/Flags$Param;

    .line 1685
    return-void
.end method

.method synthetic constructor <init>(Lcom/afwsamples/testdpc/util/Flags$CommandCallback4Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/afwsamples/testdpc/util/Flags$CommandCallback4Params;
    .param p2, "x1"    # Lcom/afwsamples/testdpc/util/Flags$Param;
    .param p3, "x2"    # Lcom/afwsamples/testdpc/util/Flags$Param;
    .param p4, "x3"    # Lcom/afwsamples/testdpc/util/Flags$Param;
    .param p5, "x4"    # Lcom/afwsamples/testdpc/util/Flags$Param;
    .param p6, "x5"    # Lcom/afwsamples/testdpc/util/Flags$1;

    .prologue
    .line 1666
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl4;, "Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl4<TT1;TT2;TT3;TT4;>;"
    invoke-direct/range {p0 .. p5}, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl4;-><init>(Lcom/afwsamples/testdpc/util/Flags$CommandCallback4Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/afwsamples/testdpc/util/Flags;Lcom/afwsamples/testdpc/util/Flags$ArgsContainer;)V
    .locals 5
    .param p1, "flags"    # Lcom/afwsamples/testdpc/util/Flags;
    .param p2, "args"    # Lcom/afwsamples/testdpc/util/Flags$ArgsContainer;

    .prologue
    .line 1689
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl4;, "Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl4<TT1;TT2;TT3;TT4;>;"
    iget-object v4, p0, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl4;->param1:Lcom/afwsamples/testdpc/util/Flags$Param;

    invoke-static {p1, v4, p2}, Lcom/afwsamples/testdpc/util/Flags;->access$6100(Lcom/afwsamples/testdpc/util/Flags;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$ArgsContainer;)Ljava/lang/Object;

    move-result-object v0

    .line 1690
    .local v0, "arg1":Ljava/lang/Object;, "TT1;"
    iget-object v4, p0, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl4;->param2:Lcom/afwsamples/testdpc/util/Flags$Param;

    invoke-static {p1, v4, p2}, Lcom/afwsamples/testdpc/util/Flags;->access$6100(Lcom/afwsamples/testdpc/util/Flags;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$ArgsContainer;)Ljava/lang/Object;

    move-result-object v1

    .line 1691
    .local v1, "arg2":Ljava/lang/Object;, "TT2;"
    iget-object v4, p0, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl4;->param3:Lcom/afwsamples/testdpc/util/Flags$Param;

    invoke-static {p1, v4, p2}, Lcom/afwsamples/testdpc/util/Flags;->access$6100(Lcom/afwsamples/testdpc/util/Flags;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$ArgsContainer;)Ljava/lang/Object;

    move-result-object v2

    .line 1692
    .local v2, "arg3":Ljava/lang/Object;, "TT3;"
    iget-object v4, p0, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl4;->param4:Lcom/afwsamples/testdpc/util/Flags$Param;

    invoke-static {p1, v4, p2}, Lcom/afwsamples/testdpc/util/Flags;->access$6100(Lcom/afwsamples/testdpc/util/Flags;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$ArgsContainer;)Ljava/lang/Object;

    move-result-object v3

    .line 1694
    .local v3, "arg4":Ljava/lang/Object;, "TT4;"
    iget-object v4, p0, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl4;->callback:Lcom/afwsamples/testdpc/util/Flags$CommandCallback4Params;

    invoke-interface {v4, v0, v1, v2, v3}, Lcom/afwsamples/testdpc/util/Flags$CommandCallback4Params;->execute(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1695
    return-void
.end method
