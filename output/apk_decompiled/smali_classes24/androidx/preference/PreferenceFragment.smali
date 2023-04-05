.class public abstract Landroidx/preference/PreferenceFragment;
.super Landroid/app/Fragment;
.source "PreferenceFragment.java"

# interfaces
.implements Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroidx/preference/PreferenceManager$OnDisplayPreferenceDialogListener;
.implements Landroidx/preference/PreferenceManager$OnNavigateToScreenListener;
.implements Landroidx/preference/DialogPreference$TargetFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/PreferenceFragment$DividerDecoration;,
        Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;,
        Landroidx/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;,
        Landroidx/preference/PreferenceFragment$OnPreferenceStartScreenCallback;,
        Landroidx/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
    }
.end annotation


# static fields
.field public static final ARG_PREFERENCE_ROOT:Ljava/lang/String; = "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

.field private static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "androidx.preference.PreferenceFragment.DIALOG"

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final PREFERENCES_TAG:Ljava/lang/String; = "android:preferences"


# instance fields
.field private final mDividerDecoration:Landroidx/preference/PreferenceFragment$DividerDecoration;

.field private final mHandler:Landroid/os/Handler;

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
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 133
    sget v0, Landroidx/preference/R$layout;->preference_list_fragment:I

    iput v0, p0, Landroidx/preference/PreferenceFragment;->mLayoutResId:I

    .line 135
    new-instance v0, Landroidx/preference/PreferenceFragment$DividerDecoration;

    invoke-direct {v0, p0}, Landroidx/preference/PreferenceFragment$DividerDecoration;-><init>(Landroidx/preference/PreferenceFragment;)V

    iput-object v0, p0, Landroidx/preference/PreferenceFragment;->mDividerDecoration:Landroidx/preference/PreferenceFragment$DividerDecoration;

    .line 138
    new-instance v0, Landroidx/preference/PreferenceFragment$1;

    invoke-direct {v0, p0}, Landroidx/preference/PreferenceFragment$1;-><init>(Landroidx/preference/PreferenceFragment;)V

    iput-object v0, p0, Landroidx/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    .line 150
    new-instance v0, Landroidx/preference/PreferenceFragment$2;

    invoke-direct {v0, p0}, Landroidx/preference/PreferenceFragment$2;-><init>(Landroidx/preference/PreferenceFragment;)V

    iput-object v0, p0, Landroidx/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 770
    return-void
.end method

.method private postBindPreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 521
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    :goto_0
    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private requirePreferenceManager()V
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 516
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 518
    :cond_0
    return-void
.end method

.method private scrollToPreferenceInternal(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 2
    .param p1, "preference"    # Landroidx/preference/Preference;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 673
    new-instance v0, Landroidx/preference/PreferenceFragment$3;

    invoke-direct {v0, p0, p1, p2}, Landroidx/preference/PreferenceFragment$3;-><init>(Landroidx/preference/PreferenceFragment;Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 703
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Landroidx/preference/PreferenceFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_0

    .line 704
    iput-object v0, p0, Landroidx/preference/PreferenceFragment;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    .line 708
    :goto_0
    return-void

    .line 706
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private unbindPreferences()V
    .locals 1

    .prologue
    .line 535
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 536
    .local v0, "preferenceScreen":Landroidx/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->onDetached()V

    .line 539
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->onUnbindPreferences()V

    .line 540
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
    .line 421
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment;->requirePreferenceManager()V

    .line 423
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    iget-object v1, p0, Landroidx/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    .line 424
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    .line 423
    invoke-virtual {v0, v1, p1, v2}, Landroidx/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 425
    return-void
.end method

.method bindPreferences()V
    .locals 3

    .prologue
    .line 526
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 527
    .local v0, "preferenceScreen":Landroidx/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 528
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragment;->onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 529
    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->onAttached()V

    .line 531
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->onBindPreferences()V

    .line 532
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;

    .prologue
    .line 508
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 509
    const/4 v0, 0x0

    .line 511
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public getCallbackFragment()Landroid/app/Fragment;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 661
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getListView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public getPreferenceManager()Landroidx/preference/PreferenceManager;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Landroidx/preference/PreferenceScreen;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

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
    .line 545
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 206
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 207
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 208
    .local v3, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget v5, Landroidx/preference/R$attr;->preferenceTheme:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 209
    iget v2, v3, Landroid/util/TypedValue;->resourceId:I

    .line 210
    .local v2, "theme":I
    if-nez v2, :cond_0

    .line 212
    sget v2, Landroidx/preference/R$style;->PreferenceThemeOverlay:I

    .line 214
    :cond_0
    new-instance v4, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Landroidx/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    .line 216
    new-instance v4, Landroidx/preference/PreferenceManager;

    iget-object v5, p0, Landroidx/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroidx/preference/PreferenceManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 217
    iget-object v4, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v4, p0}, Landroidx/preference/PreferenceManager;->setOnNavigateToScreenListener(Landroidx/preference/PreferenceManager$OnNavigateToScreenListener;)V

    .line 218
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 220
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "rootKey":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1, v1}, Landroidx/preference/PreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 226
    return-void

    .line 223
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
    .line 607
    new-instance v0, Landroidx/preference/PreferenceGroupAdapter;

    invoke-direct {v0, p1}, Landroidx/preference/PreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;)V

    return-object v0
