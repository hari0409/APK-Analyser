.class Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$1$1;
.super Ljava/lang/Object;
.source "WifiEapTlsCreateDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$1;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$1;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$1;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$1$1;->this$1:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$1$1;->this$1:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$1;

    iget-object v0, v0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$1;->this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;

    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->access$000(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$1$1;->this$1:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$1;

    iget-object v0, v0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 125
    :cond_0
    return-void
.end method
