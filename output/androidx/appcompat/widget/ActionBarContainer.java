package androidx.appcompat.widget;
public class ActionBarContainer extends android.widget.FrameLayout {
    private android.view.View mActionBarView;
    android.graphics.drawable.Drawable mBackground;
    private android.view.View mContextView;
    private int mHeight;
    boolean mIsSplit;
    boolean mIsStacked;
    private boolean mIsTransitioning;
    android.graphics.drawable.Drawable mSplitBackground;
    android.graphics.drawable.Drawable mStackedBackground;
    private android.view.View mTabContainer;

    public ActionBarContainer(android.content.Context p2)
    {
        this(p2, 0);
        return;
    }

    public ActionBarContainer(android.content.Context p7, android.util.AttributeSet p8)
    {
        int v2 = 1;
        super(p7, p8);
        androidx.core.view.ViewCompat.setBackground(super, new androidx.appcompat.widget.ActionBarBackgroundDrawable(super));
        android.content.res.TypedArray v0 = p7.obtainStyledAttributes(p8, androidx.appcompat.R$styleable.ActionBar);
        super.mBackground = v0.getDrawable(androidx.appcompat.R$styleable.ActionBar_background);
        super.mStackedBackground = v0.getDrawable(androidx.appcompat.R$styleable.ActionBar_backgroundStacked);
        super.mHeight = v0.getDimensionPixelSize(androidx.appcompat.R$styleable.ActionBar_height, -1);
        if (super.getId() == androidx.appcompat.R$id.split_action_bar) {
            super.mIsSplit = 1;
            super.mSplitBackground = v0.getDrawable(androidx.appcompat.R$styleable.ActionBar_backgroundSplit);
        }
        v0.recycle();
        if (!super.mIsSplit) {
            if ((super.mBackground != null) || (super.mStackedBackground != null)) {
                v2 = 0;
            }
        } else {
            if (super.mSplitBackground != null) {
                v2 = 0;
            }
        }
        super.setWillNotDraw(v2);
        return;
    }

    private int getMeasuredHeightWithMargins(android.view.View p4)
    {
        android.widget.FrameLayout$LayoutParams v0_1 = ((android.widget.FrameLayout$LayoutParams) p4.getLayoutParams());
        return ((p4.getMeasuredHeight() + v0_1.topMargin) + v0_1.bottomMargin);
    }

