.class final synthetic Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$44;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

.field private final arg$2:Landroid/widget/EditText;

.field private final arg$3:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$44;->arg$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$44;->arg$2:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$44;->arg$3:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$44;->arg$1:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$44;->arg$2:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$44;->arg$3:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showSetGlobalHttpProxyDialog$146$PolicyManagementFragment(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method
