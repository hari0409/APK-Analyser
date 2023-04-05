package androidx.appcompat.widget;
public class ActionBarContextView extends androidx.appcompat.widget.AbsActionBarView {
    private static final String TAG = "ActionBarContextView";
    private android.view.View mClose;
    private int mCloseItemLayout;
    private android.view.View mCustomView;
    private CharSequence mSubtitle;
    private int mSubtitleStyleRes;
    private android.widget.TextView mSubtitleView;
    private CharSequence mTitle;
    private android.widget.LinearLayout mTitleLayout;
    private boolean mTitleOptional;
    private int mTitleStyleRes;
    private android.widget.TextView mTitleView;

    public ActionBarContextView(android.content.Context p2)
    {
        this(p2, 0);
        return;
    }

    public ActionBarContextView(android.content.Context p2, android.util.AttributeSet p3)
    {
        this(p2, p3, androidx.appcompat.R$attr.actionModeStyle);
        return;
    }

    public ActionBarContextView(android.content.Context p4, android.util.AttributeSet p5, int p6)
    {
        super(p4, p5, p6);
        androidx.appcompat.widget.TintTypedArray v0 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(p4, p5, androidx.appcompat.R$styleable.ActionMode, p6, 0);
        androidx.core.view.ViewCompat.setBackground(super, v0.getDrawable(androidx.appcompat.R$styleable.ActionMode_background));
        super.mTitleStyleRes = v0.getResourceId(androidx.appcompat.R$styleable.ActionMode_titleTextStyle, 0);
        super.mSubtitleStyleRes = v0.getResourceId(androidx.appcompat.R$styleable.ActionMode_subtitleTextStyle, 0);
        super.mContentHeight = v0.getLayoutDimension(androidx.appcompat.R$styleable.ActionMode_height, 0);
        super.mCloseItemLayout = v0.getResourceId(androidx.appcompat.R$styleable.ActionMode_closeItemLayout, androidx.appcompat.R$layout.abc_action_mode_close_item_material);
        v0.recycle();
        return;
    }

    private void initTitle()
    {
        int v6 = 8;
        if (this.mTitleLayout == null) {
            android.view.LayoutInflater.from(this.getContext()).inflate(androidx.appcompat.R$layout.abc_action_bar_title_item, this);
            this.mTitleLayout = ((android.widget.LinearLayout) this.getChildAt((this.getChildCount() - 1)));
            this.mTitleView = ((android.widget.TextView) this.mTitleLayout.findViewById(androidx.appcompat.R$id.action_bar_title));
            this.mSubtitleView = ((android.widget.TextView) this.mTitleLayout.findViewById(androidx.appcompat.R$id.action_bar_subtitle));
            if (this.mTitleStyleRes != 0) {
                this.mTitleView.setTextAppearance(this.getContext(), this.mTitleStyleRes);
            }
            if (this.mSubtitleStyleRes != 0) {
                this.mSubtitleView.setTextAppearance(this.getContext(), this.mSubtitleStyleRes);
            }
        }
        int v1;
        this.mTitleView.setText(this.mTitle);
        this.mSubtitleView.setText(this.mSubtitle);
        if (android.text.TextUtils.isEmpty(this.mTitle)) {
            v1 = 0;
        } else {
            v1 = 1;
        }
        int v0;
        if (android.text.TextUtils.isEmpty(this.mSubtitle)) {
            v0 = 0;
        } else {
            v0 = 1;
        }
        android.widget.LinearLayout v3_22;
        if (v0 == 0) {
            v3_22 = 8;
        } else {
            v3_22 = 0;
        }
        this.mSubtitleView.setVisibility(v3_22);
        if ((v1 != 0) || (v0 != 0)) {
            v6 = 0;
        }
        this.mTitleLayout.setVisibility(v6);
        if (this.mTitleLayout.getParent() == null) {
            this.addView(this.mTitleLayout);
        }
        return;
    }

