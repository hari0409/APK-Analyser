.class final Landroidx/preference/CollapsiblePreferenceGroupController;
.super Ljava/lang/Object;
.source "CollapsiblePreferenceGroupController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/CollapsiblePreferenceGroupController$ExpandButton;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHasExpandablePreference:Z

.field final mPreferenceGroupAdapter:Landroidx/preference/PreferenceGroupAdapter;


# direct methods
.method constructor <init>(Landroidx/preference/PreferenceGroup;Landroidx/preference/PreferenceGroupAdapter;)V
    .locals 1
    .param p1, "preferenceGroup"    # Landroidx/preference/PreferenceGroup;
    .param p2, "preferenceGroupAdapter"    # Landroidx/preference/PreferenceGroupAdapter;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/preference/CollapsiblePreferenceGroupController;->mHasExpandablePreference:Z

    .line 42
    iput-object p2, p0, Landroidx/preference/CollapsiblePreferenceGroupController;->mPreferenceGroupAdapter:Landroidx/preference/PreferenceGroupAdapter;

    .line 43
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/CollapsiblePreferenceGroupController;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method private createExpandButton(Landroidx/preference/PreferenceGroup;Ljava/util/List;)Landroidx/preference/CollapsiblePreferenceGroupController$ExpandButton;
    .locals 4
    .param p1, "group"    # Landroidx/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            "Ljava/util/List",
            "<",
            "Landroidx/preference/Preference;",
            ">;)",
            "Landroidx/preference/CollapsiblePreferenceGroupController$ExpandButton;"
        }
    .end annotation

    .prologue
    .line 142
    .local p2, "collapsedPreferences":Ljava/util/List;, "Ljava/util/List<Landroidx/preference/Preference;>;"
    new-instance v0, Landroidx/preference/CollapsiblePreferenceGroupController$ExpandButton;

    iget-object v1, p0, Landroidx/preference/CollapsiblePreferenceGroupController;->mContext:Landroid/content/Context;

    .line 143
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getId()J

    move-result-wide v2

    invoke-direct {v0, v1, p2, v2, v3}, Landroidx/preference/CollapsiblePreferenceGroupController$ExpandButton;-><init>(Landroid/content/Context;Ljava/util/List;J)V

    .line 144
    .local v0, "preference":Landroidx/preference/CollapsiblePreferenceGroupController$ExpandButton;
    new-instance v1, Landroidx/preference/CollapsiblePreferenceGroupController$1;

    invoke-direct {v1, p0, p1}, Landroidx/preference/CollapsiblePreferenceGroupController$1;-><init>(Landroidx/preference/CollapsiblePreferenceGroupController;Landroidx/preference/PreferenceGroup;)V

    invoke-virtual {v0, v1}, Landroidx/preference/CollapsiblePreferenceGroupController$ExpandButton;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 157
    return-object v0
.end method

