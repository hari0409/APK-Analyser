package androidx.appcompat.widget;
public class ActionBarOverlayLayout extends android.view.ViewGroup implements androidx.appcompat.widget.DecorContentParent, androidx.core.view.NestedScrollingParent {
    private static final int ACTION_BAR_ANIMATE_DELAY = 600;
    static final int[] ATTRS = None;
    private static final String TAG = "ActionBarOverlayLayout";
    private int mActionBarHeight;
    androidx.appcompat.widget.ActionBarContainer mActionBarTop;
    private androidx.appcompat.widget.ActionBarOverlayLayout$ActionBarVisibilityCallback mActionBarVisibilityCallback;
    private final Runnable mAddActionBarHideOffset;
    boolean mAnimatingForFling;
    private final android.graphics.Rect mBaseContentInsets;
    private final android.graphics.Rect mBaseInnerInsets;
    private androidx.appcompat.widget.ContentFrameLayout mContent;
    private final android.graphics.Rect mContentInsets;
    android.view.ViewPropertyAnimator mCurrentActionBarTopAnimator;
    private androidx.appcompat.widget.DecorToolbar mDecorToolbar;
    private android.widget.OverScroller mFlingEstimator;
    private boolean mHasNonEmbeddedTabs;
    private boolean mHideOnContentScroll;
    private int mHideOnContentScrollReference;
    private boolean mIgnoreWindowContentOverlay;
    private final android.graphics.Rect mInnerInsets;
    private final android.graphics.Rect mLastBaseContentInsets;
    private final android.graphics.Rect mLastBaseInnerInsets;
    private final android.graphics.Rect mLastInnerInsets;
    private int mLastSystemUiVisibility;
    private boolean mOverlayMode;
    private final androidx.core.view.NestedScrollingParentHelper mParentHelper;
    private final Runnable mRemoveActionBarHideOffset;
    final android.animation.AnimatorListenerAdapter mTopAnimatorListener;
    private android.graphics.drawable.Drawable mWindowContentOverlay;
    private int mWindowVisibility;

    static ActionBarOverlayLayout()
    {
        int[] v0_1 = new int[2];
        v0_1[0] = androidx.appcompat.R$attr.actionBarSize;
        v0_1[1] = 16842841;
        androidx.appcompat.widget.ActionBarOverlayLayout.ATTRS = v0_1;
        return;
    }

    public ActionBarOverlayLayout(android.content.Context p2)
    {
        this(p2, 0);
        return;
    }

    public ActionBarOverlayLayout(android.content.Context p2, android.util.AttributeSet p3)
    {
        super(p2, p3);
        super.mWindowVisibility = 0;
        super.mBaseContentInsets = new android.graphics.Rect();
        super.mLastBaseContentInsets = new android.graphics.Rect();
        super.mContentInsets = new android.graphics.Rect();
        super.mBaseInnerInsets = new android.graphics.Rect();
        super.mLastBaseInnerInsets = new android.graphics.Rect();
        super.mInnerInsets = new android.graphics.Rect();
        super.mLastInnerInsets = new android.graphics.Rect();
        super.mTopAnimatorListener = new androidx.appcompat.widget.ActionBarOverlayLayout$1(super);
        super.mRemoveActionBarHideOffset = new androidx.appcompat.widget.ActionBarOverlayLayout$2(super);
        super.mAddActionBarHideOffset = new androidx.appcompat.widget.ActionBarOverlayLayout$3(super);
        super.init(p2);
        super.mParentHelper = new androidx.core.view.NestedScrollingParentHelper(super);
        return;
    }

    private void addActionBarHideOffset()
    {
        this.haltActionBarHideOffsetAnimations();
        this.mAddActionBarHideOffset.run();
        return;
    }

    private boolean applyInsets(android.view.View p5, android.graphics.Rect p6, boolean p7, boolean p8, boolean p9, boolean p10)
    {
        int v0 = 0;
        androidx.appcompat.widget.ActionBarOverlayLayout$LayoutParams v1_1 = ((androidx.appcompat.widget.ActionBarOverlayLayout$LayoutParams) p5.getLayoutParams());
        if ((p7) && (v1_1.leftMargin != p6.left)) {
            v0 = 1;
            v1_1.leftMargin = p6.left;
        }
        if ((p8) && (v1_1.topMargin != p6.top)) {
            v0 = 1;
            v1_1.topMargin = p6.top;
        }
        if ((p10) && (v1_1.rightMargin != p6.right)) {
            v0 = 1;
            v1_1.rightMargin = p6.right;
        }
        if ((p9) && (v1_1.bottomMargin != p6.bottom)) {
            v0 = 1;
            v1_1.bottomMargin = p6.bottom;
        }
        return v0;
    }

