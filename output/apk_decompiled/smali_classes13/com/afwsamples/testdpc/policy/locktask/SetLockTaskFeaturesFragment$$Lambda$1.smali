.class final synthetic Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field static final $instance:Ljava/util/function/Consumer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment$$Lambda$1;

    invoke-direct {v0}, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment$$Lambda$1;-><init>()V

    sput-object v0, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment$$Lambda$1;->$instance:Ljava/util/function/Consumer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Exception;

    invoke-static {p1}, Lcom/afwsamples/testdpc/policy/locktask/SetLockTaskFeaturesFragment;->lambda$setLockTaskFeatures$199$SetLockTaskFeaturesFragment(Ljava/lang/Exception;)V

    return-void
.end method
