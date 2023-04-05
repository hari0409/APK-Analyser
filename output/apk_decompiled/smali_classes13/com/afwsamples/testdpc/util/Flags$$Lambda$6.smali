.class final synthetic Lcom/afwsamples/testdpc/util/Flags$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/afwsamples/testdpc/util/Flags$Function;


# static fields
.field static final $instance:Lcom/afwsamples/testdpc/util/Flags$Function;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/afwsamples/testdpc/util/Flags$$Lambda$6;

    invoke-direct {v0}, Lcom/afwsamples/testdpc/util/Flags$$Lambda$6;-><init>()V

    sput-object v0, Lcom/afwsamples/testdpc/util/Flags$$Lambda$6;->$instance:Lcom/afwsamples/testdpc/util/Flags$Function;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method
