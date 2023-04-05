.class final synthetic Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$35;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$35;->arg$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$35;->arg$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    invoke-virtual {v0, p1, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showRemoveDeviceOwnerPrompt$127$PolicyManagementFragment(Landroid/content/DialogInterface;I)V

    return-void
.end method
