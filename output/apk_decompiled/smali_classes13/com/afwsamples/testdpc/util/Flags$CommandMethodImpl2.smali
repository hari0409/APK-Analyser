.class final Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl2;
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
    name = "CommandMethodImpl2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/afwsamples/testdpc/util/Flags$CommandMethod;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/afwsamples/testdpc/util/Flags$CommandCallback2Params;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/afwsamples/testdpc/util/Flags$CommandCallback2Params",
            "<TT1;TT2;>;"
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


# direct methods
.method private constructor <init>(Lcom/afwsamples/testdpc/util/Flags$CommandCallback2Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/afwsamples/testdpc/util/Flags$CommandCallback2Params",
            "<TT1;TT2;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT1;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT2;>;)V"
        }
    .end annotation

    .prologue
    .line 1623
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl2;, "Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl2<TT1;TT2;>;"
    .local p1, "callback":Lcom/afwsamples/testdpc/util/Flags$CommandCallback2Params;, "Lcom/afwsamples/testdpc/util/Flags$CommandCallback2Params<TT1;TT2;>;"
    .local p2, "param1":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT1;>;"
    .local p3, "param2":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT2;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1624
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl2;->callback:Lcom/afwsamples/testdpc/util/Flags$CommandCallback2Params;

    .line 1625
    iput-object p2, p0, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl2;->param1:Lcom/afwsamples/testdpc/util/Flags$Param;

    .line 1626
    iput-object p3, p0, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl2;->param2:Lcom/afwsamples/testdpc/util/Flags$Param;

    .line 1627
    return-void
.end method

.method synthetic constructor <init>(Lcom/afwsamples/testdpc/util/Flags$CommandCallback2Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/afwsamples/testdpc/util/Flags$CommandCallback2Params;
    .param p2, "x1"    # Lcom/afwsamples/testdpc/util/Flags$Param;
    .param p3, "x2"    # Lcom/afwsamples/testdpc/util/Flags$Param;
    .param p4, "x3"    # Lcom/afwsamples/testdpc/util/Flags$1;

    .prologue
    .line 1616
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl2;, "Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl2<TT1;TT2;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl2;-><init>(Lcom/afwsamples/testdpc/util/Flags$CommandCallback2Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$Param;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/afwsamples/testdpc/util/Flags;Lcom/afwsamples/testdpc/util/Flags$ArgsContainer;)V
    .locals 3
    .param p1, "flags"    # Lcom/afwsamples/testdpc/util/Flags;
    .param p2, "args"    # Lcom/afwsamples/testdpc/util/Flags$ArgsContainer;

    .prologue
    .line 1631
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl2;, "Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl2<TT1;TT2;>;"
    iget-object v2, p0, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl2;->param1:Lcom/afwsamples/testdpc/util/Flags$Param;

    invoke-static {p1, v2, p2}, Lcom/afwsamples/testdpc/util/Flags;->access$6100(Lcom/afwsamples/testdpc/util/Flags;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$ArgsContainer;)Ljava/lang/Object;

    move-result-object v0

    .line 1632
    .local v0, "arg1":Ljava/lang/Object;, "TT1;"
    iget-object v2, p0, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl2;->param2:Lcom/afwsamples/testdpc/util/Flags$Param;

    invoke-static {p1, v2, p2}, Lcom/afwsamples/testdpc/util/Flags;->access$6100(Lcom/afwsamples/testdpc/util/Flags;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$ArgsContainer;)Ljava/lang/Object;

    move-result-object v1

    .line 1634
    .local v1, "arg2":Ljava/lang/Object;, "TT2;"
    iget-object v2, p0, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl2;->callback:Lcom/afwsamples/testdpc/util/Flags$CommandCallback2Params;

    invoke-interface {v2, v0, v1}, Lcom/afwsamples/testdpc/util/Flags$CommandCallback2Params;->execute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1635
    return-void
.end method
