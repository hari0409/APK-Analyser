.class public final Lcom/afwsamples/testdpc/DevicePolicyManagerGateway$FailedUserOperationException;
.super Lcom/afwsamples/testdpc/DevicePolicyManagerGateway$InvalidResultException;
.source "DevicePolicyManagerGateway.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/DevicePolicyManagerGateway;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FailedUserOperationException"
.end annotation


# direct methods
.method public varargs constructor <init>(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "method"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "args"    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 518
    invoke-static {p1}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway$FailedUserOperationException;->userStatusToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/afwsamples/testdpc/DevicePolicyManagerGateway$InvalidResultException;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 519
    return-void
.end method

.method private static userStatusToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "status"    # I

    .prologue
    .line 522
    packed-switch p0, :pswitch_data_0

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID_STATUS:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 524
    :pswitch_0
    const-string v0, "SUCCESS"

    goto :goto_0

    .line 526
    :pswitch_1
    const-string v0, "ERROR_CURRENT_USER"

    goto :goto_0

    .line 528
    :pswitch_2
    const-string v0, "ERROR_LOW_STORAGE"

    goto :goto_0

    .line 530
    :pswitch_3
    const-string v0, "ERROR_MAX_MANAGED_PROFILE"

    goto :goto_0

    .line 532
    :pswitch_4
    const-string v0, "ERROR_MAX_RUNNING_USERS"

    goto :goto_0

    .line 534
    :pswitch_5
    const-string v0, "ERROR_MAX_USERS"

    goto :goto_0

    .line 536
    :pswitch_6
    const-string v0, "ERROR_UNKNOWN"

    goto :goto_0

    .line 522
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