    private androidx.appcompat.widget.DecorToolbar getDecorToolbar(android.view.View p4)
    {
        androidx.appcompat.widget.DecorToolbar v4_2;
        if (!(p4 instanceof androidx.appcompat.widget.DecorToolbar)) {
            if (!(p4 instanceof androidx.appcompat.widget.Toolbar)) {
                throw new IllegalStateException(new StringBuilder().append("Can\'t make a decor toolbar out of ").append(p4.getClass().getSimpleName()).toString());
            } else {
                v4_2 = ((androidx.appcompat.widget.Toolbar) p4).getWrapper();
            }
        } else {
            v4_2 = ((androidx.appcompat.widget.DecorToolbar) p4);
        }
        return v4_2;
    }

    private void init(android.content.Context p6)
    {
        android.widget.OverScroller v1_3;
        int v2 = 1;
        android.content.res.TypedArray v0 = this.getContext().getTheme().obtainStyledAttributes(androidx.appcompat.widget.ActionBarOverlayLayout.ATTRS);
        this.mActionBarHeight = v0.getDimensionPixelSize(0, 0);
        this.mWindowContentOverlay = v0.getDrawable(1);
        if (this.mWindowContentOverlay != null) {
            v1_3 = 0;
        } else {
            v1_3 = 1;
        }
        this.setWillNotDraw(v1_3);
        v0.recycle();
        if (p6.getApplicationInfo().targetSdkVersion >= 19) {
            v2 = 0;
        }
        this.mIgnoreWindowContentOverlay = v2;
        this.mFlingEstimator = new android.widget.OverScroller(p6);
        return;
    }

    private void postAddActionBarHideOffset()
    {
        this.haltActionBarHideOffsetAnimations();
        this.postDelayed(this.mAddActionBarHideOffset, 600);
        return;
    }

    private void postRemoveActionBarHideOffset()
    {
        this.haltActionBarHideOffsetAnimations();
        this.postDelayed(this.mRemoveActionBarHideOffset, 600);
        return;
    }

    private void removeActionBarHideOffset()
    {
        this.haltActionBarHideOffsetAnimations();
        this.mRemoveActionBarHideOffset.run();
        return;
    }

    private boolean shouldHideActionBarOnFling(float p11, float p12)
    {
        int v1 = 0;
        this.mFlingEstimator.fling(0, 0, 0, ((int) p12), 0, 0, -2147483648, 2147483647);
        if (this.mFlingEstimator.getFinalY() > this.mActionBarTop.getHeight()) {
            v1 = 1;
        }
        return v1;
    }

    public boolean canShowOverflowMenu()
    {
        this.pullChildren();
        return this.mDecorToolbar.canShowOverflowMenu();
    }

    protected boolean checkLayoutParams(android.view.ViewGroup$LayoutParams p2)
    {
        return (p2 instanceof androidx.appcompat.widget.ActionBarOverlayLayout$LayoutParams);
    }

    public void dismissPopups()
    {
        this.pullChildren();
        this.mDecorToolbar.dismissPopupMenus();
        return;
    }

    public void draw(android.graphics.Canvas p6)
    {
        super.draw(p6);
        if ((this.mWindowContentOverlay != null) && (!this.mIgnoreWindowContentOverlay)) {
            int v0;
            if (this.mActionBarTop.getVisibility() != 0) {
                v0 = 0;
            } else {
                v0 = ((int) ((((float) this.mActionBarTop.getBottom()) + this.mActionBarTop.getTranslationY()) + 1056964608));
            }
            this.mWindowContentOverlay.setBounds(0, v0, this.getWidth(), (this.mWindowContentOverlay.getIntrinsicHeight() + v0));
            this.mWindowContentOverlay.draw(p6);
        }
        return;
    }

