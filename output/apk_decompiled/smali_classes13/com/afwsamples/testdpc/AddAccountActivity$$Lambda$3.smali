.class final synthetic Lcom/afwsamples/testdpc/AddAccountActivity$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/AddAccountActivity;

.field private final arg$2:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/AddAccountActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/AddAccountActivity$$Lambda$3;->arg$1:Lcom/afwsamples/testdpc/AddAccountActivity;

    iput-object p2, p0, Lcom/afwsamples/testdpc/AddAccountActivity$$Lambda$3;->arg$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/afwsamples/testdpc/AddAccountActivity$$Lambda$3;->arg$1:Lcom/afwsamples/testdpc/AddAccountActivity;

    iget-object v1, p0, Lcom/afwsamples/testdpc/AddAccountActivity$$Lambda$3;->arg$2:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lcom/afwsamples/testdpc/AddAccountActivity;->lambda$onNavigateNext$5$AddAccountActivity(Landroid/view/View;Landroid/content/DialogInterface;I)V

    return-void
.end method
