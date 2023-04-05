.class final synthetic Lcom/afwsamples/testdpc/ShellCommand$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/afwsamples/testdpc/util/Flags$BiFunction;


# static fields
.field static final $instance:Lcom/afwsamples/testdpc/util/Flags$BiFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$2;

    invoke-direct {v0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$2;-><init>()V

    sput-object v0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$2;->$instance:Lcom/afwsamples/testdpc/util/Flags$BiFunction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/afwsamples/testdpc/util/Flags$Validator;

    invoke-static {p1, p2}, Lcom/afwsamples/testdpc/ShellCommand;->lambda$run$23$ShellCommand(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$Validator;)Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;

    move-result-object v0

    return-object v0
.end method
