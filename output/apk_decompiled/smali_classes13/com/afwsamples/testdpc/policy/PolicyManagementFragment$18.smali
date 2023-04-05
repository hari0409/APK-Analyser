.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$18;
.super Ljava/lang/Object;
.source "PolicyManagementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showConfigurePolicyAndManageCredentialsPrompt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    .prologue
    .line 2857
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$18;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$18;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2860
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$18;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2861
    .local v1, "policy":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "com.android.chrome#client.badssl.com:443#testAlias\ncom.android.chrome#prod.idrix.eu/secure#testAlias\nde.blinkt.openvpn#192.168.0.1#vpnAlias"

    .line 2863
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$18;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->access$1100(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/lang/String;)V

    .line 2864
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$18;->this$0:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    .line 2865
    invoke-virtual {v2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2866
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "appUriPolicy"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2867
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2869
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2871
    return-void

    .line 2869
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    throw v2
.end method
