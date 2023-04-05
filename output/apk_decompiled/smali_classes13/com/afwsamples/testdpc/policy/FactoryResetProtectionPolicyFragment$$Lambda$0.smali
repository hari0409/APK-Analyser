.class final synthetic Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;

.field private final arg$2:Landroid/app/AlertDialog;

.field private final arg$3:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;Landroid/app/AlertDialog;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$$Lambda$0;->arg$1:Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$$Lambda$0;->arg$2:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$$Lambda$0;->arg$3:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$$Lambda$0;->arg$1:Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$$Lambda$0;->arg$2:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$$Lambda$0;->arg$3:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2, p1}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->lambda$createAddAccountDialog$191$FactoryResetProtectionPolicyFragment(Landroid/app/AlertDialog;Landroid/widget/EditText;Landroid/content/DialogInterface;)V

    return-void
.end method
