.class public abstract Landroidx/preference/PreferenceFragmentCompat;
.super Landroidx/fragment/app/Fragment;
.source "PreferenceFragmentCompat.java"

# interfaces
.implements Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroidx/preference/PreferenceManager$OnDisplayPreferenceDialogListener;
.implements Landroidx/preference/PreferenceManager$OnNavigateToScreenListener;
.implements Landroidx/preference/DialogPreference$TargetFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;,
        Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;,
        Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;,
        Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartScreenCallback;,
        Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;
    }
.end annotation


# static fields
.field public static final ARG_PREFERENCE_ROOT:Ljava/lang/String; = "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

.field private static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "androidx.preference.PreferenceFragment.DIALOG"

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final PREFERENCES_TAG:Ljava/lang/String; = "android:preferences"


# instance fields
.field private final mDividerDecoration:Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;

.field private mHandler:Landroid/os/Handler;

.field private mHavePrefs:Z

.field private mInitDone:Z

.field private mLayoutResId:I

.field mList:Landroidx/recyclerview/widget/RecyclerView;

.field private mPreferenceManager:Landroidx/preference/PreferenceManager;

.field private final mRequestFocus:Ljava/lang/Runnable;

.field private mSelectPreferenceRunnable:Ljava/lang/Runnable;

.field private mStyledContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 135
    sget v0, Landroidx/preference/R$layout;->preference_list_fragment:I

    iput v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mLayoutResId:I

    .line 137
    new-instance v0, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;

    invoke-direct {v0, p0}, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;-><init>(Landroidx/preference/PreferenceFragmentCompat;)V

    iput-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mDividerDecoration:Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;

    .line 140
    new-instance v0, Landroidx/preference/PreferenceFragmentCompat$1;

    invoke-direct {v0, p0}, Landroidx/preference/PreferenceFragmentCompat$1;-><init>(Landroidx/preference/PreferenceFragmentCompat;)V

    iput-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    .line 152
    new-instance v0, Landroidx/preference/PreferenceFragmentCompat$2;

    invoke-direct {v0, p0}, Landroidx/preference/PreferenceFragmentCompat$2;-><init>(Landroidx/preference/PreferenceFragmentCompat;)V

    iput-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mRequestFocus:Ljava/lang/Runnable;

    .line 778
    return-void
.end method

.method private postBindPreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 527
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    :goto_0
    return-void

    .line 528
    :cond_0
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private requirePreferenceManager()V
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 522
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :cond_0
    return-void
.end method

.method private scrollToPreferenceInternal(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 2
    .param p1, "preference"    # Landroidx/preference/Preference;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 680
    new-instance v0, Landroidx/preference/PreferenceFragmentCompat$3;

    invoke-direct {v0, p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat$3;-><init>(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 711
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_0

    .line 712
    iput-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    .line 716
    :goto_0
    return-void

    .line 714
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private unbindPreferences()V
    .locals 1

    .prologue
    .line 542
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 543
    .local v0, "preferenceScreen":Landroidx/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->onDetached()V

    .line 546
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->onUnbindPreferences()V

    .line 547
    return-void
.end method


# virtual methods
.method public addPreferencesFromResource(I)V
    .locals 3
    .param p1, "preferencesResId"    # I
        .annotation build Landroidx/annotation/XmlRes;
        .end annotation
    .end param

    .prologue
    .line 427
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;->requirePreferenceManager()V

    .line 429
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    iget-object v1, p0, Landroidx/preference/PreferenceFragmentCompat;->mStyledContext:Landroid/content/Context;

    .line 430
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    .line 429
    invoke-virtual {v0, v1, p1, v2}, Landroidx/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 431
    return-void
.end method

.method bindPreferences()V
    .locals 3

    .prologue
    .line 533
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 534
    .local v0, "preferenceScreen":Landroidx/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 536
    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->onAttached()V

    .line 538
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->onBindPreferences()V

    .line 539
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;

    .prologue
    .line 514
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 515
    const/4 v0, 0x0

    .line 517
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public getCallbackFragment()Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 668
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getListView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public getPreferenceManager()Landroidx/preference/PreferenceManager;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Landroidx/preference/PreferenceScreen;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected onBindPreferences()V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 552
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 210
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 211
    .local v3, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget v5, Landroidx/preference/R$attr;->preferenceTheme:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 212
    iget v2, v3, Landroid/util/TypedValue;->resourceId:I

    .line 213
    .local v2, "theme":I
    if-nez v2, :cond_0

    .line 215
    sget v2, Landroidx/preference/R$style;->PreferenceThemeOverlay:I

    .line 217
    :cond_0
    new-instance v4, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Landroidx/preference/PreferenceFragmentCompat;->mStyledContext:Landroid/content/Context;

    .line 219
    new-instance v4, Landroidx/preference/PreferenceManager;

    iget-object v5, p0, Landroidx/preference/PreferenceFragmentCompat;->mStyledContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroidx/preference/PreferenceManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 220
    iget-object v4, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v4, p0}, Landroidx/preference/PreferenceManager;->setOnNavigateToScreenListener(Landroidx/preference/PreferenceManager$OnNavigateToScreenListener;)V

    .line 221
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 223
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "rootKey":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1, v1}, Landroidx/preference/PreferenceFragmentCompat;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 229
    return-void

    .line 226
    .end local v1    # "rootKey":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "rootKey":Ljava/lang/String;
    goto :goto_0
.end method

.method protected onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1
    .param p1, "preferenceScreen"    # Landroidx/preference/PreferenceScreen;

    .prologue
    .line 614
    new-instance v0, Landroidx/preference/PreferenceGroupAdapter;

    invoke-direct {v0, p1}, Landroidx/preference/PreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;)V

    return-object v0
