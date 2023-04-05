.class final synthetic Lcom/afwsamples/testdpc/util/Flags$$Lambda$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/afwsamples/testdpc/util/Flags$Function;


# static fields
.field static final $instance:Lcom/afwsamples/testdpc/util/Flags$Function;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/afwsamples/testdpc/util/Flags$$Lambda$8;

    invoke-direct {v0}, Lcom/afwsamples/testdpc/util/Flags$$Lambda$8;-><init>()V

    sput-object v0, Lcom/afwsamples/testdpc/util/Flags$$Lambda$8;->$instance:Lcom/afwsamples/testdpc/util/Flags$Function;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
