.class public Lcom/android/setupwizardlib/template/ListMixin;
.super Ljava/lang/Object;
.source "ListMixin.java"

# interfaces
.implements Lcom/android/setupwizardlib/template/Mixin;


# instance fields
.field private mDefaultDivider:Landroid/graphics/drawable/Drawable;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerInsetEnd:I

.field private mDividerInsetStart:I

.field private mListView:Landroid/widget/ListView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/TemplateLayout;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "layout"    # Lcom/android/setupwizardlib/TemplateLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/setupwizardlib/template/ListMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    .line 63
    invoke-virtual {p1}, Lcom/android/setupwizardlib/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 64
    .local v1, "context":Landroid/content/Context;
    sget-object v7, Lcom/android/setupwizardlib/R$styleable;->SuwListMixin:[I

    invoke-virtual {v1, p2, v7, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v7, Lcom/android/setupwizardlib/R$styleable;->SuwListMixin_android_entries:I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 68
    .local v5, "entries":I
    if-eqz v5, :cond_0

    .line 69
    new-instance v7, Lcom/android/setupwizardlib/items/ItemInflater;

    invoke-direct {v7, v1}, Lcom/android/setupwizardlib/items/ItemInflater;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-virtual {v7, v5}, Lcom/android/setupwizardlib/items/ItemInflater;->inflate(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/setupwizardlib/items/ItemGroup;

    .line 71
    .local v6, "inflated":Lcom/android/setupwizardlib/items/ItemGroup;
    new-instance v7, Lcom/android/setupwizardlib/items/ItemAdapter;

    invoke-direct {v7, v6}, Lcom/android/setupwizardlib/items/ItemAdapter;-><init>(Lcom/android/setupwizardlib/items/ItemHierarchy;)V

    invoke-virtual {p0, v7}, Lcom/android/setupwizardlib/template/ListMixin;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    .end local v6    # "inflated":Lcom/android/setupwizardlib/items/ItemGroup;
    :cond_0
    sget v7, Lcom/android/setupwizardlib/R$styleable;->SuwListMixin_suwDividerInset:I

    .line 74
    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 75
    .local v2, "dividerInset":I
    if-eq v2, v9, :cond_1

    .line 76
    invoke-virtual {p0, v2}, Lcom/android/setupwizardlib/template/ListMixin;->setDividerInset(I)V

    .line 84
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    return-void

    .line 78
    :cond_1
    sget v7, Lcom/android/setupwizardlib/R$styleable;->SuwListMixin_suwDividerInsetStart:I

    .line 79
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 80
    .local v4, "dividerInsetStart":I
    sget v7, Lcom/android/setupwizardlib/R$styleable;->SuwListMixin_suwDividerInsetEnd:I

    .line 81
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 82
    .local v3, "dividerInsetEnd":I
    invoke-virtual {p0, v4, v3}, Lcom/android/setupwizardlib/template/ListMixin;->setDividerInsets(II)V

    goto :goto_0
.end method

.method private getListViewInternal()Landroid/widget/ListView;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 99
    iget-object v1, p0, Lcom/android/setupwizardlib/template/ListMixin;->mListView:Landroid/widget/ListView;

    if-nez v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/android/setupwizardlib/template/ListMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Lcom/android/setupwizardlib/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    .line 101
    .local v0, "list":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 102
    check-cast v0, Landroid/widget/ListView;

    .end local v0    # "list":Landroid/view/View;
    iput-object v0, p0, Lcom/android/setupwizardlib/template/ListMixin;->mListView:Landroid/widget/ListView;

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/android/setupwizardlib/template/ListMixin;->mListView:Landroid/widget/ListView;

    return-object v1
.end method

.method private updateDivider()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 195
    invoke-direct {p0}, Lcom/android/setupwizardlib/template/ListMixin;->getListViewInternal()Landroid/widget/ListView;

    move-result-object v6

    .line 196
    .local v6, "listView":Landroid/widget/ListView;
    if-nez v6, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    const/4 v7, 0x1

    .line 200
    .local v7, "shouldUpdate":Z
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 201
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ListMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/TemplateLayout;->isLayoutDirectionResolved()Z

    move-result v7

    .line 203
    :cond_2
    if-eqz v7, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ListMixin;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 205
    invoke-virtual {v6}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/template/ListMixin;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    .line 207
    :cond_3
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ListMixin;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/setupwizardlib/template/ListMixin;->mDividerInsetStart:I

    iget v3, p0, Lcom/android/setupwizardlib/template/ListMixin;->mDividerInsetEnd:I

    iget-object v5, p0, Lcom/android/setupwizardlib/template/ListMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    move v4, v2

    invoke-static/range {v0 .. v5}, Lcom/android/setupwizardlib/util/DrawableLayoutDirectionHelper;->createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIILandroid/view/View;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/template/ListMixin;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 214
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ListMixin;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 3

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/setupwizardlib/template/ListMixin;->getListViewInternal()Landroid/widget/ListView;

    move-result-object v1

    .line 128
    .local v1, "listView":Landroid/widget/ListView;
    if-eqz v1, :cond_1

    .line 129
    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 130
    .local v0, "adapter":Landroid/widget/ListAdapter;
    instance-of v2, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v2, :cond_0

    .line 131
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 135
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ListMixin;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerInset()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/ListMixin;->getDividerInsetStart()I

    move-result v0

    return v0
.end method

.method public getDividerInsetEnd()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/android/setupwizardlib/template/ListMixin;->mDividerInsetEnd:I

    return v0
.end method

.method public getDividerInsetStart()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/android/setupwizardlib/template/ListMixin;->mDividerInsetStart:I

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/setupwizardlib/template/ListMixin;->getListViewInternal()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public onLayout()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ListMixin;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/android/setupwizardlib/template/ListMixin;->updateDivider()V

    .line 118
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/setupwizardlib/template/ListMixin;->getListViewInternal()Landroid/widget/ListView;

    move-result-object v0

    .line 143
    .local v0, "listView":Landroid/widget/ListView;
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    :cond_0
    return-void
.end method

.method public setDividerInset(I)V
    .locals 1
    .param p1, "inset"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/setupwizardlib/template/ListMixin;->setDividerInsets(II)V

    .line 154
    return-void
.end method

.method public setDividerInsets(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 166
    iput p1, p0, Lcom/android/setupwizardlib/template/ListMixin;->mDividerInsetStart:I

    .line 167
    iput p2, p0, Lcom/android/setupwizardlib/template/ListMixin;->mDividerInsetEnd:I

    .line 168
    invoke-direct {p0}, Lcom/android/setupwizardlib/template/ListMixin;->updateDivider()V

    .line 169
    return-void
.end method
