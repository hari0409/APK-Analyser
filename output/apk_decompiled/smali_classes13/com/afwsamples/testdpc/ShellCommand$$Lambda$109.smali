.class final synthetic Lcom/afwsamples/testdpc/ShellCommand$$Lambda$109;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/ShellCommand;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$109;->arg$1:Lcom/afwsamples/testdpc/ShellCommand;

    iput-object p2, p0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$109;->arg$2:Ljava/lang/String;

    iput-object p3, p0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$109;->arg$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$109;->arg$1:Lcom/afwsamples/testdpc/ShellCommand;

    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$109;->arg$2:Ljava/lang/String;

    iget-object v2, p0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$109;->arg$3:Ljava/lang/String;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, v2, p1}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setHiddenPackage$71$ShellCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Void;)V

    return-void
.end method
