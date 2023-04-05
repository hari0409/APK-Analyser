.class final synthetic Lcom/afwsamples/testdpc/ShellCommand$$Lambda$50;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/afwsamples/testdpc/util/Flags$CommandCallback0Params;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/ShellCommand;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$50;->arg$1:Lcom/afwsamples/testdpc/ShellCommand;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$50;->arg$1:Lcom/afwsamples/testdpc/ShellCommand;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/ShellCommand;->bridge$lambda$46$ShellCommand()V

    return-void
.end method
