.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$22;
.super Ljava/lang/Object;
.source "PolicyManagementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showPromptForKeyCertificateAlias(Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

.field final synthetic val$certificate:Ljava/security/cert/Certificate;

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$key:Ljava/security/PrivateKey;

.field final synthetic val$userSelectableCheckbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;Landroid/widget/CheckBox;Ljava/security/PrivateKey;Ljava/security/cert/Certificate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    .prologue
    .line 3007
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$22;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$22;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$22;->val$userSelectableCheckbox:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$22;->val$key:Ljava/security/PrivateKey;

    iput-object p5, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$22;->val$certificate:Ljava/security/cert/Certificate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3010
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$22;->val$input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3011
    .local v0, "alias":Ljava/lang/String;
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$22;->val$userSelectableCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 3012
    .local v1, "isUserSelectable":Z
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$22;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$22;->val$key:Ljava/security/PrivateKey;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$22;->val$certificate:Ljava/security/cert/Certificate;

    invoke-static {v2, v3, v4, v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$1300(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/security/PrivateKey;Ljava/security/cert/Certificate;Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v5, :cond_0

    .line 3013
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$22;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    const v3, 0x7f0f0088

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$200(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;I[Ljava/lang/Object;)V

    .line 3017
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3018
    return-void

    .line 3015
    :cond_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$22;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    const v3, 0x7f0f0087

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$200(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;I[Ljava/lang/Object;)V

    goto :goto_0
.end method