.end method

.method public onCreateLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 597
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

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
    .line 573
    iget-object v3, p0, Landroidx/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.type.automotive"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 575
    sget v3, Landroidx/preference/R$id;->recycler_view:I

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 576
    .local v0, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    if-eqz v0, :cond_0

    move-object v1, v0

    .end local v0    # "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, v0

    .line 587
    .end local v1    # "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    .local v2, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    :goto_0
    return-object v2

    .line 580
    .end local v2    # "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    :cond_0
    sget v3, Landroidx/preference/R$layout;->preference_recyclerview:I

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 583
    .restart local v0    # "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->onCreateLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 584
    new-instance v3, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;

    invoke-direct {v3, v0}, Landroidx/preference/PreferenceRecyclerViewAccessibilityDelegate;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;)V

    move-object v1, v0

    .end local v0    # "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    .restart local v1    # "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object v2, v0

    .line 587
    .end local v1    # "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    .restart local v2    # "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 17
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 244
    move-object/from16 v0, p0

    iget-object v11, v0, Landroidx/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    const/4 v12, 0x0

    sget-object v13, Landroidx/preference/R$styleable;->PreferenceFragment:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroidx/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    sget v15, Landroidx/preference/R$attr;->preferenceFragmentStyle:I

    const v16, 0x1010506

    .line 246
    invoke-static/range {v14 .. v16}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v14

    const/4 v15, 0x0

    .line 244
    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 249
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v11, Landroidx/preference/R$styleable;->PreferenceFragment_android_layout:I

    move-object/from16 v0, p0

    iget v12, v0, Landroidx/preference/PreferenceFragment;->mLayoutResId:I

    invoke-virtual {v2, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Landroidx/preference/PreferenceFragment;->mLayoutResId:I

    .line 251
    sget v11, Landroidx/preference/R$styleable;->PreferenceFragment_android_divider:I

    invoke-virtual {v2, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 252
    .local v4, "divider":Landroid/graphics/drawable/Drawable;
    sget v11, Landroidx/preference/R$styleable;->PreferenceFragment_android_dividerHeight:I

    const/4 v12, -0x1

    invoke-virtual {v2, v11, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 254
    .local v5, "dividerHeight":I
    sget v11, Landroidx/preference/R$styleable;->PreferenceFragment_allowDividerAfterLastItem:I

    const/4 v12, 0x1

    invoke-virtual {v2, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 256
    .local v3, "allowDividerAfterLastItem":Z
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 258
    move-object/from16 v0, p0

    iget-object v11, v0, Landroidx/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 260
    .local v9, "themedInflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v11, v0, Landroidx/preference/PreferenceFragment;->mLayoutResId:I

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v9, v11, v0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 262
    .local v10, "view":Landroid/view/View;
    const v11, 0x102003f

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 263
    .local v8, "rawListContainer":Landroid/view/View;
    instance-of v11, v8, Landroid/view/ViewGroup;

    if-nez v11, :cond_0

    .line 264
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "Content has view with id attribute \'android.R.id.list_container\' that is not a ViewGroup class"

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_0
    move-object v6, v8

    .line 268
    check-cast v6, Landroid/view/ViewGroup;

    .line 270
    .local v6, "listContainer":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v9, v6, v1}, Landroidx/preference/PreferenceFragment;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v7

    .line 272
    .local v7, "listView":Landroidx/recyclerview/widget/RecyclerView;
    if-nez v7, :cond_1

    .line 273
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "Could not create RecyclerView"

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 276
    :cond_1
    move-object/from16 v0, p0

    iput-object v7, v0, Landroidx/preference/PreferenceFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 278
    move-object/from16 v0, p0

    iget-object v11, v0, Landroidx/preference/PreferenceFragment;->mDividerDecoration:Landroidx/preference/PreferenceFragment$DividerDecoration;

    invoke-virtual {v7, v11}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 279
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceFragment;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 280
    const/4 v11, -0x1

    if-eq v5, v11, :cond_2

    .line 281
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroidx/preference/PreferenceFragment;->setDividerHeight(I)V

    .line 283
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Landroidx/preference/PreferenceFragment;->mDividerDecoration:Landroidx/preference/PreferenceFragment$DividerDecoration;

    invoke-virtual {v11, v3}, Landroidx/preference/PreferenceFragment$DividerDecoration;->setAllowDividerAfterLastItem(Z)V

    .line 287
    move-object/from16 v0, p0

    iget-object v11, v0, Landroidx/preference/PreferenceFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v11}, Landroidx/recyclerview/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    if-nez v11, :cond_3

    .line 288
    move-object/from16 v0, p0

    iget-object v11, v0, Landroidx/preference/PreferenceFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 290
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Landroidx/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroidx/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 292
    return-object v10
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/preference/PreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 361
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 362
    iget-boolean v0, p0, Landroidx/preference/PreferenceFragment;->mHavePrefs:Z

    if-eqz v0, :cond_0

    .line 363
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment;->unbindPreferences()V

    .line 365
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/preference/PreferenceFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 366
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 367
    return-void
.end method

.method public onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .locals 4
    .param p1, "preference"    # Landroidx/preference/Preference;

    .prologue
    .line 620
    const/4 v1, 0x0

    .line 621
    .local v1, "handled":Z
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v2

    instance-of v2, v2, Landroidx/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;

    if-eqz v2, :cond_0

    .line 622
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;

    .line 623
    invoke-interface {v2, p0, p1}, Landroidx/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Landroidx/preference/PreferenceFragment;Landroidx/preference/Preference;)Z

    move-result v1

    .line 625
    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Landroidx/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;

    if-eqz v2, :cond_1

    .line 626
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;

    .line 627
    invoke-interface {v2, p0, p1}, Landroidx/preference/PreferenceFragment$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Landroidx/preference/PreferenceFragment;Landroidx/preference/Preference;)Z

    move-result v1

    .line 630
    :cond_1
    if-eqz v1, :cond_3

    .line 652
    :cond_2
    :goto_0
    return-void

    .line 635
    :cond_3
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "androidx.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_2

    .line 640
    instance-of v2, p1, Landroidx/preference/EditTextPreference;

    if-eqz v2, :cond_4

    .line 641
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/preference/EditTextPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Landroidx/preference/EditTextPreferenceDialogFragment;

    move-result-object v0

    .line 650
    .local v0, "f":Landroid/app/DialogFragment;
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 651
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "androidx.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 642
    .end local v0    # "f":Landroid/app/DialogFragment;
    :cond_4
    instance-of v2, p1, Landroidx/preference/ListPreference;

    if-eqz v2, :cond_5

    .line 643
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/preference/ListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Landroidx/preference/ListPreferenceDialogFragment;

    move-result-object v0

    .restart local v0    # "f":Landroid/app/DialogFragment;
    goto :goto_1

    .line 644
    .end local v0    # "f":Landroid/app/DialogFragment;
    :cond_5
    instance-of v2, p1, Landroidx/preference/MultiSelectListPreference;

    if-eqz v2, :cond_6

    .line 645
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/preference/MultiSelectListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Landroidx/preference/MultiSelectListPreferenceDialogFragment;

    move-result-object v0

    .restart local v0    # "f":Landroid/app/DialogFragment;
    goto :goto_1

    .line 647
    .end local v0    # "f":Landroid/app/DialogFragment;
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
    .line 488
    const/4 v0, 0x0

    .line 489
    .local v0, "handled":Z
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Landroidx/preference/PreferenceFragment$OnPreferenceStartScreenCallback;

    if-eqz v1, :cond_0

    .line 490
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceFragment$OnPreferenceStartScreenCallback;

    .line 491
    invoke-interface {v1, p0, p1}, Landroidx/preference/PreferenceFragment$OnPreferenceStartScreenCallback;->onPreferenceStartScreen(Landroidx/preference/PreferenceFragment;Landroidx/preference/PreferenceScreen;)Z

    move-result v0

    .line 493
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroidx/preference/PreferenceFragment$OnPreferenceStartScreenCallback;

    if-eqz v1, :cond_1

    .line 494
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceFragment$OnPreferenceStartScreenCallback;

    .line 495
    invoke-interface {v1, p0, p1}, Landroidx/preference/PreferenceFragment$OnPreferenceStartScreenCallback;->onPreferenceStartScreen(Landroidx/preference/PreferenceFragment;Landroidx/preference/PreferenceScreen;)Z

    .line 497
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroidx/preference/Preference;

    .prologue
    .line 461
    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 462
    const/4 v0, 0x0

    .line 463
    .local v0, "handled":Z
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Landroidx/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    if-eqz v1, :cond_0

    .line 464
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getCallbackFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    .line 465
    invoke-interface {v1, p0, p1}, Landroidx/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Landroidx/preference/PreferenceFragment;Landroidx/preference/Preference;)Z

    move-result v0

    .line 467
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroidx/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    if-eqz v1, :cond_1

    .line 468
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;

    .line 469
    invoke-interface {v1, p0, p1}, Landroidx/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Landroidx/preference/PreferenceFragment;Landroidx/preference/Preference;)Z

    move-result v0

    .line 473
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
    .line 371
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 373
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    .line 374
    .local v1, "preferenceScreen":Landroidx/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 375
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 376
    .local v0, "container":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 377
    const-string v2, "android:preferences"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 379
    .end local v0    # "container":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 346
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 347
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 348
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceManager;->setOnDisplayPreferenceDialogListener(Landroidx/preference/PreferenceManager$OnDisplayPreferenceDialogListener;)V

    .line 349
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 353
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 354
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    .line 355
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceManager;->setOnDisplayPreferenceDialogListener(Landroidx/preference/PreferenceManager$OnDisplayPreferenceDialogListener;)V

    .line 356
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
    .line 550
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 321
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 323
    if-eqz p2, :cond_0

    .line 324
    const-string v2, "android:preferences"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 325
    .local v0, "container":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    .line 327
    .local v1, "preferenceScreen":Landroidx/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 328
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 333
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v1    # "preferenceScreen":Landroidx/preference/PreferenceScreen;
    :cond_0
    iget-boolean v2, p0, Landroidx/preference/PreferenceFragment;->mHavePrefs:Z

    if-eqz v2, :cond_1

    .line 334
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->bindPreferences()V

    .line 335
    iget-object v2, p0, Landroidx/preference/PreferenceFragment;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    .line 336
    iget-object v2, p0, Landroidx/preference/PreferenceFragment;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 337
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/preference/PreferenceFragment;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    .line 341
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/preference/PreferenceFragment;->mInitDone:Z

    .line 342
    return-void
