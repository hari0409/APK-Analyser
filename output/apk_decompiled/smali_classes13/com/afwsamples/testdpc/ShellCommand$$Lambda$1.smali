.class final synthetic Lcom/afwsamples/testdpc/ShellCommand$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/afwsamples/testdpc/util/Flags$BiFunction;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/ShellCommand;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/ShellCommand;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$1;->arg$1:Lcom/afwsamples/testdpc/ShellCommand;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$1;->arg$1:Lcom/afwsamples/testdpc/ShellCommand;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/afwsamples/testdpc/util/Flags$Validator;

    invoke-virtual {v0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$run$22$ShellCommand(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$Validator;)Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;

    move-result-object v0

    return-object v0
.end method
