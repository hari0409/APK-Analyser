.class Landroidx/preference/CollapsiblePreferenceGroupController$ExpandButton;
.super Landroidx/preference/Preference;
.source "CollapsiblePreferenceGroupController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/CollapsiblePreferenceGroupController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExpandButton"
.end annotation


# instance fields
.field private mId:J


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;J)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "parentId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroidx/preference/Preference;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p2, "collapsedPreferences":Ljava/util/List;, "Ljava/util/List<Landroidx/preference/Preference;>;"
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 169
    invoke-direct {p0}, Landroidx/preference/CollapsiblePreferenceGroupController$ExpandButton;->initLayout()V

    .line 170
    invoke-direct {p0, p2}, Landroidx/preference/CollapsiblePreferenceGroupController$ExpandButton;->setSummary(Ljava/util/List;)V

    .line 174
    const-wide/32 v0, 0xf4240

    add-long/2addr v0, p3

    iput-wide v0, p0, Landroidx/preference/CollapsiblePreferenceGroupController$ExpandButton;->mId:J

    .line 175
    return-void
.end method

.method private initLayout()V
    .locals 1

    .prologue
    .line 178
    sget v0, Landroidx/preference/R$layout;->expand_button:I

    invoke-virtual {p0, v0}, Landroidx/preference/CollapsiblePreferenceGroupController$ExpandButton;->setLayoutResource(I)V

    .line 179
    sget v0, Landroidx/preference/R$drawable;->ic_arrow_down_24dp:I

    invoke-virtual {p0, v0}, Landroidx/preference/CollapsiblePreferenceGroupController$ExpandButton;->setIcon(I)V

    .line 180
    sget v0, Landroidx/preference/R$string;->expand_button_title:I

    invoke-virtual {p0, v0}, Landroidx/preference/CollapsiblePreferenceGroupController$ExpandButton;->setTitle(I)V

    .line 182
    const/16 v0, 0x3e7

    invoke-virtual {p0, v0}, Landroidx/preference/CollapsiblePreferenceGroupController$ExpandButton;->setOrder(I)V

    .line 183
    return-void
.end method

.method private setSummary(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/preference/Preference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "collapsedPreferences":Ljava/util/List;, "Ljava/util/List<Landroidx/preference/Preference;>;"
    const/4 v2, 0x0

    .line 192
    .local v2, "summary":Ljava/lang/CharSequence;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v0, "parents":Ljava/util/List;, "Ljava/util/List<Landroidx/preference/PreferenceGroup;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 195
    .local v1, "preference":Landroidx/preference/Preference;
    invoke-virtual {v1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 196
    .local v3, "title":Ljava/lang/CharSequence;
    instance-of v4, v1, Landroidx/preference/PreferenceGroup;

    if-eqz v4, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v1

    .line 197
    check-cast v4, Landroidx/preference/PreferenceGroup;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_1
    invoke-virtual {v1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 200
    instance-of v4, v1, Landroidx/preference/PreferenceGroup;

    if-eqz v4, :cond_0

    .line 201
    check-cast v1, Landroidx/preference/PreferenceGroup;

    .end local v1    # "preference":Landroidx/preference/Preference;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 205
    .restart local v1    # "preference":Landroidx/preference/Preference;
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 206
    if-nez v2, :cond_3

    .line 207
    move-object v2, v3

    goto :goto_0

    .line 209
    :cond_3
    invoke-virtual {p0}, Landroidx/preference/CollapsiblePreferenceGroupController$ExpandButton;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v6, Landroidx/preference/R$string;->summary_collapsed_preference_list:I

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 214
    .end local v1    # "preference":Landroidx/preference/Preference;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_4
    invoke-virtual {p0, v2}, Landroidx/preference/CollapsiblePreferenceGroupController$ExpandButton;->setSummary(Ljava/lang/CharSequence;)V

    .line 215
    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 225
    iget-wide v0, p0, Landroidx/preference/CollapsiblePreferenceGroupController$ExpandButton;->mId:J

    return-wide v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroidx/preference/PreferenceViewHolder;

    .prologue
    .line 219
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 220
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 221
    return-void
.end method
