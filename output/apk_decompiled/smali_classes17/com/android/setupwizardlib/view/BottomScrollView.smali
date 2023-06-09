.class public Lcom/android/setupwizardlib/view/BottomScrollView;
.super Landroid/widget/ScrollView;
.source "BottomScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/view/BottomScrollView$BottomScrollListener;
    }
.end annotation


# instance fields
.field private final mCheckScrollRunnable:Ljava/lang/Runnable;

.field private mListener:Lcom/android/setupwizardlib/view/BottomScrollView$BottomScrollListener;

.field private mRequiringScroll:Z

.field private mScrollThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/view/BottomScrollView;->mRequiringScroll:Z

    .line 41
    new-instance v0, Lcom/android/setupwizardlib/view/BottomScrollView$1;

    invoke-direct {v0, p0}, Lcom/android/setupwizardlib/view/BottomScrollView$1;-><init>(Lcom/android/setupwizardlib/view/BottomScrollView;)V

    iput-object v0, p0, Lcom/android/setupwizardlib/view/BottomScrollView;->mCheckScrollRunnable:Ljava/lang/Runnable;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/view/BottomScrollView;->mRequiringScroll:Z

    .line 41
    new-instance v0, Lcom/android/setupwizardlib/view/BottomScrollView$1;

    invoke-direct {v0, p0}, Lcom/android/setupwizardlib/view/BottomScrollView$1;-><init>(Lcom/android/setupwizardlib/view/BottomScrollView;)V

    iput-object v0, p0, Lcom/android/setupwizardlib/view/BottomScrollView;->mCheckScrollRunnable:Ljava/lang/Runnable;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/view/BottomScrollView;->mRequiringScroll:Z

    .line 41
    new-instance v0, Lcom/android/setupwizardlib/view/BottomScrollView$1;

    invoke-direct {v0, p0}, Lcom/android/setupwizardlib/view/BottomScrollView$1;-><init>(Lcom/android/setupwizardlib/view/BottomScrollView;)V

    iput-object v0, p0, Lcom/android/setupwizardlib/view/BottomScrollView;->mCheckScrollRunnable:Ljava/lang/Runnable;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/setupwizardlib/view/BottomScrollView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/setupwizardlib/view/BottomScrollView;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/BottomScrollView;->checkScroll()V

    return-void
.end method

.method private checkScroll()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/setupwizardlib/view/BottomScrollView;->mListener:Lcom/android/setupwizardlib/view/BottomScrollView$BottomScrollListener;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/BottomScrollView;->getScrollY()I

    move-result v0

    iget v1, p0, Lcom/android/setupwizardlib/view/BottomScrollView;->mScrollThreshold:I

    if-lt v0, v1, :cond_1

    .line 95
    iget-object v0, p0, Lcom/android/setupwizardlib/view/BottomScrollView;->mListener:Lcom/android/setupwizardlib/view/BottomScrollView$BottomScrollListener;

    invoke-interface {v0}, Lcom/android/setupwizardlib/view/BottomScrollView$BottomScrollListener;->onScrolledToBottom()V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-boolean v0, p0, Lcom/android/setupwizardlib/view/BottomScrollView;->mRequiringScroll:Z

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/setupwizardlib/view/BottomScrollView;->mRequiringScroll:Z

    .line 98
    iget-object v0, p0, Lcom/android/setupwizardlib/view/BottomScrollView;->mListener:Lcom/android/setupwizardlib/view/BottomScrollView$BottomScrollListener;

    invoke-interface {v0}, Lcom/android/setupwizardlib/view/BottomScrollView$BottomScrollListener;->onRequiresScroll()V

    goto :goto_0
.end method


# virtual methods
.method public getScrollThreshold()I
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 66
    iget v0, p0, Lcom/android/setupwizardlib/view/BottomScrollView;->mScrollThreshold:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    .line 72
    invoke-virtual {p0, v3}, Lcom/android/setupwizardlib/view/BottomScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, p5

    add-int/2addr v1, p3

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/BottomScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/setupwizardlib/view/BottomScrollView;->mScrollThreshold:I

    .line 76
    :cond_0
    sub-int v1, p5, p3

    if-lez v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/android/setupwizardlib/view/BottomScrollView;->mCheckScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/view/BottomScrollView;->post(Ljava/lang/Runnable;)Z

    .line 82
    :cond_1
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 87
    if-eq p4, p2, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/BottomScrollView;->checkScroll()V

    .line 90
    :cond_0
    return-void
.end method

.method public setBottomScrollListener(Lcom/android/setupwizardlib/view/BottomScrollView$BottomScrollListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/setupwizardlib/view/BottomScrollView$BottomScrollListener;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/setupwizardlib/view/BottomScrollView;->mListener:Lcom/android/setupwizardlib/view/BottomScrollView$BottomScrollListener;

    .line 62
    return-void
.end method
