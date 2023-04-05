.class final Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;
.super Landroid/os/AsyncTask;
.source "SetPrivateDnsTask.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1d
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Networking"


# instance fields
.field private final mCallback:Lcom/afwsamples/testdpc/policy/keymanagement/ShowToastCallback;

.field private final mComponent:Landroid/content/ComponentName;

.field private final mDpm:Landroid/app/admin/DevicePolicyManager;

.field private final mMode:I

.field private final mResolver:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;ILjava/lang/String;Lcom/afwsamples/testdpc/policy/keymanagement/ShowToastCallback;)V
    .locals 0
    .param p1, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "mode"    # I
    .param p4, "resolver"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/afwsamples/testdpc/policy/keymanagement/ShowToastCallback;

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 41
    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;->mComponent:Landroid/content/ComponentName;

    .line 42
    iput-object p5, p0, Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;->mCallback:Lcom/afwsamples/testdpc/policy/keymanagement/ShowToastCallback;

    .line 43
    iput p3, p0, Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;->mMode:I

    .line 44
    iput-object p4, p0, Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;->mResolver:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 51
    :try_start_0
    iget v2, p0, Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;->mMode:I

    packed-switch v2, :pswitch_data_0

    .line 59
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid private dns mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;->mMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_0
    const-string v2, "Networking"

    const-string v3, "Failed to invoke, cause"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1
    return-object v2

    .line 53
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;->mComponent:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;->mResolver:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/app/admin/DevicePolicyManager;->setGlobalPrivateDnsModeSpecifiedHost(Landroid/content/ComponentName;Ljava/lang/String;)I

    move-result v1

    .line 61
    .local v1, "result":I
    :goto_2
    packed-switch v1, :pswitch_data_1

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected error setting private dns: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 56
    .end local v1    # "result":I
    :pswitch_1
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->setGlobalPrivateDnsModeOpportunistic(Landroid/content/ComponentName;)I

    move-result v1

    .line 57
    .restart local v1    # "result":I
    goto :goto_2

    .line 63
    :pswitch_2
    const/4 v2, 0x0

    goto :goto_1

    .line 65
    :pswitch_3
    const-string v2, "General failure to set the Private DNS mode"

    goto :goto_1

    .line 67
    :pswitch_4
    const-string v2, "Provided host doesn\'t serve DNS-over-TLS"
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 71
    .end local v1    # "result":I
    :catch_1
    move-exception v0

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 61
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 79
    if-nez p1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;->mCallback:Lcom/afwsamples/testdpc/policy/keymanagement/ShowToastCallback;

    const v1, 0x7f0f0303

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/afwsamples/testdpc/policy/keymanagement/ShowToastCallback;->showToast(I[Ljava/lang/Object;)V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/networking/SetPrivateDnsTask;->mCallback:Lcom/afwsamples/testdpc/policy/keymanagement/ShowToastCallback;

    const v1, 0x7f0f0302

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/afwsamples/testdpc/policy/keymanagement/ShowToastCallback;->showToast(I[Ljava/lang/Object;)V

    goto :goto_0
.end method
