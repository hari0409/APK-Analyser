.class Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment$2;
.super Ljava/lang/Object;
.source "EnableSystemAppsByIntentFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->showCustomActionInputDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;

.field final synthetic val$customInputEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment$2;->this$0:Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment$2;->val$customInputEditText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 193
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment$2;->val$customInputEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment$2;->this$0:Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;

    invoke-static {v1}, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->access$100(Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 196
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment$2;->this$0:Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;

    invoke-static {v1}, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->access$200(Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment$2;->this$0:Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;

    invoke-virtual {v1}, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->updateStatusTextView()V

    .line 205
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 206
    return-void

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment$2;->this$0:Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;

    invoke-virtual {v1}, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f0193

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 202
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 203
    iget-object v1, p0, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment$2;->this$0:Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;

    invoke-static {v1}, Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;->access$300(Lcom/afwsamples/testdpc/profilepolicy/addsystemapps/EnableSystemAppsByIntentFragment;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method