    public bridge synthetic void animateToVisibility(int p1)
    {
        super.animateToVisibility(p1);
        return;
    }

    public bridge synthetic boolean canShowOverflowMenu()
    {
        return super.canShowOverflowMenu();
    }

    public void closeMode()
    {
        if (this.mClose == null) {
            this.killMode();
        }
        return;
    }

    public bridge synthetic void dismissPopupMenus()
    {
        super.dismissPopupMenus();
        return;
    }

    protected android.view.ViewGroup$LayoutParams generateDefaultLayoutParams()
    {
        return new android.view.ViewGroup$MarginLayoutParams(-1, -2);
    }

    public android.view.ViewGroup$LayoutParams generateLayoutParams(android.util.AttributeSet p3)
    {
        return new android.view.ViewGroup$MarginLayoutParams(this.getContext(), p3);
    }

    public bridge synthetic int getAnimatedVisibility()
    {
        return super.getAnimatedVisibility();
    }

    public bridge synthetic int getContentHeight()
    {
        return super.getContentHeight();
    }

    public CharSequence getSubtitle()
    {
        return this.mSubtitle;
    }

    public CharSequence getTitle()
    {
        return this.mTitle;
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

    public void initForMode(androidx.appcompat.view.ActionMode p7)
    {
        if (this.mClose != null) {
            if (this.mClose.getParent() == null) {
                this.addView(this.mClose);
            }
        } else {
            this.mClose = android.view.LayoutInflater.from(this.getContext()).inflate(this.mCloseItemLayout, this, 0);
            this.addView(this.mClose);
        }
        this.mClose.findViewById(androidx.appcompat.R$id.action_mode_close_button).setOnClickListener(new androidx.appcompat.widget.ActionBarContextView$1(this, p7));
        androidx.appcompat.view.menu.MenuBuilder v3_1 = ((androidx.appcompat.view.menu.MenuBuilder) p7.getMenu());
        if (this.mActionMenuPresenter != null) {
            this.mActionMenuPresenter.dismissPopupMenus();
        }
        this.mActionMenuPresenter = new androidx.appcompat.widget.ActionMenuPresenter(this.getContext());
        this.mActionMenuPresenter.setReserveOverflow(1);
        android.view.ViewGroup$LayoutParams v2_1 = new android.view.ViewGroup$LayoutParams(-2, -1);
        v3_1.addMenuPresenter(this.mActionMenuPresenter, this.mPopupContext);
        this.mMenuView = ((androidx.appcompat.widget.ActionMenuView) this.mActionMenuPresenter.getMenuView(this));
        androidx.core.view.ViewCompat.setBackground(this.mMenuView, 0);
        this.addView(this.mMenuView, v2_1);
        return;
    }

    public bridge synthetic boolean isOverflowMenuShowPending()
    {
        return super.isOverflowMenuShowPending();
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

    public bridge synthetic boolean isOverflowReserved()
    {
        return super.isOverflowReserved();
    }

    public boolean isTitleOptional()
    {
        return this.mTitleOptional;
    }

    public void killMode()
    {
        this.removeAllViews();
        this.mCustomView = 0;
        this.mMenuView = 0;
        return;
    }

    public void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        if (this.mActionMenuPresenter != null) {
            this.mActionMenuPresenter.hideOverflowMenu();
            this.mActionMenuPresenter.hideSubMenus();
        }
        return;
    }

    public bridge synthetic boolean onHoverEvent(android.view.MotionEvent p2)
    {
        return super.onHoverEvent(p2);
    }

    public void onInitializeAccessibilityEvent(android.view.accessibility.AccessibilityEvent p3)
    {
        if (p3.getEventType() != 32) {
            super.onInitializeAccessibilityEvent(p3);
        } else {
            p3.setSource(this);
            p3.setClassName(this.getClass().getName());
            p3.setPackageName(this.getContext().getPackageName());
            p3.setContentDescription(this.mTitle);
        }
        return;
    }

    protected void onLayout(boolean p16, int p17, int p18, int p19, int p20)
    {
        int v2_1;
        boolean v5 = androidx.appcompat.widget.ViewUtils.isLayoutRtl(this);
        if (!v5) {
            v2_1 = this.getPaddingLeft();
        } else {
            v2_1 = ((p19 - p17) - this.getPaddingRight());
        }
        int v3 = this.getPaddingTop();
        int v4 = (((p20 - p18) - this.getPaddingTop()) - this.getPaddingBottom());
        if ((this.mClose != null) && (this.mClose.getVisibility() != 8)) {
            int v14;
            android.view.ViewGroup$MarginLayoutParams v13_1 = ((android.view.ViewGroup$MarginLayoutParams) this.mClose.getLayoutParams());
            if (!v5) {
                v14 = v13_1.leftMargin;
            } else {
                v14 = v13_1.rightMargin;
            }
            int v12;
            if (!v5) {
                v12 = v13_1.rightMargin;
            } else {
                v12 = v13_1.leftMargin;
            }
            int v2_0 = androidx.appcompat.widget.ActionBarContextView.next(v2_1, v14, v5);
            v2_1 = androidx.appcompat.widget.ActionBarContextView.next((v2_0 + this.positionChild(this.mClose, v2_0, v3, v4, v5)), v12, v5);
        }
        if ((this.mTitleLayout != null) && ((this.mCustomView == null) && (this.mTitleLayout.getVisibility() != 8))) {
            v2_1 += this.positionChild(this.mTitleLayout, v2_1, v3, v4, v5);
        }
        if (this.mCustomView != null) {
            this.positionChild(this.mCustomView, v2_1, v3, v4, v5);
        }
        int v2_3;
        if (!v5) {
            v2_3 = ((p19 - p17) - this.getPaddingRight());
        } else {
            v2_3 = this.getPaddingLeft();
        }
        if (this.mMenuView != null) {
            int v11;
            if (v5) {
                v11 = 0;
            } else {
                v11 = 1;
            }
            this.positionChild(this.mMenuView, v2_3, v3, v4, v11);
        }
        return;
    }

    protected void onMeasure(int p28, int p29)
    {
        if (android.view.View$MeasureSpec.getMode(p28) == 1073741824) {
            if (android.view.View$MeasureSpec.getMode(p29) != 0) {
                int v15;
                int v5 = android.view.View$MeasureSpec.getSize(p28);
                if (this.mContentHeight <= 0) {
                    v15 = android.view.View$MeasureSpec.getSize(p29);
                } else {
                    v15 = this.mContentHeight;
                }
                int v22 = (this.getPaddingTop() + this.getPaddingBottom());
                int v3_0 = ((v5 - this.getPaddingLeft()) - this.getPaddingRight());
                int v11 = (v15 - v22);
                int v4 = android.view.View$MeasureSpec.makeMeasureSpec(v11, -2147483648);
                if (this.mClose != null) {
                    android.view.ViewGroup$LayoutParams v14_2 = ((android.view.ViewGroup$MarginLayoutParams) this.mClose.getLayoutParams());
                    v3_0 = (this.measureChildView(this.mClose, v3_0, v4, 0) - (v14_2.leftMargin + v14_2.rightMargin));
                }
                if ((this.mMenuView != null) && (this.mMenuView.getParent() == this)) {
                    v3_0 = this.measureChildView(this.mMenuView, v3_0, v4, 0);
                }
                if ((this.mTitleLayout != null) && (this.mCustomView == null)) {
                    if (!this.mTitleOptional) {
                        v3_0 = this.measureChildView(this.mTitleLayout, v3_0, v4, 0);
                    } else {
                        int v18;
                        this.mTitleLayout.measure(android.view.View$MeasureSpec.makeMeasureSpec(0, 0), v4);
                        int v19 = this.mTitleLayout.getMeasuredWidth();
                        if (v19 > v3_0) {
                            v18 = 0;
                        } else {
                            v18 = 1;
                        }
                        if (v18 != 0) {
                            v3_0 -= v19;
                        }
                        android.view.View v24_3;
                        if (v18 == 0) {
                            v24_3 = 8;
                        } else {
                            v24_3 = 0;
                        }
                        this.mTitleLayout.setVisibility(v24_3);
                    }
                }
                if (this.mCustomView != null) {
                    int v10;
                    android.view.ViewGroup$LayoutParams v14_0 = this.mCustomView.getLayoutParams();
                    if (v14_0.width == -2) {
                        v10 = -2147483648;
                    } else {
                        v10 = 1073741824;
                    }
                    int v9;
                    if (v14_0.width < 0) {
                        v9 = v3_0;
                    } else {
                        v9 = Math.min(v14_0.width, v3_0);
                    }
                    int v8;
                    if (v14_0.height == -2) {
                        v8 = -2147483648;
                    } else {
                        v8 = 1073741824;
                    }
                    int v7;
                    if (v14_0.height < 0) {
                        v7 = v11;
                    } else {
                        v7 = Math.min(v14_0.height, v11);
                    }
                    this.mCustomView.measure(android.view.View$MeasureSpec.makeMeasureSpec(v9, v10), android.view.View$MeasureSpec.makeMeasureSpec(v7, v8));
                }
                if (this.mContentHeight > 0) {
                    this.setMeasuredDimension(v5, v15);
                } else {
                    int v16 = 0;
                    int v6 = this.getChildCount();
                    int v13 = 0;
                    while (v13 < v6) {
                        int v17 = (this.getChildAt(v13).getMeasuredHeight() + v22);
                        if (v17 > v16) {
                            v16 = v17;
                        }
                        v13++;
                    }
                    this.setMeasuredDimension(v5, v16);
                }
                return;
            } else {
                throw new IllegalStateException(new StringBuilder().append(this.getClass().getSimpleName()).append(" can only be used ").append("with android:layout_height=\"wrap_content\"").toString());
            }
        } else {
            throw new IllegalStateException(new StringBuilder().append(this.getClass().getSimpleName()).append(" can only be used ").append("with android:layout_width=\"match_parent\" (or fill_parent)").toString());
        }
    }

    public bridge synthetic boolean onTouchEvent(android.view.MotionEvent p2)
    {
        return super.onTouchEvent(p2);
    }

    public bridge synthetic void postShowOverflowMenu()
    {
        super.postShowOverflowMenu();
        return;
    }

    public void setContentHeight(int p1)
    {
        this.mContentHeight = p1;
        return;
    }

    public void setCustomView(android.view.View p2)
    {
        if (this.mCustomView != null) {
            this.removeView(this.mCustomView);
        }
        this.mCustomView = p2;
        if ((p2 != null) && (this.mTitleLayout != null)) {
            this.removeView(this.mTitleLayout);
            this.mTitleLayout = 0;
        }
        if (p2 != null) {
            this.addView(p2);
        }
        this.requestLayout();
        return;
    }

    public void setSubtitle(CharSequence p1)
    {
        this.mSubtitle = p1;
        this.initTitle();
        return;
    }

    public void setTitle(CharSequence p1)
    {
        this.mTitle = p1;
        this.initTitle();
        return;
    }

    public void setTitleOptional(boolean p2)
    {
        if (p2 != this.mTitleOptional) {
            this.requestLayout();
        }
        this.mTitleOptional = p2;
        return;
    }

    public bridge synthetic void setVisibility(int p1)
    {
        super.setVisibility(p1);
        return;
    }

    public bridge synthetic androidx.core.view.ViewPropertyAnimatorCompat setupAnimatorToVisibility(int p3, long p4)
    {
        return super.setupAnimatorToVisibility(p3, p4);
    }

    public boolean shouldDelayChildPressedState()
    {
        return 0;
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
