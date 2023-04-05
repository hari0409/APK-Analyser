.class final synthetic Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;

.field private final arg$2:Landroid/app/AlertDialog;

.field private final arg$3:Landroid/widget/EditText;

.field private final arg$4:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;Landroid/app/AlertDialog;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment$$Lambda$0;->arg$1:Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment$$Lambda$0;->arg$2:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment$$Lambda$0;->arg$3:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment$$Lambda$0;->arg$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment$$Lambda$0;->arg$1:Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment$$Lambda$0;->arg$2:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment$$Lambda$0;->arg$3:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment$$Lambda$0;->arg$4:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->lambda$onEditButtonClick$178$BaseStringItemsFragment(Landroid/app/AlertDialog;Landroid/widget/EditText;Ljava/lang/String;Landroid/content/DialogInterface;)V

    return-void
.end method
