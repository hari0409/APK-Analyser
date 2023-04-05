.class Landroidx/preference/PreferenceFragmentCompat$3;
.super Ljava/lang/Object;
.source "PreferenceFragmentCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/preference/PreferenceFragmentCompat;->scrollToPreferenceInternal(Landroidx/preference/Preference;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/preference/PreferenceFragmentCompat;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$preference:Landroidx/preference/Preference;


# direct methods
.method constructor <init>(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/preference/PreferenceFragmentCompat;

    .prologue
    .line 680
    iput-object p1, p0, Landroidx/preference/PreferenceFragmentCompat$3;->this$0:Landroidx/preference/PreferenceFragmentCompat;

    iput-object p2, p0, Landroidx/preference/PreferenceFragmentCompat$3;->val$preference:Landroidx/preference/Preference;

    iput-object p3, p0, Landroidx/preference/PreferenceFragmentCompat$3;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 683
    iget-object v2, p0, Landroidx/preference/PreferenceFragmentCompat$3;->this$0:Landroidx/preference/PreferenceFragmentCompat;

    iget-object v2, v2, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 684
    .local v0, "adapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    instance-of v2, v0, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;

    if-nez v2, :cond_0

    .line 686
    if-eqz v0, :cond_1

    .line 687
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Adapter must implement PreferencePositionCallback"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 695
    :cond_0
    iget-object v2, p0, Landroidx/preference/PreferenceFragmentCompat$3;->val$preference:Landroidx/preference/Preference;

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 696
    check-cast v2, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;

    iget-object v3, p0, Landroidx/preference/PreferenceFragmentCompat$3;->val$preference:Landroidx/preference/Preference;

    .line 697
    invoke-interface {v2, v3}, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Landroidx/preference/Preference;)I

    move-result v1

    .line 702
    .local v1, "position":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 703
    iget-object v2, p0, Landroidx/preference/PreferenceFragmentCompat$3;->this$0:Landroidx/preference/PreferenceFragmentCompat;

    iget-object v2, v2, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 709
    .end local v1    # "position":I
    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v2, v0

    .line 699
    check-cast v2, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;

    iget-object v3, p0, Landroidx/preference/PreferenceFragmentCompat$3;->val$key:Ljava/lang/String;

    .line 700
    invoke-interface {v2, v3}, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    move-result v1

    .restart local v1    # "position":I
    goto :goto_0

    .line 706
    :cond_3
    new-instance v2, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;

    iget-object v3, p0, Landroidx/preference/PreferenceFragmentCompat$3;->this$0:Landroidx/preference/PreferenceFragmentCompat;

    iget-object v3, v3, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Landroidx/preference/PreferenceFragmentCompat$3;->val$preference:Landroidx/preference/Preference;

    iget-object v5, p0, Landroidx/preference/PreferenceFragmentCompat$3;->val$key:Ljava/lang/String;

    invoke-direct {v2, v0, v3, v4, v5}, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    goto :goto_1
.end method
