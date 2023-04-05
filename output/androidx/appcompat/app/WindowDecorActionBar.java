package androidx.appcompat.app;
public class WindowDecorActionBar extends androidx.appcompat.app.ActionBar implements androidx.appcompat.widget.ActionBarOverlayLayout$ActionBarVisibilityCallback {
    static final synthetic boolean $assertionsDisabled = False;
    private static final long FADE_IN_DURATION_MS = 200;
    private static final long FADE_OUT_DURATION_MS = 100;
    private static final int INVALID_POSITION = 255;
    private static final String TAG = "WindowDecorActionBar";
    private static final android.view.animation.Interpolator sHideInterpolator;
    private static final android.view.animation.Interpolator sShowInterpolator;
    androidx.appcompat.app.WindowDecorActionBar$ActionModeImpl mActionMode;
    private android.app.Activity mActivity;
    androidx.appcompat.widget.ActionBarContainer mContainerView;
    boolean mContentAnimations;
    android.view.View mContentView;
    android.content.Context mContext;
    androidx.appcompat.widget.ActionBarContextView mContextView;
    private int mCurWindowVisibility;
    androidx.appcompat.view.ViewPropertyAnimatorCompatSet mCurrentShowAnim;
    androidx.appcompat.widget.DecorToolbar mDecorToolbar;
    androidx.appcompat.view.ActionMode mDeferredDestroyActionMode;
    androidx.appcompat.view.ActionMode$Callback mDeferredModeDestroyCallback;
    private android.app.Dialog mDialog;
    private boolean mDisplayHomeAsUpSet;
    private boolean mHasEmbeddedTabs;
    boolean mHiddenByApp;
    boolean mHiddenBySystem;
    final androidx.core.view.ViewPropertyAnimatorListener mHideListener;
    boolean mHideOnContentScroll;
    private boolean mLastMenuVisibility;
    private java.util.ArrayList mMenuVisibilityListeners;
    private boolean mNowShowing;
    androidx.appcompat.widget.ActionBarOverlayLayout mOverlayLayout;
    private int mSavedTabPosition;
    private androidx.appcompat.app.WindowDecorActionBar$TabImpl mSelectedTab;
    private boolean mShowHideAnimationEnabled;
    final androidx.core.view.ViewPropertyAnimatorListener mShowListener;
    private boolean mShowingForMode;
    androidx.appcompat.widget.ScrollingTabContainerView mTabScrollView;
    private java.util.ArrayList mTabs;
    private android.content.Context mThemedContext;
    final androidx.core.view.ViewPropertyAnimatorUpdateListener mUpdateListener;

    static WindowDecorActionBar()
    {
        android.view.animation.DecelerateInterpolator v0_4;
        if (androidx.appcompat.app.WindowDecorActionBar.desiredAssertionStatus()) {
            v0_4 = 0;
        } else {
            v0_4 = 1;
        }
        androidx.appcompat.app.WindowDecorActionBar.$assertionsDisabled = v0_4;
        androidx.appcompat.app.WindowDecorActionBar.sHideInterpolator = new android.view.animation.AccelerateInterpolator();
        androidx.appcompat.app.WindowDecorActionBar.sShowInterpolator = new android.view.animation.DecelerateInterpolator();
        return;
    }

    public WindowDecorActionBar(android.app.Activity p5, boolean p6)
    {
        this.mTabs = new java.util.ArrayList();
        this.mSavedTabPosition = -1;
        this.mMenuVisibilityListeners = new java.util.ArrayList();
        this.mCurWindowVisibility = 0;
        this.mContentAnimations = 1;
        this.mNowShowing = 1;
        this.mHideListener = new androidx.appcompat.app.WindowDecorActionBar$1(this);
        this.mShowListener = new androidx.appcompat.app.WindowDecorActionBar$2(this);
        this.mUpdateListener = new androidx.appcompat.app.WindowDecorActionBar$3(this);
        this.mActivity = p5;
        android.view.View v0 = p5.getWindow().getDecorView();
        this.init(v0);
        if (!p6) {
            this.mContentView = v0.findViewById(16908290);
        }
        return;
    }

    public WindowDecorActionBar(android.app.Dialog p3)
    {
        this.mTabs = new java.util.ArrayList();
        this.mSavedTabPosition = -1;
        this.mMenuVisibilityListeners = new java.util.ArrayList();
        this.mCurWindowVisibility = 0;
        this.mContentAnimations = 1;
        this.mNowShowing = 1;
        this.mHideListener = new androidx.appcompat.app.WindowDecorActionBar$1(this);
        this.mShowListener = new androidx.appcompat.app.WindowDecorActionBar$2(this);
        this.mUpdateListener = new androidx.appcompat.app.WindowDecorActionBar$3(this);
        this.mDialog = p3;
        this.init(p3.getWindow().getDecorView());
        return;
    }