    protected boolean fitSystemWindows(android.graphics.Rect p11)
    {
        this.pullChildren();
        // Both branches of the condition point to the same code.
        // if ((androidx.core.view.ViewCompat.getWindowSystemUiVisibility(this) & 256) == 0) {
            int v7 = this.applyInsets(this.mActionBarTop, p11, 1, 1, 0, 1);
            this.mBaseInnerInsets.set(p11);
            androidx.appcompat.widget.ViewUtils.computeFitSystemWindows(this, this.mBaseInnerInsets, this.mBaseContentInsets);
            if (!this.mLastBaseInnerInsets.equals(this.mBaseInnerInsets)) {
                v7 = 1;
                this.mLastBaseInnerInsets.set(this.mBaseInnerInsets);
            }
            if (!this.mLastBaseContentInsets.equals(this.mBaseContentInsets)) {
                v7 = 1;
                this.mLastBaseContentInsets.set(this.mBaseContentInsets);
            }
            if (v7 != 0) {
                this.requestLayout();
            }
            return 1;
        // }
    }

    protected bridge synthetic android.view.ViewGroup$LayoutParams generateDefaultLayoutParams()
    {
        return this.generateDefaultLayoutParams();
    }

    protected androidx.appcompat.widget.ActionBarOverlayLayout$LayoutParams generateDefaultLayoutParams()
    {
        return new androidx.appcompat.widget.ActionBarOverlayLayout$LayoutParams(-1, -1);
    }

    public bridge synthetic android.view.ViewGroup$LayoutParams generateLayoutParams(android.util.AttributeSet p2)
    {
        return this.generateLayoutParams(p2);
    }

    protected android.view.ViewGroup$LayoutParams generateLayoutParams(android.view.ViewGroup$LayoutParams p2)
    {
        return new androidx.appcompat.widget.ActionBarOverlayLayout$LayoutParams(p2);
    }

    public androidx.appcompat.widget.ActionBarOverlayLayout$LayoutParams generateLayoutParams(android.util.AttributeSet p3)
    {
        return new androidx.appcompat.widget.ActionBarOverlayLayout$LayoutParams(this.getContext(), p3);
    }

    public int getActionBarHideOffset()
    {
        int v0_1;
        if (this.mActionBarTop == null) {
            v0_1 = 0;
        } else {
            v0_1 = (- ((int) this.mActionBarTop.getTranslationY()));
        }
        return v0_1;
    }

    public int getNestedScrollAxes()
    {
        return this.mParentHelper.getNestedScrollAxes();
    }

    public CharSequence getTitle()
    {
        this.pullChildren();
        return this.mDecorToolbar.getTitle();
    }

    void haltActionBarHideOffsetAnimations()
    {
        this.removeCallbacks(this.mRemoveActionBarHideOffset);
        this.removeCallbacks(this.mAddActionBarHideOffset);
        if (this.mCurrentActionBarTopAnimator != null) {
            this.mCurrentActionBarTopAnimator.cancel();
        }
        return;
    }

    public boolean hasIcon()
    {
        this.pullChildren();
        return this.mDecorToolbar.hasIcon();
    }

    public boolean hasLogo()
    {
        this.pullChildren();
        return this.mDecorToolbar.hasLogo();
    }

    public boolean hideOverflowMenu()
    {
        this.pullChildren();
        return this.mDecorToolbar.hideOverflowMenu();
    }

    public void initFeature(int p2)
    {
        this.pullChildren();
        switch (p2) {
            case 2:
                this.mDecorToolbar.initProgress();
                break;
            case 5:
                this.mDecorToolbar.initIndeterminateProgress();
                break;
            case 109:
                this.setOverlayMode(1);
                break;
        }
        return;
    }

    public boolean isHideOnContentScrollEnabled()
    {
        return this.mHideOnContentScroll;
    }

    public boolean isInOverlayMode()
    {
        return this.mOverlayMode;
    }

    public boolean isOverflowMenuShowPending()
    {
        this.pullChildren();
        return this.mDecorToolbar.isOverflowMenuShowPending();
    }

    public boolean isOverflowMenuShowing()
    {
        this.pullChildren();
        return this.mDecorToolbar.isOverflowMenuShowing();
    }

