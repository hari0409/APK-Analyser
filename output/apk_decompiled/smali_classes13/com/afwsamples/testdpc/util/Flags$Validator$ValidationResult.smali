.class public final Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;
.super Ljava/lang/Object;
.source "Flags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/util/Flags$Validator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ValidationResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final isValid:Z

.field private final message:Ljava/lang/String;

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;, "Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult<TT;>;"
    const/4 v1, 0x0

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;->isValid:Z

    .line 366
    iput-object v1, p0, Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;->message:Ljava/lang/String;

    .line 367
    iput-object v1, p0, Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;->value:Ljava/lang/Object;

    .line 368
    return-void
.end method

.method synthetic constructor <init>(Lcom/afwsamples/testdpc/util/Flags$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/afwsamples/testdpc/util/Flags$1;

    .prologue
    .line 353
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;, "Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult<TT;>;"
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 358
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;, "Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;->isValid:Z

    .line 360
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;->message:Ljava/lang/String;

    .line 361
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;->value:Ljava/lang/Object;

    .line 362
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/afwsamples/testdpc/util/Flags$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/afwsamples/testdpc/util/Flags$1;

    .prologue
    .line 353
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;, "Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult<TT;>;"
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 370
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;, "Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;->isValid:Z

    .line 372
    iput-object p1, p0, Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;->message:Ljava/lang/String;

    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;->value:Ljava/lang/Object;

    .line 374
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/afwsamples/testdpc/util/Flags$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/afwsamples/testdpc/util/Flags$1;

    .prologue
    .line 353
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;, "Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult<TT;>;"
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;)Z
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;->isValid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;)Z
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;->hasMessage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;->message()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;->value()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private hasMessage()Z
    .locals 1

    .prologue
    .line 381
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;, "Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult<TT;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValid()Z
    .locals 1

    .prologue
    .line 377
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;, "Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult<TT;>;"
    iget-boolean v0, p0, Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;->isValid:Z

    return v0
.end method

.method private message()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;, "Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult<TT;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method private value()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 389
    .local p0, "this":Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;, "Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult<TT;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/util/Flags$Validator$ValidationResult;->value:Ljava/lang/Object;

    return-object v0
.end method
