.class public Lcom/android/setupwizardlib/items/ExpandableSwitchItem;
.super Lcom/android/setupwizardlib/items/SwitchItem;
.source "ExpandableSwitchItem.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCollapsedSummary:Ljava/lang/CharSequence;

.field private mExpandedSummary:Ljava/lang/CharSequence;

.field private mIsExpanded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/setupwizardlib/items/SwitchItem;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mIsExpanded:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/items/SwitchItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mIsExpanded:Z

    .line 58
    sget-object v1, Lcom/android/setupwizardlib/R$styleable;->SuwExpandableSwitchItem:[I

    .line 59
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 60
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/android/setupwizardlib/R$styleable;->SuwExpandableSwitchItem_suwCollapsedSummary:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mCollapsedSummary:Ljava/lang/CharSequence;

    .line 61
    sget v1, Lcom/android/setupwizardlib/R$styleable;->SuwExpandableSwitchItem_suwExpandedSummary:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mExpandedSummary:Ljava/lang/CharSequence;

    .line 62
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    return-void
.end method

.method private tintCompoundDrawables(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [I

    const v7, 0x1010036

    aput v7, v6, v4

    .line 155
    invoke-virtual {v5, v6}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 156
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 157
    .local v2, "tintColor":Landroid/content/res/ColorStateList;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 159
    if-eqz v2, :cond_3

    .line 160
    sget v5, Lcom/android/setupwizardlib/R$id;->suw_items_title:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 161
    .local v3, "titleView":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v6

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v1, v6, v5

    .line 162
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 163
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v8

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v8, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 161
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 166
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_3

    .line 167
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    array-length v6, v5

    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v1, v5, v4

    .line 168
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 169
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 167
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 175
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "titleView":Landroid/widget/TextView;
    :cond_3
    return-void
.end method


# virtual methods
.method public getCollapsedSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mCollapsedSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected getDefaultLayoutResource()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/android/setupwizardlib/R$layout;->suw_items_expandable_switch:I

    return v0
.end method

.method public getExpandedSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mExpandedSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mIsExpanded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->getExpandedSummary()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->getCollapsedSummary()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mIsExpanded:Z

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 132
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/items/SwitchItem;->onBindView(Landroid/view/View;)V

    .line 133
    sget v1, Lcom/android/setupwizardlib/R$id;->suw_items_expandable_switch_content:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 134
    .local v0, "content":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    instance-of v1, v0, Lcom/android/setupwizardlib/view/CheckableLinearLayout;

    if-eqz v1, :cond_0

    .line 137
    check-cast v0, Lcom/android/setupwizardlib/view/CheckableLinearLayout;

    .end local v0    # "content":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->isExpanded()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->setChecked(Z)V

    .line 140
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->tintCompoundDrawables(Landroid/view/View;)V

    .line 144
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 145
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->setExpanded(Z)V

    .line 150
    return-void

    .line 149
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCollapsedSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "collapsedSummary"    # Ljava/lang/CharSequence;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mCollapsedSummary:Ljava/lang/CharSequence;

    .line 106
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->notifyChanged()V

    .line 109
    :cond_0
    return-void
.end method

.method public setExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mIsExpanded:Z

    if-ne v0, p1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    iput-boolean p1, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mIsExpanded:Z

    .line 90
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->notifyItemChanged()V

    goto :goto_0
.end method

.method public setExpandedSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "expandedSummary"    # Ljava/lang/CharSequence;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->mExpandedSummary:Ljava/lang/CharSequence;

    .line 124
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ExpandableSwitchItem;->notifyChanged()V

    .line 127
    :cond_0
    return-void
.end method
