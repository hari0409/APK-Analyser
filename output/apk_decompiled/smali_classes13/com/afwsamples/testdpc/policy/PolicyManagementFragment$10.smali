.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;
.super Ljava/lang/Object;
.source "PolicyManagementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showWipeDataPrompt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

.field final synthetic val$externalStorageCheckBox:Landroid/widget/CheckBox;

.field final synthetic val$resetProtectionCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    .prologue
    .line 1995
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;->val$externalStorageCheckBox:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;->val$resetProtectionCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic lambda$onClick$123$PolicyManagementFragment$10(Ljava/lang/Void;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 2004
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    const-string v1, "wipeData"

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$600(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;)V

    return-void
.end method

.method final synthetic lambda$onClick$124$PolicyManagementFragment$10(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 2005
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    const-string v1, "wipeData"

    invoke-static {v0, v1, p1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$500(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const/4 v2, 0x0

    .line 1998
    const/4 v0, 0x0

    .line 1999
    .local v0, "flags":I
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;->val$externalStorageCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    or-int/2addr v0, v1

    .line 2001
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;->val$resetProtectionCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    :cond_0
    or-int/2addr v0, v2

    .line 2003
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$300(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    move-result-object v1

    new-instance v2, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10$$Lambda$0;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10$$Lambda$0;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;)V

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10$$Lambda$1;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10$$Lambda$1;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$10;)V

    invoke-interface {v1, v0, v2, v3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->wipeData(ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 2006
    return-void

    :cond_1
    move v1, v2

    .line 1999
    goto :goto_0
.end method
