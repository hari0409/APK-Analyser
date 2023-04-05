.class Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$ImportButtonOnClickListener;
.super Ljava/lang/Object;
.source "WifiEapTlsCreateDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImportButtonOnClickListener"
.end annotation


# instance fields
.field private mMimeType:Ljava/lang/String;

.field private mRequestCode:I

.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;


# direct methods
.method public constructor <init>(Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;ILjava/lang/String;)V
    .locals 0
    .param p2, "requestCode"    # I
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$ImportButtonOnClickListener;->this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput p2, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$ImportButtonOnClickListener;->mRequestCode:I

    .line 253
    iput-object p3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$ImportButtonOnClickListener;->mMimeType:Ljava/lang/String;

    .line 254
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 258
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    .local v0, "certIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$ImportButtonOnClickListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setTypeAndNormalize(Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    :try_start_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$ImportButtonOnClickListener;->this$0:Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;

    iget v3, p0, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment$ImportButtonOnClickListener;->mRequestCode:I

    invoke-virtual {v2, v0, v3}, Lcom/afwsamples/testdpc/policy/wifimanagement/WifiEapTlsCreateDialogFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v1

    .line 263
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "wifi_eap_tls"

    const-string v3, "no file picker: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