    public WindowDecorActionBar(android.view.View p3)
    {
        this.mTabs = new java.util.ArrayList();
        this.mSavedTabPosition = -1;
        this.mMenuVisibilityListeners = new java.util.ArrayList();
        this.mCurWindowVisibility = 0;
        this.mContentAnimations = 1;
        this.mNowShowing = 1;
        this.mHideListener = new androidx.appcompat.app.WindowDecorActionBar$1(this);
        this.mShowListener = new androidx.appcompat.app.WindowDecorActionBar$2(this);
        this.mUpdateListener = new androidx.appcompat.app.WindowDecorActionBar$3(this);
        if ((androidx.appcompat.app.WindowDecorActionBar.$assertionsDisabled) || (p3.isInEditMode())) {
            this.init(p3);
            return;
        } else {
            throw new AssertionError();
        }
    }

    static boolean checkShowingFlags(boolean p1, boolean p2, boolean p3)
    {
        int v0 = 1;
        if ((!p3) && ((p1) || (p2))) {
            v0 = 0;
        }
        return v0;
    }

    private void cleanupTabs()
    {
        if (this.mSelectedTab != null) {
            this.selectTab(0);
        }
        this.mTabs.clear();
        if (this.mTabScrollView != null) {
            this.mTabScrollView.removeAllTabs();
        }
        this.mSavedTabPosition = -1;
        return;
    }

    private void configureTab(androidx.appcompat.app.ActionBar$Tab p7, int p8)
    {
        if (((androidx.appcompat.app.WindowDecorActionBar$TabImpl) p7).getCallback() != null) {
            ((androidx.appcompat.app.WindowDecorActionBar$TabImpl) p7).setPosition(p8);
            this.mTabs.add(p8, ((androidx.appcompat.app.WindowDecorActionBar$TabImpl) p7));
            int v1 = this.mTabs.size();
            int v2 = (p8 + 1);
            while (v2 < v1) {
                ((androidx.appcompat.app.WindowDecorActionBar$TabImpl) this.mTabs.get(v2)).setPosition(v2);
                v2++;
            }
            return;
        } else {
            throw new IllegalStateException("Action Bar Tab must have a Callback");
        }
    }

    private void ensureTabsExist()
    {
        if (this.mTabScrollView == null) {
            androidx.appcompat.widget.ScrollingTabContainerView v0_1 = new androidx.appcompat.widget.ScrollingTabContainerView(this.mContext);
            if (!this.mHasEmbeddedTabs) {
                if (this.getNavigationMode() != 2) {
                    v0_1.setVisibility(8);
                } else {
                    v0_1.setVisibility(0);
                    if (this.mOverlayLayout != null) {
                        androidx.core.view.ViewCompat.requestApplyInsets(this.mOverlayLayout);
                    }
                }
                this.mContainerView.setTabContainer(v0_1);
            } else {
                v0_1.setVisibility(0);
                this.mDecorToolbar.setEmbeddedTabView(v0_1);
            }
            this.mTabScrollView = v0_1;
        }
        return;
    }

    private androidx.appcompat.widget.DecorToolbar getDecorToolbar(android.view.View p4)
    {
        androidx.appcompat.widget.DecorToolbar v4_2;
        if (!(p4 instanceof androidx.appcompat.widget.DecorToolbar)) {
            if (!(p4 instanceof androidx.appcompat.widget.Toolbar)) {
                String v0_1;
                StringBuilder v2_1 = new StringBuilder().append("Can\'t make a decor toolbar out of ");
                if (p4 == null) {
                    v0_1 = "null";
                } else {
                    v0_1 = p4.getClass().getSimpleName();
                }
                throw new IllegalStateException(v2_1.append(v0_1).toString());
            } else {
                v4_2 = ((androidx.appcompat.widget.Toolbar) p4).getWrapper();
            }
        } else {
            v4_2 = ((androidx.appcompat.widget.DecorToolbar) p4);
        }
        return v4_2;
    }

    private void hideForActionMode()
    {
        if (this.mShowingForMode) {
            this.mShowingForMode = 0;
            if (this.mOverlayLayout != null) {
                this.mOverlayLayout.setShowingForActionMode(0);
            }
            this.updateVisibility(0);
        }
        return;
    }

