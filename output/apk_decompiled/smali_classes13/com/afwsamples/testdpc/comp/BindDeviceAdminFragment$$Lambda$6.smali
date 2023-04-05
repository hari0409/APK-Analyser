.class final synthetic Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;

.field private final arg$2:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$Lambda$6;->arg$1:Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$Lambda$6;->arg$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$Lambda$6;->arg$1:Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;

    iget-object v1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$Lambda$6;->arg$2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->lambda$null$216$BindDeviceAdminFragment(Ljava/lang/String;)V

    return-void
.end method
