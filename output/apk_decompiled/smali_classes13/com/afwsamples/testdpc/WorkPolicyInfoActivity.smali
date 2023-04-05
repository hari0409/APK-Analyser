.class public final Lcom/afwsamples/testdpc/WorkPolicyInfoActivity;
.super Landroid/app/Activity;
.source "WorkPolicyInfoActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f0b00be

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/WorkPolicyInfoActivity;->setContentView(I)V

    .line 27
    return-void
.end method