    private void init(android.view.View p12)
    {
        this.mOverlayLayout = ((androidx.appcompat.widget.ActionBarOverlayLayout) p12.findViewById(androidx.appcompat.R$id.decor_content_parent));
        if (this.mOverlayLayout != null) {
            this.mOverlayLayout.setActionBarVisibilityCallback(this);
        }
        this.mDecorToolbar = this.getDecorToolbar(p12.findViewById(androidx.appcompat.R$id.action_bar));
        this.mContextView = ((androidx.appcompat.widget.ActionBarContextView) p12.findViewById(androidx.appcompat.R$id.action_context_bar));
        this.mContainerView = ((androidx.appcompat.widget.ActionBarContainer) p12.findViewById(androidx.appcompat.R$id.action_bar_container));
        if ((this.mDecorToolbar != null) && ((this.mContextView != null) && (this.mContainerView != null))) {
            String v4;
            this.mContext = this.mDecorToolbar.getContext();
            if ((this.mDecorToolbar.getDisplayOptions() & 4) == 0) {
                v4 = 0;
            } else {
                v4 = 1;
            }
            if (v4 != null) {
                this.mDisplayHomeAsUpSet = 1;
            }
            float v5_21;
            androidx.appcompat.view.ActionBarPolicy v1 = androidx.appcompat.view.ActionBarPolicy.get(this.mContext);
            if ((!v1.enableHomeButtonByDefault()) && (v4 == null)) {
                v5_21 = 0;
            } else {
                v5_21 = 1;
            }
            this.setHomeButtonEnabled(v5_21);
            this.setHasEmbeddedTabs(v1.hasEmbeddedTabs());
            android.content.res.TypedArray v0 = this.mContext.obtainStyledAttributes(0, androidx.appcompat.R$styleable.ActionBar, androidx.appcompat.R$attr.actionBarStyle, 0);
            if (v0.getBoolean(androidx.appcompat.R$styleable.ActionBar_hideOnContentScroll, 0)) {
                this.setHideOnContentScrollEnabled(1);
            }
            int v3 = v0.getDimensionPixelSize(androidx.appcompat.R$styleable.ActionBar_elevation, 0);
            if (v3 != 0) {
                this.setElevation(((float) v3));
            }
            v0.recycle();
            return;
        } else {
            throw new IllegalStateException(new StringBuilder().append(this.getClass().getSimpleName()).append(" can only be used ").append("with a compatible window decor layout").toString());
        }
    }

    private void setHasEmbeddedTabs(boolean p6)
    {
        int v1 = 1;
        this.mHasEmbeddedTabs = p6;
        if (this.mHasEmbeddedTabs) {
            this.mContainerView.setTabContainer(0);
            this.mDecorToolbar.setEmbeddedTabView(this.mTabScrollView);
        } else {
            this.mDecorToolbar.setEmbeddedTabView(0);
            this.mContainerView.setTabContainer(this.mTabScrollView);
        }
        int v0;
        if (this.getNavigationMode() != 2) {
            v0 = 0;
        } else {
            v0 = 1;
        }
        if (this.mTabScrollView != null) {
            if (v0 == 0) {
                this.mTabScrollView.setVisibility(8);
            } else {
                this.mTabScrollView.setVisibility(0);
                if (this.mOverlayLayout != null) {
                    androidx.core.view.ViewCompat.requestApplyInsets(this.mOverlayLayout);
                }
            }
        }
        if ((this.mHasEmbeddedTabs) || (v0 == 0)) {
            androidx.appcompat.widget.ActionBarOverlayLayout v3_9 = 0;
        } else {
            v3_9 = 1;
        }
        this.mDecorToolbar.setCollapsible(v3_9);
        if ((this.mHasEmbeddedTabs) || (v0 == 0)) {
            v1 = 0;
        }
        this.mOverlayLayout.setHasNonEmbeddedTabs(v1);
        return;
    }

    private boolean shouldAnimateContextView()
    {
        return androidx.core.view.ViewCompat.isLaidOut(this.mContainerView);
    }

    private void showForActionMode()
    {
        if (!this.mShowingForMode) {
            this.mShowingForMode = 1;
            if (this.mOverlayLayout != null) {
                this.mOverlayLayout.setShowingForActionMode(1);
            }
            this.updateVisibility(0);
        }
        return;
    }

    private void updateVisibility(boolean p5)
    {
        if (!androidx.appcompat.app.WindowDecorActionBar.checkShowingFlags(this.mHiddenByApp, this.mHiddenBySystem, this.mShowingForMode)) {
            if (this.mNowShowing) {
                this.mNowShowing = 0;
                this.doHide(p5);
            }
        } else {
            if (!this.mNowShowing) {
                this.mNowShowing = 1;
                this.doShow(p5);
            }
        }
        return;
    }

    public void addOnMenuVisibilityListener(androidx.appcompat.app.ActionBar$OnMenuVisibilityListener p2)
    {
        this.mMenuVisibilityListeners.add(p2);
        return;
    }

    public void addTab(androidx.appcompat.app.ActionBar$Tab p2)
    {
        this.addTab(p2, this.mTabs.isEmpty());
        return;
    }

    public void addTab(androidx.appcompat.app.ActionBar$Tab p2, int p3)
    {
        this.addTab(p2, p3, this.mTabs.isEmpty());
        return;
    }

    public void addTab(androidx.appcompat.app.ActionBar$Tab p2, int p3, boolean p4)
    {
        this.ensureTabsExist();
        this.mTabScrollView.addTab(p2, p3, p4);
        this.configureTab(p2, p3);
        if (p4) {
            this.selectTab(p2);
        }
        return;
    }

    public void addTab(androidx.appcompat.app.ActionBar$Tab p2, boolean p3)
    {
        this.ensureTabsExist();
        this.mTabScrollView.addTab(p2, p3);
        this.configureTab(p2, this.mTabs.size());
        if (p3) {
            this.selectTab(p2);
        }
        return;
    }

