.class final synthetic Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/afwsamples/testdpc/common/preference/CustomConstraint;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;

.field private final arg$2:I


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$Lambda$1;->arg$1:Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;

    iput p2, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$Lambda$1;->arg$2:I

    return-void
.end method


# virtual methods
.method public validateConstraint()I
    .locals 2

    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$Lambda$1;->arg$1:Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;

    iget v1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment$$Lambda$1;->arg$2:I

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminFragment;->lambda$getCustomConstraint$213$BindDeviceAdminFragment(I)I

    move-result v0

    return v0
.end method
