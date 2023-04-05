.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$8;
.super Ljava/lang/Object;
.source "PolicyManagementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showCheckLockTaskPermittedPrompt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    .prologue
    .line 1908
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$8;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$8;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1911
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$8;->val$input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1912
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$8;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$300(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    move-result-object v2

    .line 1913
    invoke-interface {v2, v1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result v0

    .line 1914
    .local v0, "isLockTaskPermitted":Z
    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$8;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    if-eqz v0, :cond_0

    const v2, 0x7f0f0091

    :goto_0
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$200(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;I[Ljava/lang/Object;)V

    .line 1917
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1918
    return-void

    .line 1914
    :cond_0
    const v2, 0x7f0f0090

    goto :goto_0
.end method