    public void animateToMode(boolean p13)
    {
        if (!p13) {
            this.hideForActionMode();
        } else {
            this.showForActionMode();
        }
        if (!this.shouldAnimateContextView()) {
            if (!p13) {
                this.mDecorToolbar.setVisibility(0);
                this.mContextView.setVisibility(8);
            } else {
                this.mDecorToolbar.setVisibility(4);
                this.mContextView.setVisibility(0);
            }
        } else {
            androidx.core.view.ViewPropertyAnimatorCompat v0;
            androidx.core.view.ViewPropertyAnimatorCompat v1;
            if (!p13) {
                v0 = this.mDecorToolbar.setupAnimatorToVisibility(0, 200);
                v1 = this.mContextView.setupAnimatorToVisibility(8, 100);
            } else {
                v1 = this.mDecorToolbar.setupAnimatorToVisibility(4, 100);
                v0 = this.mContextView.setupAnimatorToVisibility(0, 200);
            }
            androidx.appcompat.view.ViewPropertyAnimatorCompatSet v2_1 = new androidx.appcompat.view.ViewPropertyAnimatorCompatSet();
            v2_1.playSequentially(v1, v0);
            v2_1.start();
        }
        return;
    }

    public boolean collapseActionView()
    {
        if ((this.mDecorToolbar == null) || (!this.mDecorToolbar.hasExpandedActionView())) {
            int v0_3 = 0;
        } else {
            this.mDecorToolbar.collapseActionView();
            v0_3 = 1;
        }
        return v0_3;
    }

    void completeDeferredDestroyActionMode()
    {
        if (this.mDeferredModeDestroyCallback != null) {
            this.mDeferredModeDestroyCallback.onDestroyActionMode(this.mDeferredDestroyActionMode);
            this.mDeferredDestroyActionMode = 0;
            this.mDeferredModeDestroyCallback = 0;
        }
        return;
    }

    public void dispatchMenuVisibilityChanged(boolean p4)
    {
        if (p4 != this.mLastMenuVisibility) {
            this.mLastMenuVisibility = p4;
            int v0 = this.mMenuVisibilityListeners.size();
            int v1 = 0;
            while (v1 < v0) {
                ((androidx.appcompat.app.ActionBar$OnMenuVisibilityListener) this.mMenuVisibilityListeners.get(v1)).onMenuVisibilityChanged(p4);
                v1++;
            }
        }
        return;
    }

    public void doHide(boolean p8)
    {
        if (this.mCurrentShowAnim != null) {
            this.mCurrentShowAnim.cancel();
        }
        if ((this.mCurWindowVisibility != 0) || ((!this.mShowHideAnimationEnabled) && (!p8))) {
            this.mHideListener.onAnimationEnd(0);
        } else {
            this.mContainerView.setAlpha(1065353216);
            this.mContainerView.setTransitioning(1);
            androidx.appcompat.view.ViewPropertyAnimatorCompatSet v1_1 = new androidx.appcompat.view.ViewPropertyAnimatorCompatSet();
            float v2 = ((float) (- this.mContainerView.getHeight()));
            if (p8) {
                int[] v3 = new int[2];
                v3 = {0, 0};
                this.mContainerView.getLocationInWindow(v3);
                v2 -= ((float) v3[1]);
            }
            androidx.core.view.ViewPropertyAnimatorCompat v0 = androidx.core.view.ViewCompat.animate(this.mContainerView).translationY(v2);
            v0.setUpdateListener(this.mUpdateListener);
            v1_1.play(v0);
            if ((this.mContentAnimations) && (this.mContentView != null)) {
                v1_1.play(androidx.core.view.ViewCompat.animate(this.mContentView).translationY(v2));
            }
            v1_1.setInterpolator(androidx.appcompat.app.WindowDecorActionBar.sHideInterpolator);
            v1_1.setDuration(250);
            v1_1.setListener(this.mHideListener);
            this.mCurrentShowAnim = v1_1;
            v1_1.start();
        }
        return;
    }

    public void doShow(boolean p8)
    {
        if (this.mCurrentShowAnim != null) {
            this.mCurrentShowAnim.cancel();
        }
        this.mContainerView.setVisibility(0);
        if ((this.mCurWindowVisibility != 0) || ((!this.mShowHideAnimationEnabled) && (!p8))) {
            this.mContainerView.setAlpha(1065353216);
            this.mContainerView.setTranslationY(0);
            if ((this.mContentAnimations) && (this.mContentView != null)) {
                this.mContentView.setTranslationY(0);
            }
            this.mShowListener.onAnimationEnd(0);
        } else {
            this.mContainerView.setTranslationY(0);
            float v2 = ((float) (- this.mContainerView.getHeight()));
            if (p8) {
                int[] v3 = new int[2];
                v3 = {0, 0};
                this.mContainerView.getLocationInWindow(v3);
                v2 -= ((float) v3[1]);
            }
            this.mContainerView.setTranslationY(v2);
            androidx.appcompat.view.ViewPropertyAnimatorCompatSet v1_1 = new androidx.appcompat.view.ViewPropertyAnimatorCompatSet();
            androidx.core.view.ViewPropertyAnimatorCompat v0 = androidx.core.view.ViewCompat.animate(this.mContainerView).translationY(0);
            v0.setUpdateListener(this.mUpdateListener);
            v1_1.play(v0);
            if ((this.mContentAnimations) && (this.mContentView != null)) {
                this.mContentView.setTranslationY(v2);
                v1_1.play(androidx.core.view.ViewCompat.animate(this.mContentView).translationY(0));
            }
            v1_1.setInterpolator(androidx.appcompat.app.WindowDecorActionBar.sShowInterpolator);
            v1_1.setDuration(250);
            v1_1.setListener(this.mShowListener);
            this.mCurrentShowAnim = v1_1;
            v1_1.start();
        }
        if (this.mOverlayLayout != null) {
            androidx.core.view.ViewCompat.requestApplyInsets(this.mOverlayLayout);
        }
        return;
    }

