.class final synthetic Lcom/afwsamples/testdpc/CrossProfileAppsFragment$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/CrossProfileAppsFragment;

.field private final arg$2:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/CrossProfileAppsFragment;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/CrossProfileAppsFragment$$Lambda$0;->arg$1:Lcom/afwsamples/testdpc/CrossProfileAppsFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/CrossProfileAppsFragment$$Lambda$0;->arg$2:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/afwsamples/testdpc/CrossProfileAppsFragment$$Lambda$0;->arg$1:Lcom/afwsamples/testdpc/CrossProfileAppsFragment;

    iget-object v1, p0, Lcom/afwsamples/testdpc/CrossProfileAppsFragment$$Lambda$0;->arg$2:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p1}, Lcom/afwsamples/testdpc/CrossProfileAppsFragment;->lambda$showHasTargetUserUi$6$CrossProfileAppsFragment(Landroid/os/UserHandle;Landroid/view/View;)V

    return-void
.end method