.end method

.method public onCreateLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 604
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public abstract onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 580
    iget-object v3, p0, Landroidx/preference/PreferenceFragmentCompat;->mStyledContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.type.automotive"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 582
    sget v3, Landroidx/preference/R$id;->recycler_view:I

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 583
    .local v0, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v0, :cond_0

    move-object v1, v0

    .end local v0    # "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, v0

    .line 594
    .end local v1    # "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    .local v2, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    :goto_0
    return-object v2

    .line 587
    .end local v2    # "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    :cond_0
    sget v3, Landroidx/preference/R$layout;->preference_recyclerview:I

    const/4 v4, 0x0

    .line 588
    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 590
    .restart local v0    # "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->onCreateLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 591
    new-instance v3, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;

    invoke-direct {v3, v0}, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;)V

    move-object v1, v0

    .end local v0    # "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    .restart local v1    # "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, v0

    .line 594
    .end local v1    # "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    .restart local v2    # "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 15
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 247
    iget-object v10, p0, Landroidx/preference/PreferenceFragmentCompat;->mStyledContext:Landroid/content/Context;

    const/4 v11, 0x0

    sget-object v12, Landroidx/preference/R$styleable;->PreferenceFragmentCompat:[I

    sget v13, Landroidx/preference/R$attr;->preferenceFragmentCompatStyle:I

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 252
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v10, Landroidx/preference/R$styleable;->PreferenceFragmentCompat_android_layout:I

    iget v11, p0, Landroidx/preference/PreferenceFragmentCompat;->mLayoutResId:I

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, p0, Landroidx/preference/PreferenceFragmentCompat;->mLayoutResId:I

    .line 255
    sget v10, Landroidx/preference/R$styleable;->PreferenceFragmentCompat_android_divider:I

    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 257
    .local v3, "divider":Landroid/graphics/drawable/Drawable;
    sget v10, Landroidx/preference/R$styleable;->PreferenceFragmentCompat_android_dividerHeight:I

    const/4 v11, -0x1

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 259
    .local v4, "dividerHeight":I
    sget v10, Landroidx/preference/R$styleable;->PreferenceFragmentCompat_allowDividerAfterLastItem:I

    const/4 v11, 0x1

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 262
    .local v2, "allowDividerAfterLastItem":Z
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 264
    iget-object v10, p0, Landroidx/preference/PreferenceFragmentCompat;->mStyledContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 266
    .local v8, "themedInflater":Landroid/view/LayoutInflater;
    iget v10, p0, Landroidx/preference/PreferenceFragmentCompat;->mLayoutResId:I

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v8, v10, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 268
    .local v9, "view":Landroid/view/View;
    const v10, 0x102003f

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 269
    .local v7, "rawListContainer":Landroid/view/View;
    instance-of v10, v7, Landroid/view/ViewGroup;

    if-nez v10, :cond_0

    .line 270
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "Content has view with id attribute \'android.R.id.list_container\' that is not a ViewGroup class"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_0
    move-object v5, v7

    .line 274
    check-cast v5, Landroid/view/ViewGroup;

    .line 276
    .local v5, "listContainer":Landroid/view/ViewGroup;
    move-object/from16 v0, p3

    invoke-virtual {p0, v8, v5, v0}, Landroidx/preference/PreferenceFragmentCompat;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v6

    .line 278
    .local v6, "listView":Landroidx/recyclerview/widget/RecyclerView;
    if-nez v6, :cond_1

    .line 279
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "Could not create RecyclerView"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 282
    :cond_1
    iput-object v6, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 284
    iget-object v10, p0, Landroidx/preference/PreferenceFragmentCompat;->mDividerDecoration:Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;

    invoke-virtual {v6, v10}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 285
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 286
    const/4 v10, -0x1

    if-eq v4, v10, :cond_2

    .line 287
    invoke-virtual {p0, v4}, Landroidx/preference/PreferenceFragmentCompat;->setDividerHeight(I)V

    .line 289
    :cond_2
    iget-object v10, p0, Landroidx/preference/PreferenceFragmentCompat;->mDividerDecoration:Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;

    invoke-virtual {v10, v2}, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->setAllowDividerAfterLastItem(Z)V

    .line 293
    iget-object v10, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-nez v10, :cond_3

    .line 294
    iget-object v10, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 296
    :cond_3
    iget-object v10, p0, Landroidx/preference/PreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    iget-object v11, p0, Landroidx/preference/PreferenceFragmentCompat;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 298
    return-object v9
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/preference/PreferenceFragmentCompat;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 367
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 368
    iget-boolean v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mHavePrefs:Z

    if-eqz v0, :cond_0

    .line 369
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;->unbindPreferences()V

    .line 371
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 372
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 373
    return-void
.end method

.method public onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .locals 4
    .param p1, "preference"    # Landroidx/preference/Preference;

    .prologue
    .line 627
    const/4 v1, 0x0

    .line 628
    .local v1, "handled":Z
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    instance-of v2, v2, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    if-eqz v2, :cond_0

    .line 629
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    .line 630
    invoke-interface {v2, p0, p1}, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z

    move-result v1

    .line 632
    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    if-eqz v2, :cond_1

    .line 633
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    .line 634
    invoke-interface {v2, p0, p1}, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z

    move-result v1

    .line 637
    :cond_1
    if-eqz v1, :cond_3

    .line 659
    :cond_2
    :goto_0
    return-void

    .line 642
    :cond_3
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "androidx.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_2

    .line 647
    instance-of v2, p1, Landroidx/preference/EditTextPreference;

    if-eqz v2, :cond_4

    .line 648
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->newInstance(Ljava/lang/String;)Landroidx/preference/EditTextPreferenceDialogFragmentCompat;

    move-result-object v0

    .line 657
    .local v0, "f":Landroidx/fragment/app/DialogFragment;
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroidx/fragment/app/DialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 658
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-string v3, "androidx.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 649
    .end local v0    # "f":Landroidx/fragment/app/DialogFragment;
    :cond_4
    instance-of v2, p1, Landroidx/preference/ListPreference;

    if-eqz v2, :cond_5

    .line 650
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/preference/ListPreferenceDialogFragmentCompat;->newInstance(Ljava/lang/String;)Landroidx/preference/ListPreferenceDialogFragmentCompat;

    move-result-object v0

    .restart local v0    # "f":Landroidx/fragment/app/DialogFragment;
    goto :goto_1

    .line 651
    .end local v0    # "f":Landroidx/fragment/app/DialogFragment;
    :cond_5
    instance-of v2, p1, Landroidx/preference/internal/AbstractMultiSelectListPreference;

    if-eqz v2, :cond_6

    .line 652
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;->newInstance(Ljava/lang/String;)Landroidx/preference/MultiSelectListPreferenceDialogFragmentCompat;

    move-result-object v0

    .restart local v0    # "f":Landroidx/fragment/app/DialogFragment;
    goto :goto_1

    .line 654
    .end local v0    # "f":Landroidx/fragment/app/DialogFragment;
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Tried to display dialog for unknown preference type. Did you forget to override onDisplayPreferenceDialog()?"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onNavigateToScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "preferenceScreen"    # Landroidx/preference/PreferenceScreen;

    .prologue
    .line 494
    const/4 v0, 0x0

    .line 495
    .local v0, "handled":Z
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartScreenCallback;

    if-eqz v1, :cond_0

    .line 496
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartScreenCallback;

    .line 497
    invoke-interface {v1, p0, p1}, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartScreenCallback;->onPreferenceStartScreen(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/PreferenceScreen;)Z

    move-result v0

    .line 499
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartScreenCallback;

    if-eqz v1, :cond_1

    .line 500
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartScreenCallback;

    .line 501
    invoke-interface {v1, p0, p1}, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartScreenCallback;->onPreferenceStartScreen(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/PreferenceScreen;)Z

    .line 503
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroidx/preference/Preference;

    .prologue
    .line 467
    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 468
    const/4 v0, 0x0

    .line 469
    .local v0, "handled":Z
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;

    if-eqz v1, :cond_0

    .line 470
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;

    .line 471
    invoke-interface {v1, p0, p1}, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z

    move-result v0

    .line 473
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;

    if-eqz v1, :cond_1

    .line 474
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;

    .line 475
    invoke-interface {v1, p0, p1}, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z

    move-result v0

    .line 479
    .end local v0    # "handled":Z
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 377
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 379
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    .line 380
    .local v1, "preferenceScreen":Landroidx/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 381
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 382
    .local v0, "container":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 383
    const-string v2, "android:preferences"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 385
    .end local v0    # "container":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 352
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 353
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 354
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceManager;->setOnDisplayPreferenceDialogListener(Landroidx/preference/PreferenceManager$OnDisplayPreferenceDialogListener;)V

    .line 355
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 359
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 360
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 361
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->setOnDisplayPreferenceDialogListener(Landroidx/preference/PreferenceManager$OnDisplayPreferenceDialogListener;)V

    .line 362
    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 557
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 327
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 329
    if-eqz p2, :cond_0

    .line 330
    const-string v2, "android:preferences"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 331
    .local v0, "container":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    .line 333
    .local v1, "preferenceScreen":Landroidx/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 334
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 339
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v1    # "preferenceScreen":Landroidx/preference/PreferenceScreen;
    :cond_0
    iget-boolean v2, p0, Landroidx/preference/PreferenceFragmentCompat;->mHavePrefs:Z

    if-eqz v2, :cond_1

    .line 340
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->bindPreferences()V

    .line 341
    iget-object v2, p0, Landroidx/preference/PreferenceFragmentCompat;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    .line 342
    iget-object v2, p0, Landroidx/preference/PreferenceFragmentCompat;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 343
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/preference/PreferenceFragmentCompat;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    .line 347
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/preference/PreferenceFragmentCompat;->mInitDone:Z

    .line 348
    return-void
.end method

.method public scrollToPreference(Landroidx/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroidx/preference/Preference;

    .prologue
    .line 676
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/PreferenceFragmentCompat;->scrollToPreferenceInternal(Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 677
    return-void
.end method

.method public scrollToPreference(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 672
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroidx/preference/PreferenceFragmentCompat;->scrollToPreferenceInternal(Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 673
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 311
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mDividerDecoration:Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 312
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 322
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mDividerDecoration:Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceFragmentCompat$DividerDecoration;->setDividerHeight(I)V

    .line 323
    return-void
.end method

.method public setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "preferenceScreen"    # Landroidx/preference/PreferenceScreen;

    .prologue
    .line 401
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceManager;->setPreferences(Landroidx/preference/PreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 402
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->onUnbindPreferences()V

    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mHavePrefs:Z

    .line 404
    iget-boolean v0, p0, Landroidx/preference/PreferenceFragmentCompat;->mInitDone:Z

    if-eqz v0, :cond_0

    .line 405
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;->postBindPreferences()V

    .line 408
    :cond_0
    return-void
.end method

.method public setPreferencesFromResource(ILjava/lang/String;)V
    .locals 5
    .param p1, "preferencesResId"    # I
        .annotation build Landroidx/annotation/XmlRes;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 443
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;->requirePreferenceManager()V

    .line 445
    iget-object v2, p0, Landroidx/preference/PreferenceFragmentCompat;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    iget-object v3, p0, Landroidx/preference/PreferenceFragmentCompat;->mStyledContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroidx/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object v1

    .line 449
    .local v1, "xmlRoot":Landroidx/preference/PreferenceScreen;
    if-eqz p2, :cond_0

    .line 450
    invoke-virtual {v1, p2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 451
    .local v0, "root":Landroidx/preference/Preference;
    instance-of v2, v0, Landroidx/preference/PreferenceScreen;

    if-nez v2, :cond_1

    .line 452
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preference object with key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a PreferenceScreen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 456
    .end local v0    # "root":Landroidx/preference/Preference;
    :cond_0
    move-object v0, v1

    .line 459
    .restart local v0    # "root":Landroidx/preference/Preference;
    :cond_1
    check-cast v0, Landroidx/preference/PreferenceScreen;

    .end local v0    # "root":Landroidx/preference/Preference;
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 460
    return-void
.end method
