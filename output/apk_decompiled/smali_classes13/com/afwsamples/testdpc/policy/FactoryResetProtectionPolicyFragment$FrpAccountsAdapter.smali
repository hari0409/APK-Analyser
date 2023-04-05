.class Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FactoryResetProtectionPolicyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrpAccountsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;


# direct methods
.method public constructor <init>(Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;)V
    .locals 3

    .prologue
    .line 120
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;->this$0:Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;

    .line 121
    invoke-virtual {p1}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0036

    invoke-static {p1}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->access$000(Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 122
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 126
    if-nez p2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;->this$0:Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;

    invoke-virtual {v2}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b0036

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 130
    :cond_0
    const v2, 0x7f0900bb

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 131
    .local v0, "listItemText":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;->this$0:Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;

    invoke-static {v2}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->access$000(Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    const v2, 0x7f090138

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 134
    .local v1, "removeAccountButton":Landroid/widget/Button;
    new-instance v2, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter$$Lambda$0;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter$$Lambda$0;-><init>(Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    return-object p2
.end method

.method final synthetic lambda$getView$189$FactoryResetProtectionPolicyFragment$FrpAccountsAdapter(ILandroid/view/View;)V
    .locals 1
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;->this$0:Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;

    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;->access$000(Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 136
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/FactoryResetProtectionPolicyFragment$FrpAccountsAdapter;->notifyDataSetChanged()V

    .line 137
    return-void
.end method
