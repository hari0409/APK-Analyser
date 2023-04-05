.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$11;
.super Ljava/lang/Object;
.source "PolicyManagementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showSetPermissionPolicyDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

.field final synthetic val$permissionGroup:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/RadioGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    .prologue
    .line 2124
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$11;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$11;->val$permissionGroup:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2127
    const/4 v1, 0x0

    .line 2128
    .local v1, "policy":I
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$11;->val$permissionGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 2129
    .local v0, "checked":I
    sparse-switch v0, :sswitch_data_0

    .line 2140
    :goto_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$11;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$400(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$11;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v3}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$700(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/app/admin/DevicePolicyManager;->setPermissionPolicy(Landroid/content/ComponentName;I)V

    .line 2141
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2142
    return-void

    .line 2131
    :sswitch_0
    const/4 v1, 0x0

    .line 2132
    goto :goto_0

    .line 2134
    :sswitch_1
    const/4 v1, 0x1

    .line 2135
    goto :goto_0

    .line 2137
    :sswitch_2
    const/4 v1, 0x2

    goto :goto_0

    .line 2129
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09000f -> :sswitch_1
        0x7f090092 -> :sswitch_2
        0x7f09012f -> :sswitch_0
    .end sparse-switch
.end method