    public void enableContentAnimations(boolean p1)
    {
        this.mContentAnimations = p1;
        return;
    }

    public android.view.View getCustomView()
    {
        return this.mDecorToolbar.getCustomView();
    }

    public int getDisplayOptions()
    {
        return this.mDecorToolbar.getDisplayOptions();
    }

    public float getElevation()
    {
        return androidx.core.view.ViewCompat.getElevation(this.mContainerView);
    }

    public int getHeight()
    {
        return this.mContainerView.getHeight();
    }

    public int getHideOffset()
    {
        return this.mOverlayLayout.getActionBarHideOffset();
    }

    public int getNavigationItemCount()
    {
        int v0_1;
        switch (this.mDecorToolbar.getNavigationMode()) {
            case 1:
                v0_1 = this.mDecorToolbar.getDropdownItemCount();
                break;
            case 2:
                v0_1 = this.mTabs.size();
                break;
            default:
                v0_1 = 0;
        }
        return v0_1;
    }

    public int getNavigationMode()
    {
        return this.mDecorToolbar.getNavigationMode();
    }

    public int getSelectedNavigationIndex()
    {
        int v0_0 = -1;
        switch (this.mDecorToolbar.getNavigationMode()) {
            case 1:
                v0_0 = this.mDecorToolbar.getDropdownSelectedPosition();
                break;
            case 2:
                if (this.mSelectedTab == null) {
                } else {
                    v0_0 = this.mSelectedTab.getPosition();
                }
                break;
        }
        return v0_0;
    }

    public androidx.appcompat.app.ActionBar$Tab getSelectedTab()
    {
        return this.mSelectedTab;
    }

    public CharSequence getSubtitle()
    {
        return this.mDecorToolbar.getSubtitle();
    }

    public androidx.appcompat.app.ActionBar$Tab getTabAt(int p2)
    {
        return ((androidx.appcompat.app.ActionBar$Tab) this.mTabs.get(p2));
    }

    public int getTabCount()
    {
        return this.mTabs.size();
    }

    public android.content.Context getThemedContext()
    {
        if (this.mThemedContext == null) {
            android.util.TypedValue v1_1 = new android.util.TypedValue();
            this.mContext.getTheme().resolveAttribute(androidx.appcompat.R$attr.actionBarWidgetTheme, v1_1, 1);
            int v2 = v1_1.resourceId;
            if (v2 == 0) {
                this.mThemedContext = this.mContext;
            } else {
                this.mThemedContext = new android.view.ContextThemeWrapper(this.mContext, v2);
            }
        }
        return this.mThemedContext;
    }

    public CharSequence getTitle()
    {
        return this.mDecorToolbar.getTitle();
    }

    public boolean hasIcon()
    {
        return this.mDecorToolbar.hasIcon();
    }

    public boolean hasLogo()
    {
        return this.mDecorToolbar.hasLogo();
    }

    public void hide()
    {
        if (!this.mHiddenByApp) {
            this.mHiddenByApp = 1;
            this.updateVisibility(0);
        }
        return;
    }

    public void hideForSystem()
    {
        if (!this.mHiddenBySystem) {
            this.mHiddenBySystem = 1;
            this.updateVisibility(1);
        }
        return;
    }

    public boolean isHideOnContentScrollEnabled()
    {
        return this.mOverlayLayout.isHideOnContentScrollEnabled();
    }

    public boolean isShowing()
    {
        int v1_2;
        int v0 = this.getHeight();
        if ((!this.mNowShowing) || ((v0 != 0) && (this.getHideOffset() >= v0))) {
            v1_2 = 0;
        } else {
            v1_2 = 1;
        }
        return v1_2;
    }

