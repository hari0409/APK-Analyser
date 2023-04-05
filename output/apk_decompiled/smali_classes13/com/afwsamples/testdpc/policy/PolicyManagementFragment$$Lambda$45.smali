.class final synthetic Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$45;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

.field private final arg$2:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$45;->arg$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$45;->arg$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$45;->arg$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$45;->arg$2:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showEnableSystemAppsPrompt$149$PolicyManagementFragment(Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method
