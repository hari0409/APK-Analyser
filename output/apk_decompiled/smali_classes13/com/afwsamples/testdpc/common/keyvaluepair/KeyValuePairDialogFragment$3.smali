.class Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$3;
.super Ljava/lang/Object;
.source "KeyValuePairDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->configureTypeSpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$3;->this$0:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$3;->this$0:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    invoke-static {v0, p3}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->access$700(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;I)V

    .line 271
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
