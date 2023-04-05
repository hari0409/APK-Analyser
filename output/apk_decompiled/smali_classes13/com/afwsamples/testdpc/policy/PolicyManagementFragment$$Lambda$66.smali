.class final synthetic Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$66;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

.field private final arg$2:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/accounts/Account;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$66;->arg$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$66;->arg$2:Landroid/accounts/Account;

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 2

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$66;->arg$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$66;->arg$2:Landroid/accounts/Account;

    invoke-virtual {v0, v1, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$removeAccount$172$PolicyManagementFragment(Landroid/accounts/Account;Landroid/accounts/AccountManagerFuture;)V

    return-void
.end method