    protected void onConfigurationChanged(android.content.res.Configuration p2)
    {
        super.onConfigurationChanged(p2);
        this.init(this.getContext());
        androidx.core.view.ViewCompat.requestApplyInsets(this);
        return;
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        this.haltActionBarHideOffsetAnimations();
        return;
    }

    protected void onLayout(boolean p15, int p16, int p17, int p18, int p19)
    {
        int v3 = this.getChildCount();
        int v8 = this.getPaddingLeft();
        this.getPaddingRight();
        int v10 = this.getPaddingTop();
        this.getPaddingBottom();
        int v5 = 0;
        while (v5 < v3) {
            android.view.View v0 = this.getChildAt(v5);
            if (v0.getVisibility() != 8) {
                androidx.appcompat.widget.ActionBarOverlayLayout$LayoutParams v6_1 = ((androidx.appcompat.widget.ActionBarOverlayLayout$LayoutParams) v0.getLayoutParams());
                int v1 = (v8 + v6_1.leftMargin);
                int v2 = (v10 + v6_1.topMargin);
                v0.layout(v1, v2, (v1 + v0.getMeasuredWidth()), (v2 + v0.getMeasuredHeight()));
            }
            v5++;
        }
        return;
    }

    protected void onMeasure(int p18, int p19)
    {
        int v13;
        this.pullChildren();
        int v15 = 0;
        this.measureChildWithMargins(this.mActionBarTop, p18, 0, p19, 0);
        androidx.appcompat.widget.ActionBarOverlayLayout$LayoutParams v10_3 = ((androidx.appcompat.widget.ActionBarOverlayLayout$LayoutParams) this.mActionBarTop.getLayoutParams());
        int v12_4 = Math.max(0, ((this.mActionBarTop.getMeasuredWidth() + v10_3.leftMargin) + v10_3.rightMargin));
        int v11_4 = Math.max(0, ((this.mActionBarTop.getMeasuredHeight() + v10_3.topMargin) + v10_3.bottomMargin));
        int v9_2 = android.view.View.combineMeasuredStates(0, this.mActionBarTop.getMeasuredState());
        if ((androidx.core.view.ViewCompat.getWindowSystemUiVisibility(this) & 256) == 0) {
            v13 = 0;
        } else {
            v13 = 1;
        }
        if (v13 == 0) {
            if (this.mActionBarTop.getVisibility() != 8) {
                v15 = this.mActionBarTop.getMeasuredHeight();
            }
        } else {
            v15 = this.mActionBarHeight;
            if ((this.mHasNonEmbeddedTabs) && (this.mActionBarTop.getTabContainer() != null)) {
                v15 += this.mActionBarHeight;
            }
        }
        this.mContentInsets.set(this.mBaseContentInsets);
        this.mInnerInsets.set(this.mBaseInnerInsets);
        if ((this.mOverlayMode) || (v13 != 0)) {
            int v1_48 = this.mInnerInsets;
            v1_48.top = (v1_48.top + v15);
            int v1_49 = this.mInnerInsets;
            v1_49.bottom = (v1_49.bottom + 0);
        } else {
            int v1_1 = this.mContentInsets;
            v1_1.top = (v1_1.top + v15);
            int v1_2 = this.mContentInsets;
            v1_2.bottom = (v1_2.bottom + 0);
        }
        this.applyInsets(this.mContent, this.mContentInsets, 1, 1, 1, 1);
        if (!this.mLastInnerInsets.equals(this.mInnerInsets)) {
            this.mLastInnerInsets.set(this.mInnerInsets);
            this.mContent.dispatchFitSystemWindows(this.mInnerInsets);
        }
        this.measureChildWithMargins(this.mContent, p18, 0, p19, 0);
        androidx.appcompat.widget.ActionBarOverlayLayout$LayoutParams v10_1 = ((androidx.appcompat.widget.ActionBarOverlayLayout$LayoutParams) this.mContent.getLayoutParams());
        int v12_0 = Math.max(v12_4, ((this.mContent.getMeasuredWidth() + v10_1.leftMargin) + v10_1.rightMargin));
        int v11_1 = Math.max(v11_4, ((this.mContent.getMeasuredHeight() + v10_1.topMargin) + v10_1.bottomMargin));
        int v9_0 = android.view.View.combineMeasuredStates(v9_2, this.mContent.getMeasuredState());
        this.setMeasuredDimension(android.view.View.resolveSizeAndState(Math.max((v12_0 + (this.getPaddingLeft() + this.getPaddingRight())), this.getSuggestedMinimumWidth()), p18, v9_0), android.view.View.resolveSizeAndState(Math.max((v11_1 + (this.getPaddingTop() + this.getPaddingBottom())), this.getSuggestedMinimumHeight()), p19, (v9_0 << 16)));
        return;
    }

