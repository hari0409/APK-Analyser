.class final Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl0;
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
    name = "CommandMethodImpl0"
.end annotation


# instance fields
.field private final callback:Lcom/afwsamples/testdpc/util/Flags$CommandCallback0Params;


# direct methods
.method private constructor <init>(Lcom/afwsamples/testdpc/util/Flags$CommandCallback0Params;)V
    .locals 0
    .param p1, "callback"    # Lcom/afwsamples/testdpc/util/Flags$CommandCallback0Params;

    .prologue
    .line 1588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1589
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl0;->callback:Lcom/afwsamples/testdpc/util/Flags$CommandCallback0Params;

    .line 1590
    return-void
.end method

.method synthetic constructor <init>(Lcom/afwsamples/testdpc/util/Flags$CommandCallback0Params;Lcom/afwsamples/testdpc/util/Flags$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/afwsamples/testdpc/util/Flags$CommandCallback0Params;
    .param p2, "x1"    # Lcom/afwsamples/testdpc/util/Flags$1;

    .prologue
    .line 1585
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl0;-><init>(Lcom/afwsamples/testdpc/util/Flags$CommandCallback0Params;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/afwsamples/testdpc/util/Flags;Lcom/afwsamples/testdpc/util/Flags$ArgsContainer;)V
    .locals 1
    .param p1, "flags"    # Lcom/afwsamples/testdpc/util/Flags;
    .param p2, "args"    # Lcom/afwsamples/testdpc/util/Flags$ArgsContainer;

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/Flags$CommandMethodImpl0;->callback:Lcom/afwsamples/testdpc/util/Flags$CommandCallback0Params;

    invoke-interface {v0}, Lcom/afwsamples/testdpc/util/Flags$CommandCallback0Params;->execute()V

    .line 1595
    return-void
.end method
