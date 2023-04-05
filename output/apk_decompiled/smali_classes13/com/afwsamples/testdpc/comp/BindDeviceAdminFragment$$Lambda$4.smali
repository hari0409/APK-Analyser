.class final synthetic Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener;


# instance fields
.field private final arg$1:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$Lambda$4;->arg$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$Lambda$4;->arg$1:Ljava/lang/Object;

    check-cast p1, Lcom/afwsamples/testdpc/comp/IProfileOwnerService;

    invoke-static {v0, p1}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->lambda$onPreferenceChange$215$BindDeviceAdminFragment(Ljava/lang/Object;Lcom/afwsamples/testdpc/comp/IProfileOwnerService;)V

    return-void
.end method
