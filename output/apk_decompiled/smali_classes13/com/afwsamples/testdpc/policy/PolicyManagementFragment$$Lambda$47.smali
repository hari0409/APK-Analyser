.class final synthetic Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$47;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

.field private final arg$2:Landroid/widget/EditText;

.field private final arg$3:Z

.field private final arg$4:I

.field private final arg$5:I

.field private final arg$6:I


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;ZIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$47;->arg$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$47;->arg$2:Landroid/widget/EditText;

    iput-boolean p3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$47;->arg$3:Z

    iput p4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$47;->arg$4:I

    iput p5, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$47;->arg$5:I

    iput p6, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$47;->arg$6:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$47;->arg$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$47;->arg$2:Landroid/widget/EditText;

    iget-boolean v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$47;->arg$3:Z

    iget v3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$47;->arg$4:I

    iget v4, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$47;->arg$5:I

    iget v5, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$47;->arg$6:I

    move-object v6, p1

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showHideAppsOnParentPrompt$151$PolicyManagementFragment(Landroid/widget/EditText;ZIIILandroid/content/DialogInterface;I)V

    return-void
.end method
