package androidx.appcompat.app;
 class AppCompatDelegateImpl extends androidx.appcompat.app.AppCompatDelegate implements androidx.appcompat.view.menu.MenuBuilder$Callback, android.view.LayoutInflater$Factory2 {
    private static final boolean DEBUG = False;
    static final String EXCEPTION_HANDLER_MESSAGE_SUFFIX = ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.";
    private static final boolean IS_PRE_LOLLIPOP = False;
    private static final String KEY_LOCAL_NIGHT_MODE = "appcompat:local_night_mode";
    private static boolean sInstalledExceptionHandler;
    private static final int[] sWindowBackgroundStyleable;
    androidx.appcompat.app.ActionBar mActionBar;
    private androidx.appcompat.app.AppCompatDelegateImpl$ActionMenuPresenterCallback mActionMenuPresenterCallback;
    androidx.appcompat.view.ActionMode mActionMode;
    android.widget.PopupWindow mActionModePopup;
    androidx.appcompat.widget.ActionBarContextView mActionModeView;
    final androidx.appcompat.app.AppCompatCallback mAppCompatCallback;
    private androidx.appcompat.app.AppCompatViewInflater mAppCompatViewInflater;
    final android.view.Window$Callback mAppCompatWindowCallback;
    private boolean mApplyDayNightCalled;
    private androidx.appcompat.app.AppCompatDelegateImpl$AutoNightModeManager mAutoNightModeManager;
    private boolean mClosingActionMenu;
    final android.content.Context mContext;
    private androidx.appcompat.widget.DecorContentParent mDecorContentParent;
    private boolean mEnableDefaultActionBarUp;
    androidx.core.view.ViewPropertyAnimatorCompat mFadeAnim;
    private boolean mFeatureIndeterminateProgress;
    private boolean mFeatureProgress;
    private boolean mHandleNativeActionModes;
    boolean mHasActionBar;
    int mInvalidatePanelMenuFeatures;
    boolean mInvalidatePanelMenuPosted;
    private final Runnable mInvalidatePanelMenuRunnable;
    boolean mIsDestroyed;
    boolean mIsFloating;
    private int mLocalNightMode;
    private boolean mLongPressBackDown;
    android.view.MenuInflater mMenuInflater;
    final android.view.Window$Callback mOriginalWindowCallback;
    boolean mOverlayActionBar;
    boolean mOverlayActionMode;
    private androidx.appcompat.app.AppCompatDelegateImpl$PanelMenuPresenterCallback mPanelMenuPresenterCallback;
    private androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState[] mPanels;
    private androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState mPreparedPanel;
    Runnable mShowActionModePopup;
    private android.view.View mStatusGuard;
    private android.view.ViewGroup mSubDecor;
    private boolean mSubDecorInstalled;
    private android.graphics.Rect mTempRect1;
    private android.graphics.Rect mTempRect2;
    private CharSequence mTitle;
    private android.widget.TextView mTitleView;
    final android.view.Window mWindow;
    boolean mWindowNoTitle;

    static AppCompatDelegateImpl()
    {
        androidx.appcompat.app.AppCompatDelegateImpl$1 v1_5;
        if (android.os.Build$VERSION.SDK_INT >= 21) {
            v1_5 = 0;
        } else {
            v1_5 = 1;
        }
        androidx.appcompat.app.AppCompatDelegateImpl.IS_PRE_LOLLIPOP = v1_5;
        androidx.appcompat.app.AppCompatDelegateImpl$1 v1_6 = new int[1];
        v1_6[0] = 16842836;
        androidx.appcompat.app.AppCompatDelegateImpl.sWindowBackgroundStyleable = v1_6;
        if ((androidx.appcompat.app.AppCompatDelegateImpl.IS_PRE_LOLLIPOP) && (!androidx.appcompat.app.AppCompatDelegateImpl.sInstalledExceptionHandler)) {
            Thread.setDefaultUncaughtExceptionHandler(new androidx.appcompat.app.AppCompatDelegateImpl$1(Thread.getDefaultUncaughtExceptionHandler()));
            androidx.appcompat.app.AppCompatDelegateImpl.sInstalledExceptionHandler = 1;
        }
        return;
    }

    AppCompatDelegateImpl(android.content.Context p6, android.view.Window p7, androidx.appcompat.app.AppCompatCallback p8)
    {
        this.mFadeAnim = 0;
        this.mHandleNativeActionModes = 1;
        this.mLocalNightMode = -100;
        this.mInvalidatePanelMenuRunnable = new androidx.appcompat.app.AppCompatDelegateImpl$2(this);
        this.mContext = p6;
        this.mWindow = p7;
        this.mAppCompatCallback = p8;
        this.mOriginalWindowCallback = this.mWindow.getCallback();
        if (!(this.mOriginalWindowCallback instanceof androidx.appcompat.app.AppCompatDelegateImpl$AppCompatWindowCallback)) {
            this.mAppCompatWindowCallback = new androidx.appcompat.app.AppCompatDelegateImpl$AppCompatWindowCallback(this, this.mOriginalWindowCallback);
            this.mWindow.setCallback(this.mAppCompatWindowCallback);
            androidx.appcompat.widget.TintTypedArray v0 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(p6, 0, androidx.appcompat.app.AppCompatDelegateImpl.sWindowBackgroundStyleable);
            android.graphics.drawable.Drawable v1 = v0.getDrawableIfKnown(0);
            if (v1 != null) {
                this.mWindow.setBackgroundDrawable(v1);
            }
            v0.recycle();
            return;
        } else {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
    }

    private void applyFixedSizeWindow()
    {
        androidx.appcompat.widget.ContentFrameLayout v1_1 = ((androidx.appcompat.widget.ContentFrameLayout) this.mSubDecor.findViewById(16908290));
        android.view.View v2 = this.mWindow.getDecorView();
        v1_1.setDecorPadding(v2.getPaddingLeft(), v2.getPaddingTop(), v2.getPaddingRight(), v2.getPaddingBottom());
        android.content.res.TypedArray v0 = this.mContext.obtainStyledAttributes(androidx.appcompat.R$styleable.AppCompatTheme);
        v0.getValue(androidx.appcompat.R$styleable.AppCompatTheme_windowMinWidthMajor, v1_1.getMinWidthMajor());
        v0.getValue(androidx.appcompat.R$styleable.AppCompatTheme_windowMinWidthMinor, v1_1.getMinWidthMinor());
        if (v0.hasValue(androidx.appcompat.R$styleable.AppCompatTheme_windowFixedWidthMajor)) {
            v0.getValue(androidx.appcompat.R$styleable.AppCompatTheme_windowFixedWidthMajor, v1_1.getFixedWidthMajor());
        }
        if (v0.hasValue(androidx.appcompat.R$styleable.AppCompatTheme_windowFixedWidthMinor)) {
            v0.getValue(androidx.appcompat.R$styleable.AppCompatTheme_windowFixedWidthMinor, v1_1.getFixedWidthMinor());
        }
        if (v0.hasValue(androidx.appcompat.R$styleable.AppCompatTheme_windowFixedHeightMajor)) {
            v0.getValue(androidx.appcompat.R$styleable.AppCompatTheme_windowFixedHeightMajor, v1_1.getFixedHeightMajor());
        }
        if (v0.hasValue(androidx.appcompat.R$styleable.AppCompatTheme_windowFixedHeightMinor)) {
            v0.getValue(androidx.appcompat.R$styleable.AppCompatTheme_windowFixedHeightMinor, v1_1.getFixedHeightMinor());
        }
        v0.recycle();
        v1_1.requestLayout();
        return;
    }

    private android.view.ViewGroup createSubDecor()
    {
        android.content.res.TypedArray v0 = this.mContext.obtainStyledAttributes(androidx.appcompat.R$styleable.AppCompatTheme);
        if (v0.hasValue(androidx.appcompat.R$styleable.AppCompatTheme_windowActionBar)) {
            if (!v0.getBoolean(androidx.appcompat.R$styleable.AppCompatTheme_windowNoTitle, 0)) {
                if (v0.getBoolean(androidx.appcompat.R$styleable.AppCompatTheme_windowActionBar, 0)) {
                    this.requestWindowFeature(108);
                }
            } else {
                this.requestWindowFeature(1);
            }
            if (v0.getBoolean(androidx.appcompat.R$styleable.AppCompatTheme_windowActionBarOverlay, 0)) {
                this.requestWindowFeature(109);
            }
            if (v0.getBoolean(androidx.appcompat.R$styleable.AppCompatTheme_windowActionModeOverlay, 0)) {
                this.requestWindowFeature(10);
            }
            this.mIsFloating = v0.getBoolean(androidx.appcompat.R$styleable.AppCompatTheme_android_windowIsFloating, 0);
            v0.recycle();
            this.mWindow.getDecorView();
            android.view.LayoutInflater v3 = android.view.LayoutInflater.from(this.mContext);
            android.view.ViewGroup v5_1 = 0;
            if (this.mWindowNoTitle) {
                if (!this.mOverlayActionMode) {
                    v5_1 = ((android.view.ViewGroup) v3.inflate(androidx.appcompat.R$layout.abc_screen_simple, 0));
                } else {
                    v5_1 = ((android.view.ViewGroup) v3.inflate(androidx.appcompat.R$layout.abc_screen_simple_overlay_action_mode, 0));
                }
                if (android.os.Build$VERSION.SDK_INT < 21) {
                    ((androidx.appcompat.widget.FitWindowsViewGroup) v5_1).setOnFitSystemWindowsListener(new androidx.appcompat.app.AppCompatDelegateImpl$4(this));
                } else {
                    androidx.core.view.ViewCompat.setOnApplyWindowInsetsListener(v5_1, new androidx.appcompat.app.AppCompatDelegateImpl$3(this));
                }
            } else {
                if (!this.mIsFloating) {
                    if (this.mHasActionBar) {
                        android.content.Context v6_0;
                        android.util.TypedValue v4_1 = new android.util.TypedValue();
                        this.mContext.getTheme().resolveAttribute(androidx.appcompat.R$attr.actionBarTheme, v4_1, 1);
                        if (v4_1.resourceId == 0) {
                            v6_0 = this.mContext;
                        } else {
                            v6_0 = new androidx.appcompat.view.ContextThemeWrapper(this.mContext, v4_1.resourceId);
                        }
                        v5_1 = ((android.view.ViewGroup) android.view.LayoutInflater.from(v6_0).inflate(androidx.appcompat.R$layout.abc_screen_toolbar, 0));
                        this.mDecorContentParent = ((androidx.appcompat.widget.DecorContentParent) v5_1.findViewById(androidx.appcompat.R$id.decor_content_parent));
                        this.mDecorContentParent.setWindowCallback(this.getWindowCallback());
                        if (this.mOverlayActionBar) {
                            this.mDecorContentParent.initFeature(109);
                        }
                        if (this.mFeatureProgress) {
                            this.mDecorContentParent.initFeature(2);
                        }
                        if (this.mFeatureIndeterminateProgress) {
                            this.mDecorContentParent.initFeature(5);
                        }
                    }
                } else {
                    v5_1 = ((android.view.ViewGroup) v3.inflate(androidx.appcompat.R$layout.abc_dialog_title_material, 0));
                    this.mOverlayActionBar = 0;
                    this.mHasActionBar = 0;
                }
            }
            if (v5_1 != null) {
                if (this.mDecorContentParent == null) {
                    this.mTitleView = ((android.widget.TextView) v5_1.findViewById(androidx.appcompat.R$id.title));
                }
                androidx.appcompat.widget.ViewUtils.makeOptionalFitsSystemWindows(v5_1);
                androidx.appcompat.widget.ContentFrameLayout v2_1 = ((androidx.appcompat.widget.ContentFrameLayout) v5_1.findViewById(androidx.appcompat.R$id.action_bar_activity_content));
                android.widget.FrameLayout v7_1 = ((android.view.ViewGroup) this.mWindow.findViewById(16908290));
                if (v7_1 != null) {
                    while (v7_1.getChildCount() > 0) {
                        android.view.View v1 = v7_1.getChildAt(0);
                        v7_1.removeViewAt(0);
                        v2_1.addView(v1);
                    }
                    v7_1.setId(-1);
                    v2_1.setId(16908290);
                    if ((v7_1 instanceof android.widget.FrameLayout)) {
                        ((android.widget.FrameLayout) v7_1).setForeground(0);
                    }
                }
                this.mWindow.setContentView(v5_1);
                v2_1.setAttachListener(new androidx.appcompat.app.AppCompatDelegateImpl$5(this));
                return v5_1;
            } else {
                throw new IllegalArgumentException(new StringBuilder().append("AppCompat does not support the current theme features: { windowActionBar: ").append(this.mHasActionBar).append(", windowActionBarOverlay: ").append(this.mOverlayActionBar).append(", android:windowIsFloating: ").append(this.mIsFloating).append(", windowActionModeOverlay: ").append(this.mOverlayActionMode).append(", windowNoTitle: ").append(this.mWindowNoTitle).append(" }").toString());
            }
        } else {
            v0.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
    }

    private void ensureAutoNightModeManager()
    {
        if (this.mAutoNightModeManager == null) {
            this.mAutoNightModeManager = new androidx.appcompat.app.AppCompatDelegateImpl$AutoNightModeManager(this, androidx.appcompat.app.TwilightManager.getInstance(this.mContext));
        }
        return;
    }

    private void ensureSubDecor()
    {
        if (!this.mSubDecorInstalled) {
            this.mSubDecor = this.createSubDecor();
            CharSequence v1 = this.getTitle();
            if (!android.text.TextUtils.isEmpty(v1)) {
                if (this.mDecorContentParent == null) {
                    if (this.peekSupportActionBar() == null) {
                        if (this.mTitleView != null) {
                            this.mTitleView.setText(v1);
                        }
                    } else {
                        this.peekSupportActionBar().setWindowTitle(v1);
                    }
                } else {
                    this.mDecorContentParent.setWindowTitle(v1);
                }
            }
            this.applyFixedSizeWindow();
            this.onSubDecorInstalled(this.mSubDecor);
            this.mSubDecorInstalled = 1;
            androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState v0 = this.getPanelState(0, 0);
            if ((!this.mIsDestroyed) && ((v0 == null) || (v0.menu == null))) {
                this.invalidatePanelMenu(108);
            }
        }
        return;
    }

    private int getNightMode()
    {
        int v0_1;
        if (this.mLocalNightMode == -100) {
            v0_1 = androidx.appcompat.app.AppCompatDelegateImpl.getDefaultNightMode();
        } else {
            v0_1 = this.mLocalNightMode;
        }
        return v0_1;
    }

    private void initWindowDecorActionBar()
    {
        this.ensureSubDecor();
        if ((this.mHasActionBar) && (this.mActionBar == null)) {
            if (!(this.mOriginalWindowCallback instanceof android.app.Activity)) {
                if ((this.mOriginalWindowCallback instanceof android.app.Dialog)) {
                    this.mActionBar = new androidx.appcompat.app.WindowDecorActionBar(((android.app.Dialog) this.mOriginalWindowCallback));
                }
            } else {
                this.mActionBar = new androidx.appcompat.app.WindowDecorActionBar(((android.app.Activity) this.mOriginalWindowCallback), this.mOverlayActionBar);
            }
            if (this.mActionBar != null) {
                this.mActionBar.setDefaultDisplayHomeAsUpEnabled(this.mEnableDefaultActionBarUp);
            }
        }
        return;
    }

    private boolean initializePanelContent(androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState p5)
    {
        android.view.View v1 = 1;
        if (p5.createdPanelView == null) {
            if (p5.menu != null) {
                if (this.mPanelMenuPresenterCallback == null) {
                    this.mPanelMenuPresenterCallback = new androidx.appcompat.app.AppCompatDelegateImpl$PanelMenuPresenterCallback(this);
                }
                p5.shownPanelView = ((android.view.View) p5.getListMenuView(this.mPanelMenuPresenterCallback));
                if (p5.shownPanelView == null) {
                    v1 = 0;
                }
            } else {
                v1 = 0;
            }
        } else {
            p5.shownPanelView = p5.createdPanelView;
        }
        return v1;
    }

    private boolean initializePanelDecor(androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState p3)
    {
        p3.setStyle(this.getActionBarThemedContext());
        p3.decorView = new androidx.appcompat.app.AppCompatDelegateImpl$ListMenuDecorView(this, p3.listPresenterContext);
        p3.gravity = 81;
        return 1;
    }

    private boolean initializePanelMenu(androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState p10)
    {
        androidx.appcompat.view.ContextThemeWrapper v1 = this.mContext;
        if (((p10.featureId == 0) || (p10.featureId == 108)) && (this.mDecorContentParent != null)) {
            android.util.TypedValue v4_0 = new android.util.TypedValue();
            android.content.res.Resources$Theme v0 = v1.getTheme();
            v0.resolveAttribute(androidx.appcompat.R$attr.actionBarTheme, v4_0, 1);
            android.content.res.Resources$Theme v5 = 0;
            if (v4_0.resourceId == 0) {
                v0.resolveAttribute(androidx.appcompat.R$attr.actionBarWidgetTheme, v4_0, 1);
            } else {
                v5 = v1.getResources().newTheme();
                v5.setTo(v0);
                v5.applyStyle(v4_0.resourceId, 1);
                v5.resolveAttribute(androidx.appcompat.R$attr.actionBarWidgetTheme, v4_0, 1);
            }
            if (v4_0.resourceId != 0) {
                if (v5 == null) {
                    v5 = v1.getResources().newTheme();
                    v5.setTo(v0);
                }
                v5.applyStyle(v4_0.resourceId, 1);
            }
            if (v5 != null) {
                androidx.appcompat.view.ContextThemeWrapper v2_1 = new androidx.appcompat.view.ContextThemeWrapper(v1, 0);
                v2_1.getTheme().setTo(v5);
                v1 = v2_1;
            }
        }
        androidx.appcompat.view.menu.MenuBuilder v3_1 = new androidx.appcompat.view.menu.MenuBuilder(v1);
        v3_1.setCallback(this);
        p10.setMenu(v3_1);
        return 1;
    }

    private void invalidatePanelMenu(int p4)
    {
        this.mInvalidatePanelMenuFeatures = (this.mInvalidatePanelMenuFeatures | (1 << p4));
        if (!this.mInvalidatePanelMenuPosted) {
            androidx.core.view.ViewCompat.postOnAnimation(this.mWindow.getDecorView(), this.mInvalidatePanelMenuRunnable);
            this.mInvalidatePanelMenuPosted = 1;
        }
        return;
    }

    private boolean onKeyDownPanel(int p3, android.view.KeyEvent p4)
    {
        boolean v1_1;
        if (p4.getRepeatCount() != 0) {
            v1_1 = 0;
        } else {
            androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState v0 = this.getPanelState(p3, 1);
            if (v0.isOpen) {
            } else {
                v1_1 = this.preparePanel(v0, p4);
            }
        }
        return v1_1;
    }

    private boolean onKeyUpPanel(int p8, android.view.KeyEvent p9)
    {
        boolean v1;
        if (this.mActionMode == null) {
            v1 = 0;
            androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState v3 = this.getPanelState(p8, 1);
            if ((p8 != 0) || ((this.mDecorContentParent == null) || ((!this.mDecorContentParent.canShowOverflowMenu()) || (android.view.ViewConfiguration.get(this.mContext).hasPermanentMenuKey())))) {
                if ((!v3.isOpen) && (!v3.isHandled)) {
                    if (v3.isPrepared) {
                        boolean v2 = 1;
                        if (v3.refreshMenuContent) {
                            v3.isPrepared = 0;
                            v2 = this.preparePanel(v3, p9);
                        }
                        if (v2) {
                            this.openPanel(v3, p9);
                            v1 = 1;
                        }
                    }
                } else {
                    v1 = v3.isOpen;
                    this.closePanel(v3, 1);
                }
            } else {
                if (this.mDecorContentParent.isOverflowMenuShowing()) {
                    v1 = this.mDecorContentParent.hideOverflowMenu();
                } else {
                    if ((!this.mIsDestroyed) && (this.preparePanel(v3, p9))) {
                        v1 = this.mDecorContentParent.showOverflowMenu();
                    }
                }
            }
            if (v1) {
                android.media.AudioManager v0_1 = ((android.media.AudioManager) this.mContext.getSystemService("audio"));
                if (v0_1 == null) {
                    android.util.Log.w("AppCompatDelegate", "Couldn\'t get audio manager");
                } else {
                    v0_1.playSoundEffect(0);
                }
            }
        } else {
            v1 = 0;
        }
        return v1;
    }

    private void openPanel(androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState p15, android.view.KeyEvent p16)
    {
        if ((!p15.isOpen) && (!this.mIsDestroyed)) {
            if (p15.featureId == 0) {
                int v11;
                if ((this.mContext.getResources().getConfiguration().screenLayout & 15) != 4) {
                    v11 = 0;
                } else {
                    v11 = 1;
                }
                if (v11 != 0) {
                    return;
                }
            }
            android.view.Window$Callback v9 = this.getWindowCallback();
            if ((v9 == null) || (v9.onMenuOpened(p15.featureId, p15.menu))) {
                android.view.WindowManager v13_1 = ((android.view.WindowManager) this.mContext.getSystemService("window"));
                if ((v13_1 != null) && (this.preparePanel(p15, p16))) {
                    int v1 = -2;
                    if ((p15.decorView != null) && (!p15.refreshDecorView)) {
                        if (p15.createdPanelView != null) {
                            android.view.ViewGroup$LayoutParams v0_2 = p15.createdPanelView.getLayoutParams();
                            if ((v0_2 != null) && (v0_2.width == -1)) {
                                v1 = -1;
                            }
                        }
                    } else {
                        if (p15.decorView != null) {
                            if ((p15.refreshDecorView) && (p15.decorView.getChildCount() > 0)) {
                                p15.decorView.removeAllViews();
                            }
                        } else {
                            if ((!this.initializePanelDecor(p15)) || (p15.decorView == null)) {
                                return;
                            }
                        }
                        if ((!this.initializePanelContent(p15)) || (!p15.hasPanelItems())) {
                            return;
                        } else {
                            android.view.ViewGroup$LayoutParams v0_3 = p15.shownPanelView.getLayoutParams();
                            if (v0_3 == null) {
                                v0_3 = new android.view.ViewGroup$LayoutParams(-2, -2);
                            }
                            p15.decorView.setBackgroundResource(p15.background);
                            android.view.ViewGroup v12_0 = p15.shownPanelView.getParent();
                            if ((v12_0 != null) && ((v12_0 instanceof android.view.ViewGroup))) {
                                ((android.view.ViewGroup) v12_0).removeView(p15.shownPanelView);
                            }
                            p15.decorView.addView(p15.shownPanelView, v0_3);
                            if (!p15.shownPanelView.hasFocus()) {
                                p15.shownPanelView.requestFocus();
                            }
                        }
                    }
                    p15.isHandled = 0;
                    android.view.ViewGroup$LayoutParams v0_1 = new android.view.WindowManager$LayoutParams(v1, -2, p15.x, p15.y, 1002, 8519680, -3);
                    v0_1.gravity = p15.gravity;
                    v0_1.windowAnimations = p15.windowAnimations;
                    v13_1.addView(p15.decorView, v0_1);
                    p15.isOpen = 1;
                }
            } else {
                this.closePanel(p15, 1);
            }
        }
        return;
    }

    private boolean performPanelShortcut(androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState p3, int p4, android.view.KeyEvent p5, int p6)
    {
        boolean v0;
        if (!p5.isSystem()) {
            v0 = 0;
            if (((p3.isPrepared) || (this.preparePanel(p3, p5))) && (p3.menu != null)) {
                v0 = p3.menu.performShortcut(p4, p5, p6);
            }
            if ((v0) && (((p6 & 1) == 0) && (this.mDecorContentParent == null))) {
                this.closePanel(p3, 1);
            }
        } else {
            v0 = 0;
        }
        return v0;
    }

    private boolean preparePanel(androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState p10, android.view.KeyEvent p11)
    {
        int v5 = 0;
        if (!this.mIsDestroyed) {
            if (!p10.isPrepared) {
                if ((this.mPreparedPanel != null) && (this.mPreparedPanel != p10)) {
                    this.closePanel(this.mPreparedPanel, 0);
                }
                android.view.Window$Callback v0 = this.getWindowCallback();
                if (v0 != null) {
                    p10.createdPanelView = v0.onCreatePanelView(p10.featureId);
                }
                if ((p10.featureId != 0) && (p10.featureId != 108)) {
                    int v1 = 0;
                } else {
                    v1 = 1;
                }
                if ((v1 != 0) && (this.mDecorContentParent != null)) {
                    this.mDecorContentParent.setMenuPrepared();
                }
                if ((p10.createdPanelView == null) && ((v1 == 0) || (!(this.peekSupportActionBar() instanceof androidx.appcompat.app.ToolbarActionBar)))) {
                    if ((p10.menu == null) || (p10.refreshMenuContent)) {
                        if ((p10.menu == null) && ((!this.initializePanelMenu(p10)) || (p10.menu == null))) {
                            return v5;
                        } else {
                            if ((v1 != 0) && (this.mDecorContentParent != null)) {
                                if (this.mActionMenuPresenterCallback == null) {
                                    this.mActionMenuPresenterCallback = new androidx.appcompat.app.AppCompatDelegateImpl$ActionMenuPresenterCallback(this);
                                }
                                this.mDecorContentParent.setMenu(p10.menu, this.mActionMenuPresenterCallback);
                            }
                            p10.menu.stopDispatchingItemsChanged();
                            if (v0.onCreatePanelMenu(p10.featureId, p10.menu)) {
                                p10.refreshMenuContent = 0;
                            } else {
                                p10.setMenu(0);
                                if ((v1 == 0) || (this.mDecorContentParent == null)) {
                                    return v5;
                                } else {
                                    this.mDecorContentParent.setMenu(0, this.mActionMenuPresenterCallback);
                                    return v5;
                                }
                            }
                        }
                    }
                    p10.menu.stopDispatchingItemsChanged();
                    if (p10.frozenActionViewState != null) {
                        p10.menu.restoreActionViewStates(p10.frozenActionViewState);
                        p10.frozenActionViewState = 0;
                    }
                    if (v0.onPreparePanel(0, p10.createdPanelView, p10.menu)) {
                        androidx.appcompat.view.menu.MenuBuilder v3_36;
                        if (p11 == null) {
                            v3_36 = -1;
                        } else {
                            v3_36 = p11.getDeviceId();
                        }
                        androidx.appcompat.view.menu.MenuBuilder v3_39;
                        if (android.view.KeyCharacterMap.load(v3_36).getKeyboardType() == 1) {
                            v3_39 = 0;
                        } else {
                            v3_39 = 1;
                        }
                        p10.qwertyMode = v3_39;
                        p10.menu.setQwertyMode(p10.qwertyMode);
                        p10.menu.startDispatchingItemsChanged();
                    } else {
                        if ((v1 != 0) && (this.mDecorContentParent != null)) {
                            this.mDecorContentParent.setMenu(0, this.mActionMenuPresenterCallback);
                        }
                        p10.menu.startDispatchingItemsChanged();
                        return v5;
                    }
                }
                p10.isPrepared = 1;
                p10.isHandled = 0;
                this.mPreparedPanel = p10;
                v5 = 1;
            } else {
                v5 = 1;
            }
        }
        return v5;
    }

    private void reopenMenu(androidx.appcompat.view.menu.MenuBuilder p8, boolean p9)
    {
        if ((this.mDecorContentParent == null) || ((!this.mDecorContentParent.canShowOverflowMenu()) || ((android.view.ViewConfiguration.get(this.mContext).hasPermanentMenuKey()) && (!this.mDecorContentParent.isOverflowMenuShowPending())))) {
            androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState v1_0 = this.getPanelState(0, 1);
            v1_0.refreshDecorView = 1;
            this.closePanel(v1_0, 0);
            this.openPanel(v1_0, 0);
        } else {
            android.view.Window$Callback v0 = this.getWindowCallback();
            if ((this.mDecorContentParent.isOverflowMenuShowing()) && (p9)) {
                this.mDecorContentParent.hideOverflowMenu();
                if (!this.mIsDestroyed) {
                    v0.onPanelClosed(108, this.getPanelState(0, 1).menu);
                }
            } else {
                if ((v0 != null) && (!this.mIsDestroyed)) {
                    if ((this.mInvalidatePanelMenuPosted) && ((this.mInvalidatePanelMenuFeatures & 1) != 0)) {
                        this.mWindow.getDecorView().removeCallbacks(this.mInvalidatePanelMenuRunnable);
                        this.mInvalidatePanelMenuRunnable.run();
                    }
                    androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState v1_2 = this.getPanelState(0, 1);
                    if ((v1_2.menu != null) && ((!v1_2.refreshMenuContent) && (v0.onPreparePanel(0, v1_2.createdPanelView, v1_2.menu)))) {
                        v0.onMenuOpened(108, v1_2.menu);
                        this.mDecorContentParent.showOverflowMenu();
                    }
                }
            }
        }
        return;
    }

    private int sanitizeWindowFeatureId(int p3)
    {
        if (p3 != 8) {
            if (p3 == 9) {
                android.util.Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
                p3 = 109;
            }
        } else {
            android.util.Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            p3 = 108;
        }
        return p3;
    }

    private boolean shouldInheritContext(android.view.ViewParent p4)
    {
        boolean v1_2;
        if (p4 != null) {
            android.view.View v0 = this.mWindow.getDecorView();
            while (p4 != null) {
                if ((p4 != v0) && (((p4 instanceof android.view.View)) && (!androidx.core.view.ViewCompat.isAttachedToWindow(((android.view.View) p4))))) {
                    p4 = p4.getParent();
                } else {
                    v1_2 = 0;
                }
            }
            v1_2 = 1;
        } else {
            v1_2 = 0;
        }
        return v1_2;
    }

    private boolean shouldRecreateOnNightModeChange()
    {
        String v3 = 1;
        if ((!this.mApplyDayNightCalled) || (!(this.mContext instanceof android.app.Activity))) {
            v3 = 0;
        } else {
            try {
                if ((this.mContext.getPackageManager().getActivityInfo(new android.content.ComponentName(this.mContext, this.mContext.getClass()), 0).configChanges & 512) != 0) {
                    v3 = 0;
                }
            } catch (android.content.pm.PackageManager$NameNotFoundException v0) {
                android.util.Log.d("AppCompatDelegate", "Exception while getting ActivityInfo", v0);
            }
        }
        return v3;
    }

    private void throwFeatureRequestIfSubDecorInstalled()
    {
        if (!this.mSubDecorInstalled) {
            return;
        } else {
            throw new android.util.AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    private boolean updateForNightMode(int p10)
    {
        int v5;
        android.content.res.Resources v6 = this.mContext.getResources();
        android.content.res.Configuration v1 = v6.getConfiguration();
        if (p10 != 2) {
            v5 = 16;
        } else {
            v5 = 32;
        }
        int v7_1;
        if ((v1.uiMode & 48) == v5) {
            v7_1 = 0;
        } else {
            if (!this.shouldRecreateOnNightModeChange()) {
                android.content.res.Configuration v2_1 = new android.content.res.Configuration(v1);
                android.util.DisplayMetrics v4 = v6.getDisplayMetrics();
                v2_1.uiMode = ((v2_1.uiMode & -49) | v5);
                v6.updateConfiguration(v2_1, v4);
                if (android.os.Build$VERSION.SDK_INT < 26) {
                    androidx.appcompat.app.ResourcesFlusher.flush(v6);
                }
            } else {
                ((android.app.Activity) this.mContext).recreate();
            }
            v7_1 = 1;
        }
        return v7_1;
    }

    public void addContentView(android.view.View p4, android.view.ViewGroup$LayoutParams p5)
    {
        this.ensureSubDecor();
        ((android.view.ViewGroup) this.mSubDecor.findViewById(16908290)).addView(p4, p5);
        this.mOriginalWindowCallback.onContentChanged();
        return;
    }

    public boolean applyDayNight()
    {
        boolean v0 = 0;
        int v2 = this.getNightMode();
        int v1 = this.mapNightMode(v2);
        if (v1 != -1) {
            v0 = this.updateForNightMode(v1);
        }
        if (v2 == 0) {
            this.ensureAutoNightModeManager();
            this.mAutoNightModeManager.setup();
        }
        this.mApplyDayNightCalled = 1;
        return v0;
    }

    void callOnPanelClosed(int p2, androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState p3, android.view.Menu p4)
    {
        if (p4 == null) {
            if ((p3 == null) && ((p2 >= 0) && (p2 < this.mPanels.length))) {
                p3 = this.mPanels[p2];
            }
            if (p3 != null) {
                p4 = p3.menu;
            }
        }
        if (((p3 == null) || (p3.isOpen)) && (!this.mIsDestroyed)) {
            this.mOriginalWindowCallback.onPanelClosed(p2, p4);
        }
        return;
    }

    void checkCloseActionMenu(androidx.appcompat.view.menu.MenuBuilder p3)
    {
        if (!this.mClosingActionMenu) {
            this.mClosingActionMenu = 1;
            this.mDecorContentParent.dismissPopups();
            android.view.Window$Callback v0 = this.getWindowCallback();
            if ((v0 != null) && (!this.mIsDestroyed)) {
                v0.onPanelClosed(108, p3);
            }
            this.mClosingActionMenu = 0;
        }
        return;
    }

    void closePanel(int p3)
    {
        this.closePanel(this.getPanelState(p3, 1), 1);
        return;
    }

    void closePanel(androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState p6, boolean p7)
    {
        if ((!p7) || ((p6.featureId != 0) || ((this.mDecorContentParent == null) || (!this.mDecorContentParent.isOverflowMenuShowing())))) {
            android.view.WindowManager v0_1 = ((android.view.WindowManager) this.mContext.getSystemService("window"));
            if ((v0_1 != null) && ((p6.isOpen) && (p6.decorView != null))) {
                v0_1.removeView(p6.decorView);
                if (p7) {
                    this.callOnPanelClosed(p6.featureId, p6, 0);
                }
            }
            p6.isPrepared = 0;
            p6.isHandled = 0;
            p6.isOpen = 0;
            p6.shownPanelView = 0;
            p6.refreshDecorView = 1;
            if (this.mPreparedPanel == p6) {
                this.mPreparedPanel = 0;
            }
        } else {
            this.checkCloseActionMenu(p6.menu);
        }
        return;
    }

    public android.view.View createView(android.view.View p15, String p16, android.content.Context p17, android.util.AttributeSet p18)
    {
        if (this.mAppCompatViewInflater == null) {
            String v13 = this.mContext.obtainStyledAttributes(androidx.appcompat.R$styleable.AppCompatTheme).getString(androidx.appcompat.R$styleable.AppCompatTheme_viewInflaterClass);
            if ((v13 != null) && (!androidx.appcompat.app.AppCompatViewInflater.getName().equals(v13))) {
                try {
                    androidx.appcompat.app.AppCompatViewInflater v1_5 = new Class[0];
                    String v2_1 = new Object[0];
                    this.mAppCompatViewInflater = ((androidx.appcompat.app.AppCompatViewInflater) Class.forName(v13).getDeclaredConstructor(v1_5).newInstance(v2_1));
                } catch (Throwable v11) {
                    android.util.Log.i("AppCompatDelegate", new StringBuilder().append("Failed to instantiate custom view inflater ").append(v13).append(". Falling back to default.").toString(), v11);
                    this.mAppCompatViewInflater = new androidx.appcompat.app.AppCompatViewInflater();
                }
            } else {
                this.mAppCompatViewInflater = new androidx.appcompat.app.AppCompatViewInflater();
            }
        }
        int v6 = 0;
        if (androidx.appcompat.app.AppCompatDelegateImpl.IS_PRE_LOLLIPOP) {
            if (!(p18 instanceof org.xmlpull.v1.XmlPullParser)) {
                v6 = this.shouldInheritContext(((android.view.ViewParent) p15));
            } else {
                if (((org.xmlpull.v1.XmlPullParser) p18).getDepth() <= 1) {
                    v6 = 0;
                } else {
                    v6 = 1;
                }
            }
        }
        return this.mAppCompatViewInflater.createView(p15, p16, p17, p18, v6, androidx.appcompat.app.AppCompatDelegateImpl.IS_PRE_LOLLIPOP, 1, androidx.appcompat.widget.VectorEnabledTintResources.shouldBeUsed());
    }

    void dismissPopups()
    {
        if (this.mDecorContentParent != null) {
            this.mDecorContentParent.dismissPopups();
        }
        if (this.mActionModePopup != null) {
            this.mWindow.getDecorView().removeCallbacks(this.mShowActionModePopup);
            if (this.mActionModePopup.isShowing()) {
                try {
                    this.mActionModePopup.dismiss();
                } catch (androidx.appcompat.view.menu.MenuBuilder v1) {
                }
            }
            this.mActionModePopup = 0;
        }
        this.endOnGoingFadeAnimation();
        androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState v0 = this.getPanelState(0, 0);
        if ((v0 != null) && (v0.menu != null)) {
            v0.menu.close();
        }
        return;
    }

    boolean dispatchKeyEvent(android.view.KeyEvent p8)
    {
        boolean v4 = 1;
        if ((!(this.mOriginalWindowCallback instanceof androidx.core.view.KeyEventDispatcher$Component)) && (!(this.mOriginalWindowCallback instanceof androidx.appcompat.app.AppCompatDialog))) {
            if ((p8.getKeyCode() != 82) || (!this.mOriginalWindowCallback.dispatchKeyEvent(p8))) {
                int v1;
                int v2 = p8.getKeyCode();
                if (p8.getAction() != 0) {
                    v1 = 0;
                } else {
                    v1 = 1;
                }
                if (v1 == 0) {
                    v4 = this.onKeyUp(v2, p8);
                } else {
                    v4 = this.onKeyDown(v2, p8);
                }
            }
        } else {
            android.view.View v3 = this.mWindow.getDecorView();
            if ((v3 == null) || (!androidx.core.view.KeyEventDispatcher.dispatchBeforeHierarchy(v3, p8))) {
            }
        }
        return v4;
    }

    void doInvalidatePanelMenu(int p6)
    {
        androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState v1_1 = this.getPanelState(p6, 1);
        if (v1_1.menu != null) {
            android.os.Bundle v0_1 = new android.os.Bundle();
            v1_1.menu.saveActionViewStates(v0_1);
            if (v0_1.size() > 0) {
                v1_1.frozenActionViewState = v0_1;
            }
            v1_1.menu.stopDispatchingItemsChanged();
            v1_1.menu.clear();
        }
        v1_1.refreshMenuContent = 1;
        v1_1.refreshDecorView = 1;
        if (((p6 == 108) || (p6 == 0)) && (this.mDecorContentParent != null)) {
            androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState v1_0 = this.getPanelState(0, 0);
            if (v1_0 != null) {
                v1_0.isPrepared = 0;
                this.preparePanel(v1_0, 0);
            }
        }
        return;
    }

    void endOnGoingFadeAnimation()
    {
        if (this.mFadeAnim != null) {
            this.mFadeAnim.cancel();
        }
        return;
    }

    androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState findMenuPanel(android.view.Menu p6)
    {
        int v0;
        androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState[] v3 = this.mPanels;
        if (v3 == null) {
            v0 = 0;
        } else {
            v0 = v3.length;
        }
        int v1 = 0;
        while (v1 < v0) {
            int v2 = v3[v1];
            if ((v2 == 0) || (v2.menu != p6)) {
                v1++;
            }
            return v2;
        }
        v2 = 0;
        return v2;
    }

    public android.view.View findViewById(int p2)
    {
        this.ensureSubDecor();
        return this.mWindow.findViewById(p2);
    }

    final android.content.Context getActionBarThemedContext()
    {
        android.content.Context v1 = 0;
        androidx.appcompat.app.ActionBar v0 = this.getSupportActionBar();
        if (v0 != null) {
            v1 = v0.getThemedContext();
        }
        if (v1 == null) {
            v1 = this.mContext;
        }
        return v1;
    }

    final androidx.appcompat.app.AppCompatDelegateImpl$AutoNightModeManager getAutoNightModeManager()
    {
        this.ensureAutoNightModeManager();
        return this.mAutoNightModeManager;
    }

    public final androidx.appcompat.app.ActionBarDrawerToggle$Delegate getDrawerToggleDelegate()
    {
        return new androidx.appcompat.app.AppCompatDelegateImpl$ActionBarDrawableToggleImpl(this);
    }

    public android.view.MenuInflater getMenuInflater()
    {
        if (this.mMenuInflater == null) {
            android.content.Context v0_3;
            this.initWindowDecorActionBar();
            if (this.mActionBar == null) {
                v0_3 = this.mContext;
            } else {
                v0_3 = this.mActionBar.getThemedContext();
            }
            this.mMenuInflater = new androidx.appcompat.view.SupportMenuInflater(v0_3);
        }
        return this.mMenuInflater;
    }

    protected androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState getPanelState(int p6, boolean p7)
    {
        androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState[] v0 = this.mPanels;
        if ((v0 == null) || (v0.length <= p6)) {
            androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState[] v1 = new androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState[(p6 + 1)];
            if (v0 != null) {
                System.arraycopy(v0, 0, v1, 0, v0.length);
            }
            v0 = v1;
            this.mPanels = v1;
        }
        androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState v2_0 = v0[p6];
        if (v2_0 == null) {
            v2_0 = new androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState(p6);
            v0[p6] = v2_0;
        }
        return v2_0;
    }

    android.view.ViewGroup getSubDecor()
    {
        return this.mSubDecor;
    }

    public androidx.appcompat.app.ActionBar getSupportActionBar()
    {
        this.initWindowDecorActionBar();
        return this.mActionBar;
    }

    final CharSequence getTitle()
    {
        CharSequence v0_2;
        if (!(this.mOriginalWindowCallback instanceof android.app.Activity)) {
            v0_2 = this.mTitle;
        } else {
            v0_2 = ((android.app.Activity) this.mOriginalWindowCallback).getTitle();
        }
        return v0_2;
    }

    final android.view.Window$Callback getWindowCallback()
    {
        return this.mWindow.getCallback();
    }

    public boolean hasWindowFeature(int p3)
    {
        boolean v0 = 0;
        switch (this.sanitizeWindowFeatureId(p3)) {
            case 1:
                v0 = this.mWindowNoTitle;
                break;
            case 2:
                v0 = this.mFeatureProgress;
                break;
            case 5:
                v0 = this.mFeatureIndeterminateProgress;
                break;
            case 10:
                v0 = this.mOverlayActionMode;
                break;
            case 108:
                v0 = this.mHasActionBar;
                break;
            case 109:
                v0 = this.mOverlayActionBar;
                break;
            default:
                int v1_2;
                if (v0) {
                    v1_2 = 1;
                    return v1_2;
                } else {
                    if (!this.mWindow.hasFeature(p3)) {
                        v1_2 = 0;
                        return v1_2;
                    } else {
                    }
                }
        }
        if ((!v0) && (!this.mWindow.hasFeature(p3))) {
        }
        return v1_2;
    }

    public void installViewFactory()
    {
        android.view.LayoutInflater v0 = android.view.LayoutInflater.from(this.mContext);
        if (v0.getFactory() != null) {
            if (!(v0.getFactory2() instanceof androidx.appcompat.app.AppCompatDelegateImpl)) {
                android.util.Log.i("AppCompatDelegate", "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s");
            }
        } else {
            androidx.core.view.LayoutInflaterCompat.setFactory2(v0, this);
        }
        return;
    }

    public void invalidateOptionsMenu()
    {
        androidx.appcompat.app.ActionBar v0 = this.getSupportActionBar();
        if ((v0 == null) || (!v0.invalidateOptionsMenu())) {
            this.invalidatePanelMenu(0);
        }
        return;
    }

    public boolean isHandleNativeActionModesEnabled()
    {
        return this.mHandleNativeActionModes;
    }

    int mapNightMode(int p5)
    {
        switch (p5) {
            case -100:
                p5 = -1;
                break;
            case 0:
                if ((android.os.Build$VERSION.SDK_INT < 23) || (((android.app.UiModeManager) this.mContext.getSystemService(android.app.UiModeManager)).getNightMode() != 0)) {
                    this.ensureAutoNightModeManager();
                    p5 = this.mAutoNightModeManager.getApplyableNightMode();
                } else {
                    p5 = -1;
                }
                break;
        }
        return p5;
    }

    boolean onBackPressed()
    {
        int v1 = 1;
        if (this.mActionMode == null) {
            androidx.appcompat.app.ActionBar v0 = this.getSupportActionBar();
            if ((v0 == null) || (!v0.collapseActionView())) {
                v1 = 0;
            }
        } else {
            this.mActionMode.finish();
        }
        return v1;
    }

    public void onConfigurationChanged(android.content.res.Configuration p4)
    {
        if ((this.mHasActionBar) && (this.mSubDecorInstalled)) {
            androidx.appcompat.app.ActionBar v0 = this.getSupportActionBar();
            if (v0 != null) {
                v0.onConfigurationChanged(p4);
            }
        }
        androidx.appcompat.widget.AppCompatDrawableManager.get().onConfigurationChanged(this.mContext);
        this.applyDayNight();
        return;
    }

    public void onCreate(android.os.Bundle p6)
    {
        if ((this.mOriginalWindowCallback instanceof android.app.Activity)) {
            try {
                String v1 = androidx.core.app.NavUtils.getParentActivityName(((android.app.Activity) this.mOriginalWindowCallback));
            } catch (int v2) {
            }
            if (v1 != null) {
                androidx.appcompat.app.ActionBar v0 = this.peekSupportActionBar();
                if (v0 != null) {
                    v0.setDefaultDisplayHomeAsUpEnabled(1);
                } else {
                    this.mEnableDefaultActionBarUp = 1;
                }
            }
        }
        if ((p6 != null) && (this.mLocalNightMode == -100)) {
            this.mLocalNightMode = p6.getInt("appcompat:local_night_mode", -100);
        }
        return;
    }

    public final android.view.View onCreateView(android.view.View p2, String p3, android.content.Context p4, android.util.AttributeSet p5)
    {
        return this.createView(p2, p3, p4, p5);
    }

    public android.view.View onCreateView(String p2, android.content.Context p3, android.util.AttributeSet p4)
    {
        return this.onCreateView(0, p2, p3, p4);
    }

    public void onDestroy()
    {
        if (this.mInvalidatePanelMenuPosted) {
            this.mWindow.getDecorView().removeCallbacks(this.mInvalidatePanelMenuRunnable);
        }
        this.mIsDestroyed = 1;
        if (this.mActionBar != null) {
            this.mActionBar.onDestroy();
        }
        if (this.mAutoNightModeManager != null) {
            this.mAutoNightModeManager.cleanup();
        }
        return;
    }

    boolean onKeyDown(int p4, android.view.KeyEvent p5)
    {
        int v0 = 1;
        switch (p4) {
            case 4:
                if ((p5.getFlags() & 128) == 0) {
                    v0 = 0;
                }
                this.mLongPressBackDown = v0;
                v0 = 0;
                break;
            case 82:
                this.onKeyDownPanel(0, p5);
                break;
            default:
        }
        return v0;
    }

    boolean onKeyShortcut(int p8, android.view.KeyEvent p9)
    {
        androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState v3 = 1;
        androidx.appcompat.app.ActionBar v0 = this.getSupportActionBar();
        if ((v0 == null) || (!v0.onKeyShortcut(p8, p9))) {
            if ((this.mPreparedPanel == null) || (!this.performPanelShortcut(this.mPreparedPanel, p9.getKeyCode(), p9, 1))) {
                if (this.mPreparedPanel == null) {
                    androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState v2 = this.getPanelState(0, 1);
                    this.preparePanel(v2, p9);
                    boolean v1_1 = this.performPanelShortcut(v2, p9.getKeyCode(), p9, 1);
                    v2.isPrepared = 0;
                    if (v1_1) {
                        return v3;
                    }
                }
                v3 = 0;
            } else {
                if (this.mPreparedPanel != null) {
                    this.mPreparedPanel.isHandled = 1;
                }
            }
        }
        return v3;
    }

    boolean onKeyUp(int p6, android.view.KeyEvent p7)
    {
        int v2 = 1;
        switch (p6) {
            case 4:
                boolean v1 = this.mLongPressBackDown;
                this.mLongPressBackDown = 0;
                androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState v0 = this.getPanelState(0, 0);
                if ((v0 == null) || (!v0.isOpen)) {
                    if (!this.onBackPressed()) {
                        v2 = 0;
                    } else {
                    }
                } else {
                    if (v1) {
                    } else {
                        this.closePanel(v0, 1);
                    }
                }
                break;
            case 82:
                this.onKeyUpPanel(0, p7);
                break;
            default:
        }
        return v2;
    }

    public boolean onMenuItemSelected(androidx.appcompat.view.menu.MenuBuilder p4, android.view.MenuItem p5)
    {
        boolean v2_0;
        android.view.Window$Callback v0 = this.getWindowCallback();
        if ((v0 == null) || (this.mIsDestroyed)) {
            v2_0 = 0;
        } else {
            androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState v1 = this.findMenuPanel(p4.getRootMenu());
            if (v1 == null) {
            } else {
                v2_0 = v0.onMenuItemSelected(v1.featureId, p5);
            }
        }
        return v2_0;
    }

    public void onMenuModeChange(androidx.appcompat.view.menu.MenuBuilder p2)
    {
        this.reopenMenu(p2, 1);
        return;
    }

    void onMenuOpened(int p3)
    {
        if (p3 == 108) {
            androidx.appcompat.app.ActionBar v0 = this.getSupportActionBar();
            if (v0 != null) {
                v0.dispatchMenuVisibilityChanged(1);
            }
        }
        return;
    }

    void onPanelClosed(int p5)
    {
        if (p5 != 108) {
            if (p5 == 0) {
                androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState v1 = this.getPanelState(p5, 1);
                if (v1.isOpen) {
                    this.closePanel(v1, 0);
                }
            }
        } else {
            androidx.appcompat.app.ActionBar v0 = this.getSupportActionBar();
            if (v0 != null) {
                v0.dispatchMenuVisibilityChanged(0);
            }
        }
        return;
    }

    public void onPostCreate(android.os.Bundle p1)
    {
        this.ensureSubDecor();
        return;
    }

    public void onPostResume()
    {
        androidx.appcompat.app.ActionBar v0 = this.getSupportActionBar();
        if (v0 != null) {
            v0.setShowHideAnimationEnabled(1);
        }
        return;
    }

    public void onSaveInstanceState(android.os.Bundle p3)
    {
        if (this.mLocalNightMode != -100) {
            p3.putInt("appcompat:local_night_mode", this.mLocalNightMode);
        }
        return;
    }

    public void onStart()
    {
        this.applyDayNight();
        return;
    }

    public void onStop()
    {
        androidx.appcompat.app.ActionBar v0 = this.getSupportActionBar();
        if (v0 != null) {
            v0.setShowHideAnimationEnabled(0);
        }
        if (this.mAutoNightModeManager != null) {
            this.mAutoNightModeManager.cleanup();
        }
        return;
    }

    void onSubDecorInstalled(android.view.ViewGroup p1)
    {
        return;
    }

    final androidx.appcompat.app.ActionBar peekSupportActionBar()
    {
        return this.mActionBar;
    }

    public boolean requestWindowFeature(int p4)
    {
        int v0_0 = 0;
        int v4_1 = this.sanitizeWindowFeatureId(p4);
        if ((!this.mWindowNoTitle) || (v4_1 != 108)) {
            if ((this.mHasActionBar) && (v4_1 == 1)) {
                this.mHasActionBar = 0;
            }
            switch (v4_1) {
                case 1:
                    this.throwFeatureRequestIfSubDecorInstalled();
                    this.mWindowNoTitle = 1;
                    v0_0 = 1;
                    break;
                case 2:
                    this.throwFeatureRequestIfSubDecorInstalled();
                    this.mFeatureProgress = 1;
                    v0_0 = 1;
                    break;
                case 5:
                    this.throwFeatureRequestIfSubDecorInstalled();
                    this.mFeatureIndeterminateProgress = 1;
                    v0_0 = 1;
                    break;
                case 10:
                    this.throwFeatureRequestIfSubDecorInstalled();
                    this.mOverlayActionMode = 1;
                    v0_0 = 1;
                    break;
                case 108:
                    this.throwFeatureRequestIfSubDecorInstalled();
                    this.mHasActionBar = 1;
                    v0_0 = 1;
                    break;
                case 109:
                    this.throwFeatureRequestIfSubDecorInstalled();
                    this.mOverlayActionBar = 1;
                    v0_0 = 1;
                    break;
                default:
                    v0_0 = this.mWindow.requestFeature(v4_1);
            }
        }
        return v0_0;
    }

    public void setContentView(int p4)
    {
        this.ensureSubDecor();
        android.view.ViewGroup v0_1 = ((android.view.ViewGroup) this.mSubDecor.findViewById(16908290));
        v0_1.removeAllViews();
        android.view.LayoutInflater.from(this.mContext).inflate(p4, v0_1);
        this.mOriginalWindowCallback.onContentChanged();
        return;
    }

    public void setContentView(android.view.View p4)
    {
        this.ensureSubDecor();
        android.view.ViewGroup v0_1 = ((android.view.ViewGroup) this.mSubDecor.findViewById(16908290));
        v0_1.removeAllViews();
        v0_1.addView(p4);
        this.mOriginalWindowCallback.onContentChanged();
        return;
    }

    public void setContentView(android.view.View p4, android.view.ViewGroup$LayoutParams p5)
    {
        this.ensureSubDecor();
        android.view.ViewGroup v0_1 = ((android.view.ViewGroup) this.mSubDecor.findViewById(16908290));
        v0_1.removeAllViews();
        v0_1.addView(p4, p5);
        this.mOriginalWindowCallback.onContentChanged();
        return;
    }

    public void setHandleNativeActionModesEnabled(boolean p1)
    {
        this.mHandleNativeActionModes = p1;
        return;
    }

    public void setLocalNightMode(int p3)
    {
        switch (p3) {
            case -1:
            case 0:
            case 1:
            case 2:
                if (this.mLocalNightMode == p3) {
                } else {
                    this.mLocalNightMode = p3;
                    if (!this.mApplyDayNightCalled) {
                    } else {
                        this.applyDayNight();
                    }
                }
                break;
            default:
                android.util.Log.i("AppCompatDelegate", "setLocalNightMode() called with an unknown mode");
        }
        return;
    }

    public void setSupportActionBar(androidx.appcompat.widget.Toolbar p5)
    {
        if ((this.mOriginalWindowCallback instanceof android.app.Activity)) {
            androidx.appcompat.app.ActionBar v0 = this.getSupportActionBar();
            if (!(v0 instanceof androidx.appcompat.app.WindowDecorActionBar)) {
                this.mMenuInflater = 0;
                if (v0 != null) {
                    v0.onDestroy();
                }
                if (p5 == null) {
                    this.mActionBar = 0;
                    this.mWindow.setCallback(this.mAppCompatWindowCallback);
                } else {
                    androidx.appcompat.app.ToolbarActionBar v1_1 = new androidx.appcompat.app.ToolbarActionBar(p5, ((android.app.Activity) this.mOriginalWindowCallback).getTitle(), this.mAppCompatWindowCallback);
                    this.mActionBar = v1_1;
                    this.mWindow.setCallback(v1_1.getWrappedWindowCallback());
                }
                this.invalidateOptionsMenu();
            } else {
                throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
            }
        }
        return;
    }

    public final void setTitle(CharSequence p2)
    {
        this.mTitle = p2;
        if (this.mDecorContentParent == null) {
            if (this.peekSupportActionBar() == null) {
                if (this.mTitleView != null) {
                    this.mTitleView.setText(p2);
                }
            } else {
                this.peekSupportActionBar().setWindowTitle(p2);
            }
        } else {
            this.mDecorContentParent.setWindowTitle(p2);
        }
        return;
    }

    final boolean shouldAnimateActionModeView()
    {
        if ((!this.mSubDecorInstalled) || ((this.mSubDecor == null) || (!androidx.core.view.ViewCompat.isLaidOut(this.mSubDecor)))) {
            int v0_4 = 0;
        } else {
            v0_4 = 1;
        }
        return v0_4;
    }

    public androidx.appcompat.view.ActionMode startSupportActionMode(androidx.appcompat.view.ActionMode$Callback p5)
    {
        if (p5 != null) {
            if (this.mActionMode != null) {
                this.mActionMode.finish();
            }
            androidx.appcompat.app.AppCompatDelegateImpl$ActionModeCallbackWrapperV9 v1_1 = new androidx.appcompat.app.AppCompatDelegateImpl$ActionModeCallbackWrapperV9(this, p5);
            androidx.appcompat.app.ActionBar v0 = this.getSupportActionBar();
            if (v0 != null) {
                this.mActionMode = v0.startActionMode(v1_1);
                if ((this.mActionMode != null) && (this.mAppCompatCallback != null)) {
                    this.mAppCompatCallback.onSupportActionModeStarted(this.mActionMode);
                }
            }
            if (this.mActionMode == null) {
                this.mActionMode = this.startSupportActionModeFromWindow(v1_1);
            }
            return this.mActionMode;
        } else {
            throw new IllegalArgumentException("ActionMode callback can not be null.");
        }
    }

    androidx.appcompat.view.ActionMode startSupportActionModeFromWindow(androidx.appcompat.view.ActionMode$Callback p12)
    {
        this.endOnGoingFadeAnimation();
        if (this.mActionMode != null) {
            this.mActionMode.finish();
        }
        if (!(p12 instanceof androidx.appcompat.app.AppCompatDelegateImpl$ActionModeCallbackWrapperV9)) {
            p12 = new androidx.appcompat.app.AppCompatDelegateImpl$ActionModeCallbackWrapperV9(this, p12);
        }
        androidx.appcompat.view.StandaloneActionMode v5_0 = 0;
        if ((this.mAppCompatCallback != null) && (!this.mIsDestroyed)) {
            try {
                v5_0 = this.mAppCompatCallback.onWindowStartingSupportActionMode(p12);
            } catch (android.view.View v8) {
            }
        }
        if (v5_0 == null) {
            if (this.mActionModeView == null) {
                if (!this.mIsFloating) {
                    androidx.appcompat.widget.ViewStubCompat v7_1 = ((androidx.appcompat.widget.ViewStubCompat) this.mSubDecor.findViewById(androidx.appcompat.R$id.action_mode_bar_stub));
                    if (v7_1 != null) {
                        v7_1.setLayoutInflater(android.view.LayoutInflater.from(this.getActionBarThemedContext()));
                        this.mActionModeView = ((androidx.appcompat.widget.ActionBarContextView) v7_1.inflate());
                    }
                } else {
                    android.content.Context v0_0;
                    android.util.TypedValue v6_1 = new android.util.TypedValue();
                    android.content.res.Resources$Theme v2 = this.mContext.getTheme();
                    v2.resolveAttribute(androidx.appcompat.R$attr.actionBarTheme, v6_1, 1);
                    if (v6_1.resourceId == 0) {
                        v0_0 = this.mContext;
                    } else {
                        android.content.res.Resources$Theme v1 = this.mContext.getResources().newTheme();
                        v1.setTo(v2);
                        v1.applyStyle(v6_1.resourceId, 1);
                        v0_0 = new androidx.appcompat.view.ContextThemeWrapper(this.mContext, 0);
                        v0_0.getTheme().setTo(v1);
                    }
                    this.mActionModeView = new androidx.appcompat.widget.ActionBarContextView(v0_0);
                    this.mActionModePopup = new android.widget.PopupWindow(v0_0, 0, androidx.appcompat.R$attr.actionModePopupWindowStyle);
                    androidx.core.widget.PopupWindowCompat.setWindowLayoutType(this.mActionModePopup, 2);
                    this.mActionModePopup.setContentView(this.mActionModeView);
                    this.mActionModePopup.setWidth(-1);
                    v0_0.getTheme().resolveAttribute(androidx.appcompat.R$attr.actionBarSize, v6_1, 1);
                    this.mActionModeView.setContentHeight(android.util.TypedValue.complexToDimensionPixelSize(v6_1.data, v0_0.getResources().getDisplayMetrics()));
                    this.mActionModePopup.setHeight(-2);
                    this.mShowActionModePopup = new androidx.appcompat.app.AppCompatDelegateImpl$6(this);
                }
            }
            if (this.mActionModeView != null) {
                android.view.View v8_8;
                this.endOnGoingFadeAnimation();
                this.mActionModeView.killMode();
                android.content.Context vtmp5 = this.mActionModeView.getContext();
                if (this.mActionModePopup != null) {
                    v8_8 = 0;
                } else {
                    v8_8 = 1;
                }
                androidx.appcompat.view.StandaloneActionMode v5_2 = new androidx.appcompat.view.StandaloneActionMode(vtmp5, this.mActionModeView, p12, v8_8);
                if (!p12.onCreateActionMode(v5_2, v5_2.getMenu())) {
                    this.mActionMode = 0;
                } else {
                    v5_2.invalidate();
                    this.mActionModeView.initForMode(v5_2);
                    this.mActionMode = v5_2;
                    if (!this.shouldAnimateActionModeView()) {
                        this.mActionModeView.setAlpha(1065353216);
                        this.mActionModeView.setVisibility(0);
                        this.mActionModeView.sendAccessibilityEvent(32);
                        if ((this.mActionModeView.getParent() instanceof android.view.View)) {
                            androidx.core.view.ViewCompat.requestApplyInsets(((android.view.View) this.mActionModeView.getParent()));
                        }
                    } else {
                        this.mActionModeView.setAlpha(0);
                        this.mFadeAnim = androidx.core.view.ViewCompat.animate(this.mActionModeView).alpha(1065353216);
                        this.mFadeAnim.setListener(new androidx.appcompat.app.AppCompatDelegateImpl$7(this));
                    }
                    if (this.mActionModePopup != null) {
                        this.mWindow.getDecorView().post(this.mShowActionModePopup);
                    }
                }
            }
        } else {
            this.mActionMode = v5_0;
        }
        if ((this.mActionMode != null) && (this.mAppCompatCallback != null)) {
            this.mAppCompatCallback.onSupportActionModeStarted(this.mActionMode);
        }
        return this.mActionMode;
    }

    int updateStatusGuard(int p13)
    {
        int v7 = 0;
        int v6 = 0;
        if ((this.mActionModeView != null) && ((this.mActionModeView.getLayoutParams() instanceof android.view.ViewGroup$MarginLayoutParams))) {
            android.view.ViewGroup$MarginLayoutParams v3_1 = ((android.view.ViewGroup$MarginLayoutParams) this.mActionModeView.getLayoutParams());
            int v4 = 0;
            if (!this.mActionModeView.isShown()) {
                if (v3_1.topMargin != 0) {
                    v4 = 1;
                    v3_1.topMargin = 0;
                }
            } else {
                if (this.mTempRect1 == null) {
                    this.mTempRect1 = new android.graphics.Rect();
                    this.mTempRect2 = new android.graphics.Rect();
                }
                int v5;
                android.graphics.Rect v0 = this.mTempRect1;
                android.graphics.Rect v1 = this.mTempRect2;
                v0.set(0, p13, 0, 0);
                androidx.appcompat.widget.ViewUtils.computeFitSystemWindows(this.mSubDecor, v0, v1);
                if (v1.top != 0) {
                    v5 = 0;
                } else {
                    v5 = p13;
                }
                if (v3_1.topMargin != v5) {
                    v4 = 1;
                    v3_1.topMargin = p13;
                    if (this.mStatusGuard != null) {
                        android.view.ViewGroup$LayoutParams v2 = this.mStatusGuard.getLayoutParams();
                        if (v2.height != p13) {
                            v2.height = p13;
                            this.mStatusGuard.setLayoutParams(v2);
                        }
                    } else {
                        this.mStatusGuard = new android.view.View(this.mContext);
                        this.mStatusGuard.setBackgroundColor(this.mContext.getResources().getColor(androidx.appcompat.R$color.abc_input_method_navigation_guard));
                        this.mSubDecor.addView(this.mStatusGuard, -1, new android.view.ViewGroup$LayoutParams(-1, p13));
                    }
                }
                if (this.mStatusGuard == null) {
                    v6 = 0;
                } else {
                    v6 = 1;
                }
                if ((!this.mOverlayActionMode) && (v6 != 0)) {
                    p13 = 0;
                }
            }
            if (v4 != 0) {
                this.mActionModeView.setLayoutParams(v3_1);
            }
        }
        if (this.mStatusGuard != null) {
            if (v6 == 0) {
                v7 = 8;
            }
            this.mStatusGuard.setVisibility(v7);
        }
        return p13;
    }
}
