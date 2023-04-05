package androidx.appcompat.widget;
abstract class AbsActionBarView extends android.view.ViewGroup {
    private static final int FADE_DURATION = 200;
    protected androidx.appcompat.widget.ActionMenuPresenter mActionMenuPresenter;
    protected int mContentHeight;
    private boolean mEatingHover;
    private boolean mEatingTouch;
    protected androidx.appcompat.widget.ActionMenuView mMenuView;
    protected final android.content.Context mPopupContext;
    protected final androidx.appcompat.widget.AbsActionBarView$VisibilityAnimListener mVisAnimListener;
    protected androidx.core.view.ViewPropertyAnimatorCompat mVisibilityAnim;

    AbsActionBarView(android.content.Context p2)
    {
        this(p2, 0);
        return;
    }

    AbsActionBarView(android.content.Context p2, android.util.AttributeSet p3)
    {
        this(p2, p3, 0);
        return;
    }

    AbsActionBarView(android.content.Context p5, android.util.AttributeSet p6, int p7)
    {
        super(p5, p6, p7);
        super.mVisAnimListener = new androidx.appcompat.widget.AbsActionBarView$VisibilityAnimListener(super);
        android.util.TypedValue v0_1 = new android.util.TypedValue();
        if ((!p5.getTheme().resolveAttribute(androidx.appcompat.R$attr.actionBarPopupTheme, v0_1, 1)) || (v0_1.resourceId == 0)) {
            super.mPopupContext = p5;
        } else {
            super.mPopupContext = new android.view.ContextThemeWrapper(p5, v0_1.resourceId);
        }
        return;
    }

    static synthetic void access$001(androidx.appcompat.widget.AbsActionBarView p0, int p1)
    {
        super.setVisibility(p1);
        return;
    }

    static synthetic void access$101(androidx.appcompat.widget.AbsActionBarView p0, int p1)
    {
        super.setVisibility(p1);
        return;
    }

    protected static int next(int p1, int p2, boolean p3)
    {
        int v0;
        if (!p3) {
            v0 = (p1 + p2);
        } else {
            v0 = (p1 - p2);
        }
        return v0;
    }

    public void animateToVisibility(int p5)
    {
        this.setupAnimatorToVisibility(p5, 200).start();
        return;
    }

