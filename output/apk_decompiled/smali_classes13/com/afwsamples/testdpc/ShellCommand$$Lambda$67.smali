.class final synthetic Lcom/afwsamples/testdpc/ShellCommand$$Lambda$67;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/ShellCommand;

.field private final arg$2:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/ShellCommand;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$67;->arg$1:Lcom/afwsamples/testdpc/ShellCommand;

    iput-object p2, p0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$67;->arg$2:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$67;->arg$1:Lcom/afwsamples/testdpc/ShellCommand;

    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$67;->arg$2:Landroid/os/UserHandle;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, p1}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$switchUser$30$ShellCommand(Landroid/os/UserHandle;Ljava/lang/Void;)V

    return-void
.end method
