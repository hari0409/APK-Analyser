.class public abstract Lcom/afwsamples/testdpc/common/ProfileOrParentFragment$Container;
.super Landroid/app/Fragment;
.source "ProfileOrParentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Container"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getContentClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/afwsamples/testdpc/common/ProfileOrParentFragment;",
            ">;"
        }
    .end annotation
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment$Container;->setRetainInstance(Z)V

    .line 60
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 65
    new-instance v2, Landroidx/legacy/app/FragmentTabHost;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment$Container;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Landroidx/legacy/app/FragmentTabHost;-><init>(Landroid/content/Context;)V

    .line 66
    .local v2, "tabHost":Landroidx/legacy/app/FragmentTabHost;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment$Container;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment$Container;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getId()I

    move-result v7

    invoke-virtual {v2, v5, v6, v7}, Landroidx/legacy/app/FragmentTabHost;->setup(Landroid/content/Context;Landroid/app/FragmentManager;I)V

    .line 69
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment$Container;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/afwsamples/testdpc/common/Util;->isManagedProfileOwner(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget v5, Lcom/afwsamples/testdpc/common/Util;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_1

    move v1, v3

    .line 73
    .local v1, "showDualTabs":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    .local v0, "parentArgs":Landroid/os/Bundle;
    const-string v5, "com.afwsamples.testdpc.extra.PARENT"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    const-string v5, "parent"

    .line 77
    invoke-virtual {v2, v5}, Landroidx/legacy/app/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    const v6, 0x7f0f0252

    .line 78
    invoke-virtual {p0, v6}, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment$Container;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 77
    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    .line 79
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment$Container;->getContentClass()Ljava/lang/Class;

    move-result-object v6

    .line 76
    invoke-virtual {v2, v5, v6, v0}, Landroidx/legacy/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 83
    .end local v0    # "parentArgs":Landroid/os/Bundle;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 84
    .restart local v0    # "parentArgs":Landroid/os/Bundle;
    const-string v5, "com.afwsamples.testdpc.extra.PARENT"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    const-string v5, "profile"

    .line 86
    invoke-virtual {v2, v5}, Landroidx/legacy/app/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    const v6, 0x7f0f03a3

    invoke-virtual {p0, v6}, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment$Container;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    .line 87
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/ProfileOrParentFragment$Container;->getContentClass()Ljava/lang/Class;

    move-result-object v6

    .line 85
    invoke-virtual {v2, v5, v6, v0}, Landroidx/legacy/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 89
    if-eqz v1, :cond_2

    .line 91
    invoke-virtual {v2, v3}, Landroidx/legacy/app/FragmentTabHost;->setCurrentTab(I)V

    .line 97
    :goto_1
    return-object v2

    .end local v0    # "parentArgs":Landroid/os/Bundle;
    .end local v1    # "showDualTabs":Z
    :cond_1
    move v1, v4

    .line 69
    goto :goto_0

    .line 94
    .restart local v0    # "parentArgs":Landroid/os/Bundle;
    .restart local v1    # "showDualTabs":Z
    :cond_2
    invoke-virtual {v2, v4}, Landroidx/legacy/app/FragmentTabHost;->setCurrentTab(I)V

    .line 95
    invoke-virtual {v2}, Landroidx/legacy/app/FragmentTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->setVisibility(I)V

    goto :goto_1
.end method
