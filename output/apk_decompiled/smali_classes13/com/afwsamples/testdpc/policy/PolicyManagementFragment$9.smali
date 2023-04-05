.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$9;
.super Ljava/lang/Object;
.source "PolicyManagementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showResetPasswordPrompt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

.field final synthetic val$dontRequireOnBoot:Landroid/widget/CheckBox;

.field final synthetic val$passwordView:Landroid/widget/EditText;

.field final synthetic val$requireEntry:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    .prologue
    .line 1945
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$9;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$9;->val$passwordView:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$9;->val$requireEntry:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$9;->val$dontRequireOnBoot:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x0

    .line 1948
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$9;->val$passwordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1949
    .local v3, "password":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1950
    const/4 v3, 0x0

    .line 1953
    :cond_0
    const/4 v1, 0x0

    .line 1954
    .local v1, "flags":I
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$9;->val$requireEntry:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    or-int/2addr v1, v4

    .line 1956
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$9;->val$dontRequireOnBoot:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    :goto_1
    or-int/2addr v1, v4

    .line 1959
    const/4 v2, 0x0

    .line 1961
    .local v2, "ok":Z
    :try_start_0
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$9;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v4}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$400(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/app/admin/DevicePolicyManager;->resetPassword(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    .line 1967
    :goto_2
    iget-object v6, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$9;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    if-eqz v2, :cond_3

    const v4, 0x7f0f024a

    :goto_3
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6, v4, v5}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$200(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;I[Ljava/lang/Object;)V

    .line 1968
    return-void

    .end local v2    # "ok":Z
    :cond_1
    move v4, v5

    .line 1954
    goto :goto_0

    :cond_2
    move v4, v5

    .line 1956
    goto :goto_1

    .line 1962
    .restart local v2    # "ok":Z
    :catch_0
    move-exception v0

    .line 1965
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_4
    const-string v4, "PolicyManagement"

    const-string v6, "Failed to reset password"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1967
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_3
    const v4, 0x7f0f0249

    goto :goto_3

    .line 1962
    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_4
.end method