    public boolean canShowOverflowMenu()
    {
        if ((!this.isOverflowReserved()) || (this.getVisibility() != 0)) {
            int v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    public void dismissPopupMenus()
    {
        if (this.mActionMenuPresenter != null) {
            this.mActionMenuPresenter.dismissPopupMenus();
        }
        return;
    }

    public int getAnimatedVisibility()
    {
        int v0_1;
        if (this.mVisibilityAnim == null) {
            v0_1 = this.getVisibility();
        } else {
            v0_1 = this.mVisAnimListener.mFinalVisibility;
        }
        return v0_1;
    }

    public int getContentHeight()
    {
        return this.mContentHeight;
    }

    public boolean hideOverflowMenu()
    {
        int v0_1;
        if (this.mActionMenuPresenter == null) {
            v0_1 = 0;
        } else {
            v0_1 = this.mActionMenuPresenter.hideOverflowMenu();
        }
        return v0_1;
    }

    public boolean isOverflowMenuShowPending()
    {
        int v0_1;
        if (this.mActionMenuPresenter == null) {
            v0_1 = 0;
        } else {
            v0_1 = this.mActionMenuPresenter.isOverflowMenuShowPending();
        }
        return v0_1;
    }

    public boolean isOverflowMenuShowing()
    {
        int v0_1;
        if (this.mActionMenuPresenter == null) {
            v0_1 = 0;
        } else {
            v0_1 = this.mActionMenuPresenter.isOverflowMenuShowing();
        }
        return v0_1;
    }

    public boolean isOverflowReserved()
    {
        if ((this.mActionMenuPresenter == null) || (!this.mActionMenuPresenter.isOverflowReserved())) {
            int v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }

    protected int measureChildView(android.view.View p2, int p3, int p4, int p5)
    {
        p2.measure(android.view.View$MeasureSpec.makeMeasureSpec(p3, -2147483648), p4);
        return Math.max(0, ((p3 - p2.getMeasuredWidth()) - p5));
    }

    protected void onConfigurationChanged(android.content.res.Configuration p7)
    {
        super.onConfigurationChanged(p7);
        android.content.res.TypedArray v0 = this.getContext().obtainStyledAttributes(0, androidx.appcompat.R$styleable.ActionBar, androidx.appcompat.R$attr.actionBarStyle, 0);
        this.setContentHeight(v0.getLayoutDimension(androidx.appcompat.R$styleable.ActionBar_height, 0));
        v0.recycle();
        if (this.mActionMenuPresenter != null) {
            this.mActionMenuPresenter.onConfigurationChanged(p7);
        }
        return;
    }

    public boolean onHoverEvent(android.view.MotionEvent p7)
    {
        int v0 = p7.getActionMasked();
        if (v0 == 9) {
            this.mEatingHover = 0;
        }
        if (!this.mEatingHover) {
            boolean v1 = super.onHoverEvent(p7);
            if ((v0 == 9) && (!v1)) {
                this.mEatingHover = 1;
            }
        }
        if ((v0 == 10) || (v0 == 3)) {
            this.mEatingHover = 0;
        }
        return 1;
    }

    public boolean onTouchEvent(android.view.MotionEvent p6)
    {
        int v0 = p6.getActionMasked();
        if (v0 == 0) {
            this.mEatingTouch = 0;
        }
        if (!this.mEatingTouch) {
            boolean v1 = super.onTouchEvent(p6);
            if ((v0 == 0) && (!v1)) {
                this.mEatingTouch = 1;
            }
        }
        if ((v0 == 1) || (v0 == 3)) {
            this.mEatingTouch = 0;
        }
        return 1;
    }

    protected int positionChild(android.view.View p6, int p7, int p8, int p9, boolean p10)
    {
        int v2 = p6.getMeasuredWidth();
        int v0 = p6.getMeasuredHeight();
        int v1 = (p8 + ((p9 - v0) / 2));
        if (!p10) {
            p6.layout(p7, v1, (p7 + v2), (v1 + v0));
        } else {
            p6.layout((p7 - v2), v1, p7, (v1 + v0));
        }
        if (p10) {
            v2 = (- v2);
        }
        return v2;
    }

    public void postShowOverflowMenu()
    {
        this.post(new androidx.appcompat.widget.AbsActionBarView$1(this));
        return;
    }

    public void setContentHeight(int p1)
    {
        this.mContentHeight = p1;
        this.requestLayout();
        return;
    }

    public void setVisibility(int p2)
    {
        if (p2 != this.getVisibility()) {
            if (this.mVisibilityAnim != null) {
                this.mVisibilityAnim.cancel();
            }
            super.setVisibility(p2);
        }
        return;
    }

    public androidx.core.view.ViewPropertyAnimatorCompat setupAnimatorToVisibility(int p7, long p8)
    {
        if (this.mVisibilityAnim != null) {
            this.mVisibilityAnim.cancel();
        }
        androidx.core.view.ViewPropertyAnimatorCompat v2;
        if (p7 != 0) {
            androidx.core.view.ViewPropertyAnimatorCompat v0_1 = androidx.core.view.ViewCompat.animate(this).alpha(0);
            v0_1.setDuration(p8);
            v0_1.setListener(this.mVisAnimListener.withFinalVisibility(v0_1, p7));
            v2 = v0_1;
        } else {
            if (this.getVisibility() != 0) {
                this.setAlpha(0);
            }
            androidx.core.view.ViewPropertyAnimatorCompat v0_0 = androidx.core.view.ViewCompat.animate(this).alpha(1065353216);
            v0_0.setDuration(p8);
            v0_0.setListener(this.mVisAnimListener.withFinalVisibility(v0_0, p7));
            v2 = v0_0;
        }
        return v2;
    }

    public boolean showOverflowMenu()
    {
        int v0_1;
        if (this.mActionMenuPresenter == null) {
            v0_1 = 0;
        } else {
            v0_1 = this.mActionMenuPresenter.showOverflowMenu();
        }
        return v0_1;
    }
}
