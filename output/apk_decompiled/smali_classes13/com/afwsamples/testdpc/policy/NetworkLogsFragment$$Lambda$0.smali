.class final synthetic Lcom/afwsamples/testdpc/policy/NetworkLogsFragment$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field static final $instance:Ljava/io/FilenameFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment$$Lambda$0;

    invoke-direct {v0}, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment$$Lambda$0;-><init>()V

    sput-object v0, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment$$Lambda$0;->$instance:Ljava/io/FilenameFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1, p2}, Lcom/afwsamples/testdpc/policy/NetworkLogsFragment;->lambda$findLastBatch$196$NetworkLogsFragment(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
