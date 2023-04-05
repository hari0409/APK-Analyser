.class final Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl1;
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
    name = "CommandMethodImpl1"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/afwsamples/testdpc/util/Flags$CommandMethod;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params",
            "<TT1;>;"
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


# direct methods
.method private constructor <init>(Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/Flags$Param;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params",
            "<TT1;>;",
            "Lcom/afwsamples/testdpc/util/Flags$Param",
            "<TT1;>;)V"
        }
    .end annotation

    .prologue
    .line 1603
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl1;, "Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl1<TT1;>;"
    .local p1, "callback":Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;, "Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params<TT1;>;"
    .local p2, "param1":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<TT1;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1604
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl1;->callback:Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;

    .line 1605
    iput-object p2, p0, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl1;->param1:Lcom/afwsamples/testdpc/util/Flags$Param;

    .line 1606
    return-void
.end method

.method synthetic constructor <init>(Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;
    .param p2, "x1"    # Lcom/afwsamples/testdpc/util/Flags$Param;
    .param p3, "x2"    # Lcom/afwsamples/testdpc/util/Flags$1;

    .prologue
    .line 1598
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl1;, "Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl1<TT1;>;"
    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl1;-><init>(Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;Lcom/afwsamples/testdpc/util/Flags$Param;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/afwsamples/testdpc/util/Flags;Lcom/afwsamples/testdpc/util/Flags$ArgsContainer;)V
    .locals 2
    .param p1, "flags"    # Lcom/afwsamples/testdpc/util/Flags;
    .param p2, "args"    # Lcom/afwsamples/testdpc/util/Flags$ArgsContainer;

    .prologue
    .line 1610
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl1;, "Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl1<TT1;>;"
    iget-object v1, p0, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl1;->param1:Lcom/afwsamples/testdpc/util/Flags$Param;

    invoke-static {p1, v1, p2}, Lcom/afwsamples/testdpc/util/Flags;->access$6100(Lcom/afwsamples/testdpc/util/Flags;Lcom/afwsamples/testdpc/util/Flags$Param;Lcom/afwsamples/testdpc/util/Flags$ArgsContainer;)Ljava/lang/Object;

    move-result-object v0

    .line 1612
    .local v0, "arg1":Ljava/lang/Object;, "TT1;"
    iget-object v1, p0, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl1;->callback:Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;

    invoke-interface {v1, v0}, Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;->execute(Ljava/lang/Object;)V

    .line 1613
    return-void
.end method
