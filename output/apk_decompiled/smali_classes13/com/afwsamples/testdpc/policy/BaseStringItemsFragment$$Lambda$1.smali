.class final synthetic Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;

.field private final arg$2:Landroid/widget/EditText;

.field private final arg$3:Ljava/lang/String;

.field private final arg$4:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;Landroid/widget/EditText;Ljava/lang/String;Landroid/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment$$Lambda$1;->arg$1:Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment$$Lambda$1;->arg$2:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment$$Lambda$1;->arg$3:Ljava/lang/String;

    iput-object p4, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment$$Lambda$1;->arg$4:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment$$Lambda$1;->arg$1:Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment$$Lambda$1;->arg$2:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment$$Lambda$1;->arg$3:Ljava/lang/String;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment$$Lambda$1;->arg$4:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->lambda$null$177$BaseStringItemsFragment(Landroid/widget/EditText;Ljava/lang/String;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method
