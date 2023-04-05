.class final synthetic Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final arg$1:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment$$Lambda$0;->arg$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment$$Lambda$0;->arg$1:Landroid/widget/EditText;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/afwsamples/testdpc/transferownership/PickTransferComponentFragment;->lambda$onCreateView$0$PickTransferComponentFragment(Landroid/widget/EditText;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
