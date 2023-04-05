.class final synthetic Lcom/afwsamples/testdpc/ShellCommand$$Lambda$47;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/afwsamples/testdpc/util/Flags$CommandCallback3Params;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/ShellCommand;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$47;->arg$1:Lcom/afwsamples/testdpc/ShellCommand;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$47;->arg$1:Lcom/afwsamples/testdpc/ShellCommand;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/afwsamples/testdpc/ShellCommand;->bridge$lambda$43$ShellCommand(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
