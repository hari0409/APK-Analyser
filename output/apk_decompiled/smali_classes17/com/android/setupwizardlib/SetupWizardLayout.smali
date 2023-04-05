.class public Lcom/android/setupwizardlib/SetupWizardLayout;
.super Lcom/android/setupwizardlib/TemplateLayout;
.source "SetupWizardLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SetupWizardLayout"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0, v0}, Lcom/android/setupwizardlib/TemplateLayout;-><init>(Landroid/content/Context;II)V

    .line 56
    const/4 v0, 0x0

    sget v1, Lcom/android/setupwizardlib/R$attr;->suwLayoutTheme:I

    invoke-direct {p0, v0, v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->init(Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "template"    # I

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;-><init>(Landroid/content/Context;II)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "template"    # I
    .param p3, "containerId"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/TemplateLayout;-><init>(Landroid/content/Context;II)V

    .line 65
    const/4 v0, 0x0

    sget v1, Lcom/android/setupwizardlib/R$attr;->suwLayoutTheme:I

    invoke-direct {p0, v0, v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->init(Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/TemplateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    sget v0, Lcom/android/setupwizardlib/R$attr;->suwLayoutTheme:I

    invoke-direct {p0, p2, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->init(Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/TemplateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    invoke-direct {p0, p2, p3}, Lcom/android/setupwizardlib/SetupWizardLayout;->init(Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method private getIllustration(II)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "asset"    # I
    .param p2, "horizontalTile"    # I

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 328
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 329
    .local v0, "assetDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 330
    .local v2, "tile":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v0, v2}, Lcom/android/setupwizardlib/SetupWizardLayout;->getIllustration(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3
.end method

.method private getIllustration(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "asset"    # Landroid/graphics/drawable/Drawable;
    .param p2, "horizontalTile"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .prologue
    const/16 v5, 0x13

    const/4 v4, 0x1

    .line 335
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 336
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/setupwizardlib/R$bool;->suwUseTabletLayout:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 338
    instance-of v2, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    move-object v2, p2

    .line 339
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    move-object v2, p2

    .line 340
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 342
    :cond_0
    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    move-object v2, p1

    .line 344
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v3, 0x33

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 346
    :cond_1
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    aput-object p1, v2, v4

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 348
    .local v1, "layers":Landroid/graphics/drawable/LayerDrawable;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v5, :cond_2

    .line 349
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/LayerDrawable;->setAutoMirrored(Z)V

    .line 357
    .end local v1    # "layers":Landroid/graphics/drawable/LayerDrawable;
    :cond_2
    :goto_0
    return-object v1

    .line 354
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v5, :cond_4

    .line 355
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    :cond_4
    move-object v1, p1

    .line 357
    goto :goto_0
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 17
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .prologue
    .line 82
    const-class v14, Lcom/android/setupwizardlib/template/HeaderMixin;

    new-instance v15, Lcom/android/setupwizardlib/template/HeaderMixin;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v15, v0, v1, v2}, Lcom/android/setupwizardlib/template/HeaderMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;Landroid/util/AttributeSet;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/setupwizardlib/SetupWizardLayout;->registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V

    .line 83
    const-class v14, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    new-instance v15, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/setupwizardlib/template/ProgressBarMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/setupwizardlib/SetupWizardLayout;->registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V

    .line 84
    const-class v14, Lcom/android/setupwizardlib/template/NavigationBarMixin;

    new-instance v15, Lcom/android/setupwizardlib/template/NavigationBarMixin;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/setupwizardlib/template/NavigationBarMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/setupwizardlib/SetupWizardLayout;->registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V

    .line 85
    new-instance v12, Lcom/android/setupwizardlib/template/RequireScrollMixin;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/setupwizardlib/template/RequireScrollMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;)V

    .line 86
    .local v12, "requireScrollMixin":Lcom/android/setupwizardlib/template/RequireScrollMixin;
    const-class v14, Lcom/android/setupwizardlib/template/RequireScrollMixin;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v12}, Lcom/android/setupwizardlib/SetupWizardLayout;->registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getScrollView()Landroid/widget/ScrollView;

    move-result-object v13

    .line 89
    .local v13, "scrollView":Landroid/widget/ScrollView;
    if-eqz v13, :cond_0

    .line 90
    new-instance v14, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;

    invoke-direct {v14, v12, v13}, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;-><init>(Lcom/android/setupwizardlib/template/RequireScrollMixin;Landroid/widget/ScrollView;)V

    invoke-virtual {v12, v14}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->setScrollHandlingDelegate(Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;)V

    .line 94
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getContext()Landroid/content/Context;

    move-result-object v14

    sget-object v15, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardLayout:[I

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v14, v0, v15, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 98
    .local v3, "a":Landroid/content/res/TypedArray;
    sget v14, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardLayout_suwBackground:I

    .line 99
    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 100
    .local v4, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_5

    .line 101
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/setupwizardlib/SetupWizardLayout;->setLayoutBackground(Landroid/graphics/drawable/Drawable;)V

    .line 111
    :cond_1
    :goto_0
    sget v14, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardLayout_suwIllustration:I

    .line 112
    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 113
    .local v8, "illustration":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_6

    .line 114
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/setupwizardlib/SetupWizardLayout;->setIllustration(Landroid/graphics/drawable/Drawable;)V

    .line 126
    :cond_2
    :goto_1
    sget v14, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardLayout_suwDecorPaddingTop:I

    const/4 v15, -0x1

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 128
    .local v6, "decorPaddingTop":I
    const/4 v14, -0x1

    if-ne v6, v14, :cond_3

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/android/setupwizardlib/R$dimen;->suw_decor_padding_top:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 131
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/setupwizardlib/SetupWizardLayout;->setDecorPaddingTop(I)V

    .line 136
    sget v14, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardLayout_suwIllustrationAspectRatio:I

    const/high16 v15, -0x40800000    # -1.0f

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    .line 138
    .local v9, "illustrationAspectRatio":F
    const/high16 v14, -0x40800000    # -1.0f

    cmpl-float v14, v9, v14

    if-nez v14, :cond_4

    .line 139
    new-instance v11, Landroid/util/TypedValue;

    invoke-direct {v11}, Landroid/util/TypedValue;-><init>()V

    .line 140
    .local v11, "out":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/android/setupwizardlib/R$dimen;->suw_illustration_aspect_ratio:I

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v15, v11, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 141
    invoke-virtual {v11}, Landroid/util/TypedValue;->getFloat()F

    move-result v9

    .line 143
    .end local v11    # "out":Landroid/util/TypedValue;
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/setupwizardlib/SetupWizardLayout;->setIllustrationAspectRatio(F)V

    .line 145
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 146
    return-void

    .line 103
    .end local v6    # "decorPaddingTop":I
    .end local v8    # "illustration":Landroid/graphics/drawable/Drawable;
    .end local v9    # "illustrationAspectRatio":F
    :cond_5
    sget v14, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardLayout_suwBackgroundTile:I

    .line 104
    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 105
    .local v5, "backgroundTile":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_1

    .line 106
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/setupwizardlib/SetupWizardLayout;->setBackgroundTile(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 116
    .end local v5    # "backgroundTile":Landroid/graphics/drawable/Drawable;
    .restart local v8    # "illustration":Landroid/graphics/drawable/Drawable;
    :cond_6
    sget v14, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardLayout_suwIllustrationImage:I

    .line 117
    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 118
    .local v10, "illustrationImage":Landroid/graphics/drawable/Drawable;
    sget v14, Lcom/android/setupwizardlib/R$styleable;->SuwSetupWizardLayout_suwIllustrationHorizontalTile:I

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 120
    .local v7, "horizontalTile":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_2

    if-eqz v7, :cond_2

    .line 121
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v7}, Lcom/android/setupwizardlib/SetupWizardLayout;->setIllustration(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private setBackgroundTile(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "backgroundTile"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 320
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 321
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 323
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/SetupWizardLayout;->setLayoutBackground(Landroid/graphics/drawable/Drawable;)V

    .line 324
    return-void
.end method

.method private setIllustration(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "asset"    # Landroid/graphics/drawable/Drawable;
    .param p2, "horizontalTile"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 256
    sget v3, Lcom/android/setupwizardlib/R$id;->suw_layout_decor:I

    invoke-virtual {p0, v3}, Lcom/android/setupwizardlib/SetupWizardLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v2

    .line 257
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lcom/android/setupwizardlib/view/Illustration;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 258
    check-cast v0, Lcom/android/setupwizardlib/view/Illustration;

    .line 259
    .local v0, "illustration":Lcom/android/setupwizardlib/view/Illustration;
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/SetupWizardLayout;->getIllustration(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 260
    .local v1, "illustrationDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/view/Illustration;->setIllustration(Landroid/graphics/drawable/Drawable;)V

    .line 262
    .end local v0    # "illustration":Lcom/android/setupwizardlib/view/Illustration;
    .end local v1    # "illustrationDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method


# virtual methods
.method protected findContainer(I)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "containerId"    # I

    .prologue
    .line 180
    if-nez p1, :cond_0

    .line 181
    sget p1, Lcom/android/setupwizardlib/R$id;->suw_layout_content:I

    .line 183
    :cond_0
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/TemplateLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 214
    const-class v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/HeaderMixin;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 218
    const-class v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;
    .locals 1

    .prologue
    .line 187
    const-class v0, Lcom/android/setupwizardlib/template/NavigationBarMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/NavigationBarMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/NavigationBarMixin;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v0

    return-object v0
.end method

.method public getProgressBarColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 395
    const-class v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getScrollView()Landroid/widget/ScrollView;
    .locals 2

    .prologue
    .line 191
    sget v1, Lcom/android/setupwizardlib/R$id;->suw_bottom_scroll_view:I

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    .line 192
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

.method public hideProgressBar()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 387
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->setProgressBarShown(Z)V

    .line 388
    return-void
.end method

.method public isProgressBarShown()Z
    .locals 1

    .prologue
    .line 362
    const-class v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

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

    .prologue
    .line 172
    if-nez p2, :cond_0

    .line 173
    sget p2, Lcom/android/setupwizardlib/R$layout;->suw_template:I

    .line 175
    :cond_0
    sget v0, Lcom/android/setupwizardlib/R$style;->SuwThemeMaterial_Light:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/setupwizardlib/SetupWizardLayout;->inflateTemplate(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 158
    instance-of v2, p1, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;

    if-nez v2, :cond_0

    .line 159
    const-string v2, "SetupWizardLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring restore instance state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/TemplateLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 168
    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    .line 164
    check-cast v1, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;

    .line 165
    .local v1, "ss":Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;
    invoke-virtual {v1}, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/android/setupwizardlib/TemplateLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 166
    iget-boolean v0, v1, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;->mIsProgressBarShown:Z

    .line 167
    .local v0, "isProgressBarShown":Z
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->setProgressBarShown(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 150
    invoke-super {p0}, Lcom/android/setupwizardlib/TemplateLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 151
    .local v0, "parcelable":Landroid/os/Parcelable;
    new-instance v1, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;

    invoke-direct {v1, v0}, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 152
    .local v1, "ss":Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->isProgressBarShown()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/setupwizardlib/SetupWizardLayout$SavedState;->mIsProgressBarShown:Z

    .line 153
    return-object v1
.end method

.method public requireScrollToBottom()V
    .locals 4

    .prologue
    .line 196
    const-class v2, Lcom/android/setupwizardlib/template/RequireScrollMixin;

    invoke-virtual {p0, v2}, Lcom/android/setupwizardlib/SetupWizardLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v1

    check-cast v1, Lcom/android/setupwizardlib/template/RequireScrollMixin;

    .line 197
    .local v1, "requireScrollMixin":Lcom/android/setupwizardlib/template/RequireScrollMixin;
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v0

    .line 198
    .local v0, "navigationBar":Lcom/android/setupwizardlib/view/NavigationBar;
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v1, v0}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->requireScrollWithNavigationBar(Lcom/android/setupwizardlib/view/NavigationBar;)V

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    const-string v2, "SetupWizardLayout"

    const-string v3, "Cannot require scroll. Navigation bar is null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBackgroundTile(I)V
    .locals 2
    .param p1, "backgroundTile"    # I

    .prologue
    .line 314
    .line 315
    invoke-virtual {p0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 316
    .local v0, "backgroundTileDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->setBackgroundTile(Landroid/graphics/drawable/Drawable;)V

    .line 317
    return-void
.end method

.method public setDecorPaddingTop(I)V
    .locals 4
    .param p1, "paddingTop"    # I

    .prologue
    .line 290
    sget v1, Lcom/android/setupwizardlib/R$id;->suw_layout_decor:I

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    .line 291
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 293
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 292
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 295
    :cond_0
    return-void
.end method

.method public setHeaderText(I)V
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 206
    const-class v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/HeaderMixin;->setText(I)V

    .line 207
    return-void
.end method

.method public setHeaderText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 210
    const-class v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/HeaderMixin;->setText(Ljava/lang/CharSequence;)V

    .line 211
    return-void
.end method

.method public setIllustration(II)V
    .locals 4
    .param p1, "asset"    # I
    .param p2, "horizontalTile"    # I

    .prologue
    .line 247
    sget v3, Lcom/android/setupwizardlib/R$id;->suw_layout_decor:I

    invoke-virtual {p0, v3}, Lcom/android/setupwizardlib/SetupWizardLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v2

    .line 248
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lcom/android/setupwizardlib/view/Illustration;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 249
    check-cast v0, Lcom/android/setupwizardlib/view/Illustration;

    .line 250
    .local v0, "illustration":Lcom/android/setupwizardlib/view/Illustration;
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/SetupWizardLayout;->getIllustration(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 251
    .local v1, "illustrationDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/view/Illustration;->setIllustration(Landroid/graphics/drawable/Drawable;)V

    .line 253
    .end local v0    # "illustration":Lcom/android/setupwizardlib/view/Illustration;
    .end local v1    # "illustrationDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method public setIllustration(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 230
    sget v2, Lcom/android/setupwizardlib/R$id;->suw_layout_decor:I

    invoke-virtual {p0, v2}, Lcom/android/setupwizardlib/SetupWizardLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v1

    .line 231
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lcom/android/setupwizardlib/view/Illustration;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 232
    check-cast v0, Lcom/android/setupwizardlib/view/Illustration;

    .line 233
    .local v0, "illustration":Lcom/android/setupwizardlib/view/Illustration;
    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/view/Illustration;->setIllustration(Landroid/graphics/drawable/Drawable;)V

    .line 235
    .end local v0    # "illustration":Lcom/android/setupwizardlib/view/Illustration;
    :cond_0
    return-void
.end method

.method public setIllustrationAspectRatio(F)V
    .locals 3
    .param p1, "aspectRatio"    # F

    .prologue
    .line 272
    sget v2, Lcom/android/setupwizardlib/R$id;->suw_layout_decor:I

    invoke-virtual {p0, v2}, Lcom/android/setupwizardlib/SetupWizardLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v1

    .line 273
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lcom/android/setupwizardlib/view/Illustration;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 274
    check-cast v0, Lcom/android/setupwizardlib/view/Illustration;

    .line 275
    .local v0, "illustration":Lcom/android/setupwizardlib/view/Illustration;
    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/view/Illustration;->setAspectRatio(F)V

    .line 277
    .end local v0    # "illustration":Lcom/android/setupwizardlib/view/Illustration;
    :cond_0
    return-void
.end method

.method public setLayoutBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 302
    sget v1, Lcom/android/setupwizardlib/R$id;->suw_layout_decor:I

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    .line 303
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 307
    :cond_0
    return-void
.end method

.method public setProgressBarColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 391
    const-class v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->setColor(Landroid/content/res/ColorStateList;)V

    .line 392
    return-void
.end method

.method public setProgressBarShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 371
    const-class v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->setShown(Z)V

    .line 372
    return-void
.end method

.method public showProgressBar()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 379
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->setProgressBarShown(Z)V

    .line 380
    return-void
.end method
