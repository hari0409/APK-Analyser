.class final synthetic Lcom/afwsamples/testdpc/ShellCommand$$Lambda$74;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/ShellCommand;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Z


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$74;->arg$1:Lcom/afwsamples/testdpc/ShellCommand;

    iput-object p2, p0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$74;->arg$2:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$74;->arg$3:Z

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$74;->arg$1:Lcom/afwsamples/testdpc/ShellCommand;

    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$74;->arg$2:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$74;->arg$3:Z

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {v0, v1, v2, p1}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setUserRestriction$37$ShellCommand(Ljava/lang/String;ZLjava/lang/Exception;)V

    return-void
.end method
