.class public Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;
.super Ljava/lang/Object;
.source "ScrollViewScrollHandlingDelegate.java"

# interfaces
.implements Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;
.implements Lcom/android/setupwizardlib/view/BottomScrollView$BottomScrollListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ScrollViewDelegate"


# instance fields
.field private final mRequireScrollMixin:Lcom/android/setupwizardlib/template/RequireScrollMixin;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mScrollView:Lcom/android/setupwizardlib/view/BottomScrollView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/template/RequireScrollMixin;Landroid/widget/ScrollView;)V
    .locals 3
    .param p1, "requireScrollMixin"    # Lcom/android/setupwizardlib/template/RequireScrollMixin;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "scrollView"    # Landroid/widget/ScrollView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;->mRequireScrollMixin:Lcom/android/setupwizardlib/template/RequireScrollMixin;

    .line 47
    instance-of v0, p2, Lcom/android/setupwizardlib/view/BottomScrollView;

    if-eqz v0, :cond_0

    .line 48
    check-cast p2, Lcom/android/setupwizardlib/view/BottomScrollView;

    .end local p2    # "scrollView":Landroid/widget/ScrollView;
    iput-object p2, p0, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;->mScrollView:Lcom/android/setupwizardlib/view/BottomScrollView;

    .line 53
    :goto_0
    return-void

    .line 50
    .restart local p2    # "scrollView":Landroid/widget/ScrollView;
    :cond_0
    const-string v0, "ScrollViewDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set non-BottomScrollView. Found="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;->mScrollView:Lcom/android/setupwizardlib/view/BottomScrollView;

    goto :goto_0
.end method


# virtual methods
.method public onRequiresScroll()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;->mRequireScrollMixin:Lcom/android/setupwizardlib/template/RequireScrollMixin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->notifyScrollabilityChange(Z)V

    .line 63
    return-void
.end method

.method public onScrolledToBottom()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;->mRequireScrollMixin:Lcom/android/setupwizardlib/template/RequireScrollMixin;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->notifyScrollabilityChange(Z)V

    .line 58
    return-void
.end method

.method public pageScrollDown()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;->mScrollView:Lcom/android/setupwizardlib/view/BottomScrollView;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;->mScrollView:Lcom/android/setupwizardlib/view/BottomScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/view/BottomScrollView;->pageScroll(I)Z

    .line 79
    :cond_0
    return-void
.end method

.method public startListening()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;->mScrollView:Lcom/android/setupwizardlib/view/BottomScrollView;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;->mScrollView:Lcom/android/setupwizardlib/view/BottomScrollView;

    invoke-virtual {v0, p0}, Lcom/android/setupwizardlib/view/BottomScrollView;->setBottomScrollListener(Lcom/android/setupwizardlib/view/BottomScrollView$BottomScrollListener;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    const-string v0, "ScrollViewDelegate"

    const-string v1, "Cannot require scroll. Scroll view is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
