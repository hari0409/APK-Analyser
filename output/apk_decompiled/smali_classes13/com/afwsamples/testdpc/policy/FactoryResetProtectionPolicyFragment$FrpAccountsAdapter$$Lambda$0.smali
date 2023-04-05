.class final synthetic Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;

.field private final arg$2:I


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter$$Lambda$0;->arg$1:Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;

    iput p2, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter$$Lambda$0;->arg$2:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter$$Lambda$0;->arg$1:Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;

    iget v1, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter$$Lambda$0;->arg$2:I

    invoke-virtual {v0, v1, p1}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;->lambda$getView$189$FactoryResetProtectionPolicyFragment$FrpAccountsAdapter(ILandroid/view/View;)V

    return-void
.end method