    public boolean isTitleTruncated()
    {
        if ((this.mDecorToolbar == null) || (!this.mDecorToolbar.isTitleTruncated())) {
            int v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }

    public androidx.appcompat.app.ActionBar$Tab newTab()
    {
        return new androidx.appcompat.app.WindowDecorActionBar$TabImpl(this);
    }

    public void onConfigurationChanged(android.content.res.Configuration p2)
    {
        this.setHasEmbeddedTabs(androidx.appcompat.view.ActionBarPolicy.get(this.mContext).hasEmbeddedTabs());
        return;
    }

    public void onContentScrollStarted()
    {
        if (this.mCurrentShowAnim != null) {
            this.mCurrentShowAnim.cancel();
            this.mCurrentShowAnim = 0;
        }
        return;
    }

    public void onContentScrollStopped()
    {
        return;
    }

    public boolean onKeyShortcut(int p6, android.view.KeyEvent p7)
    {
        boolean v4 = 0;
        if (this.mActionMode != null) {
            android.view.Menu v1 = this.mActionMode.getMenu();
            if (v1 != null) {
                int v2_0;
                if (p7 == null) {
                    v2_0 = -1;
                } else {
                    v2_0 = p7.getDeviceId();
                }
                int v2_2;
                if (android.view.KeyCharacterMap.load(v2_0).getKeyboardType() == 1) {
                    v2_2 = 0;
                } else {
                    v2_2 = 1;
                }
                v1.setQwertyMode(v2_2);
                v4 = v1.performShortcut(p6, p7, 0);
            }
        }
        return v4;
    }

    public void onWindowVisibilityChanged(int p1)
    {
        this.mCurWindowVisibility = p1;
        return;
    }

    public void removeAllTabs()
    {
        this.cleanupTabs();
        return;
    }

    public void removeOnMenuVisibilityListener(androidx.appcompat.app.ActionBar$OnMenuVisibilityListener p2)
    {
        this.mMenuVisibilityListeners.remove(p2);
        return;
    }

    public void removeTab(androidx.appcompat.app.ActionBar$Tab p2)
    {
        this.removeTabAt(p2.getPosition());
        return;
    }

    public void removeTabAt(int p8)
    {
        if (this.mTabScrollView != null) {
            int v3;
            if (this.mSelectedTab == null) {
                v3 = this.mSavedTabPosition;
            } else {
                v3 = this.mSelectedTab.getPosition();
            }
            this.mTabScrollView.removeTabAt(p8);
            androidx.appcompat.app.WindowDecorActionBar$TabImpl v2_1 = ((androidx.appcompat.app.WindowDecorActionBar$TabImpl) this.mTabs.remove(p8));
            if (v2_1 != null) {
                v2_1.setPosition(-1);
            }
            int v1 = this.mTabs.size();
            int v0 = p8;
            while (v0 < v1) {
                ((androidx.appcompat.app.WindowDecorActionBar$TabImpl) this.mTabs.get(v0)).setPosition(v0);
                v0++;
            }
            if (v3 == p8) {
                androidx.appcompat.app.WindowDecorActionBar$TabImpl v4_9;
                if (!this.mTabs.isEmpty()) {
                    v4_9 = ((androidx.appcompat.app.WindowDecorActionBar$TabImpl) this.mTabs.get(Math.max(0, (p8 - 1))));
                } else {
                    v4_9 = 0;
                }
                this.selectTab(v4_9);
            }
        }
        return;
    }

    public boolean requestFocus()
    {
        int v1_2;
        android.view.ViewGroup v0 = this.mDecorToolbar.getViewGroup();
        if ((v0 == null) || (v0.hasFocus())) {
            v1_2 = 0;
        } else {
            v0.requestFocus();
            v1_2 = 1;
        }
        return v1_2;
    }

    public void selectTab(androidx.appcompat.app.ActionBar$Tab p5)
    {
        androidx.appcompat.app.WindowDecorActionBar$TabImpl v2_0 = -1;
        if (this.getNavigationMode() == 2) {
            if ((!(this.mActivity instanceof androidx.fragment.app.FragmentActivity)) || (this.mDecorToolbar.getViewGroup().isInEditMode())) {
                androidx.fragment.app.FragmentTransaction v0 = 0;
            } else {
                v0 = ((androidx.fragment.app.FragmentActivity) this.mActivity).getSupportFragmentManager().beginTransaction().disallowAddToBackStack();
            }
            if (this.mSelectedTab != p5) {
                androidx.appcompat.app.ActionBar$TabListener v1_8 = this.mTabScrollView;
                if (p5 != null) {
                    v2_0 = p5.getPosition();
                }
                v1_8.setTabSelected(v2_0);
                if (this.mSelectedTab != null) {
                    this.mSelectedTab.getCallback().onTabUnselected(this.mSelectedTab, v0);
                }
                this.mSelectedTab = ((androidx.appcompat.app.WindowDecorActionBar$TabImpl) p5);
                if (this.mSelectedTab != null) {
                    this.mSelectedTab.getCallback().onTabSelected(this.mSelectedTab, v0);
                }
            } else {
                if (this.mSelectedTab != null) {
                    this.mSelectedTab.getCallback().onTabReselected(this.mSelectedTab, v0);
                    this.mTabScrollView.animateToTab(p5.getPosition());
                }
            }
            if ((v0 != null) && (!v0.isEmpty())) {
                v0.commit();
            }
        } else {
            androidx.appcompat.app.ActionBar$TabListener v1_22;
            if (p5 == null) {
                v1_22 = -1;
            } else {
                v1_22 = p5.getPosition();
            }
            this.mSavedTabPosition = v1_22;
        }
        return;
    }

    public void setBackgroundDrawable(android.graphics.drawable.Drawable p2)
    {
        this.mContainerView.setPrimaryBackground(p2);
        return;
    }

    public void setCustomView(int p4)
    {
        this.setCustomView(android.view.LayoutInflater.from(this.getThemedContext()).inflate(p4, this.mDecorToolbar.getViewGroup(), 0));
        return;
    }

    public void setCustomView(android.view.View p2)
    {
        this.mDecorToolbar.setCustomView(p2);
        return;
    }

    public void setCustomView(android.view.View p2, androidx.appcompat.app.ActionBar$LayoutParams p3)
    {
        p2.setLayoutParams(p3);
        this.mDecorToolbar.setCustomView(p2);
        return;
    }

    public void setDefaultDisplayHomeAsUpEnabled(boolean p2)
    {
        if (!this.mDisplayHomeAsUpSet) {
            this.setDisplayHomeAsUpEnabled(p2);
        }
        return;
    }

    public void setDisplayHomeAsUpEnabled(boolean p3)
    {
        int v0;
        if (!p3) {
            v0 = 0;
        } else {
            v0 = 4;
        }
        this.setDisplayOptions(v0, 4);
        return;
    }

    public void setDisplayOptions(int p2)
    {
        if ((p2 & 4) != 0) {
            this.mDisplayHomeAsUpSet = 1;
        }
        this.mDecorToolbar.setDisplayOptions(p2);
        return;
    }

    public void setDisplayOptions(int p5, int p6)
    {
        int v0 = this.mDecorToolbar.getDisplayOptions();
        if ((p6 & 4) != 0) {
            this.mDisplayHomeAsUpSet = 1;
        }
        this.mDecorToolbar.setDisplayOptions(((p5 & p6) | ((p6 ^ -1) & v0)));
        return;
    }

    public void setDisplayShowCustomEnabled(boolean p3)
    {
        int v0;
        if (!p3) {
            v0 = 0;
        } else {
            v0 = 16;
        }
        this.setDisplayOptions(v0, 16);
        return;
    }

    public void setDisplayShowHomeEnabled(boolean p3)
    {
        int v0;
        if (!p3) {
            v0 = 0;
        } else {
            v0 = 2;
        }
        this.setDisplayOptions(v0, 2);
        return;
    }

    public void setDisplayShowTitleEnabled(boolean p3)
    {
        int v0;
        if (!p3) {
            v0 = 0;
        } else {
            v0 = 8;
        }
        this.setDisplayOptions(v0, 8);
        return;
    }

    public void setDisplayUseLogoEnabled(boolean p3)
    {
        int v0;
        if (!p3) {
            v0 = 0;
        } else {
            v0 = 1;
        }
        this.setDisplayOptions(v0, 1);
        return;
    }

    public void setElevation(float p2)
    {
        androidx.core.view.ViewCompat.setElevation(this.mContainerView, p2);
        return;
    }

    public void setHideOffset(int p3)
    {
        if ((p3 == 0) || (this.mOverlayLayout.isInOverlayMode())) {
            this.mOverlayLayout.setActionBarHideOffset(p3);
            return;
        } else {
            throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to set a non-zero hide offset");
        }
    }

    public void setHideOnContentScrollEnabled(boolean p3)
    {
        if ((!p3) || (this.mOverlayLayout.isInOverlayMode())) {
            this.mHideOnContentScroll = p3;
            this.mOverlayLayout.setHideOnContentScrollEnabled(p3);
            return;
        } else {
            throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
        }
    }

    public void setHomeActionContentDescription(int p2)
    {
        this.mDecorToolbar.setNavigationContentDescription(p2);
        return;
    }

    public void setHomeActionContentDescription(CharSequence p2)
    {
        this.mDecorToolbar.setNavigationContentDescription(p2);
        return;
    }

    public void setHomeAsUpIndicator(int p2)
    {
        this.mDecorToolbar.setNavigationIcon(p2);
        return;
    }

    public void setHomeAsUpIndicator(android.graphics.drawable.Drawable p2)
    {
        this.mDecorToolbar.setNavigationIcon(p2);
        return;
    }

    public void setHomeButtonEnabled(boolean p2)
    {
        this.mDecorToolbar.setHomeButtonEnabled(p2);
        return;
    }

    public void setIcon(int p2)
    {
        this.mDecorToolbar.setIcon(p2);
        return;
    }

    public void setIcon(android.graphics.drawable.Drawable p2)
    {
        this.mDecorToolbar.setIcon(p2);
        return;
    }

    public void setListNavigationCallbacks(android.widget.SpinnerAdapter p3, androidx.appcompat.app.ActionBar$OnNavigationListener p4)
    {
        this.mDecorToolbar.setDropdownParams(p3, new androidx.appcompat.app.NavItemSelectedListener(p4));
        return;
    }

    public void setLogo(int p2)
    {
        this.mDecorToolbar.setLogo(p2);
        return;
    }

    public void setLogo(android.graphics.drawable.Drawable p2)
    {
        this.mDecorToolbar.setLogo(p2);
        return;
    }

    public void setNavigationMode(int p8)
    {
        int v2 = 1;
        int v0 = this.mDecorToolbar.getNavigationMode();
        switch (v0) {
            case 2:
                this.mSavedTabPosition = this.getSelectedNavigationIndex();
                this.selectTab(0);
                this.mTabScrollView.setVisibility(8);
                break;
            default:
                if (v0 == p8) {
                    this.mDecorToolbar.setNavigationMode(p8);
                    switch (p8) {
                        case 2:
                            this.ensureTabsExist();
                            this.mTabScrollView.setVisibility(0);
                            if (this.mSavedTabPosition == -1) {
                            } else {
                                this.setSelectedNavigationItem(this.mSavedTabPosition);
                                this.mSavedTabPosition = -1;
                            }
                            break;
                        default:
                            androidx.appcompat.widget.ActionBarOverlayLayout v1_10;
                            if (p8 != 2) {
                                v1_10 = 0;
                                this.mDecorToolbar.setCollapsible(v1_10);
                                if ((p8 != 2) || (this.mHasEmbeddedTabs)) {
                                    v2 = 0;
                                }
                                this.mOverlayLayout.setHasNonEmbeddedTabs(v2);
                                return;
                            } else {
                                if (this.mHasEmbeddedTabs) {
                                } else {
                                    v1_10 = 1;
                                }
                            }
                    }
                    if ((p8 != 2) || (this.mHasEmbeddedTabs)) {
                    }
                } else {
                    if ((this.mHasEmbeddedTabs) || (this.mOverlayLayout == null)) {
                    } else {
                        androidx.core.view.ViewCompat.requestApplyInsets(this.mOverlayLayout);
                    }
                }
        }
        if ((v0 != p8) && ((!this.mHasEmbeddedTabs) && (this.mOverlayLayout != null))) {
        }
    }

    public void setSelectedNavigationItem(int p3)
    {
        switch (this.mDecorToolbar.getNavigationMode()) {
            case 1:
                this.mDecorToolbar.setDropdownSelectedPosition(p3);
                break;
            case 2:
                this.selectTab(((androidx.appcompat.app.ActionBar$Tab) this.mTabs.get(p3)));
                break;
            default:
                throw new IllegalStateException("setSelectedNavigationIndex not valid for current navigation mode");
        }
        return;
    }

    public void setShowHideAnimationEnabled(boolean p2)
    {
        this.mShowHideAnimationEnabled = p2;
        if ((!p2) && (this.mCurrentShowAnim != null)) {
            this.mCurrentShowAnim.cancel();
        }
        return;
    }

    public void setSplitBackgroundDrawable(android.graphics.drawable.Drawable p1)
    {
        return;
    }

    public void setStackedBackgroundDrawable(android.graphics.drawable.Drawable p2)
    {
        this.mContainerView.setStackedBackground(p2);
        return;
    }

    public void setSubtitle(int p2)
    {
        this.setSubtitle(this.mContext.getString(p2));
        return;
    }

    public void setSubtitle(CharSequence p2)
    {
        this.mDecorToolbar.setSubtitle(p2);
        return;
    }

    public void setTitle(int p2)
    {
        this.setTitle(this.mContext.getString(p2));
        return;
    }

    public void setTitle(CharSequence p2)
    {
        this.mDecorToolbar.setTitle(p2);
        return;
    }

    public void setWindowTitle(CharSequence p2)
    {
        this.mDecorToolbar.setWindowTitle(p2);
        return;
    }

    public void show()
    {
        if (this.mHiddenByApp) {
            this.mHiddenByApp = 0;
            this.updateVisibility(0);
        }
        return;
    }

    public void showForSystem()
    {
        if (this.mHiddenBySystem) {
            this.mHiddenBySystem = 0;
            this.updateVisibility(1);
        }
        return;
    }

    public androidx.appcompat.view.ActionMode startActionMode(androidx.appcompat.view.ActionMode$Callback p4)
    {
        if (this.mActionMode != null) {
            this.mActionMode.finish();
        }
        this.mOverlayLayout.setHideOnContentScrollEnabled(0);
        this.mContextView.killMode();
        int v0_0 = new androidx.appcompat.app.WindowDecorActionBar$ActionModeImpl(this, this.mContextView.getContext(), p4);
        if (!v0_0.dispatchOnCreate()) {
            v0_0 = 0;
        } else {
            this.mActionMode = v0_0;
            v0_0.invalidate();
            this.mContextView.initForMode(v0_0);
            this.animateToMode(1);
            this.mContextView.sendAccessibilityEvent(32);
        }
        return v0_0;
    }
}
