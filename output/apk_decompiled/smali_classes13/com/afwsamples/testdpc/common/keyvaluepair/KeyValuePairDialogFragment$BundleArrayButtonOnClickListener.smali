.class Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleArrayButtonOnClickListener;
.super Ljava/lang/Object;
.source "KeyValuePairDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BundleArrayButtonOnClickListener"
.end annotation


# instance fields
.field private mBundles:[Landroid/os/Bundle;

.field final synthetic this$0:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;


# direct methods
.method private constructor <init>(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleArrayButtonOnClickListener;->this$0:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;
    .param p2, "x1"    # Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$1;

    .prologue
    .line 389
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleArrayButtonOnClickListener;-><init>(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 397
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleArrayButtonOnClickListener;->this$0:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    invoke-static {v2}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->access$200(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 399
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleArrayButtonOnClickListener;->this$0:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    const v3, 0x7f0f0199

    invoke-static {v2, v3}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->access$300(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;I)V

    .line 405
    :goto_0
    return-void

    .line 402
    :cond_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleArrayButtonOnClickListener;->mBundles:[Landroid/os/Bundle;

    iget-object v3, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleArrayButtonOnClickListener;->this$0:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    .line 403
    invoke-static {v3}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->access$900(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;)Ljava/lang/String;

    move-result-object v3

    .line 402
    invoke-static {v1, v2, v3}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->newInstance(Ljava/lang/String;[Landroid/os/Bundle;Ljava/lang/String;)Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;

    move-result-object v0

    .line 404
    .local v0, "fragment":Landroid/app/Fragment;
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleArrayButtonOnClickListener;->this$0:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    invoke-static {v2, v0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->access$1000(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;Landroid/app/Fragment;)V

    goto :goto_0
.end method

.method public setBundleArray([Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundles"    # [Landroid/os/Bundle;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleArrayButtonOnClickListener;->mBundles:[Landroid/os/Bundle;

    .line 394
    return-void
.end method
