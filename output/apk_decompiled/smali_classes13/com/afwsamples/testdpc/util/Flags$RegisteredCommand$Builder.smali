.class public final Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;
.super Ljava/lang/Object;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private commandMethod:Lcom/afwsamples/testdpc/util/Flags$CommandMethod;

.field private description:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private params:Lcom/afwsamples/testdpc/util/Flags$Params;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->description:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)Lcom/afwsamples/testdpc/util/Flags$Params;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->params:Lcom/afwsamples/testdpc/util/Flags$Params;

    return-object v0
.end method

.method static synthetic access$300(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)Lcom/afwsamples/testdpc/util/Flags$CommandMethod;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->commandMethod:Lcom/afwsamples/testdpc/util/Flags$CommandMethod;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->build()Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setName(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/Flags$Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;
    .param p1, "x1"    # Lcom/afwsamples/testdpc/util/Flags$Params;

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setParams(Lcom/afwsamples/testdpc/util/Flags$Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;
    .param p1, "x1"    # Lcom/afwsamples/testdpc/util/Flags$CommandMethod;

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->setCommandMethod(Lcom/afwsamples/testdpc/util/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method private build()Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;
    .locals 2

    .prologue
    .line 345
    new-instance v0, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand;-><init>(Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;Lcom/afwsamples/testdpc/util/Flags$1;)V

    return-object v0
.end method

.method private setCommandMethod(Lcom/afwsamples/testdpc/util/Flags$CommandMethod;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;
    .locals 0
    .param p1, "value"    # Lcom/afwsamples/testdpc/util/Flags$CommandMethod;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->commandMethod:Lcom/afwsamples/testdpc/util/Flags$CommandMethod;

    .line 336
    return-object p0
.end method

.method private setName(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->name:Ljava/lang/String;

    .line 326
    return-object p0
.end method

.method private setParams(Lcom/afwsamples/testdpc/util/Flags$Params;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;
    .locals 0
    .param p1, "value"    # Lcom/afwsamples/testdpc/util/Flags$Params;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->params:Lcom/afwsamples/testdpc/util/Flags$Params;

    .line 331
    return-object p0
.end method


# virtual methods
.method public setDescription(Ljava/lang/String;)Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/Flags$RegisteredCommand$Builder;->description:Ljava/lang/String;

    .line 341
    return-object p0
.end method
