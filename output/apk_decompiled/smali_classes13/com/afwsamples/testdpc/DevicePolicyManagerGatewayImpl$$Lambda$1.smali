.class final synthetic Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final arg$1:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl$$Lambda$1;->arg$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl$$Lambda$1;->arg$1:Ljava/lang/String;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGatewayImpl;->lambda$setUserRestriction$8$DevicePolicyManagerGatewayImpl(Ljava/lang/String;Ljava/lang/Void;)V

    return-void
.end method
