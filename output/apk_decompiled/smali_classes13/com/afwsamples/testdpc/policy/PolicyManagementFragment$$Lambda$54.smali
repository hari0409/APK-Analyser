.class final synthetic Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$54;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

.field private final arg$2:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$54;->arg$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$54;->arg$2:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$54;->arg$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$54;->arg$2:Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    invoke-virtual {v0, v1, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$setPermittedInputMethodsOnParent$160$PolicyManagementFragment(Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;Landroid/view/View;)V

    return-void
.end method
