.class final synthetic Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment;

.field private final arg$2:Landroid/widget/EditText;

.field private final arg$3:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment$$Lambda$1;->arg$1:Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment$$Lambda$1;->arg$2:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment$$Lambda$1;->arg$3:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment$$Lambda$1;->arg$1:Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment;

    iget-object v1, p0, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment$$Lambda$1;->arg$2:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment$$Lambda$1;->arg$3:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2, p1}, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment;->lambda$onCreateView$1$PickTransferComponentFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;)V

    return-void
.end method
