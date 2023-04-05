.class Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "EnableCosuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$2;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 258
    const-string v2, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 266
    :goto_0
    return-void

    .line 262
    :cond_0
    const-string v2, "extra_download_id"

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 264
    .local v0, "id":J
    iget-object v2, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$2;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-static {v2}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->access$600(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$2;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-static {v3}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->access$600(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
