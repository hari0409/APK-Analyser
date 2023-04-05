.class public abstract Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;
.super Landroidx/preference/PreferenceFragment;
.source "BaseSearchablePolicyPreferenceFragment.java"

# interfaces
.implements Lcom/afwsamples/testdpc/common/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter;
    }
.end annotation


# static fields
.field private static final DELAY_HIGHLIGHT_DURATION_MILLIS:I = 0x1f4

.field public static final EXTRA_PREFERENCE_KEY:Ljava/lang/String; = "preference_key"

.field private static final SAVE_HIGHLIGHTED_KEY:Ljava/lang/String; = "preference_highlighted"


# instance fields
.field private mAdapter:Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter;

.field protected mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mPreferenceHighlighted:Z

.field private mPreferenceKey:Ljava/lang/String;

.field private final mTag:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment;-><init>()V

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mTag:Ljava/lang/String;

    .line 45
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mTag:Ljava/lang/String;

    .line 49
    return-void
.end method

.method static synthetic access$100(Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;)Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mAdapter:Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter;

    return-object v0
.end method

.method private canUseListViewForHighLighting(Ljava/lang/String;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 157
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    if-nez v3, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v2

    .line 161
    :cond_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    .line 162
    .local v1, "listView":Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 164
    .local v0, "adapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    if-eqz v0, :cond_0

    instance-of v3, v0, Landroidx/preference/PreferenceGroupAdapter;

    if-eqz v3, :cond_0

    .line 165
    check-cast v0, Landroidx/preference/PreferenceGroupAdapter;

    .end local v0    # "adapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    invoke-direct {p0, v0, p1}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->findListPositionFromKey(Landroidx/preference/PreferenceGroupAdapter;Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method private findListPositionFromKey(Landroidx/preference/PreferenceGroupAdapter;Ljava/lang/String;)I
    .locals 5
    .param p1, "adapter"    # Landroidx/preference/PreferenceGroupAdapter;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroupAdapter;->getItemCount()I

    move-result v0

    .line 173
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 174
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 175
    .local v2, "preference":Landroidx/preference/Preference;
    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "preferenceKey":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 180
    .end local v1    # "n":I
    .end local v2    # "preference":Landroidx/preference/Preference;
    .end local v3    # "preferenceKey":Ljava/lang/String;
    :goto_1
    return v1

    .line 173
    .restart local v1    # "n":I
    .restart local v2    # "preference":Landroidx/preference/Preference;
    .restart local v3    # "preferenceKey":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    .end local v2    # "preference":Landroidx/preference/Preference;
    .end local v3    # "preferenceKey":Ljava/lang/String;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private highlightPreference(Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->canUseListViewForHighLighting(Ljava/lang/String;)I

    move-result v0

    .line 141
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 142
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mPreferenceHighlighted:Z

    .line 143
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 144
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$1;-><init>(Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;I)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    :cond_0
    return-void
.end method

.method private highlightPreferenceIfNeeded()V
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mPreferenceHighlighted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->highlightPreference(Ljava/lang/String;)V

    .line 137
    :cond_0
    return-void
.end method


# virtual methods
.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 101
    invoke-static {p4}, Lcom/afwsamples/testdpc/common/Dumpable$$CC;->isQuietMode$$STATIC$$([Ljava/lang/String;)Z

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Z[Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/io/FileDescriptor;Z[Ljava/lang/String;)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "fd"    # Ljava/io/FileDescriptor;
    .param p4, "quietModeOnly"    # Z
    .param p5, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mAdapter:Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter;

    if-nez v0, :cond_0

    .line 109
    const-string v0, "%sno adapter\n"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 113
    :goto_0
    const-string v0, "%smPreferenceKey: %s\n"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v3

    iget-object v2, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 114
    const-string v0, "%smPreferenceHighlighted: %b\n"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v3

    iget-boolean v2, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mPreferenceHighlighted:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 117
    invoke-virtual {p0, p1, p2, p5}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 119
    if-eqz p4, :cond_1

    .line 124
    :goto_1
    return-void

    .line 111
    :cond_0
    const-string v0, "%smHighlightPosition: %d\n"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v3

    iget-object v2, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mAdapter:Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter;

    invoke-static {v2}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter;->access$000(Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_0

    .line 122
    :cond_1
    invoke-super {p0, p1, p3, p2, p5}, Landroidx/preference/PreferenceFragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 131
    return-void
.end method

.method public abstract isAvailable(Landroid/content/Context;)Z
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    if-eqz p1, :cond_0

    .line 55
    const-string v1, "preference_highlighted"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mPreferenceHighlighted:Z

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 58
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 59
    const-string v1, "preference_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    .line 61
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->setHasOptionsMenu(Z)V

    .line 62
    return-void
.end method

.method protected onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1
    .param p1, "preferenceScreen"    # Landroidx/preference/PreferenceScreen;

    .prologue
    .line 95
    new-instance v0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter;

    invoke-direct {v0, p1}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mAdapter:Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter;

    .line 96
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mAdapter:Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment$HighlightablePreferenceGroupAdapter;

    return-object v0
.end method

.method public onCreateLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 90
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 66
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 68
    const v4, 0x7f090026

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 69
    .local v1, "showSearchItem":Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 70
    iget-object v4, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 71
    .local v0, "isShowingSearchResult":Z
    :goto_0
    if-nez v0, :cond_2

    :goto_1
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 73
    .end local v0    # "isShowingSearchResult":Z
    :cond_0
    return-void

    :cond_1
    move v0, v3

    .line 70
    goto :goto_0

    .restart local v0    # "isShowingSearchResult":Z
    :cond_2
    move v2, v3

    .line 71
    goto :goto_1
.end method

.method protected onErrorLog(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Landroidx/preference/PreferenceFragment;->onResume()V

    .line 78
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->highlightPreferenceIfNeeded()V

    .line 79
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 84
    const-string v0, "preference_highlighted"

    iget-boolean v1, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mPreferenceHighlighted:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    return-void
.end method

.method protected onSuccessLog(Ljava/lang/String;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() succeeded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void
.end method

.method protected varargs onSuccessLog(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/BaseSearchablePolicyPreferenceFragment;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() succeeded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void
.end method
