.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;
.super Ljava/lang/Object;
.source "PolicyManagementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showCreateAndManageUserPrompt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

.field final synthetic val$leaveAllSystemAppsEnabled:Landroid/widget/CheckBox;

.field final synthetic val$makeUserEphemeralCheckBox:Landroid/widget/CheckBox;

.field final synthetic val$skipSetupWizardCheckBox:Landroid/widget/CheckBox;

.field final synthetic val$userNameEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    .prologue
    .line 2246
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;->val$userNameEditText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;->val$skipSetupWizardCheckBox:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;->val$makeUserEphemeralCheckBox:Landroid/widget/CheckBox;

    iput-object p5, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;->val$leaveAllSystemAppsEnabled:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic lambda$onClick$128$PolicyManagementFragment$14(Landroid/os/UserHandle;)V
    .locals 6
    .param p1, "u"    # Landroid/os/UserHandle;

    .prologue
    .line 2263
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    const v1, 0x7f0f0373

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    .line 2264
    invoke-static {v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$900(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2263
    invoke-static {v0, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$200(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;I[Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic lambda$onClick$129$PolicyManagementFragment$14(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 2265
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    const v1, 0x7f0f015e

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$200(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;I[Ljava/lang/Object;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 2249
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;->val$userNameEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2250
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2251
    const/4 v0, 0x0

    .line 2252
    .local v0, "flags":I
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;->val$skipSetupWizardCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2253
    or-int/lit8 v0, v0, 0x1

    .line 2255
    :cond_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;->val$makeUserEphemeralCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2256
    or-int/lit8 v0, v0, 0x2

    .line 2258
    :cond_1
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;->val$leaveAllSystemAppsEnabled:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2259
    or-int/lit8 v0, v0, 0x10

    .line 2262
    :cond_2
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$300(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;

    move-result-object v2

    new-instance v3, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14$$Lambda$0;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14$$Lambda$0;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;)V

    new-instance v4, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14$$Lambda$1;

    invoke-direct {v4, p0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14$$Lambda$1;-><init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$14;)V

    invoke-interface {v2, v1, v0, v3, v4}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;->createAndManageUser(Ljava/lang/String;ILjava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 2267
    .end local v0    # "flags":I
    :cond_3
    return-void
.end method
