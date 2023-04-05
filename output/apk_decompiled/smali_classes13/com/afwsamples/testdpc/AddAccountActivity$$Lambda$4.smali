.class final synthetic Lcom/afwsamples/testdpc/AddAccountActivity$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/AddAccountActivity;

.field private final arg$2:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/AddAccountActivity;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/AddAccountActivity$$Lambda$4;->arg$1:Lcom/afwsamples/testdpc/AddAccountActivity;

    iput-object p2, p0, Lcom/afwsamples/testdpc/AddAccountActivity$$Lambda$4;->arg$2:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/afwsamples/testdpc/AddAccountActivity$$Lambda$4;->arg$1:Lcom/afwsamples/testdpc/AddAccountActivity;

    iget-object v1, p0, Lcom/afwsamples/testdpc/AddAccountActivity$$Lambda$4;->arg$2:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/AddAccountActivity;->lambda$null$2$AddAccountActivity(Landroid/os/Bundle;)V

    return-void
.end method
