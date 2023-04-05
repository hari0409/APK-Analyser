.class Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$2;
.super Ljava/lang/Object;
.source "IntentOrIntentFilterFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->showCustomInputDialog(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;

.field final synthetic val$customInputEditText:Landroid/widget/EditText;

.field final synthetic val$customInputType:I


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;ILandroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$2;->this$0:Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;

    iput p2, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$2;->val$customInputType:I

    iput-object p3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$2;->val$customInputEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 333
    iget v0, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$2;->val$customInputType:I

    packed-switch v0, :pswitch_data_0

    .line 349
    :goto_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$2;->this$0:Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;

    iget v1, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$2;->val$customInputType:I

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->access$000(Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;I)V

    .line 350
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 351
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$2;->this$0:Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->updateStatusTextView()V

    .line 352
    return-void

    .line 335
    :pswitch_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$2;->this$0:Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;

    iget-object v0, v0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mActions:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$2;->val$customInputEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 338
    :pswitch_1
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$2;->this$0:Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;

    iget-object v0, v0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mCategories:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$2;->val$customInputEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 341
    :pswitch_2
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$2;->this$0:Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;

    iget-object v0, v0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mDataSchemes:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$2;->val$customInputEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 344
    :pswitch_3
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$2;->this$0:Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;

    iget-object v0, v0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mDataTypes:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$2;->val$customInputEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
