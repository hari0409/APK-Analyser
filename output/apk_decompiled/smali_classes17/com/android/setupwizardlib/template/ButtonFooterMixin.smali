.class public Lcom/android/setupwizardlib/template/ButtonFooterMixin;
.super Ljava/lang/Object;
.source "ButtonFooterMixin.java"

# interfaces
.implements Lcom/android/setupwizardlib/template/Mixin;


# instance fields
.field private mButtonContainer:Landroid/widget/LinearLayout;

.field private final mContext:Landroid/content/Context;

.field private final mFooterStub:Landroid/view/ViewStub;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/TemplateLayout;)V
    .locals 1
    .param p1, "layout"    # Lcom/android/setupwizardlib/TemplateLayout;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Lcom/android/setupwizardlib/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/template/ButtonFooterMixin;->mContext:Landroid/content/Context;

    .line 57
    sget v0, Lcom/android/setupwizardlib/R$id;->suw_layout_footer:I

    invoke-virtual {p1, v0}, Lcom/android/setupwizardlib/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/setupwizardlib/template/ButtonFooterMixin;->mFooterStub:Landroid/view/ViewStub;

    .line 58
    return-void
.end method

.method private createThemedButton(Landroid/content/Context;I)Landroid/widget/Button;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 170
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 171
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/android/setupwizardlib/R$layout;->suw_button:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    return-object v1
.end method

.method private ensureFooterInflated()Landroid/widget/LinearLayout;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ButtonFooterMixin;->mButtonContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ButtonFooterMixin;->mFooterStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Footer stub is not found in this template"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ButtonFooterMixin;->mFooterStub:Landroid/view/ViewStub;

    sget v1, Lcom/android/setupwizardlib/R$layout;->suw_glif_footer_button_bar:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 161
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ButtonFooterMixin;->mFooterStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/setupwizardlib/template/ButtonFooterMixin;->mButtonContainer:Landroid/widget/LinearLayout;

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ButtonFooterMixin;->mButtonContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public addButton(II)Landroid/widget/Button;
    .locals 2
    .param p1, "text"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2, "theme"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 89
    iget-object v1, p0, Lcom/android/setupwizardlib/template/ButtonFooterMixin;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p2}, Lcom/android/setupwizardlib/template/ButtonFooterMixin;->createThemedButton(Landroid/content/Context;I)Landroid/widget/Button;

    move-result-object v0

    .line 90
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 91
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/template/ButtonFooterMixin;->addButton(Landroid/widget/Button;)Landroid/widget/Button;

    move-result-object v1

    return-object v1
.end method

.method public addButton(Landroid/widget/Button;)Landroid/widget/Button;
    .locals 1
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/setupwizardlib/template/ButtonFooterMixin;->ensureFooterInflated()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 102
    .local v0, "buttonContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 103
    return-object p1
.end method

.method public addButton(Ljava/lang/CharSequence;I)Landroid/widget/Button;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "theme"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 72
    iget-object v1, p0, Lcom/android/setupwizardlib/template/ButtonFooterMixin;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p2}, Lcom/android/setupwizardlib/template/ButtonFooterMixin;->createThemedButton(Landroid/content/Context;I)Landroid/widget/Button;

    move-result-object v0

    .line 73
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/template/ButtonFooterMixin;->addButton(Landroid/widget/Button;)Landroid/widget/Button;

    move-result-object v1

    return-object v1
.end method

.method public addSpace()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 114
    invoke-direct {p0}, Lcom/android/setupwizardlib/template/ButtonFooterMixin;->ensureFooterInflated()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 115
    .local v0, "buttonContainer":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/view/View;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 116
    .local v1, "space":Landroid/view/View;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 118
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 119
    return-object v1
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ButtonFooterMixin;->mButtonContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ButtonFooterMixin;->mButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 152
    :cond_0
    return-void
.end method

.method public removeButton(Landroid/widget/Button;)V
    .locals 1
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ButtonFooterMixin;->mButtonContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ButtonFooterMixin;->mButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 131
    :cond_0
    return-void
.end method

.method public removeSpace(Landroid/view/View;)V
    .locals 1
    .param p1, "space"    # Landroid/view/View;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ButtonFooterMixin;->mButtonContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ButtonFooterMixin;->mButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 142
    :cond_0
    return-void
.end method