    public boolean onNestedFling(android.view.View p3, float p4, float p5, boolean p6)
    {
        int v0 = 1;
        if ((this.mHideOnContentScroll) && (p6)) {
            if (!this.shouldHideActionBarOnFling(p4, p5)) {
                this.removeActionBarHideOffset();
            } else {
                this.addActionBarHideOffset();
            }
            this.mAnimatingForFling = 1;
        } else {
            v0 = 0;
        }
        return v0;
    }

    public boolean onNestedPreFling(android.view.View p2, float p3, float p4)
    {
        return 0;
    }

    public void onNestedPreScroll(android.view.View p1, int p2, int p3, int[] p4)
    {
        return;
    }

    public void onNestedScroll(android.view.View p2, int p3, int p4, int p5, int p6)
    {
        this.mHideOnContentScrollReference = (this.mHideOnContentScrollReference + p4);
        this.setActionBarHideOffset(this.mHideOnContentScrollReference);
        return;
    }

    public void onNestedScrollAccepted(android.view.View p2, android.view.View p3, int p4)
    {
        this.mParentHelper.onNestedScrollAccepted(p2, p3, p4);
        this.mHideOnContentScrollReference = this.getActionBarHideOffset();
        this.haltActionBarHideOffsetAnimations();
        if (this.mActionBarVisibilityCallback != null) {
            this.mActionBarVisibilityCallback.onContentScrollStarted();
        }
        return;
    }

    public boolean onStartNestedScroll(android.view.View p2, android.view.View p3, int p4)
    {
        if (((p4 & 2) != 0) && (this.mActionBarTop.getVisibility() == 0)) {
            boolean v0_3 = this.mHideOnContentScroll;
        } else {
            v0_3 = 0;
        }
        return v0_3;
    }

    public void onStopNestedScroll(android.view.View p3)
    {
        if ((this.mHideOnContentScroll) && (!this.mAnimatingForFling)) {
            if (this.mHideOnContentScrollReference > this.mActionBarTop.getHeight()) {
                this.postAddActionBarHideOffset();
            } else {
                this.postRemoveActionBarHideOffset();
            }
        }
        if (this.mActionBarVisibilityCallback != null) {
            this.mActionBarVisibilityCallback.onContentScrollStopped();
        }
        return;
    }

    public void onWindowSystemUiVisibilityChanged(int p8)
    {
        androidx.appcompat.widget.ActionBarOverlayLayout$ActionBarVisibilityCallback v3_0 = 1;
        if (android.os.Build$VERSION.SDK_INT >= 16) {
            super.onWindowSystemUiVisibilityChanged(p8);
        }
        int v0;
        this.pullChildren();
        int v1 = (this.mLastSystemUiVisibility ^ p8);
        this.mLastSystemUiVisibility = p8;
        if ((p8 & 4) != 0) {
            v0 = 0;
        } else {
            v0 = 1;
        }
        int v2;
        if ((p8 & 256) == 0) {
            v2 = 0;
        } else {
            v2 = 1;
        }
        if (this.mActionBarVisibilityCallback != null) {
            if (v2 != 0) {
                v3_0 = 0;
            }
            this.mActionBarVisibilityCallback.enableContentAnimations(v3_0);
            if ((v0 == 0) && (v2 != 0)) {
                this.mActionBarVisibilityCallback.hideForSystem();
            } else {
                this.mActionBarVisibilityCallback.showForSystem();
            }
        }
        if (((v1 & 256) != 0) && (this.mActionBarVisibilityCallback != null)) {
            androidx.core.view.ViewCompat.requestApplyInsets(this);
        }
        return;
    }

    protected void onWindowVisibilityChanged(int p2)
    {
        super.onWindowVisibilityChanged(p2);
        this.mWindowVisibility = p2;
        if (this.mActionBarVisibilityCallback != null) {
            this.mActionBarVisibilityCallback.onWindowVisibilityChanged(p2);
        }
        return;
    }

