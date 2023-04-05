.class public Lcom/android/setupwizardlib/view/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonBarLayout.java"


# instance fields
.field private mOriginalPaddingLeft:I

.field private mOriginalPaddingRight:I

.field private mStacked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/view/ButtonBarLayout;->mStacked:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/view/ButtonBarLayout;->mStacked:Z

    .line 44
    return-void
.end method

.method private setStacked(Z)V
    .locals 10
    .param p1, "stacked"    # Z

    .prologue
    .line 79
    iget-boolean v6, p0, Lcom/android/setupwizardlib/view/ButtonBarLayout;->mStacked:Z

    if-ne v6, p1, :cond_0

    .line 123
    :goto_0
    return-void

    .line 82
    :cond_0
    iput-boolean p1, p0, Lcom/android/setupwizardlib/view/ButtonBarLayout;->mStacked:Z

    .line 83
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->getChildCount()I

    move-result v1

    .line 84
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 85
    invoke-virtual {p0, v3}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 86
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 87
    .local v2, "childParams":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p1, :cond_2

    .line 88
    sget v6, Lcom/android/setupwizardlib/R$id;->suw_original_weight:I

    iget v7, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 89
    const/4 v6, 0x0

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 96
    :cond_1
    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 91
    :cond_2
    sget v6, Lcom/android/setupwizardlib/R$id;->suw_original_weight:I

    invoke-virtual {v0, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    .line 92
    .local v5, "weight":Ljava/lang/Float;
    if-eqz v5, :cond_1

    .line 93
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_2

    .line 99
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "weight":Ljava/lang/Float;
    :cond_3
    if-eqz p1, :cond_4

    const/4 v6, 0x1

    :goto_3
    invoke-virtual {p0, v6}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->setOrientation(I)V

    .line 102
    add-int/lit8 v3, v1, -0x1

    :goto_4
    if-ltz v3, :cond_5

    .line 103
    invoke-virtual {p0, v3}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 102
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 99
    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    .line 106
    :cond_5
    if-eqz p1, :cond_6

    .line 111
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->getPaddingLeft()I

    move-result v6

    iput v6, p0, Lcom/android/setupwizardlib/view/ButtonBarLayout;->mOriginalPaddingLeft:I

    .line 112
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->getPaddingRight()I

    move-result v6

    iput v6, p0, Lcom/android/setupwizardlib/view/ButtonBarLayout;->mOriginalPaddingRight:I

    .line 113
    iget v6, p0, Lcom/android/setupwizardlib/view/ButtonBarLayout;->mOriginalPaddingLeft:I

    iget v7, p0, Lcom/android/setupwizardlib/view/ButtonBarLayout;->mOriginalPaddingRight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 115
    .local v4, "paddingHorizontal":I
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->getPaddingBottom()I

    move-result v7

    .line 114
    invoke-virtual {p0, v4, v6, v4, v7}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->setPadding(IIII)V

    goto :goto_0

    .line 117
    .end local v4    # "paddingHorizontal":I
    :cond_6
    iget v6, p0, Lcom/android/setupwizardlib/view/ButtonBarLayout;->mOriginalPaddingLeft:I

    .line 119
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->getPaddingTop()I

    move-result v7

    iget v8, p0, Lcom/android/setupwizardlib/view/ButtonBarLayout;->mOriginalPaddingRight:I

    .line 121
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->getPaddingBottom()I

    move-result v9

    .line 117
    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->setPadding(IIII)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    .line 48
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 50
    .local v2, "widthSize":I
    invoke-direct {p0, v5}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->setStacked(Z)V

    .line 52
    const/4 v1, 0x0

    .line 54
    .local v1, "needsRemeasure":Z
    move v0, p1

    .line 55
    .local v0, "initialWidthMeasureSpec":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v3, v4, :cond_0

    .line 58
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 61
    const/4 v1, 0x1

    .line 64
    :cond_0
    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 66
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->getMeasuredWidth()I

    move-result v3

    if-le v3, v2, :cond_1

    .line 67
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->setStacked(Z)V

    .line 70
    const/4 v1, 0x1

    .line 73
    :cond_1
    if-eqz v1, :cond_2

    .line 74
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 76
    :cond_2
    return-void
.end method
