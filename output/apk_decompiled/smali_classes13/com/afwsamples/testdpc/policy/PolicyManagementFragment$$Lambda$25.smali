.class final synthetic Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$25;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final arg$1:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$25;->arg$1:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$$Lambda$25;->arg$1:Landroid/widget/CheckBox;

    invoke-static {v0, p1, p2}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->lambda$showLockNowPrompt$111$PolicyManagementFragment(Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
