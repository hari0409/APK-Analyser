.class final synthetic Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$50;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field static final $instance:Ljava/util/function/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$50;

    invoke-direct {v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$50;-><init>()V

    sput-object v0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$50;->$instance:Ljava/util/function/Function;

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

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    invoke-static {p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showClearAppDataPrompt$156$PolicyManagementFragment(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
