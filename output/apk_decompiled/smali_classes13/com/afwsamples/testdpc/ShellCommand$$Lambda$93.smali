.class final synthetic Lcom/afwsamples/testdpc/ShellCommand$$Lambda$93;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/ShellCommand;

.field private final arg$2:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/ShellCommand;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$93;->arg$1:Lcom/afwsamples/testdpc/ShellCommand;

    iput-object p2, p0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$93;->arg$2:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$93;->arg$1:Lcom/afwsamples/testdpc/ShellCommand;

    iget-object v1, p0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$93;->arg$2:Landroid/content/ComponentName;

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {v0, v1, p1}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$removeActiveAdmin$55$ShellCommand(Landroid/content/ComponentName;Ljava/lang/Exception;)V

    return-void
.end method
