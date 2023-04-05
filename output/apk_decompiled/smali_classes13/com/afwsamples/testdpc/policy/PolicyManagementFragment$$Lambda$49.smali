.class final synthetic Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$49;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final arg$1:Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$49;->arg$1:Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$49;->arg$1:Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showSetMeteredDataPrompt$155$PolicyManagementFragment(Lcom/afwsamples/testdpc/policy/MeteredDataRestrictionInfoAdapter;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
