.class final synthetic Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;

.field private final arg$2:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment$$Lambda$0;->arg$1:Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;

    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment$$Lambda$0;->arg$2:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment$$Lambda$0;->arg$1:Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment$$Lambda$0;->arg$2:Landroid/widget/EditText;

    invoke-virtual {v0, v1, p1, p2}, Lcom/afwsamples/testdpc/policy/CrossProfileCalendarFragment;->lambda$showSetPackagesDialog$188$CrossProfileCalendarFragment(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method
