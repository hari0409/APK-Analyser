.class public Lcom/android/setupwizardlib/view/StickyHeaderListView;
.super Landroid/widget/ListView;
.source "StickyHeaderListView.java"


# instance fields
.field private mStatusBarInset:I

.field private mSticky:Landroid/view/View;

.field private mStickyContainer:Landroid/view/View;

.field private mStickyRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStatusBarInset:I

    .line 58
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStickyRect:Landroid/graphics/RectF;

    .line 62
    const/4 v0, 0x0

    const v1, 0x1010074

    invoke-direct {p0, v0, v1}, Lcom/android/setupwizardlib/view/StickyHeaderListView;->init(Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStatusBarInset:I

    .line 58
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStickyRect:Landroid/graphics/RectF;

    .line 67
    const v0, 0x1010074

    invoke-direct {p0, p2, v0}, Lcom/android/setupwizardlib/view/StickyHeaderListView;->init(Landroid/util/AttributeSet;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStatusBarInset:I

    .line 58
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStickyRect:Landroid/graphics/RectF;

    .line 72
    invoke-direct {p0, p2, p3}, Lcom/android/setupwizardlib/view/StickyHeaderListView;->init(Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .prologue
    const/4 v6, 0x0

    .line 76
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/StickyHeaderListView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/android/setupwizardlib/R$styleable;->SuwStickyHeaderListView:[I

    invoke-virtual {v4, p1, v5, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 78
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v4, Lcom/android/setupwizardlib/R$styleable;->SuwStickyHeaderListView_suwHeader:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 79
    .local v2, "headerResId":I
    if-eqz v2, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/StickyHeaderListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 81
    .local v3, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v3, v2, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 82
    .local v1, "header":Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4, v6}, Lcom/android/setupwizardlib/view/StickyHeaderListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 84
    .end local v1    # "header":Landroid/view/View;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStickyRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStickyRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    iget-object v1, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStickyRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 104
    iget-object v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStickyContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 106
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 112
    invoke-super {p0, p1}, Landroid/widget/ListView;->draw(Landroid/graphics/Canvas;)V

    .line 113
    iget-object v5, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mSticky:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 116
    .local v3, "saveCount":I
    iget-object v5, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStickyContainer:Landroid/view/View;

    if-eqz v5, :cond_2

    iget-object v1, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStickyContainer:Landroid/view/View;

    .line 118
    .local v1, "drawTarget":Landroid/view/View;
    :goto_0
    iget-object v5, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStickyContainer:Landroid/view/View;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mSticky:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v0

    .line 120
    .local v0, "drawOffset":I
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 121
    .local v2, "drawTop":I
    add-int v5, v2, v0

    iget v6, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStatusBarInset:I

    if-lt v5, v6, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v5

    if-nez v5, :cond_4

    .line 123
    :cond_0
    iget-object v5, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStickyRect:Landroid/graphics/RectF;

    neg-int v6, v0

    iget v7, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStatusBarInset:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    .line 124
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int/2addr v8, v0

    iget v9, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStatusBarInset:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    .line 123
    invoke-virtual {v5, v10, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 125
    iget-object v5, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStickyRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v10, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 126
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p1, v4, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 127
    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 131
    :goto_2
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 133
    .end local v0    # "drawOffset":I
    .end local v1    # "drawTarget":Landroid/view/View;
    .end local v2    # "drawTop":I
    .end local v3    # "saveCount":I
    :cond_1
    return-void

    .line 116
    .restart local v3    # "saveCount":I
    :cond_2
    iget-object v1, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mSticky:Landroid/view/View;

    goto :goto_0

    .restart local v1    # "drawTarget":Landroid/view/View;
    :cond_3
    move v0, v4

    .line 118
    goto :goto_1

    .line 129
    .restart local v0    # "drawOffset":I
    .restart local v2    # "drawTop":I
    :cond_4
    iget-object v4, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStickyRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->setEmpty()V

    goto :goto_2
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4
    .param p1, "insets"    # Landroid/view/WindowInsets;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/StickyHeaderListView;->getFitsSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    iput v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStatusBarInset:I

    .line 141
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    const/4 v1, 0x0

    .line 143
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    .line 144
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    .line 140
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    .line 147
    :cond_0
    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 156
    iget-object v2, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mSticky:Landroid/view/View;

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 157
    .local v0, "numberOfHeaders":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 158
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 159
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 160
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getToIndex()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 162
    :cond_0
    return-void

    .end local v0    # "numberOfHeaders":I
    :cond_1
    move v0, v1

    .line 156
    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 89
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 90
    iget-object v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mSticky:Landroid/view/View;

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/StickyHeaderListView;->updateStickyView()V

    .line 93
    :cond_0
    return-void
.end method

.method public updateStickyView()V
    .locals 1

    .prologue
    .line 96
    const-string v0, "sticky"

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/StickyHeaderListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mSticky:Landroid/view/View;

    .line 97
    const-string v0, "stickyContainer"

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/StickyHeaderListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/view/StickyHeaderListView;->mStickyContainer:Landroid/view/View;

    .line 98
    return-void
.end method
