.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$20;
.super Ljava/lang/Object;
.source "PolicyManagementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showPromptForCertificatePassword(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

.field final synthetic val$attempts:I

.field final synthetic val$input:Landroid/widget/EditText;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;Landroid/content/Intent;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    .prologue
    .line 2960
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$20;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$20;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$20;->val$intent:Landroid/content/Intent;

    iput p4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$20;->val$attempts:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2963
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$20;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2964
    .local v0, "userPassword":Ljava/lang/String;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$20;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$20;->val$intent:Landroid/content/Intent;

    iget v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$20;->val$attempts:I

    invoke-static {v1, v2, v0, v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$1200(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/content/Intent;Ljava/lang/String;I)V

    .line 2965
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2966
    return-void
.end method
