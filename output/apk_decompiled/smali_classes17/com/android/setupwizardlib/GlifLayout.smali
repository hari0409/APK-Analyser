.class public Lcom/android/setupwizardlib/GlifLayout;
.super Lcom/android/setupwizardlib/TemplateLayout;
.source "GlifLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GlifLayout"


# instance fields
.field private mBackgroundBaseColor:Landroid/content/res/ColorStateList;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mBackgroundPatterned:Z

.field private mLayoutFullscreen:Z

.field private mPrimaryColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, v0, v0}, Lcom/android/setupwizardlib/GlifLayout;-><init>(Landroid/content/Context;II)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "template"    # I

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/setupwizardlib/GlifLayout;-><init>(Landroid/content/Context;II)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "template"    # I
    .param p3, "containerId"    # I

    .prologue
    const/4 v0, 0x1

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/TemplateLayout;-><init>(Landroid/content/Context;II)V

    .line 72
    iput-boolean v0, p0, Lcom/android/setupwizardlib/GlifLayout;->mBackgroundPatterned:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/setupwizardlib/GlifLayout;->mLayoutFullscreen:Z

    .line 92
    const/4 v0, 0x0

    sget v1, Lcom/android/setupwizardlib/R$attr;->suwLayoutTheme:I

    invoke-direct {p0, v0, v1}, Lcom/android/setupwizardlib/GlifLayout;->init(Landroid/util/AttributeSet;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/TemplateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    iput-boolean v0, p0, Lcom/android/setupwizardlib/GlifLayout;->mBackgroundPatterned:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/setupwizardlib/GlifLayout;->mLayoutFullscreen:Z

    .line 97
    sget v0, Lcom/android/setupwizardlib/R$attr;->suwLayoutTheme:I

    invoke-direct {p0, p2, v0}, Lcom/android/setupwizardlib/GlifLayout;->init(Landroid/util/AttributeSet;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/TemplateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    iput-boolean v0, p0, Lcom/android/setupwizardlib/GlifLayout;->mBackgroundPatterned:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/setupwizardlib/GlifLayout;->mLayoutFullscreen:Z

    .line 103
    invoke-direct {p0, p2, p3}, Lcom/android/setupwizardlib/GlifLayout;->init(Landroid/util/AttributeSet;I)V

    .line 104
    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 109
    const-class v8, Lcom/android/setupwizardlib/template/HeaderMixin;

    new-instance v9, Lcom/android/setupwizardlib/template/ColoredHeaderMixin;

    invoke-direct {v9, p0, p1, p2}, Lcom/android/setupwizardlib/template/ColoredHeaderMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v8, v9}, Lcom/android/setupwizardlib/GlifLayout;->registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V

    .line 110
    const-class v8, Lcom/android/setupwizardlib/template/IconMixin;

    new-instance v9, Lcom/android/setupwizardlib/template/IconMixin;

    invoke-direct {v9, p0, p1, p2}, Lcom/android/setupwizardlib/template/IconMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v8, v9}, Lcom/android/setupwizardlib/GlifLayout;->registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V

    .line 111
    const-class v8, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    new-instance v9, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-direct {v9, p0}, Lcom/android/setupwizardlib/template/ProgressBarMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;)V

    invoke-virtual {p0, v8, v9}, Lcom/android/setupwizardlib/GlifLayout;->registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V

    .line 112
    const-class v8, Lcom/android/setupwizardlib/template/ButtonFooterMixin;

    new-instance v9, Lcom/android/setupwizardlib/template/ButtonFooterMixin;

    invoke-direct {v9, p0}, Lcom/android/setupwizardlib/template/ButtonFooterMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;)V

    invoke-virtual {p0, v8, v9}, Lcom/android/setupwizardlib/GlifLayout;->registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V

    .line 113
    new-instance v5, Lcom/android/setupwizardlib/template/RequireScrollMixin;

    invoke-direct {v5, p0}, Lcom/android/setupwizardlib/template/RequireScrollMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;)V

    .line 114
    .local v5, "requireScrollMixin":Lcom/android/setupwizardlib/template/RequireScrollMixin;
    const-class v8, Lcom/android/setupwizardlib/template/RequireScrollMixin;

    invoke-virtual {p0, v8, v5}, Lcom/android/setupwizardlib/GlifLayout;->registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifLayout;->getScrollView()Landroid/widget/ScrollView;

    move-result-object v6

    .line 117
    .local v6, "scrollView":Landroid/widget/ScrollView;
    if-eqz v6, :cond_0

    .line 118
    new-instance v8, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;

    invoke-direct {v8, v5, v6}, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;-><init>(Lcom/android/setupwizardlib/template/RequireScrollMixin;Landroid/widget/ScrollView;)V

    invoke-virtual {v5, v8}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->setScrollHandlingDelegate(Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;)V

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    sget-object v9, Lcom/android/setupwizardlib/R$styleable;->SuwGlifLayout:[I

    invoke-virtual {v8, p1, v9, p2, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 125
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v8, Lcom/android/setupwizardlib/R$styleable;->SuwGlifLayout_suwColorPrimary:I

    .line 126
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 127
    .local v4, "primaryColor":Landroid/content/res/ColorStateList;
    if-eqz v4, :cond_1

    .line 128
    invoke-virtual {p0, v4}, Lcom/android/setupwizardlib/GlifLayout;->setPrimaryColor(Landroid/content/res/ColorStateList;)V

    .line 131
    :cond_1
    sget v8, Lcom/android/setupwizardlib/R$styleable;->SuwGlifLayout_suwBackgroundBaseColor:I

    .line 132
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 133
    .local v1, "backgroundColor":Landroid/content/res/ColorStateList;
    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/GlifLayout;->setBackgroundBaseColor(Landroid/content/res/ColorStateList;)V

    .line 135
    sget v8, Lcom/android/setupwizardlib/R$styleable;->SuwGlifLayout_suwBackgroundPatterned:I

    .line 136
    invoke-virtual {v0, v8, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 137
    .local v2, "backgroundPatterned":Z
    invoke-virtual {p0, v2}, Lcom/android/setupwizardlib/GlifLayout;->setBackgroundPatterned(Z)V

    .line 139
    sget v8, Lcom/android/setupwizardlib/R$styleable;->SuwGlifLayout_suwFooter:I

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 140
    .local v3, "footer":I
    if-eqz v3, :cond_2

    .line 141
    invoke-virtual {p0, v3}, Lcom/android/setupwizardlib/GlifLayout;->inflateFooter(I)Landroid/view/View;

    .line 144
    :cond_2
    sget v8, Lcom/android/setupwizardlib/R$styleable;->SuwGlifLayout_suwStickyHeader:I

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 145
    .local v7, "stickyHeader":I
    if-eqz v7, :cond_3

    .line 146
    invoke-virtual {p0, v7}, Lcom/android/setupwizardlib/GlifLayout;->inflateStickyHeader(I)Landroid/view/View;

    .line 149
    :cond_3
    sget v8, Lcom/android/setupwizardlib/R$styleable;->SuwGlifLayout_suwLayoutFullscreen:I

    invoke-virtual {v0, v8, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/setupwizardlib/GlifLayout;->mLayoutFullscreen:Z

    .line 151
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 153
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_4

    iget-boolean v8, p0, Lcom/android/setupwizardlib/GlifLayout;->mLayoutFullscreen:Z

    if-eqz v8, :cond_4

    .line 154
    const/16 v8, 0x400

    invoke-virtual {p0, v8}, Lcom/android/setupwizardlib/GlifLayout;->setSystemUiVisibility(I)V

    .line 156
    :cond_4
    return-void
.end method

.method private updateBackground()V
    .locals 4

    .prologue
    .line 293
    sget v3, Lcom/android/setupwizardlib/R$id;->suw_pattern_bg:I

    invoke-virtual {p0, v3}, Lcom/android/setupwizardlib/GlifLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v2

    .line 294
    .local v2, "patternBg":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 295
    const/4 v1, 0x0

    .line 296
    .local v1, "backgroundColor":I
    iget-object v3, p0, Lcom/android/setupwizardlib/GlifLayout;->mBackgroundBaseColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2

    .line 297
    iget-object v3, p0, Lcom/android/setupwizardlib/GlifLayout;->mBackgroundBaseColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 301
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/setupwizardlib/GlifLayout;->mBackgroundPatterned:Z

    if-eqz v3, :cond_3

    .line 302
    new-instance v0, Lcom/android/setupwizardlib/GlifPatternDrawable;

    invoke-direct {v0, v1}, Lcom/android/setupwizardlib/GlifPatternDrawable;-><init>(I)V

    .line 304
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    :goto_1
    instance-of v3, v2, Lcom/android/setupwizardlib/view/StatusBarBackgroundLayout;

    if-eqz v3, :cond_4

    .line 305
    check-cast v2, Lcom/android/setupwizardlib/view/StatusBarBackgroundLayout;

    .end local v2    # "patternBg":Landroid/view/View;
    invoke-virtual {v2, v0}, Lcom/android/setupwizardlib/view/StatusBarBackgroundLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 310
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v1    # "backgroundColor":I
    :cond_1
    :goto_2
    return-void

    .line 298
    .restart local v1    # "backgroundColor":I
    .restart local v2    # "patternBg":Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/android/setupwizardlib/GlifLayout;->mPrimaryColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_0

    .line 299
    iget-object v3, p0, Lcom/android/setupwizardlib/GlifLayout;->mPrimaryColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    goto :goto_0

    .line 303
    :cond_3
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_1

    .line 307
    .restart local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_4
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method


# virtual methods
.method protected findContainer(I)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "containerId"    # I

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 169
    sget p1, Lcom/android/setupwizardlib/R$id;->suw_layout_content:I

    .line 171
    :cond_0
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/TemplateLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundBaseColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifLayout;->mBackgroundBaseColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getHeaderColor()Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 228
    const-class v1, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/ColoredHeaderMixin;

    .line 229
    .local v0, "mixin":Lcom/android/setupwizardlib/template/ColoredHeaderMixin;
    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/ColoredHeaderMixin;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1
.end method

.method public getHeaderText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 219
    const-class v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/HeaderMixin;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 207
    const-class v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 237
    const-class v0, Lcom/android/setupwizardlib/template/IconMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/IconMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/IconMixin;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifLayout;->mPrimaryColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getScrollView()Landroid/widget/ScrollView;
    .locals 2

    .prologue
    .line 202
    sget v1, Lcom/android/setupwizardlib/R$id;->suw_scroll_view:I

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/GlifLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    .line 203
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/ScrollView;

    .end local v0    # "view":Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0    # "view":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inflateFooter(I)Landroid/view/View;
    .locals 2
    .param p1, "footer"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 182
    sget v1, Lcom/android/setupwizardlib/R$id;->suw_layout_footer:I

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/GlifLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 183
    .local v0, "footerStub":Landroid/view/ViewStub;
    invoke-virtual {v0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 184
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public inflateStickyHeader(I)Landroid/view/View;
    .locals 2
    .param p1, "header"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 196
    sget v1, Lcom/android/setupwizardlib/R$id;->suw_layout_sticky_header:I

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/GlifLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 197
    .local v0, "stickyHeaderStub":Landroid/view/ViewStub;
    invoke-virtual {v0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 198
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public isBackgroundPatterned()Z
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/android/setupwizardlib/GlifLayout;->mBackgroundPatterned:Z

    return v0
.end method

.method public isProgressBarShown()Z
    .locals 1

    .prologue
    .line 313
    const-class v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->isShown()Z

    move-result v0

    return v0
.end method

.method protected onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "template"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 160
    if-nez p2, :cond_0

    .line 161
    sget p2, Lcom/android/setupwizardlib/R$layout;->suw_glif_template:I

    .line 163
    :cond_0
    sget v0, Lcom/android/setupwizardlib/R$style;->SuwThemeGlif_Light:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/setupwizardlib/GlifLayout;->inflateTemplate(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public peekProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 321
    const-class v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->peekProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    return-object v0
.end method

.method public setBackgroundBaseColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "color"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/setupwizardlib/GlifLayout;->mBackgroundBaseColor:Landroid/content/res/ColorStateList;

    .line 264
    invoke-direct {p0}, Lcom/android/setupwizardlib/GlifLayout;->updateBackground()V

    .line 265
    return-void
.end method

.method public setBackgroundPatterned(Z)V
    .locals 0
    .param p1, "patterned"    # Z

    .prologue
    .line 281
    iput-boolean p1, p0, Lcom/android/setupwizardlib/GlifLayout;->mBackgroundPatterned:Z

    .line 282
    invoke-direct {p0}, Lcom/android/setupwizardlib/GlifLayout;->updateBackground()V

    .line 283
    return-void
.end method

.method public setHeaderColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 223
    const-class v1, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/ColoredHeaderMixin;

    .line 224
    .local v0, "mixin":Lcom/android/setupwizardlib/template/ColoredHeaderMixin;
    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/ColoredHeaderMixin;->setColor(Landroid/content/res/ColorStateList;)V

    .line 225
    return-void
.end method

.method public setHeaderText(I)V
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 211
    const-class v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/HeaderMixin;->setText(I)V

    .line 212
    return-void
.end method

.method public setHeaderText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 215
    const-class v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/HeaderMixin;->setText(Ljava/lang/CharSequence;)V

    .line 216
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 233
    const-class v0, Lcom/android/setupwizardlib/template/IconMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/IconMixin;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/IconMixin;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 234
    return-void
.end method

.method public setPrimaryColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/setupwizardlib/GlifLayout;->mPrimaryColor:Landroid/content/res/ColorStateList;

    .line 246
    invoke-direct {p0}, Lcom/android/setupwizardlib/GlifLayout;->updateBackground()V

    .line 247
    const-class v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->setColor(Landroid/content/res/ColorStateList;)V

    .line 248
    return-void
.end method

.method public setProgressBarShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 317
    const-class v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->setShown(Z)V

    .line 318
    return-void
.end method
