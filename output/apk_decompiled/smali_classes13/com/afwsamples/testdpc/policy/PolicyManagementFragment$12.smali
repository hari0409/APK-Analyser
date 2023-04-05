.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$12;
.super Ljava/lang/Object;
.source "PolicyManagementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showSetDisableAccountManagementPrompt()V
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
    .line 2169
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$12;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$12;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 2172
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$12;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2173
    .local v0, "accountType":Ljava/lang/String;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$12;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$800(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;Z)V

    .line 2174
    return-void
.end method
