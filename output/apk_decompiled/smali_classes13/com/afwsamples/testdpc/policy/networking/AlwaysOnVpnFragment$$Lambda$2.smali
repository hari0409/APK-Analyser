.class final synthetic Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field static final $instance:Ljava/util/function/Predicate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment$$Lambda$2;

    invoke-direct {v0}, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment$$Lambda$2;-><init>()V

    sput-object v0, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment$$Lambda$2;->$instance:Ljava/util/function/Predicate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/afwsamples/testdpc/policy/networking/AlwaysOnVpnFragment;->lambda$setAlwaysOnVpnPackageQPlus$193$AlwaysOnVpnFragment(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
