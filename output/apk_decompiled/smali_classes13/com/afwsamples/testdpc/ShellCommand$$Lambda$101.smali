.class final synthetic Lcom/afwsamples/testdpc/ShellCommand$$Lambda$101;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/ShellCommand;

.field private final arg$2:Ljava/lang/String;

.field private final arg$3:I


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/ShellCommand;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$101;->arg$1:Lcom/afwsamples/testdpc/ShellCommand;

    iput-object p2, p0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$101;->arg$2:Ljava/lang/String;

    iput p3, p0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$101;->arg$3:I

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$101;->arg$1:Lcom/afwsamples/testdpc/ShellCommand;

    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$101;->arg$2:Ljava/lang/String;

    iget v2, p0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$101;->arg$3:I

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, v2, p1}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$setRequiredPasswordComplexity$63$ShellCommand(Ljava/lang/String;ILjava/lang/Void;)V

    return-void
.end method
