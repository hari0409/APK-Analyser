.class Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$3;
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
    .line 269
    iput-object p1, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$3;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 272
    const-string v3, "com.afwsamples.testdpc.INSTALL_COMPLETE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 299
    :goto_0
    return-void

    .line 276
    :cond_0
    const-string v3, "android.content.pm.extra.STATUS"

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 278
    .local v2, "result":I
    const-string v3, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "packageName":Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 294
    const-string v3, "CosuSetup"

    const-string v4, "Install failed."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v3, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$3;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-static {v3}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->access$500(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)V

    goto :goto_0

    .line 283
    :pswitch_0
    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 285
    .local v0, "extraIntent":Landroid/content/Intent;
    const-string v3, "CosuSetup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Install requires user action with intent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v3, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$3;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-static {v3}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->access$500(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)V

    goto :goto_0

    .line 290
    .end local v0    # "extraIntent":Landroid/content/Intent;
    :pswitch_1
    iget-object v3, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$3;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-static {v3}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->access$600(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity$3;->this$0:Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;

    invoke-static {v4}, Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;->access$600(Lcom/afwsamples/testdpc/cosu/EnableCosuActivity;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 281
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
