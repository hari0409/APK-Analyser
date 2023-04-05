.class Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;
.super Ljava/lang/Object;
.source "KeyValuePairDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->createAlertDialog(Landroid/view/View;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;->this$0:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;->val$dialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1$1;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1$1;-><init>(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    return-void
.end method
