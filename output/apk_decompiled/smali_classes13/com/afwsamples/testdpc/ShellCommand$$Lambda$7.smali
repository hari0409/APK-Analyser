.class final synthetic Lcom/afwsamples/testdpc/ShellCommand$$Lambda$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/afwsamples/testdpc/util/Flags$CommandCallback1Params;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/ShellCommand;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$7;->arg$1:Lcom/afwsamples/testdpc/ShellCommand;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$7;->arg$1:Lcom/afwsamples/testdpc/ShellCommand;

    check-cast p1, Landroid/os/UserHandle;

    invoke-virtual {v0, p1}, Lcom/afwsamples/testdpc/ShellCommand;->bridge$lambda$4$ShellCommand(Landroid/os/UserHandle;)V

    return-void
.end method
