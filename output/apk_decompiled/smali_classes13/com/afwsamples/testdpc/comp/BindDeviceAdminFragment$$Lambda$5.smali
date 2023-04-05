.class final synthetic Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;

.field private final arg$2:Landroid/content/res/AssetFileDescriptor;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;Landroid/content/res/AssetFileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$Lambda$5;->arg$1:Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$Lambda$5;->arg$2:Landroid/content/res/AssetFileDescriptor;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$Lambda$5;->arg$1:Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;

    iget-object v1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$Lambda$5;->arg$2:Landroid/content/res/AssetFileDescriptor;

    check-cast p1, Lcom/afwsamples/testdpc/comp/IProfileOwnerService;

    invoke-virtual {v0, v1, p1}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->lambda$onActivityResult$217$BindDeviceAdminFragment(Landroid/content/res/AssetFileDescriptor;Lcom/afwsamples/testdpc/comp/IProfileOwnerService;)V

    return-void
.end method
