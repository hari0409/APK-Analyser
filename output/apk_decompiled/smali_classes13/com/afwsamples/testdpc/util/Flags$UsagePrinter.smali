.class final Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;
.super Ljava/lang/Object;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/util/Flags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UsagePrinter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/util/Flags$UsagePrinter$LineLengthFormatter;
    }
.end annotation


# static fields
.field private static final COMMAND_PADDING:Ljava/lang/String; = "  "

.field private static final COMMAND_WRAP_PADDING:Ljava/lang/String; = "        "

.field private static final COMMAND_WRAP_SEPARATOR:Ljava/lang/String; = " \\"

.field private static final DESCRIPTION_PADDING:Ljava/lang/String; = "    "


# instance fields
.field private final commands:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;",
            ">;"
        }
    .end annotation
.end field

.field private final lineBuilder:Ljava/lang/StringBuilder;

.field private final printWriter:Ljava/io/PrintWriter;


# direct methods
.method private constructor <init>(Ljava/io/PrintWriter;Ljava/lang/Iterable;)V
    .locals 1
    .param p1, "printWriter"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 818
    .local p2, "commands":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;->lineBuilder:Ljava/lang/StringBuilder;

    .line 819
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;->printWriter:Ljava/io/PrintWriter;

    .line 820
    iput-object p2, p0, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;->commands:Ljava/lang/Iterable;

    .line 821
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/PrintWriter;Ljava/lang/Iterable;Lcom/afwsamples/testdpc/util/Flags$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/PrintWriter;
    .param p2, "x1"    # Ljava/lang/Iterable;
    .param p3, "x2"    # Lcom/afwsamples/testdpc/util/Flags$1;

    .prologue
    .line 730
    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;-><init>(Ljava/io/PrintWriter;Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;

    .prologue
    .line 730
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;->showUsage()V

    return-void
.end method

.method static synthetic access$2100(Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 730
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;->showUsage(Ljava/lang/String;)V

    return-void
.end method

.method private varargs appendFormat(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 867
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;->lineBuilder:Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    return-void
.end method

.method private clearLine()V
    .locals 2

    .prologue
    .line 883
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;->lineBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 884
    return-void
.end method

.method private printCommandLine()V
    .locals 4

    .prologue
    .line 871
    new-instance v0, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter$LineLengthFormatter;

    const-string v1, "        "

    const-string v2, " \\"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter$LineLengthFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$1;)V

    iget-object v1, p0, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;->printWriter:Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;->lineBuilder:Ljava/lang/StringBuilder;

    .line 872
    invoke-static {v0, v1, v2}, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter$LineLengthFormatter;->access$3200(Lcom/afwsamples/testdpc/util/Flags$UsagePrinter$LineLengthFormatter;Ljava/io/PrintWriter;Ljava/lang/StringBuilder;)V

    .line 873
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;->clearLine()V

    .line 874
    return-void
.end method

.method private printDescriptionLine()V
    .locals 4

    .prologue
    .line 877
    new-instance v0, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter$LineLengthFormatter;

    const-string v1, "    "

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter$LineLengthFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$1;)V

    iget-object v1, p0, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;->printWriter:Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;->lineBuilder:Ljava/lang/StringBuilder;

    .line 878
    invoke-static {v0, v1, v2}, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter$LineLengthFormatter;->access$3200(Lcom/afwsamples/testdpc/util/Flags$UsagePrinter$LineLengthFormatter;Ljava/io/PrintWriter;Ljava/lang/StringBuilder;)V

    .line 879
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;->clearLine()V

    .line 880
    return-void
.end method

.method private showUsage()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 830
    iget-object v2, p0, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;->printWriter:Ljava/io/PrintWriter;

    const-string v3, "Usage:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 831
    iget-object v2, p0, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;->commands:Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;

    .line 832
    .local v0, "command":Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;
    iget-object v3, p0, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;->lineBuilder:Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    iget-object v3, p0, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;->lineBuilder:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->access$2900(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    invoke-static {v0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->access$2300(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;)Lcom/afwsamples/testdpc/util/Flags$Params;

    move-result-object v3

    invoke-static {v3}, Lcom/afwsamples/testdpc/util/Flags$Params;->access$1600(Lcom/afwsamples/testdpc/util/Flags$Params;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/afwsamples/testdpc/util/Flags$Param;

    .line 835
    .local v1, "param":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<*>;"
    const-string v4, " <%s>"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-interface {v1}, Lcom/afwsamples/testdpc/util/Flags$Param;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-direct {p0, v4, v5}, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;->appendFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 836
    invoke-interface {v1}, Lcom/afwsamples/testdpc/util/Flags$Param;->acceptsMultipleValues()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 837
    iget-object v4, p0, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;->lineBuilder:Ljava/lang/StringBuilder;

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 840
    .end local v1    # "param":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<*>;"
    :cond_1
    invoke-static {v0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->access$2300(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;)Lcom/afwsamples/testdpc/util/Flags$Params;

    move-result-object v3

    invoke-static {v3}, Lcom/afwsamples/testdpc/util/Flags$Params;->access$1500(Lcom/afwsamples/testdpc/util/Flags$Params;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/afwsamples/testdpc/util/Flags$Param;

    .line 841
    .restart local v1    # "param":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<*>;"
    iget-object v4, p0, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;->lineBuilder:Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    invoke-interface {v1}, Lcom/afwsamples/testdpc/util/Flags$Param;->isOptional()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 843
    iget-object v4, p0, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;->lineBuilder:Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    :cond_3
    const-string v4, "--%s <value>"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-interface {v1}, Lcom/afwsamples/testdpc/util/Flags$Param;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-direct {p0, v4, v5}, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;->appendFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 846
    invoke-interface {v1}, Lcom/afwsamples/testdpc/util/Flags$Param;->acceptsMultipleValues()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 847
    iget-object v4, p0, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;->lineBuilder:Ljava/lang/StringBuilder;

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    :cond_4
    invoke-interface {v1}, Lcom/afwsamples/testdpc/util/Flags$Param;->isOptional()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 850
    iget-object v4, p0, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;->lineBuilder:Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 853
    .end local v1    # "param":Lcom/afwsamples/testdpc/util/Flags$Param;, "Lcom/afwsamples/testdpc/util/Flags$Param<*>;"
    :cond_5
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;->printCommandLine()V

    .line 855
    invoke-static {v0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->access$3000(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 856
    iget-object v3, p0, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;->lineBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    iget-object v3, p0, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;->lineBuilder:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->access$3000(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;->printDescriptionLine()V

    .line 861
    :cond_6
    iget-object v3, p0, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_0

    .line 863
    .end local v0    # "command":Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;
    :cond_7
    iget-object v2, p0, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 864
    return-void
.end method

.method private showUsage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 824
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 825
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 826
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/Flags$UsagePrinter;->showUsage()V

    .line 827
    return-void
.end method
