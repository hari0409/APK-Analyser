.class final synthetic Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$Lambda$3;->arg$1:Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$Lambda$3;->arg$1:Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;

    check-cast p1, Lcom/afwsamples/testdpc/comp/IProfileOwnerService;

    invoke-virtual {v0, p1}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->lambda$refresh$214$BindDeviceAdminFragment(Lcom/afwsamples/testdpc/comp/IProfileOwnerService;)V

    return-void
.end method