.end method

.method public scrollToPreference(Landroidx/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroidx/preference/Preference;

    .prologue
    .line 669
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/PreferenceFragment;->scrollToPreferenceInternal(Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 670
    return-void
.end method

.method public scrollToPreference(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 665
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroidx/preference/PreferenceFragment;->scrollToPreferenceInternal(Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 666
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 305
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mDividerDecoration:Landroidx/preference/PreferenceFragment$DividerDecoration;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceFragment$DividerDecoration;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 306
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 316
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mDividerDecoration:Landroidx/preference/PreferenceFragment$DividerDecoration;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceFragment$DividerDecoration;->setDividerHeight(I)V

    .line 317
    return-void
.end method

.method public setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "preferenceScreen"    # Landroidx/preference/PreferenceScreen;

    .prologue
    .line 395
    iget-object v0, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceManager;->setPreferences(Landroidx/preference/PreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 396
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->onUnbindPreferences()V

    .line 397
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/PreferenceFragment;->mHavePrefs:Z

    .line 398
    iget-boolean v0, p0, Landroidx/preference/PreferenceFragment;->mInitDone:Z

    if-eqz v0, :cond_0

    .line 399
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment;->postBindPreferences()V

    .line 402
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
    .line 437
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment;->requirePreferenceManager()V

    .line 439
    iget-object v2, p0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    iget-object v3, p0, Landroidx/preference/PreferenceFragment;->mStyledContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroidx/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    move-result-object v1

    .line 443
    .local v1, "xmlRoot":Landroidx/preference/PreferenceScreen;
    if-eqz p2, :cond_0

    .line 444
    invoke-virtual {v1, p2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 445
    .local v0, "root":Landroidx/preference/Preference;
    instance-of v2, v0, Landroidx/preference/PreferenceScreen;

    if-nez v2, :cond_1

    .line 446
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

    .line 450
    .end local v0    # "root":Landroidx/preference/Preference;
    :cond_0
    move-object v0, v1

    .line 453
    .restart local v0    # "root":Landroidx/preference/Preference;
    :cond_1
    check-cast v0, Landroidx/preference/PreferenceScreen;

    .end local v0    # "root":Landroidx/preference/Preference;
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 454
    return-void
.end method