    void pullChildren()
    {
        if (this.mContent == null) {
            this.mContent = ((androidx.appcompat.widget.ContentFrameLayout) this.findViewById(androidx.appcompat.R$id.action_bar_activity_content));
            this.mActionBarTop = ((androidx.appcompat.widget.ActionBarContainer) this.findViewById(androidx.appcompat.R$id.action_bar_container));
            this.mDecorToolbar = this.getDecorToolbar(this.findViewById(androidx.appcompat.R$id.action_bar));
        }
        return;
    }

    public void restoreToolbarHierarchyState(android.util.SparseArray p2)
    {
        this.pullChildren();
        this.mDecorToolbar.restoreHierarchyState(p2);
        return;
    }

    public void saveToolbarHierarchyState(android.util.SparseArray p2)
    {
        this.pullChildren();
        this.mDecorToolbar.saveHierarchyState(p2);
        return;
    }

    public void setActionBarHideOffset(int p4)
    {
        this.haltActionBarHideOffsetAnimations();
        this.mActionBarTop.setTranslationY(((float) (- Math.max(0, Math.min(p4, this.mActionBarTop.getHeight())))));
        return;
    }

    public void setActionBarVisibilityCallback(androidx.appcompat.widget.ActionBarOverlayLayout$ActionBarVisibilityCallback p4)
    {
        this.mActionBarVisibilityCallback = p4;
        if (this.getWindowToken() != null) {
            this.mActionBarVisibilityCallback.onWindowVisibilityChanged(this.mWindowVisibility);
            if (this.mLastSystemUiVisibility != 0) {
                this.onWindowSystemUiVisibilityChanged(this.mLastSystemUiVisibility);
                androidx.core.view.ViewCompat.requestApplyInsets(this);
            }
        }
        return;
    }

    public void setHasNonEmbeddedTabs(boolean p1)
    {
        this.mHasNonEmbeddedTabs = p1;
        return;
    }

    public void setHideOnContentScrollEnabled(boolean p2)
    {
        if (p2 != this.mHideOnContentScroll) {
            this.mHideOnContentScroll = p2;
            if (!p2) {
                this.haltActionBarHideOffsetAnimations();
                this.setActionBarHideOffset(0);
            }
        }
        return;
    }

    public void setIcon(int p2)
    {
        this.pullChildren();
        this.mDecorToolbar.setIcon(p2);
        return;
    }

    public void setIcon(android.graphics.drawable.Drawable p2)
    {
        this.pullChildren();
        this.mDecorToolbar.setIcon(p2);
        return;
    }

    public void setLogo(int p2)
    {
        this.pullChildren();
        this.mDecorToolbar.setLogo(p2);
        return;
    }

    public void setMenu(android.view.Menu p2, androidx.appcompat.view.menu.MenuPresenter$Callback p3)
    {
        this.pullChildren();
        this.mDecorToolbar.setMenu(p2, p3);
        return;
    }

    public void setMenuPrepared()
    {
        this.pullChildren();
        this.mDecorToolbar.setMenuPrepared();
        return;
    }

    public void setOverlayMode(boolean p3)
    {
        int v0_0;
        this.mOverlayMode = p3;
        if ((!p3) || (this.getContext().getApplicationInfo().targetSdkVersion >= 19)) {
            v0_0 = 0;
        } else {
            v0_0 = 1;
        }
        this.mIgnoreWindowContentOverlay = v0_0;
        return;
    }

    public void setShowingForActionMode(boolean p1)
    {
        return;
    }

    public void setUiOptions(int p1)
    {
        return;
    }

    public void setWindowCallback(android.view.Window$Callback p2)
    {
        this.pullChildren();
        this.mDecorToolbar.setWindowCallback(p2);
        return;
    }

    public void setWindowTitle(CharSequence p2)
    {
        this.pullChildren();
        this.mDecorToolbar.setWindowTitle(p2);
        return;
    }

    public boolean shouldDelayChildPressedState()
    {
        return 0;
    }

    public boolean showOverflowMenu()
    {
        this.pullChildren();
        return this.mDecorToolbar.showOverflowMenu();
    }
}