    private boolean isCollapsed(android.view.View p3)
    {
        if ((p3 != null) && ((p3.getVisibility() != 8) && (p3.getMeasuredHeight() != 0))) {
            int v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    protected void drawableStateChanged()
    {
        super.drawableStateChanged();
        if ((this.mBackground != null) && (this.mBackground.isStateful())) {
            this.mBackground.setState(this.getDrawableState());
        }
        if ((this.mStackedBackground != null) && (this.mStackedBackground.isStateful())) {
            this.mStackedBackground.setState(this.getDrawableState());
        }
        if ((this.mSplitBackground != null) && (this.mSplitBackground.isStateful())) {
            this.mSplitBackground.setState(this.getDrawableState());
        }
        return;
    }

    public android.view.View getTabContainer()
    {
        return this.mTabContainer;
    }

    public void jumpDrawablesToCurrentState()
    {
        super.jumpDrawablesToCurrentState();
        if (this.mBackground != null) {
            this.mBackground.jumpToCurrentState();
        }
        if (this.mStackedBackground != null) {
            this.mStackedBackground.jumpToCurrentState();
        }
        if (this.mSplitBackground != null) {
            this.mSplitBackground.jumpToCurrentState();
        }
        return;
    }

    public void onFinishInflate()
    {
        super.onFinishInflate();
        this.mActionBarView = this.findViewById(androidx.appcompat.R$id.action_bar);
        this.mContextView = this.findViewById(androidx.appcompat.R$id.action_context_bar);
        return;
    }

    public boolean onHoverEvent(android.view.MotionEvent p2)
    {
        super.onHoverEvent(p2);
        return 1;
    }

    public boolean onInterceptTouchEvent(android.view.MotionEvent p2)
    {
        if ((!this.mIsTransitioning) && (!super.onInterceptTouchEvent(p2))) {
            int v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    public void onLayout(boolean p12, int p13, int p14, int p15, int p16)
    {
        int v1;
        this = super.onLayout(p12, p13, p14, p15, p16);
        android.view.View v4 = this.mTabContainer;
        if ((v4 == null) || (v4.getVisibility() == 8)) {
            v1 = 0;
        } else {
            v1 = 1;
        }
        if ((v4 != null) && (v4.getVisibility() != 8)) {
            int v0 = this.getMeasuredHeight();
            android.widget.FrameLayout$LayoutParams v2_1 = ((android.widget.FrameLayout$LayoutParams) v4.getLayoutParams());
            v4.layout(p13, ((v0 - v4.getMeasuredHeight()) - v2_1.bottomMargin), p15, (v0 - v2_1.bottomMargin));
        }
        int v3 = 0;
        if (!this.mIsSplit) {
            if (this.mBackground != null) {
                if (this.mActionBarView.getVisibility() != 0) {
                    if ((this.mContextView == null) || (this.mContextView.getVisibility() != 0)) {
                        this.mBackground.setBounds(0, 0, 0, 0);
                    } else {
                        this.mBackground.setBounds(this.mContextView.getLeft(), this.mContextView.getTop(), this.mContextView.getRight(), this.mContextView.getBottom());
                    }
                } else {
                    this.mBackground.setBounds(this.mActionBarView.getLeft(), this.mActionBarView.getTop(), this.mActionBarView.getRight(), this.mActionBarView.getBottom());
                }
                v3 = 1;
            }
            this.mIsStacked = v1;
            if ((v1 != 0) && (this.mStackedBackground != null)) {
                this.mStackedBackground.setBounds(v4.getLeft(), v4.getTop(), v4.getRight(), v4.getBottom());
                v3 = 1;
            }
        } else {
            if (this.mSplitBackground != null) {
                this.mSplitBackground.setBounds(0, 0, this.getMeasuredWidth(), this.getMeasuredHeight());
                v3 = 1;
            }
        }
        if (v3 != 0) {
            this.invalidate();
        }
        return;
    }

    public void onMeasure(int p7, int p8)
    {
        if ((this.mActionBarView == null) && ((android.view.View$MeasureSpec.getMode(p8) == -2147483648) && (this.mHeight >= 0))) {
            p8 = android.view.View$MeasureSpec.makeMeasureSpec(Math.min(this.mHeight, android.view.View$MeasureSpec.getSize(p8)), -2147483648);
        }
        super.onMeasure(p7, p8);
        if (this.mActionBarView != null) {
            int v1 = android.view.View$MeasureSpec.getMode(p8);
            if ((this.mTabContainer != null) && ((this.mTabContainer.getVisibility() != 8) && (v1 != 1073741824))) {
                int v2;
                if (this.isCollapsed(this.mActionBarView)) {
                    if (this.isCollapsed(this.mContextView)) {
                        v2 = 0;
                    } else {
                        v2 = this.getMeasuredHeightWithMargins(this.mContextView);
                    }
                } else {
                    v2 = this.getMeasuredHeightWithMargins(this.mActionBarView);
                }
                int v0;
                if (v1 != -2147483648) {
                    v0 = 2147483647;
                } else {
                    v0 = android.view.View$MeasureSpec.getSize(p8);
                }
                this.setMeasuredDimension(this.getMeasuredWidth(), Math.min((this.getMeasuredHeightWithMargins(this.mTabContainer) + v2), v0));
            }
        }
        return;
    }

    public boolean onTouchEvent(android.view.MotionEvent p2)
    {
        super.onTouchEvent(p2);
        return 1;
    }

    public void setPrimaryBackground(android.graphics.drawable.Drawable p8)
    {
        int v0 = 1;
        if (this.mBackground != null) {
            this.mBackground.setCallback(0);
            this.unscheduleDrawable(this.mBackground);
        }
        this.mBackground = p8;
        if (p8 != null) {
            p8.setCallback(this);
            if (this.mActionBarView != null) {
                this.mBackground.setBounds(this.mActionBarView.getLeft(), this.mActionBarView.getTop(), this.mActionBarView.getRight(), this.mActionBarView.getBottom());
            }
        }
        if (!this.mIsSplit) {
            if ((this.mBackground != null) || (this.mStackedBackground != null)) {
                v0 = 0;
            }
        } else {
            if (this.mSplitBackground != null) {
                v0 = 0;
            }
        }
        this.setWillNotDraw(v0);
        this.invalidate();
        return;
    }

    public void setSplitBackground(android.graphics.drawable.Drawable p6)
    {
        int v0 = 1;
        if (this.mSplitBackground != null) {
            this.mSplitBackground.setCallback(0);
            this.unscheduleDrawable(this.mSplitBackground);
        }
        this.mSplitBackground = p6;
        if (p6 != null) {
            p6.setCallback(this);
            if ((this.mIsSplit) && (this.mSplitBackground != null)) {
                this.mSplitBackground.setBounds(0, 0, this.getMeasuredWidth(), this.getMeasuredHeight());
            }
        }
        if (!this.mIsSplit) {
            if ((this.mBackground != null) || (this.mStackedBackground != null)) {
                v0 = 0;
            }
        } else {
            if (this.mSplitBackground != null) {
                v0 = 0;
            }
        }
        this.setWillNotDraw(v0);
        this.invalidate();
        return;
    }

    public void setStackedBackground(android.graphics.drawable.Drawable p8)
    {
        int v0 = 1;
        if (this.mStackedBackground != null) {
            this.mStackedBackground.setCallback(0);
            this.unscheduleDrawable(this.mStackedBackground);
        }
        this.mStackedBackground = p8;
        if (p8 != null) {
            p8.setCallback(this);
            if ((this.mIsStacked) && (this.mStackedBackground != null)) {
                this.mStackedBackground.setBounds(this.mTabContainer.getLeft(), this.mTabContainer.getTop(), this.mTabContainer.getRight(), this.mTabContainer.getBottom());
            }
        }
        if (!this.mIsSplit) {
            if ((this.mBackground != null) || (this.mStackedBackground != null)) {
                v0 = 0;
            }
        } else {
            if (this.mSplitBackground != null) {
                v0 = 0;
            }
        }
        this.setWillNotDraw(v0);
        this.invalidate();
        return;
    }

    public void setTabContainer(androidx.appcompat.widget.ScrollingTabContainerView p3)
    {
        if (this.mTabContainer != null) {
            this.removeView(this.mTabContainer);
        }
        this.mTabContainer = p3;
        if (p3 != null) {
            this.addView(p3);
            android.view.ViewGroup$LayoutParams v0 = p3.getLayoutParams();
            v0.width = -1;
            v0.height = -2;
            p3.setAllowCollapse(0);
        }
        return;
    }

    public void setTransitioning(boolean p2)
    {
        int v0;
        this.mIsTransitioning = p2;
        if (!p2) {
            v0 = 262144;
        } else {
            v0 = 393216;
        }
        this.setDescendantFocusability(v0);
        return;
    }

    public void setVisibility(int p4)
    {
        int v0;
        super.setVisibility(p4);
        if (p4 != 0) {
            v0 = 0;
        } else {
            v0 = 1;
        }
        if (this.mBackground != null) {
            this.mBackground.setVisible(v0, 0);
        }
        if (this.mStackedBackground != null) {
            this.mStackedBackground.setVisible(v0, 0);
        }
        if (this.mSplitBackground != null) {
            this.mSplitBackground.setVisible(v0, 0);
        }
        return;
    }

    public android.view.ActionMode startActionModeForChild(android.view.View p2, android.view.ActionMode$Callback p3)
    {
        return 0;
    }

    public android.view.ActionMode startActionModeForChild(android.view.View p2, android.view.ActionMode$Callback p3, int p4)
    {
        int v0;
        if (p4 == 0) {
            v0 = 0;
        } else {
            v0 = super.startActionModeForChild(p2, p3, p4);
        }
        return v0;
    }

    protected boolean verifyDrawable(android.graphics.drawable.Drawable p2)
    {
        if (((p2 != this.mBackground) || (this.mIsSplit)) && (((p2 != this.mStackedBackground) || (!this.mIsStacked)) && (((p2 != this.mSplitBackground) || (!this.mIsSplit)) && (!super.verifyDrawable(p2))))) {
            int v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }
}
