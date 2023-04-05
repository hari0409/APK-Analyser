.class final Lcom/afwsamples/testdpc/ShellCommand$KeyValue;
.super Ljava/lang/Object;
.source "ShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/ShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyValue"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 970
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 971
    iput-object p1, p0, Lcom/afwsamples/testdpc/ShellCommand$KeyValue;->key:Ljava/lang/String;

    .line 972
    iput-object p2, p0, Lcom/afwsamples/testdpc/ShellCommand$KeyValue;->value:Ljava/lang/String;

    .line 973
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/afwsamples/testdpc/ShellCommand$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/afwsamples/testdpc/ShellCommand$1;

    .prologue
    .line 966
    invoke-direct {p0, p1, p2}, Lcom/afwsamples/testdpc/ShellCommand$KeyValue;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/afwsamples/testdpc/ShellCommand$KeyValue;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/ShellCommand$KeyValue;

    .prologue
    .line 966
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand$KeyValue;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/afwsamples/testdpc/ShellCommand$KeyValue;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/ShellCommand$KeyValue;

    .prologue
    .line 966
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand$KeyValue;->value:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 1

    .prologue
    .line 976
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand$KeyValue;->key:Ljava/lang/String;

    return-object v0
.end method

.method public value()Ljava/lang/String;
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Lcom/afwsamples/testdpc/ShellCommand$KeyValue;->value:Ljava/lang/String;

    return-object v0
.end method
