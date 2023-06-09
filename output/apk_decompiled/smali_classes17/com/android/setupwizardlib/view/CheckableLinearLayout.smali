.class public Lcom/android/setupwizardlib/view/CheckableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "CheckableLinearLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private mChecked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->mChecked:Z

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->setFocusable(Z)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->mChecked:Z

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->setFocusable(Z)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->mChecked:Z

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->setFocusable(Z)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->mChecked:Z

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->setFocusable(Z)V

    .line 59
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->mChecked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 4
    .param p1, "extraSpace"    # I

    .prologue
    .line 67
    iget-boolean v2, p0, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->mChecked:Z

    if-eqz v2, :cond_0

    .line 68
    add-int/lit8 v2, p1, 0x1

    invoke-super {p0, v2}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object v1

    .line 69
    .local v1, "superStates":[I
    const/4 v2, 0x1

    new-array v0, v2, [I

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v0, v2

    .line 70
    .local v0, "checked":[I
    invoke-static {v1, v0}, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->mergeDrawableStates([I[I)[I

    move-result-object v2

    .line 72
    .end local v0    # "checked":[I
    .end local v1    # "superStates":[I
    :goto_0
    return-object v2

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object v2

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->mChecked:Z

    .line 79
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->refreshDrawableState()V

    .line 80
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/CheckableLinearLayout;->setChecked(Z)V

    .line 90
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
