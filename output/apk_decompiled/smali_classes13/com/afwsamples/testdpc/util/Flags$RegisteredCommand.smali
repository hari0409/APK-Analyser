.class final Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;
.super Ljava/lang/Object;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/util/Flags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RegisteredCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;
    }
.end annotation


# instance fields
.field private final commandMethod:Lcom/afwsamples/testdpc/util/Flags$CommandMethod;

.field private final description:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final params:Lcom/afwsamples/testdpc/util/Flags$Params;


# direct methods
.method private constructor <init>(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    invoke-static {p1}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$000(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->name:Ljava/lang/String;

    .line 293
    invoke-static {p1}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$100(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->description:Ljava/lang/String;

    .line 294
    invoke-static {p1}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$200(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)Lcom/afwsamples/testdpc/util/Flags$Params;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->params:Lcom/afwsamples/testdpc/util/Flags$Params;

    .line 295
    invoke-static {p1}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->access$300(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)Lcom/afwsamples/testdpc/util/Flags$CommandMethod;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->commandMethod:Lcom/afwsamples/testdpc/util/Flags$CommandMethod;

    .line 296
    return-void
.end method

.method synthetic constructor <init>(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/Flags$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;
    .param p2, "x1"    # Lcom/afwsamples/testdpc/util/Flags$1;

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;-><init>(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;)Lcom/afwsamples/testdpc/util/Flags$Params;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->params()Lcom/afwsamples/testdpc/util/Flags$Params;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;)Lcom/afwsamples/testdpc/util/Flags$CommandMethod;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->commandMethod()Lcom/afwsamples/testdpc/util/Flags$CommandMethod;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->description()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100()Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;
    .locals 1

    .prologue
    .line 285
    invoke-static {}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->builder()Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static builder()Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;
    .locals 2

    .prologue
    .line 315
    new-instance v0, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    invoke-direct {v0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method private commandMethod()Lcom/afwsamples/testdpc/util/Flags$CommandMethod;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->commandMethod:Lcom/afwsamples/testdpc/util/Flags$CommandMethod;

    return-object v0
.end method

.method private description()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->description:Ljava/lang/String;

    return-object v0
.end method

.method private name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->name:Ljava/lang/String;

    return-object v0
.end method

.method private params()Lcom/afwsamples/testdpc/util/Flags$Params;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;->params:Lcom/afwsamples/testdpc/util/Flags$Params;

    return-object v0
.end method
