.class Lcom/android/setupwizardlib/template/RequireScrollMixin$2;
.super Ljava/lang/Object;
.source "RequireScrollMixin.java"

# interfaces
.implements Lcom/android/setupwizardlib/template/RequireScrollMixin$OnRequireScrollStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/setupwizardlib/template/RequireScrollMixin;->requireScrollWithNavigationBar(Lcom/android/setupwizardlib/view/NavigationBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/setupwizardlib/template/RequireScrollMixin;

.field final synthetic val$navigationBar:Lcom/android/setupwizardlib/view/NavigationBar;


# direct methods
.method constructor <init>(Lcom/android/setupwizardlib/template/RequireScrollMixin;Lcom/android/setupwizardlib/view/NavigationBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/setupwizardlib/template/RequireScrollMixin;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin$2;->this$0:Lcom/android/setupwizardlib/template/RequireScrollMixin;

    iput-object p2, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin$2;->val$navigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequireScrollStateChanged(Z)V
    .locals 4
    .param p1, "scrollNeeded"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 154
    iget-object v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin$2;->val$navigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/NavigationBar;->getMoreButton()Landroid/widget/Button;

    move-result-object v3

    .line 155
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin$2;->val$navigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    .line 157
    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 158
    return-void

    :cond_0
    move v0, v2

    .line 155
    goto :goto_0

    :cond_1
    move v2, v1

    .line 157
    goto :goto_1
.end method
