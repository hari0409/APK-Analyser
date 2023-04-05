.class Lcom/afwsamples/testdpc/common/ColorPicker$1;
.super Ljava/lang/Object;
.source "ColorPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/common/ColorPicker;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/common/ColorPicker;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/common/ColorPicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/common/ColorPicker;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/afwsamples/testdpc/common/ColorPicker$1;->this$0:Lcom/afwsamples/testdpc/common/ColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 103
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker$1;->this$0:Lcom/afwsamples/testdpc/common/ColorPicker;

    .line 104
    invoke-virtual {v1}, Lcom/afwsamples/testdpc/common/ColorPicker;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/afwsamples/testdpc/common/ColorPicker$1;->this$0:Lcom/afwsamples/testdpc/common/ColorPicker;

    invoke-static {v2}, Lcom/afwsamples/testdpc/common/ColorPicker;->access$000(Lcom/afwsamples/testdpc/common/ColorPicker;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/common/ColorPicker$OnColorSelectListener;

    .line 105
    .local v0, "listener":Lcom/afwsamples/testdpc/common/ColorPicker$OnColorSelectListener;
    if-eqz v0, :cond_0

    .line 106
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker$1;->this$0:Lcom/afwsamples/testdpc/common/ColorPicker;

    invoke-static {v1}, Lcom/afwsamples/testdpc/common/ColorPicker;->access$100(Lcom/afwsamples/testdpc/common/ColorPicker;)I

    move-result v1

    iget-object v2, p0, Lcom/afwsamples/testdpc/common/ColorPicker$1;->this$0:Lcom/afwsamples/testdpc/common/ColorPicker;

    invoke-static {v2}, Lcom/afwsamples/testdpc/common/ColorPicker;->access$200(Lcom/afwsamples/testdpc/common/ColorPicker;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/afwsamples/testdpc/common/ColorPicker$OnColorSelectListener;->onColorSelected(ILjava/lang/String;)V

    .line 108
    :cond_0
    return-void
.end method
