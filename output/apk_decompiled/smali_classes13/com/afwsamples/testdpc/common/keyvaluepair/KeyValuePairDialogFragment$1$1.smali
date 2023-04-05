.class Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1$1;
.super Ljava/lang/Object;
.source "KeyValuePairDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1$1;->this$1:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 183
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1$1;->this$1:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;

    iget-object v3, v3, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;->this$0:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    invoke-static {v3}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->access$200(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1$1;->this$1:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;

    iget-object v3, v3, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;->this$0:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    const v4, 0x7f0f0199

    invoke-static {v3, v4}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->access$300(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;I)V

    .line 199
    :goto_0
    return-void

    .line 188
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 189
    .local v1, "result":Landroid/content/Intent;
    const-string v3, "type"

    iget-object v4, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1$1;->this$1:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;

    iget-object v4, v4, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;->this$0:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    invoke-static {v4}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->access$400(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    const-string v3, "key"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1$1;->this$1:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;

    iget-object v3, v3, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;->this$0:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    invoke-static {v3, v1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->access$500(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;Landroid/content/Intent;)Z

    move-result v2

    .line 192
    .local v2, "valid":Z
    if-eqz v2, :cond_1

    .line 193
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1$1;->this$1:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;

    iget-object v3, v3, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;->this$0:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    invoke-virtual {v3}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v3

    iget-object v4, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1$1;->this$1:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;

    iget-object v4, v4, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;->this$0:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    invoke-virtual {v4}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->getTargetRequestCode()I

    move-result v4

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5, v1}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 195
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1$1;->this$1:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;

    iget-object v3, v3, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 197
    :cond_1
    iget-object v3, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1$1;->this$1:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;

    iget-object v3, v3, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;->this$0:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    const v4, 0x7f0f0384

    invoke-static {v3, v4}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->access$300(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;I)V

    goto :goto_0
.end method
