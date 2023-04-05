.class Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate$1;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "PreferenceRecyclerViewAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;


# direct methods
.method constructor <init>(Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;

    .prologue
    .line 51
    iput-object p1, p0, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate$1;->this$0:Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 5
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 54
    iget-object v4, p0, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate$1;->this$0:Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;

    iget-object v4, v4, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;->mDefaultItemDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-virtual {v4, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 55
    iget-object v4, p0, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate$1;->this$0:Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;

    iget-object v4, v4, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    .line 57
    .local v1, "position":I
    iget-object v4, p0, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate$1;->this$0:Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;

    iget-object v4, v4, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 58
    .local v0, "adapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    instance-of v4, v0, Landroidx/preference/PreferenceGroupAdapter;

    if-nez v4, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, v0

    .line 62
    check-cast v3, Landroidx/preference/PreferenceGroupAdapter;

    .line 63
    .local v3, "preferenceGroupAdapter":Landroidx/preference/PreferenceGroupAdapter;
    invoke-virtual {v3, v1}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 64
    .local v2, "preference":Landroidx/preference/Preference;
    if-eqz v2, :cond_0

    .line 68
    invoke-virtual {v2, p2}, Landroidx/preference/Preference;->onInitializeAccessibilityNodeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    goto :goto_0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 74
    iget-object v0, p0, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate$1;->this$0:Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;->mDefaultItemDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
