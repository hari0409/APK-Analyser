.class public Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter;
.super Landroidx/preference/PreferenceGroupAdapter;
.source "BaseSearchablePolicyPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HighlightablePreferenceGroupAdapter"
.end annotation


# instance fields
.field private mHighlightPosition:I


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceGroup;)V
    .locals 1
    .param p1, "preferenceGroup"    # Landroidx/preference/PreferenceGroup;

    .prologue
    .line 190
    invoke-direct {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;)V

    .line 187
    const/4 v0, -0x1

    iput v0, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    .line 191
    return-void
.end method

.method static synthetic access$000(Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter;

    .prologue
    .line 186
    iget v0, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    return v0
.end method


# virtual methods
.method public highlight(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 194
    iput p1, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    .line 195
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter;->notifyDataSetChanged()V

    .line 196
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V
    .locals 6
    .param p1, "holder"    # Landroidx/preference/PreferenceViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 200
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceGroupAdapter;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V

    .line 201
    iget v3, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    if-ne p2, v3, :cond_1

    .line 202
    iget-object v2, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    .line 203
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 204
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 205
    .local v0, "centerX":I
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 206
    .local v1, "centerY":I
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    int-to-float v4, v0

    int-to-float v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 208
    .end local v0    # "centerX":I
    .end local v1    # "centerY":I
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 209
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 210
    const/4 v3, -0x1

    iput v3, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter;->mHighlightPosition:I

    .line 212
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 186
    check-cast p1, Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V

    return-void
.end method
