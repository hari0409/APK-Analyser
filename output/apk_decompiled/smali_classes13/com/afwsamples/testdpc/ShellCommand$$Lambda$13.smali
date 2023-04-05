.class final synthetic Lcom/afwsamples/testdpc/ShellCommand$$Lambda$13;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/afwsamples/testdpc/util/Flags$CommandCallback2Params;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/ShellCommand;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$13;->arg$1:Lcom/afwsamples/testdpc/ShellCommand;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$13;->arg$1:Lcom/afwsamples/testdpc/ShellCommand;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/afwsamples/testdpc/ShellCommand;->bridge$lambda$10$ShellCommand(Ljava/lang/String;Z)V

    return-void
.end method
