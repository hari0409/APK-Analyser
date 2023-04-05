.class final synthetic Lcom/afwsamples/testdpc/SetupManagementFragment$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/SetupManagementFragment;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/SetupManagementFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/SetupManagementFragment$$Lambda$0;->arg$1:Lcom/afwsamples/testdpc/SetupManagementFragment;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/afwsamples/testdpc/SetupManagementFragment$$Lambda$0;->arg$1:Lcom/afwsamples/testdpc/SetupManagementFragment;

    invoke-virtual {v0, p1}, Lcom/afwsamples/testdpc/SetupManagementFragment;->onNavigateNext(Landroid/view/View;)V

    return-void
.end method
