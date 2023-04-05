.class final synthetic Lcom/afwsamples/testdpc/ShellCommand$$Lambda$91;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final arg$1:Ljava/io/PrintWriter;


# direct methods
.method private constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$91;->arg$1:Ljava/io/PrintWriter;

    return-void
.end method

.method static get$Lambda(Ljava/io/PrintWriter;)Ljava/util/function/Consumer;
    .locals 1

    new-instance v0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$91;

    invoke-direct {v0, p0}, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$91;-><init>(Ljava/io/PrintWriter;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand$$Lambda$91;->arg$1:Ljava/io/PrintWriter;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
