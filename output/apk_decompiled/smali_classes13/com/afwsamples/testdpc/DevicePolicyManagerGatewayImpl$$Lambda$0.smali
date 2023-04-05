.class final synthetic Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final arg$1:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl$$Lambda$0;->arg$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl$$Lambda$0;->arg$1:Landroid/os/Bundle;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->lambda$getUserRestrictions$7$DevicePolicyManagerGatewayImpl(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