.method private createInnerVisiblePreferencesList(Landroidx/preference/PreferenceGroup;)Ljava/util/List;
    .locals 13
    .param p1, "group"    # Landroidx/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 57
    iput-boolean v3, p0, Landroidx/preference/CollapsiblePreferenceGroupController;->mHasExpandablePreference:Z

    .line 58
    const/4 v9, 0x0

    .line 60
    .local v9, "visiblePreferenceCount":I
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getInitialExpandedChildrenCount()I

    move-result v11

    const v12, 0x7fffffff

    if-eq v11, v12, :cond_0

    const/4 v3, 0x1

    .line 61
    .local v3, "hasExpandablePreference":Z
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v10, "visiblePreferences":Ljava/util/List;, "Ljava/util/List<Landroidx/preference/Preference;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v0, "collapsedPreferences":Ljava/util/List;, "Ljava/util/List<Landroidx/preference/Preference;>;"
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 65
    .local v2, "groupSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_9

    .line 66
    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v8

    .line 68
    .local v8, "preference":Landroidx/preference/Preference;
    invoke-virtual {v8}, Landroidx/preference/Preference;->isVisible()Z

    move-result v11

    if-nez v11, :cond_2

    .line 65
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 72
    :cond_2
    if-eqz v3, :cond_3

    .line 73
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getInitialExpandedChildrenCount()I

    move-result v11

    if-ge v9, v11, :cond_4

    .line 74
    :cond_3
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :goto_2
    instance-of v11, v8, Landroidx/preference/PreferenceGroup;

    if-nez v11, :cond_5

    .line 81
    add-int/lit8 v9, v9, 0x1

    .line 82
    goto :goto_1

    .line 76
    :cond_4
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object v6, v8

    .line 85
    check-cast v6, Landroidx/preference/PreferenceGroup;

    .line 86
    .local v6, "innerGroup":Landroidx/preference/PreferenceGroup;
    invoke-virtual {v6}, Landroidx/preference/PreferenceGroup;->isOnSameScreenAsChildren()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 91
    invoke-direct {p0, v6}, Landroidx/preference/CollapsiblePreferenceGroupController;->createInnerVisiblePreferencesList(Landroidx/preference/PreferenceGroup;)Ljava/util/List;

    move-result-object v7

    .line 92
    .local v7, "innerList":Ljava/util/List;, "Ljava/util/List<Landroidx/preference/Preference;>;"
    if-eqz v3, :cond_6

    iget-boolean v11, p0, Landroidx/preference/CollapsiblePreferenceGroupController;->mHasExpandablePreference:Z

    if-eqz v11, :cond_6

    .line 93
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Nested expand buttons are not supported!"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 96
    :cond_6
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/preference/Preference;

    .line 97
    .local v5, "inner":Landroidx/preference/Preference;
    if-eqz v3, :cond_7

    .line 98
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getInitialExpandedChildrenCount()I

    move-result v12

    if-ge v9, v12, :cond_8

    .line 99
    :cond_7
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :goto_4
    add-int/lit8 v9, v9, 0x1

    .line 104
    goto :goto_3

    .line 101
    :cond_8
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 109
    .end local v5    # "inner":Landroidx/preference/Preference;
    .end local v6    # "innerGroup":Landroidx/preference/PreferenceGroup;
    .end local v7    # "innerList":Ljava/util/List;, "Ljava/util/List<Landroidx/preference/Preference;>;"
    .end local v8    # "preference":Landroidx/preference/Preference;
    :cond_9
    if-eqz v3, :cond_a

    .line 110
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getInitialExpandedChildrenCount()I

    move-result v11

    if-le v9, v11, :cond_a

    .line 111
    invoke-direct {p0, p1, v0}, Landroidx/preference/CollapsiblePreferenceGroupController;->createExpandButton(Landroidx/preference/PreferenceGroup;Ljava/util/List;)Landroidx/preference/CollapsiblePreferenceGroupController$ExpandButton;

    move-result-object v1

    .line 112
    .local v1, "expandButton":Landroidx/preference/CollapsiblePreferenceGroupController$ExpandButton;
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    .end local v1    # "expandButton":Landroidx/preference/CollapsiblePreferenceGroupController$ExpandButton;
    :cond_a
    iget-boolean v11, p0, Landroidx/preference/CollapsiblePreferenceGroupController;->mHasExpandablePreference:Z

    or-int/2addr v11, v3

    iput-boolean v11, p0, Landroidx/preference/CollapsiblePreferenceGroupController;->mHasExpandablePreference:Z

    .line 115
    return-object v10
.end method


# virtual methods
.method public createVisiblePreferencesList(Landroidx/preference/PreferenceGroup;)Ljava/util/List;
    .locals 1
    .param p1, "group"    # Landroidx/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroidx/preference/CollapsiblePreferenceGroupController;->createInnerVisiblePreferencesList(Landroidx/preference/PreferenceGroup;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onPreferenceVisibilityChange(Landroidx/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroidx/preference/Preference;

    .prologue
    .line 125
    instance-of v0, p1, Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/preference/CollapsiblePreferenceGroupController;->mHasExpandablePreference:Z

    if-eqz v0, :cond_1

    .line 134
    :cond_0
    iget-object v0, p0, Landroidx/preference/CollapsiblePreferenceGroupController;->mPreferenceGroupAdapter:Landroidx/preference/PreferenceGroupAdapter;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroupAdapter;->onPreferenceHierarchyChange(Landroidx/preference/Preference;)V

    .line 135
    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
