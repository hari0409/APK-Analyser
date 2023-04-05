package androidx.appcompat.widget;
public class Toolbar extends android.view.ViewGroup {
    private static final String TAG = "Toolbar";
    private androidx.appcompat.view.menu.MenuPresenter$Callback mActionMenuPresenterCallback;
    int mButtonGravity;
    android.widget.ImageButton mCollapseButtonView;
    private CharSequence mCollapseDescription;
    private android.graphics.drawable.Drawable mCollapseIcon;
    private boolean mCollapsible;
    private int mContentInsetEndWithActions;
    private int mContentInsetStartWithNavigation;
    private androidx.appcompat.widget.RtlSpacingHelper mContentInsets;
    private boolean mEatingHover;
    private boolean mEatingTouch;
    android.view.View mExpandedActionView;
    private androidx.appcompat.widget.Toolbar$ExpandedActionViewMenuPresenter mExpandedMenuPresenter;
    private int mGravity;
    private final java.util.ArrayList mHiddenViews;
    private android.widget.ImageView mLogoView;
    private int mMaxButtonHeight;
    private androidx.appcompat.view.menu.MenuBuilder$Callback mMenuBuilderCallback;
    private androidx.appcompat.widget.ActionMenuView mMenuView;
    private final androidx.appcompat.widget.ActionMenuView$OnMenuItemClickListener mMenuViewItemClickListener;
    private android.widget.ImageButton mNavButtonView;
    androidx.appcompat.widget.Toolbar$OnMenuItemClickListener mOnMenuItemClickListener;
    private androidx.appcompat.widget.ActionMenuPresenter mOuterActionMenuPresenter;
    private android.content.Context mPopupContext;
    private int mPopupTheme;
    private final Runnable mShowOverflowMenuRunnable;
    private CharSequence mSubtitleText;
    private int mSubtitleTextAppearance;
    private int mSubtitleTextColor;
    private android.widget.TextView mSubtitleTextView;
    private final int[] mTempMargins;
    private final java.util.ArrayList mTempViews;
    private int mTitleMarginBottom;
    private int mTitleMarginEnd;
    private int mTitleMarginStart;
    private int mTitleMarginTop;
    private CharSequence mTitleText;
    private int mTitleTextAppearance;
    private int mTitleTextColor;
    private android.widget.TextView mTitleTextView;
    private androidx.appcompat.widget.ToolbarWidgetWrapper mWrapper;

    public Toolbar(android.content.Context p2)
    {
        this(p2, 0);
        return;
    }

    public Toolbar(android.content.Context p2, android.util.AttributeSet p3)
    {
        this(p2, p3, androidx.appcompat.R$attr.toolbarStyle);
        return;
    }

    public Toolbar(android.content.Context p25, android.util.AttributeSet p26, int p27)
    {
        void v24_1 = super(p25, p26, p27);
        v24_1.mGravity = 8388627;
        v24_1.mTempViews = new java.util.ArrayList();
        v24_1.mHiddenViews = new java.util.ArrayList();
        void v0_18 = new int[2];
        v24_1.mTempMargins = v0_18;
        int v21_24 = new androidx.appcompat.widget.Toolbar$1;
        v21_24(v24_1);
        v24_1.mMenuViewItemClickListener = v21_24;
        int v21_39 = new androidx.appcompat.widget.Toolbar$2;
        v21_39(v24_1);
        v24_1.mShowOverflowMenuRunnable = v21_39;
        androidx.appcompat.widget.TintTypedArray v5 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(v24_1.getContext(), p26, androidx.appcompat.R$styleable.Toolbar, p27, 0);
        v24_1.mTitleTextAppearance = v5.getResourceId(androidx.appcompat.R$styleable.Toolbar_titleTextAppearance, 0);
        v24_1.mSubtitleTextAppearance = v5.getResourceId(androidx.appcompat.R$styleable.Toolbar_subtitleTextAppearance, 0);
        v24_1.mGravity = v5.getInteger(androidx.appcompat.R$styleable.Toolbar_android_gravity, v24_1.mGravity);
        v24_1.mButtonGravity = v5.getInteger(androidx.appcompat.R$styleable.Toolbar_buttonGravity, 48);
        int v20 = v5.getDimensionPixelOffset(androidx.appcompat.R$styleable.Toolbar_titleMargin, 0);
        if (v5.hasValue(androidx.appcompat.R$styleable.Toolbar_titleMargins)) {
            v20 = v5.getDimensionPixelOffset(androidx.appcompat.R$styleable.Toolbar_titleMargins, v20);
        }
        v24_1.mTitleMarginBottom = v20;
        v24_1.mTitleMarginTop = v20;
        v24_1.mTitleMarginEnd = v20;
        v24_1.mTitleMarginStart = v20;
        int v14 = v5.getDimensionPixelOffset(androidx.appcompat.R$styleable.Toolbar_titleMarginStart, -1);
        if (v14 >= 0) {
            v24_1.mTitleMarginStart = v14;
        }
        int v13 = v5.getDimensionPixelOffset(androidx.appcompat.R$styleable.Toolbar_titleMarginEnd, -1);
        if (v13 >= 0) {
            v24_1.mTitleMarginEnd = v13;
        }
        int v15 = v5.getDimensionPixelOffset(androidx.appcompat.R$styleable.Toolbar_titleMarginTop, -1);
        if (v15 >= 0) {
            v24_1.mTitleMarginTop = v15;
        }
        int v12 = v5.getDimensionPixelOffset(androidx.appcompat.R$styleable.Toolbar_titleMarginBottom, -1);
        if (v12 >= 0) {
            v24_1.mTitleMarginBottom = v12;
        }
        v24_1.mMaxButtonHeight = v5.getDimensionPixelSize(androidx.appcompat.R$styleable.Toolbar_maxButtonHeight, -1);
        int v9 = v5.getDimensionPixelOffset(androidx.appcompat.R$styleable.Toolbar_contentInsetStart, -2147483648);
        int v6 = v5.getDimensionPixelOffset(androidx.appcompat.R$styleable.Toolbar_contentInsetEnd, -2147483648);
        int v7 = v5.getDimensionPixelSize(androidx.appcompat.R$styleable.Toolbar_contentInsetLeft, 0);
        int v8 = v5.getDimensionPixelSize(androidx.appcompat.R$styleable.Toolbar_contentInsetRight, 0);
        void v24_2 = v24_1.ensureContentInsets();
        v24_2.mContentInsets.setAbsolute(v7, v8);
        if ((v9 != -2147483648) || (v6 != -2147483648)) {
            v24_2.mContentInsets.setRelative(v9, v6);
        }
        v24_2.mContentInsetStartWithNavigation = v5.getDimensionPixelOffset(androidx.appcompat.R$styleable.Toolbar_contentInsetStartWithNavigation, -2147483648);
        v24_2.mContentInsetEndWithActions = v5.getDimensionPixelOffset(androidx.appcompat.R$styleable.Toolbar_contentInsetEndWithActions, -2147483648);
        v24_2.mCollapseIcon = v5.getDrawable(androidx.appcompat.R$styleable.Toolbar_collapseIcon);
        v24_2.mCollapseDescription = v5.getText(androidx.appcompat.R$styleable.Toolbar_collapseContentDescription);
        CharSequence v19 = v5.getText(androidx.appcompat.R$styleable.Toolbar_title);
        if (!android.text.TextUtils.isEmpty(v19)) {
            v24_2.setTitle(v19);
        }
        CharSequence v18 = v5.getText(androidx.appcompat.R$styleable.Toolbar_subtitle);
        if (!android.text.TextUtils.isEmpty(v18)) {
            v24_2.setSubtitle(v18);
        }
        v24_2.mPopupContext = v24_2.getContext();
        v24_2.setPopupTheme(v5.getResourceId(androidx.appcompat.R$styleable.Toolbar_popupTheme, 0));
        android.graphics.drawable.Drawable v17 = v5.getDrawable(androidx.appcompat.R$styleable.Toolbar_navigationIcon);
        if (v17 != null) {
            v24_2.setNavigationIcon(v17);
        }
        CharSequence v16 = v5.getText(androidx.appcompat.R$styleable.Toolbar_navigationContentDescription);
        if (!android.text.TextUtils.isEmpty(v16)) {
            v24_2.setNavigationContentDescription(v16);
        }
        android.graphics.drawable.Drawable v10 = v5.getDrawable(androidx.appcompat.R$styleable.Toolbar_logo);
        if (v10 != null) {
            v24_2.setLogo(v10);
        }
        CharSequence v11 = v5.getText(androidx.appcompat.R$styleable.Toolbar_logoDescription);
        if (!android.text.TextUtils.isEmpty(v11)) {
            v24_2.setLogoDescription(v11);
        }
        if (v5.hasValue(androidx.appcompat.R$styleable.Toolbar_titleTextColor)) {
            v24_2.setTitleTextColor(v5.getColor(androidx.appcompat.R$styleable.Toolbar_titleTextColor, -1));
        }
        if (v5.hasValue(androidx.appcompat.R$styleable.Toolbar_subtitleTextColor)) {
            v24_2.setSubtitleTextColor(v5.getColor(androidx.appcompat.R$styleable.Toolbar_subtitleTextColor, -1));
        }
        v5.recycle();
        return;
    }

    private void addCustomViewsWithGravity(java.util.List p8, int p9)
    {
        int v4 = 1;
        if (androidx.core.view.ViewCompat.getLayoutDirection(this) != 1) {
            v4 = 0;
        }
        int v2 = this.getChildCount();
        int v0 = androidx.core.view.GravityCompat.getAbsoluteGravity(p9, androidx.core.view.ViewCompat.getLayoutDirection(this));
        p8.clear();
        if (v4 == 0) {
            int v3_0 = 0;
            while (v3_0 < v2) {
                android.view.View v1_0 = this.getChildAt(v3_0);
                androidx.appcompat.widget.Toolbar$LayoutParams v5_1 = ((androidx.appcompat.widget.Toolbar$LayoutParams) v1_0.getLayoutParams());
                if ((v5_1.mViewType == 0) && ((this.shouldLayout(v1_0)) && (this.getChildHorizontalGravity(v5_1.gravity) == v0))) {
                    p8.add(v1_0);
                }
                v3_0++;
            }
        } else {
            int v3_1 = (v2 - 1);
            while (v3_1 >= 0) {
                android.view.View v1_1 = this.getChildAt(v3_1);
                androidx.appcompat.widget.Toolbar$LayoutParams v5_3 = ((androidx.appcompat.widget.Toolbar$LayoutParams) v1_1.getLayoutParams());
                if ((v5_3.mViewType == 0) && ((this.shouldLayout(v1_1)) && (this.getChildHorizontalGravity(v5_3.gravity) == v0))) {
                    p8.add(v1_1);
                }
                v3_1--;
            }
        }
        return;
    }

    private void addSystemView(android.view.View p4, boolean p5)
    {
        androidx.appcompat.widget.Toolbar$LayoutParams v0_0;
        android.view.ViewGroup$LayoutParams v1 = p4.getLayoutParams();
        if (v1 != null) {
            if (this.checkLayoutParams(v1)) {
                v0_0 = ((androidx.appcompat.widget.Toolbar$LayoutParams) v1);
            } else {
                v0_0 = this.generateLayoutParams(v1);
            }
        } else {
            v0_0 = this.generateDefaultLayoutParams();
        }
        v0_0.mViewType = 1;
        if ((!p5) || (this.mExpandedActionView == null)) {
            this.addView(p4, v0_0);
        } else {
            p4.setLayoutParams(v0_0);
            this.mHiddenViews.add(p4);
        }
        return;
    }

    private void ensureContentInsets()
    {
        if (this.mContentInsets == null) {
            this.mContentInsets = new androidx.appcompat.widget.RtlSpacingHelper();
        }
        return;
    }

    private void ensureLogoView()
    {
        if (this.mLogoView == null) {
            this.mLogoView = new androidx.appcompat.widget.AppCompatImageView(this.getContext());
        }
        return;
    }

    private void ensureMenu()
    {
        this.ensureMenuView();
        if (this.mMenuView.peekMenu() == null) {
            androidx.appcompat.view.menu.MenuBuilder v0_1 = ((androidx.appcompat.view.menu.MenuBuilder) this.mMenuView.getMenu());
            if (this.mExpandedMenuPresenter == null) {
                this.mExpandedMenuPresenter = new androidx.appcompat.widget.Toolbar$ExpandedActionViewMenuPresenter(this);
            }
            this.mMenuView.setExpandedActionViewsExclusive(1);
            v0_1.addMenuPresenter(this.mExpandedMenuPresenter, this.mPopupContext);
        }
        return;
    }

    private void ensureMenuView()
    {
        if (this.mMenuView == null) {
            this.mMenuView = new androidx.appcompat.widget.ActionMenuView(this.getContext());
            this.mMenuView.setPopupTheme(this.mPopupTheme);
            this.mMenuView.setOnMenuItemClickListener(this.mMenuViewItemClickListener);
            this.mMenuView.setMenuCallbacks(this.mActionMenuPresenterCallback, this.mMenuBuilderCallback);
            androidx.appcompat.widget.Toolbar$LayoutParams v0 = this.generateDefaultLayoutParams();
            v0.gravity = (8388613 | (this.mButtonGravity & 112));
            this.mMenuView.setLayoutParams(v0);
            this.addSystemView(this.mMenuView, 0);
        }
        return;
    }

    private void ensureNavButtonView()
    {
        if (this.mNavButtonView == null) {
            this.mNavButtonView = new androidx.appcompat.widget.AppCompatImageButton(this.getContext(), 0, androidx.appcompat.R$attr.toolbarNavigationButtonStyle);
            androidx.appcompat.widget.Toolbar$LayoutParams v0 = this.generateDefaultLayoutParams();
            v0.gravity = (8388611 | (this.mButtonGravity & 112));
            this.mNavButtonView.setLayoutParams(v0);
        }
        return;
    }

    private int getChildHorizontalGravity(int p5)
    {
        int v2 = androidx.core.view.ViewCompat.getLayoutDirection(this);
        int v1 = (androidx.core.view.GravityCompat.getAbsoluteGravity(p5, v2) & 7);
        switch (v1) {
            case 1:
            case 3:
            case 5:
                break;
            case 2:
            case 4:
            default:
                int v3_1;
                if (v2 != 1) {
                    v3_1 = 3;
                } else {
                    v3_1 = 5;
                }
                v1 = v3_1;
            case 1:
            case 3:
            case 5:
                break;
            case 1:
            case 3:
            case 5:
                break;
        }
        return v1;
    }

    private int getChildTop(android.view.View p12, int p13)
    {
        int v0;
        androidx.appcompat.widget.Toolbar$LayoutParams v3_1 = ((androidx.appcompat.widget.Toolbar$LayoutParams) p12.getLayoutParams());
        int v1 = p12.getMeasuredHeight();
        if (p13 <= 0) {
            v0 = 0;
        } else {
            v0 = ((v1 - p13) / 2);
        }
        int v9_5;
        switch (this.getChildVerticalGravity(v3_1.gravity)) {
            case 48:
                v9_5 = (this.getPaddingTop() - v0);
                break;
            case 80:
                v9_5 = ((((this.getHeight() - this.getPaddingBottom()) - v1) - v3_1.bottomMargin) - v0);
                break;
            default:
                int v5 = this.getPaddingTop();
                int v4 = this.getPaddingBottom();
                int v2 = this.getHeight();
                int v7 = ((((v2 - v5) - v4) - v1) / 2);
                if (v7 >= v3_1.topMargin) {
                    int v8 = ((((v2 - v4) - v1) - v7) - v5);
                    if (v8 < v3_1.bottomMargin) {
                        v7 = Math.max(0, (v7 - (v3_1.bottomMargin - v8)));
                    }
                } else {
                    v7 = v3_1.topMargin;
                }
                v9_5 = (v5 + v7);
        }
        return v9_5;
    }

    private int getChildVerticalGravity(int p3)
    {
        int v0 = (p3 & 112);
        switch (v0) {
            case 16:
            case 48:
            case 80:
                break;
            case 16:
            case 48:
            case 80:
                break;
            case 16:
            case 48:
            case 80:
                break;
            default:
                v0 = (this.mGravity & 112);
        }
        return v0;
    }

    private int getHorizontalMargins(android.view.View p4)
    {
        android.view.ViewGroup$MarginLayoutParams v0_1 = ((android.view.ViewGroup$MarginLayoutParams) p4.getLayoutParams());
        return (androidx.core.view.MarginLayoutParamsCompat.getMarginStart(v0_1) + androidx.core.view.MarginLayoutParamsCompat.getMarginEnd(v0_1));
    }

    private android.view.MenuInflater getMenuInflater()
    {
        return new androidx.appcompat.view.SupportMenuInflater(this.getContext());
    }

    private int getVerticalMargins(android.view.View p4)
    {
        android.view.ViewGroup$MarginLayoutParams v0_1 = ((android.view.ViewGroup$MarginLayoutParams) p4.getLayoutParams());
        return (v0_1.topMargin + v0_1.bottomMargin);
    }

    private int getViewListMeasuredWidth(java.util.List p14, int[] p15)
    {
        int v0 = p15[0];
        int v1 = p15[1];
        int v10 = 0;
        int v2 = p14.size();
        int v3 = 0;
        while (v3 < v2) {
            android.view.View v9_1 = ((android.view.View) p14.get(v3));
            androidx.appcompat.widget.Toolbar$LayoutParams v6_1 = ((androidx.appcompat.widget.Toolbar$LayoutParams) v9_1.getLayoutParams());
            int v4 = (v6_1.leftMargin - v0);
            int v7 = (v6_1.rightMargin - v1);
            int v5 = Math.max(0, v4);
            int v8 = Math.max(0, v7);
            v0 = Math.max(0, (- v4));
            v1 = Math.max(0, (- v7));
            v10 += ((v9_1.getMeasuredWidth() + v5) + v8);
            v3++;
        }
        return v10;
    }

    private boolean isChildOrHidden(android.view.View p2)
    {
        if ((p2.getParent() != this) && (!this.mHiddenViews.contains(p2))) {
            int v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }

    private static boolean isCustomView(android.view.View p1)
    {
        int v0_3;
        if (((androidx.appcompat.widget.Toolbar$LayoutParams) p1.getLayoutParams()).mViewType != 0) {
            v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }

    private int layoutChildLeft(android.view.View p8, int p9, int[] p10, int p11)
    {
        androidx.appcompat.widget.Toolbar$LayoutParams v2_1 = ((androidx.appcompat.widget.Toolbar$LayoutParams) p8.getLayoutParams());
        int v1 = (v2_1.leftMargin - p10[0]);
        int v9_2 = (p9 + Math.max(0, v1));
        p10[0] = Math.max(0, (- v1));
        int v3 = this.getChildTop(p8, p11);
        int v0 = p8.getMeasuredWidth();
        p8.layout(v9_2, v3, (v9_2 + v0), (p8.getMeasuredHeight() + v3));
        return (v9_2 + (v2_1.rightMargin + v0));
    }

    private int layoutChildRight(android.view.View p9, int p10, int[] p11, int p12)
    {
        androidx.appcompat.widget.Toolbar$LayoutParams v1_1 = ((androidx.appcompat.widget.Toolbar$LayoutParams) p9.getLayoutParams());
        int v2 = (v1_1.rightMargin - p11[1]);
        int v10_1 = (p10 - Math.max(0, v2));
        p11[1] = Math.max(0, (- v2));
        int v3 = this.getChildTop(p9, p12);
        int v0 = p9.getMeasuredWidth();
        p9.layout((v10_1 - v0), v3, v10_1, (p9.getMeasuredHeight() + v3));
        return (v10_1 - (v1_1.leftMargin + v0));
    }

    private int measureChildCollapseMargins(android.view.View p12, int p13, int p14, int p15, int p16, int[] p17)
    {
        android.view.ViewGroup$MarginLayoutParams v5_1 = ((android.view.ViewGroup$MarginLayoutParams) p12.getLayoutParams());
        int v3 = (v5_1.leftMargin - p17[0]);
        int v6 = (v5_1.rightMargin - p17[1]);
        int v2 = (Math.max(0, v3) + Math.max(0, v6));
        p17[0] = Math.max(0, (- v3));
        p17[1] = Math.max(0, (- v6));
        p12.measure(androidx.appcompat.widget.Toolbar.getChildMeasureSpec(p13, (((this.getPaddingLeft() + this.getPaddingRight()) + v2) + p14), v5_1.width), androidx.appcompat.widget.Toolbar.getChildMeasureSpec(p15, ((((this.getPaddingTop() + this.getPaddingBottom()) + v5_1.topMargin) + v5_1.bottomMargin) + p16), v5_1.height));
        return (p12.getMeasuredWidth() + v2);
    }

    private void measureChildConstrained(android.view.View p9, int p10, int p11, int p12, int p13, int p14)
    {
        android.view.ViewGroup$MarginLayoutParams v3_1 = ((android.view.ViewGroup$MarginLayoutParams) p9.getLayoutParams());
        int v2 = androidx.appcompat.widget.Toolbar.getChildMeasureSpec(p10, ((((this.getPaddingLeft() + this.getPaddingRight()) + v3_1.leftMargin) + v3_1.rightMargin) + p11), v3_1.width);
        int v1 = androidx.appcompat.widget.Toolbar.getChildMeasureSpec(p12, ((((this.getPaddingTop() + this.getPaddingBottom()) + v3_1.topMargin) + v3_1.bottomMargin) + p13), v3_1.height);
        int v0 = android.view.View$MeasureSpec.getMode(v1);
        if ((v0 != 1073741824) && (p14 >= 0)) {
            int v4;
            if (v0 == 0) {
                v4 = p14;
            } else {
                v4 = Math.min(android.view.View$MeasureSpec.getSize(v1), p14);
            }
            v1 = android.view.View$MeasureSpec.makeMeasureSpec(v4, 1073741824);
        }
        p9.measure(v2, v1);
        return;
    }

    private void postShowOverflowMenu()
    {
        this.removeCallbacks(this.mShowOverflowMenuRunnable);
        this.post(this.mShowOverflowMenuRunnable);
        return;
    }

    private boolean shouldCollapse()
    {
        int v3 = 0;
        if (this.mCollapsible) {
            int v1 = this.getChildCount();
            int v2 = 0;
            while (v2 < v1) {
                android.view.View v0 = this.getChildAt(v2);
                if ((!this.shouldLayout(v0)) || ((v0.getMeasuredWidth() <= 0) || (v0.getMeasuredHeight() <= 0))) {
                    v2++;
                }
            }
            v3 = 1;
        }
        return v3;
    }

    private boolean shouldLayout(android.view.View p3)
    {
        if ((p3 == null) || ((p3.getParent() != this) || (p3.getVisibility() == 8))) {
            int v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    void addChildrenForExpandedActionView()
    {
        int v1 = (this.mHiddenViews.size() - 1);
        while (v1 >= 0) {
            this.addView(((android.view.View) this.mHiddenViews.get(v1)));
            v1--;
        }
        this.mHiddenViews.clear();
        return;
    }

    public boolean canShowOverflowMenu()
    {
        if ((this.getVisibility() != 0) || ((this.mMenuView == null) || (!this.mMenuView.isOverflowReserved()))) {
            int v0_1 = 0;
        } else {
            v0_1 = 1;
        }
        return v0_1;
    }

    protected boolean checkLayoutParams(android.view.ViewGroup$LayoutParams p2)
    {
        if ((!super.checkLayoutParams(p2)) || (!(p2 instanceof androidx.appcompat.widget.Toolbar$LayoutParams))) {
            int v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    public void collapseActionView()
    {
        androidx.appcompat.view.menu.MenuItemImpl v0;
        if (this.mExpandedMenuPresenter != null) {
            v0 = this.mExpandedMenuPresenter.mCurrentExpandedItem;
        } else {
            v0 = 0;
        }
        if (v0 != null) {
            v0.collapseActionView();
        }
        return;
    }

    public void dismissPopupMenus()
    {
        if (this.mMenuView != null) {
            this.mMenuView.dismissPopupMenus();
        }
        return;
    }

    void ensureCollapseButtonView()
    {
        if (this.mCollapseButtonView == null) {
            this.mCollapseButtonView = new androidx.appcompat.widget.AppCompatImageButton(this.getContext(), 0, androidx.appcompat.R$attr.toolbarNavigationButtonStyle);
            this.mCollapseButtonView.setImageDrawable(this.mCollapseIcon);
            this.mCollapseButtonView.setContentDescription(this.mCollapseDescription);
            androidx.appcompat.widget.Toolbar$LayoutParams v0 = this.generateDefaultLayoutParams();
            v0.gravity = (8388611 | (this.mButtonGravity & 112));
            v0.mViewType = 2;
            this.mCollapseButtonView.setLayoutParams(v0);
            this.mCollapseButtonView.setOnClickListener(new androidx.appcompat.widget.Toolbar$3(this));
        }
        return;
    }

    protected bridge synthetic android.view.ViewGroup$LayoutParams generateDefaultLayoutParams()
    {
        return this.generateDefaultLayoutParams();
    }

    protected androidx.appcompat.widget.Toolbar$LayoutParams generateDefaultLayoutParams()
    {
        return new androidx.appcompat.widget.Toolbar$LayoutParams(-2, -2);
    }

    public bridge synthetic android.view.ViewGroup$LayoutParams generateLayoutParams(android.util.AttributeSet p2)
    {
        return this.generateLayoutParams(p2);
    }

    protected bridge synthetic android.view.ViewGroup$LayoutParams generateLayoutParams(android.view.ViewGroup$LayoutParams p2)
    {
        return this.generateLayoutParams(p2);
    }

    public androidx.appcompat.widget.Toolbar$LayoutParams generateLayoutParams(android.util.AttributeSet p3)
    {
        return new androidx.appcompat.widget.Toolbar$LayoutParams(this.getContext(), p3);
    }

    protected androidx.appcompat.widget.Toolbar$LayoutParams generateLayoutParams(android.view.ViewGroup$LayoutParams p2)
    {
        androidx.appcompat.widget.Toolbar$LayoutParams v0_1;
        if (!(p2 instanceof androidx.appcompat.widget.Toolbar$LayoutParams)) {
            if (!(p2 instanceof androidx.appcompat.app.ActionBar$LayoutParams)) {
                if (!(p2 instanceof android.view.ViewGroup$MarginLayoutParams)) {
                    v0_1 = new androidx.appcompat.widget.Toolbar$LayoutParams(p2);
                } else {
                    v0_1 = new androidx.appcompat.widget.Toolbar$LayoutParams(((android.view.ViewGroup$MarginLayoutParams) p2));
                }
            } else {
                v0_1 = new androidx.appcompat.widget.Toolbar$LayoutParams(((androidx.appcompat.app.ActionBar$LayoutParams) p2));
            }
        } else {
            v0_1 = new androidx.appcompat.widget.Toolbar$LayoutParams(((androidx.appcompat.widget.Toolbar$LayoutParams) p2));
        }
        return v0_1;
    }

    public int getContentInsetEnd()
    {
        int v0_1;
        if (this.mContentInsets == null) {
            v0_1 = 0;
        } else {
            v0_1 = this.mContentInsets.getEnd();
        }
        return v0_1;
    }

    public int getContentInsetEndWithActions()
    {
        int v0_1;
        if (this.mContentInsetEndWithActions == -2147483648) {
            v0_1 = this.getContentInsetEnd();
        } else {
            v0_1 = this.mContentInsetEndWithActions;
        }
        return v0_1;
    }

    public int getContentInsetLeft()
    {
        int v0_1;
        if (this.mContentInsets == null) {
            v0_1 = 0;
        } else {
            v0_1 = this.mContentInsets.getLeft();
        }
        return v0_1;
    }

    public int getContentInsetRight()
    {
        int v0_1;
        if (this.mContentInsets == null) {
            v0_1 = 0;
        } else {
            v0_1 = this.mContentInsets.getRight();
        }
        return v0_1;
    }

    public int getContentInsetStart()
    {
        int v0_1;
        if (this.mContentInsets == null) {
            v0_1 = 0;
        } else {
            v0_1 = this.mContentInsets.getStart();
        }
        return v0_1;
    }

    public int getContentInsetStartWithNavigation()
    {
        int v0_1;
        if (this.mContentInsetStartWithNavigation == -2147483648) {
            v0_1 = this.getContentInsetStart();
        } else {
            v0_1 = this.mContentInsetStartWithNavigation;
        }
        return v0_1;
    }

    public int getCurrentContentInsetEnd()
    {
        int v0 = 0;
        if (this.mMenuView != null) {
            androidx.appcompat.view.menu.MenuBuilder v1 = this.mMenuView.peekMenu();
            if ((v1 == null) || (!v1.hasVisibleItems())) {
                v0 = 0;
            } else {
                v0 = 1;
            }
        }
        int v2_1;
        if (v0 == 0) {
            v2_1 = this.getContentInsetEnd();
        } else {
            v2_1 = Math.max(this.getContentInsetEnd(), Math.max(this.mContentInsetEndWithActions, 0));
        }
        return v2_1;
    }

    public int getCurrentContentInsetLeft()
    {
        int v0_1;
        if (androidx.core.view.ViewCompat.getLayoutDirection(this) != 1) {
            v0_1 = this.getCurrentContentInsetStart();
        } else {
            v0_1 = this.getCurrentContentInsetEnd();
        }
        return v0_1;
    }

    public int getCurrentContentInsetRight()
    {
        int v0_1;
        if (androidx.core.view.ViewCompat.getLayoutDirection(this) != 1) {
            v0_1 = this.getCurrentContentInsetEnd();
        } else {
            v0_1 = this.getCurrentContentInsetStart();
        }
        return v0_1;
    }

    public int getCurrentContentInsetStart()
    {
        int v0_1;
        if (this.getNavigationIcon() == null) {
            v0_1 = this.getContentInsetStart();
        } else {
            v0_1 = Math.max(this.getContentInsetStart(), Math.max(this.mContentInsetStartWithNavigation, 0));
        }
        return v0_1;
    }

    public android.graphics.drawable.Drawable getLogo()
    {
        int v0_1;
        if (this.mLogoView == null) {
            v0_1 = 0;
        } else {
            v0_1 = this.mLogoView.getDrawable();
        }
        return v0_1;
    }

    public CharSequence getLogoDescription()
    {
        int v0_1;
        if (this.mLogoView == null) {
            v0_1 = 0;
        } else {
            v0_1 = this.mLogoView.getContentDescription();
        }
        return v0_1;
    }

    public android.view.Menu getMenu()
    {
        this.ensureMenu();
        return this.mMenuView.getMenu();
    }

    public CharSequence getNavigationContentDescription()
    {
        int v0_1;
        if (this.mNavButtonView == null) {
            v0_1 = 0;
        } else {
            v0_1 = this.mNavButtonView.getContentDescription();
        }
        return v0_1;
    }

    public android.graphics.drawable.Drawable getNavigationIcon()
    {
        int v0_1;
        if (this.mNavButtonView == null) {
            v0_1 = 0;
        } else {
            v0_1 = this.mNavButtonView.getDrawable();
        }
        return v0_1;
    }

    androidx.appcompat.widget.ActionMenuPresenter getOuterActionMenuPresenter()
    {
        return this.mOuterActionMenuPresenter;
    }

    public android.graphics.drawable.Drawable getOverflowIcon()
    {
        this.ensureMenu();
        return this.mMenuView.getOverflowIcon();
    }

    android.content.Context getPopupContext()
    {
        return this.mPopupContext;
    }

    public int getPopupTheme()
    {
        return this.mPopupTheme;
    }

    public CharSequence getSubtitle()
    {
        return this.mSubtitleText;
    }

    public CharSequence getTitle()
    {
        return this.mTitleText;
    }

    public int getTitleMarginBottom()
    {
        return this.mTitleMarginBottom;
    }

    public int getTitleMarginEnd()
    {
        return this.mTitleMarginEnd;
    }

    public int getTitleMarginStart()
    {
        return this.mTitleMarginStart;
    }

    public int getTitleMarginTop()
    {
        return this.mTitleMarginTop;
    }

    public androidx.appcompat.widget.DecorToolbar getWrapper()
    {
        if (this.mWrapper == null) {
            this.mWrapper = new androidx.appcompat.widget.ToolbarWidgetWrapper(this, 1);
        }
        return this.mWrapper;
    }

    public boolean hasExpandedActionView()
    {
        if ((this.mExpandedMenuPresenter == null) || (this.mExpandedMenuPresenter.mCurrentExpandedItem == null)) {
            int v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }

    public boolean hideOverflowMenu()
    {
        if ((this.mMenuView == null) || (!this.mMenuView.hideOverflowMenu())) {
            int v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }

    public void inflateMenu(int p3)
    {
        this.getMenuInflater().inflate(p3, this.getMenu());
        return;
    }

    public boolean isOverflowMenuShowPending()
    {
        if ((this.mMenuView == null) || (!this.mMenuView.isOverflowMenuShowPending())) {
            int v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }

    public boolean isOverflowMenuShowing()
    {
        if ((this.mMenuView == null) || (!this.mMenuView.isOverflowMenuShowing())) {
            int v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }

    public boolean isTitleTruncated()
    {
        int v3 = 0;
        if (this.mTitleTextView != null) {
            android.text.Layout v2 = this.mTitleTextView.getLayout();
            if (v2 != null) {
                int v1 = v2.getLineCount();
                int v0 = 0;
                while (v0 < v1) {
                    if (v2.getEllipsisCount(v0) <= 0) {
                        v0++;
                    } else {
                        v3 = 1;
                        break;
                    }
                }
            }
        }
        return v3;
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        this.removeCallbacks(this.mShowOverflowMenuRunnable);
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

    protected void onLayout(boolean p53, int p54, int p55, int p56, int p57)
    {
        int v18;
        if (androidx.core.view.ViewCompat.getLayoutDirection(this) != 1) {
            v18 = 0;
        } else {
            v18 = 1;
        }
        int v5;
        int v48 = this.getWidth();
        int v16 = this.getHeight();
        int v27 = this.getPaddingLeft();
        int v28 = this.getPaddingRight();
        int v29 = this.getPaddingTop();
        int v26 = this.getPaddingBottom();
        int v22_0 = v27;
        int v32_0 = (v48 - v28);
        int[] v12 = this.mTempMargins;
        v12[1] = 0;
        v12[0] = 0;
        int v25 = androidx.core.view.ViewCompat.getMinimumHeight(this);
        if (v25 < 0) {
            v5 = 0;
        } else {
            v5 = Math.min(v25, (p57 - p55));
        }
        if (this.shouldLayout(this.mNavButtonView)) {
            if (v18 == 0) {
                v22_0 = this.layoutChildLeft(this.mNavButtonView, v22_0, v12, v5);
            } else {
                v32_0 = this.layoutChildRight(this.mNavButtonView, v32_0, v12, v5);
            }
        }
        if (this.shouldLayout(this.mCollapseButtonView)) {
            if (v18 == 0) {
                v22_0 = this.layoutChildLeft(this.mCollapseButtonView, v22_0, v12, v5);
            } else {
                v32_0 = this.layoutChildRight(this.mCollapseButtonView, v32_0, v12, v5);
            }
        }
        if (this.shouldLayout(this.mMenuView)) {
            if (v18 == 0) {
                v32_0 = this.layoutChildRight(this.mMenuView, v32_0, v12, v5);
            } else {
                v22_0 = this.layoutChildLeft(this.mMenuView, v22_0, v12, v5);
            }
        }
        int v13 = this.getCurrentContentInsetLeft();
        int v14 = this.getCurrentContentInsetRight();
        v12[0] = Math.max(0, (v13 - v22_0));
        v12[1] = Math.max(0, (v14 - ((v48 - v28) - v32_0)));
        int v22_1 = Math.max(v22_0, v13);
        int v32_1 = Math.min(v32_0, ((v48 - v28) - v14));
        if (this.shouldLayout(this.mExpandedActionView)) {
            if (v18 == 0) {
                v22_1 = this.layoutChildLeft(this.mExpandedActionView, v22_1, v12, v5);
            } else {
                v32_1 = this.layoutChildRight(this.mExpandedActionView, v32_1, v12, v5);
            }
        }
        if (this.shouldLayout(this.mLogoView)) {
            if (v18 == 0) {
                v22_1 = this.layoutChildLeft(this.mLogoView, v22_1, v12, v5);
            } else {
                v32_1 = this.layoutChildRight(this.mLogoView, v32_1, v12, v5);
            }
        }
        boolean v20 = this.shouldLayout(this.mTitleTextView);
        boolean v19 = this.shouldLayout(this.mSubtitleTextView);
        int v42 = 0;
        if (v20) {
            androidx.appcompat.widget.Toolbar$LayoutParams v24_1 = ((androidx.appcompat.widget.Toolbar$LayoutParams) this.mTitleTextView.getLayoutParams());
            v42 = (0 + ((v24_1.topMargin + this.mTitleTextView.getMeasuredHeight()) + v24_1.bottomMargin));
        }
        if (v19) {
            androidx.appcompat.widget.Toolbar$LayoutParams v24_3 = ((androidx.appcompat.widget.Toolbar$LayoutParams) this.mSubtitleTextView.getLayoutParams());
            v42 += ((v24_3.topMargin + this.mSubtitleTextView.getMeasuredHeight()) + v24_3.bottomMargin);
        }
        if ((v20) || (v19)) {
            android.widget.TextView v46;
            if (!v20) {
                v46 = this.mSubtitleTextView;
            } else {
                v46 = this.mTitleTextView;
            }
            android.widget.TextView v6;
            if (!v19) {
                v6 = this.mTitleTextView;
            } else {
                v6 = this.mSubtitleTextView;
            }
            int v41;
            androidx.appcompat.widget.Toolbar$LayoutParams v47_1 = ((androidx.appcompat.widget.Toolbar$LayoutParams) v46.getLayoutParams());
            androidx.appcompat.widget.Toolbar$LayoutParams v7_1 = ((androidx.appcompat.widget.Toolbar$LayoutParams) v6.getLayoutParams());
            if (((!v20) || (this.mTitleTextView.getMeasuredWidth() <= 0)) && ((!v19) || (this.mSubtitleTextView.getMeasuredWidth() <= 0))) {
                v41 = 0;
            } else {
                v41 = 1;
            }
            int v45_0;
            switch ((this.mGravity & 112)) {
                case 48:
                    v45_0 = ((this.getPaddingTop() + v47_1.topMargin) + this.mTitleMarginTop);
                    break;
                case 80:
                    v45_0 = ((((v16 - v26) - v7_1.bottomMargin) - this.mTitleMarginBottom) - v42);
                    break;
                default:
                    int v35 = ((((v16 - v29) - v26) - v42) / 2);
                    if (v35 >= (v47_1.topMargin + this.mTitleMarginTop)) {
                        int v36 = ((((v16 - v26) - v42) - v35) - v29);
                        if (v36 < (v47_1.bottomMargin + this.mTitleMarginBottom)) {
                            v35 = Math.max(0, (v35 - ((v7_1.bottomMargin + this.mTitleMarginBottom) - v36)));
                        }
                    } else {
                        v35 = (v47_1.topMargin + this.mTitleMarginTop);
                    }
                    v45_0 = (v29 + v35);
            }
            if (v18 == 0) {
                int v49_48;
                if (v41 == 0) {
                    v49_48 = 0;
                } else {
                    v49_48 = this.mTitleMarginStart;
                }
                int v21 = (v49_48 - v12[0]);
                v22_1 += Math.max(0, v21);
                v12[0] = Math.max(0, (- v21));
                int v43_0 = v22_1;
                int v38_0 = v22_1;
                if (v20) {
                    androidx.appcompat.widget.Toolbar$LayoutParams v24_5 = ((androidx.appcompat.widget.Toolbar$LayoutParams) this.mTitleTextView.getLayoutParams());
                    int v44_0 = (v43_0 + this.mTitleTextView.getMeasuredWidth());
                    int v40_0 = (v45_0 + this.mTitleTextView.getMeasuredHeight());
                    this.mTitleTextView.layout(v43_0, v45_0, v44_0, v40_0);
                    v43_0 = (v44_0 + this.mTitleMarginEnd);
                    v45_0 = (v40_0 + v24_5.bottomMargin);
                }
                if (v19) {
                    int v45_1 = (v45_0 + ((androidx.appcompat.widget.Toolbar$LayoutParams) this.mSubtitleTextView.getLayoutParams()).topMargin);
                    int v39_0 = (v38_0 + this.mSubtitleTextView.getMeasuredWidth());
                    this.mSubtitleTextView.layout(v38_0, v45_1, v39_0, (v45_1 + this.mSubtitleTextView.getMeasuredHeight()));
                    v38_0 = (v39_0 + this.mTitleMarginEnd);
                }
                if (v41 != 0) {
                    v22_1 = Math.max(v43_0, v38_0);
                }
            } else {
                int v49_71;
                if (v41 == 0) {
                    v49_71 = 0;
                } else {
                    v49_71 = this.mTitleMarginStart;
                }
                int v31 = (v49_71 - v12[1]);
                v32_1 -= Math.max(0, v31);
                v12[1] = Math.max(0, (- v31));
                int v44_1 = v32_1;
                int v39_1 = v32_1;
                if (v20) {
                    androidx.appcompat.widget.Toolbar$LayoutParams v24_9 = ((androidx.appcompat.widget.Toolbar$LayoutParams) this.mTitleTextView.getLayoutParams());
                    int v43_1 = (v44_1 - this.mTitleTextView.getMeasuredWidth());
                    int v40_1 = (v45_0 + this.mTitleTextView.getMeasuredHeight());
                    this.mTitleTextView.layout(v43_1, v45_0, v44_1, v40_1);
                    v44_1 = (v43_1 - this.mTitleMarginEnd);
                    v45_0 = (v40_1 + v24_9.bottomMargin);
                }
                if (v19) {
                    int v45_2 = (v45_0 + ((androidx.appcompat.widget.Toolbar$LayoutParams) this.mSubtitleTextView.getLayoutParams()).topMargin);
                    this.mSubtitleTextView.layout((v39_1 - this.mSubtitleTextView.getMeasuredWidth()), v45_2, v39_1, (v45_2 + this.mSubtitleTextView.getMeasuredHeight()));
                    v39_1 -= this.mTitleMarginEnd;
                }
                if (v41 != 0) {
                    v32_1 = Math.min(v44_1, v39_1);
                }
            }
        }
        this.addCustomViewsWithGravity(this.mTempViews, 3);
        int v23 = this.mTempViews.size();
        int v17_0 = 0;
        while (v17_0 < v23) {
            v22_1 = this.layoutChildLeft(((android.view.View) this.mTempViews.get(v17_0)), v22_1, v12, v5);
            v17_0++;
        }
        this.addCustomViewsWithGravity(this.mTempViews, 5);
        int v33 = this.mTempViews.size();
        int v17_1 = 0;
        while (v17_1 < v33) {
            v32_1 = this.layoutChildRight(((android.view.View) this.mTempViews.get(v17_1)), v32_1, v12, v5);
            v17_1++;
        }
        this.addCustomViewsWithGravity(this.mTempViews, 1);
        int v11 = this.getViewListMeasuredWidth(this.mTempViews, v12);
        int v8 = ((v27 + (((v48 - v27) - v28) / 2)) - (v11 / 2));
        int v9 = (v8 + v11);
        if (v8 >= v22_1) {
            if (v9 > v32_1) {
                v8 -= (v9 - v32_1);
            }
        } else {
            v8 = v22_1;
        }
        int v10 = this.mTempViews.size();
        int v17_2 = 0;
        while (v17_2 < v10) {
            v8 = this.layoutChildLeft(((android.view.View) this.mTempViews.get(v17_2)), v8, v12, v5);
            v17_2++;
        }
        this.mTempViews.clear();
        return;
    }

    protected void onMeasure(int p38, int p39)
    {
        int v29;
        int v28;
        int v25_0 = 0;
        int v22 = 0;
        int[] v13 = this.mTempMargins;
        if (!androidx.appcompat.widget.ViewUtils.isLayoutRtl(this)) {
            v29 = 0;
            v28 = 1;
        } else {
            v29 = 1;
            v28 = 0;
        }
        int v33 = 0;
        if (this.shouldLayout(this.mNavButtonView)) {
            this.measureChildConstrained(this.mNavButtonView, p38, 0, p39, 0, this.mMaxButtonHeight);
            v33 = (this.mNavButtonView.getMeasuredWidth() + this.getHorizontalMargins(this.mNavButtonView));
            v25_0 = Math.max(0, (this.mNavButtonView.getMeasuredHeight() + this.getVerticalMargins(this.mNavButtonView)));
            v22 = android.view.View.combineMeasuredStates(0, this.mNavButtonView.getMeasuredState());
        }
        if (this.shouldLayout(this.mCollapseButtonView)) {
            this.measureChildConstrained(this.mCollapseButtonView, p38, 0, p39, 0, this.mMaxButtonHeight);
            v33 = (this.mCollapseButtonView.getMeasuredWidth() + this.getHorizontalMargins(this.mCollapseButtonView));
            v25_0 = Math.max(v25_0, (this.mCollapseButtonView.getMeasuredHeight() + this.getVerticalMargins(this.mCollapseButtonView)));
            v22 = android.view.View.combineMeasuredStates(v22, this.mCollapseButtonView.getMeasuredState());
        }
        int v24 = this.getCurrentContentInsetStart();
        int v6_1 = (0 + Math.max(v24, v33));
        v13[v29] = Math.max(0, (v24 - v33));
        int v32 = 0;
        if (this.shouldLayout(this.mMenuView)) {
            this.measureChildConstrained(this.mMenuView, p38, v6_1, p39, 0, this.mMaxButtonHeight);
            v32 = (this.mMenuView.getMeasuredWidth() + this.getHorizontalMargins(this.mMenuView));
            v25_0 = Math.max(v25_0, (this.mMenuView.getMeasuredHeight() + this.getVerticalMargins(this.mMenuView)));
            v22 = android.view.View.combineMeasuredStates(v22, this.mMenuView.getMeasuredState());
        }
        int v23 = this.getCurrentContentInsetEnd();
        int v6_2 = (v6_1 + Math.max(v23, v32));
        v13[v28] = Math.max(0, (v23 - v32));
        if (this.shouldLayout(this.mExpandedActionView)) {
            v6_2 += this.measureChildCollapseMargins(this.mExpandedActionView, p38, v6_2, p39, 0, v13);
            v25_0 = Math.max(v25_0, (this.mExpandedActionView.getMeasuredHeight() + this.getVerticalMargins(this.mExpandedActionView)));
            v22 = android.view.View.combineMeasuredStates(v22, this.mExpandedActionView.getMeasuredState());
        }
        if (this.shouldLayout(this.mLogoView)) {
            v6_2 += this.measureChildCollapseMargins(this.mLogoView, p38, v6_2, p39, 0, v13);
            v25_0 = Math.max(v25_0, (this.mLogoView.getMeasuredHeight() + this.getVerticalMargins(this.mLogoView)));
            v22 = android.view.View.combineMeasuredStates(v22, this.mLogoView.getMeasuredState());
        }
        int v21 = this.getChildCount();
        int v26 = 0;
        while (v26 < v21) {
            android.view.View v4_4 = this.getChildAt(v26);
            if ((((androidx.appcompat.widget.Toolbar$LayoutParams) v4_4.getLayoutParams()).mViewType == 0) && (this.shouldLayout(v4_4))) {
                v6_2 += this.measureChildCollapseMargins(v4_4, p38, v6_2, p39, 0, v13);
                v25_0 = Math.max(v25_0, (v4_4.getMeasuredHeight() + this.getVerticalMargins(v4_4)));
                v22 = android.view.View.combineMeasuredStates(v22, v4_4.getMeasuredState());
            }
            v26++;
        }
        int v36 = 0;
        int v34 = 0;
        int v12 = (this.mTitleMarginTop + this.mTitleMarginBottom);
        int v35 = (this.mTitleMarginStart + this.mTitleMarginEnd);
        if (this.shouldLayout(this.mTitleTextView)) {
            this.measureChildCollapseMargins(this.mTitleTextView, p38, (v6_2 + v35), p39, v12, v13);
            v36 = (this.mTitleTextView.getMeasuredWidth() + this.getHorizontalMargins(this.mTitleTextView));
            v34 = (this.mTitleTextView.getMeasuredHeight() + this.getVerticalMargins(this.mTitleTextView));
            v22 = android.view.View.combineMeasuredStates(v22, this.mTitleTextView.getMeasuredState());
        }
        if (this.shouldLayout(this.mSubtitleTextView)) {
            v36 = Math.max(v36, this.measureChildCollapseMargins(this.mSubtitleTextView, p38, (v6_2 + v35), p39, (v34 + v12), v13));
            v34 += (this.mSubtitleTextView.getMeasuredHeight() + this.getVerticalMargins(this.mSubtitleTextView));
            v22 = android.view.View.combineMeasuredStates(v22, this.mSubtitleTextView.getMeasuredState());
        }
        int v6_3 = (v6_2 + v36);
        int v25_1 = Math.max(v25_0, v34);
        int v6_4 = (v6_3 + (this.getPaddingLeft() + this.getPaddingRight()));
        int v25_2 = (v25_1 + (this.getPaddingTop() + this.getPaddingBottom()));
        int v31 = android.view.View.resolveSizeAndState(Math.max(v6_4, this.getSuggestedMinimumWidth()), p38, (-16777216 & v22));
        int v30 = android.view.View.resolveSizeAndState(Math.max(v25_2, this.getSuggestedMinimumHeight()), p39, (v22 << 16));
        if (this.shouldCollapse()) {
            v30 = 0;
        }
        this.setMeasuredDimension(v31, v30);
        return;
    }

    protected void onRestoreInstanceState(android.os.Parcelable p5)
    {
        if ((p5 instanceof androidx.appcompat.widget.Toolbar$SavedState)) {
            int v1;
            super.onRestoreInstanceState(((androidx.appcompat.widget.Toolbar$SavedState) p5).getSuperState());
            if (this.mMenuView == null) {
                v1 = 0;
            } else {
                v1 = this.mMenuView.peekMenu();
            }
            if ((((androidx.appcompat.widget.Toolbar$SavedState) p5).expandedMenuItemId != 0) && ((this.mExpandedMenuPresenter != null) && (v1 != 0))) {
                android.view.MenuItem v0 = v1.findItem(((androidx.appcompat.widget.Toolbar$SavedState) p5).expandedMenuItemId);
                if (v0 != null) {
                    v0.expandActionView();
                }
            }
            if (((androidx.appcompat.widget.Toolbar$SavedState) p5).isOverflowOpen) {
                this.postShowOverflowMenu();
            }
        } else {
            super.onRestoreInstanceState(p5);
        }
        return;
    }

    public void onRtlPropertiesChanged(int p4)
    {
        int v0 = 1;
        if (android.os.Build$VERSION.SDK_INT >= 17) {
            super.onRtlPropertiesChanged(p4);
        }
        this.ensureContentInsets();
        if (p4 != 1) {
            v0 = 0;
        }
        this.mContentInsets.setDirection(v0);
        return;
    }

    protected android.os.Parcelable onSaveInstanceState()
    {
        androidx.appcompat.widget.Toolbar$SavedState v0_1 = new androidx.appcompat.widget.Toolbar$SavedState(super.onSaveInstanceState());
        if ((this.mExpandedMenuPresenter != null) && (this.mExpandedMenuPresenter.mCurrentExpandedItem != null)) {
            v0_1.expandedMenuItemId = this.mExpandedMenuPresenter.mCurrentExpandedItem.getItemId();
        }
        v0_1.isOverflowOpen = this.isOverflowMenuShowing();
        return v0_1;
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

    void removeChildrenForExpandedActionView()
    {
        int v2 = (this.getChildCount() - 1);
        while (v2 >= 0) {
            android.view.View v0 = this.getChildAt(v2);
            if ((((androidx.appcompat.widget.Toolbar$LayoutParams) v0.getLayoutParams()).mViewType != 2) && (v0 != this.mMenuView)) {
                this.removeViewAt(v2);
                this.mHiddenViews.add(v0);
            }
            v2--;
        }
        return;
    }

    public void setCollapsible(boolean p1)
    {
        this.mCollapsible = p1;
        this.requestLayout();
        return;
    }

    public void setContentInsetEndWithActions(int p2)
    {
        if (p2 < 0) {
            p2 = -2147483648;
        }
        if (p2 != this.mContentInsetEndWithActions) {
            this.mContentInsetEndWithActions = p2;
            if (this.getNavigationIcon() != null) {
                this.requestLayout();
            }
        }
        return;
    }

    public void setContentInsetStartWithNavigation(int p2)
    {
        if (p2 < 0) {
            p2 = -2147483648;
        }
        if (p2 != this.mContentInsetStartWithNavigation) {
            this.mContentInsetStartWithNavigation = p2;
            if (this.getNavigationIcon() != null) {
                this.requestLayout();
            }
        }
        return;
    }

    public void setContentInsetsAbsolute(int p2, int p3)
    {
        this.ensureContentInsets();
        this.mContentInsets.setAbsolute(p2, p3);
        return;
    }

    public void setContentInsetsRelative(int p2, int p3)
    {
        this.ensureContentInsets();
        this.mContentInsets.setRelative(p2, p3);
        return;
    }

    public void setLogo(int p2)
    {
        this.setLogo(androidx.appcompat.content.res.AppCompatResources.getDrawable(this.getContext(), p2));
        return;
    }

    public void setLogo(android.graphics.drawable.Drawable p3)
    {
        if (p3 == null) {
            if ((this.mLogoView != null) && (this.isChildOrHidden(this.mLogoView))) {
                this.removeView(this.mLogoView);
                this.mHiddenViews.remove(this.mLogoView);
            }
        } else {
            this.ensureLogoView();
            if (!this.isChildOrHidden(this.mLogoView)) {
                this.addSystemView(this.mLogoView, 1);
            }
        }
        if (this.mLogoView != null) {
            this.mLogoView.setImageDrawable(p3);
        }
        return;
    }

    public void setLogoDescription(int p2)
    {
        this.setLogoDescription(this.getContext().getText(p2));
        return;
    }

    public void setLogoDescription(CharSequence p2)
    {
        if (!android.text.TextUtils.isEmpty(p2)) {
            this.ensureLogoView();
        }
        if (this.mLogoView != null) {
            this.mLogoView.setContentDescription(p2);
        }
        return;
    }

    public void setMenu(androidx.appcompat.view.menu.MenuBuilder p6, androidx.appcompat.widget.ActionMenuPresenter p7)
    {
        if ((p6 != null) || (this.mMenuView != null)) {
            this.ensureMenuView();
            androidx.appcompat.view.menu.MenuBuilder v0 = this.mMenuView.peekMenu();
            if (v0 != p6) {
                if (v0 != null) {
                    v0.removeMenuPresenter(this.mOuterActionMenuPresenter);
                    v0.removeMenuPresenter(this.mExpandedMenuPresenter);
                }
                if (this.mExpandedMenuPresenter == null) {
                    this.mExpandedMenuPresenter = new androidx.appcompat.widget.Toolbar$ExpandedActionViewMenuPresenter(this);
                }
                p7.setExpandedActionViewsExclusive(1);
                if (p6 == null) {
                    p7.initForMenu(this.mPopupContext, 0);
                    this.mExpandedMenuPresenter.initForMenu(this.mPopupContext, 0);
                    p7.updateMenuView(1);
                    this.mExpandedMenuPresenter.updateMenuView(1);
                } else {
                    p6.addMenuPresenter(p7, this.mPopupContext);
                    p6.addMenuPresenter(this.mExpandedMenuPresenter, this.mPopupContext);
                }
                this.mMenuView.setPopupTheme(this.mPopupTheme);
                this.mMenuView.setPresenter(p7);
                this.mOuterActionMenuPresenter = p7;
            }
        }
        return;
    }

    public void setMenuCallbacks(androidx.appcompat.view.menu.MenuPresenter$Callback p2, androidx.appcompat.view.menu.MenuBuilder$Callback p3)
    {
        this.mActionMenuPresenterCallback = p2;
        this.mMenuBuilderCallback = p3;
        if (this.mMenuView != null) {
            this.mMenuView.setMenuCallbacks(p2, p3);
        }
        return;
    }

    public void setNavigationContentDescription(int p2)
    {
        int v0_0;
        if (p2 == 0) {
            v0_0 = 0;
        } else {
            v0_0 = this.getContext().getText(p2);
        }
        this.setNavigationContentDescription(v0_0);
        return;
    }

    public void setNavigationContentDescription(CharSequence p2)
    {
        if (!android.text.TextUtils.isEmpty(p2)) {
            this.ensureNavButtonView();
        }
        if (this.mNavButtonView != null) {
            this.mNavButtonView.setContentDescription(p2);
        }
        return;
    }

    public void setNavigationIcon(int p2)
    {
        this.setNavigationIcon(androidx.appcompat.content.res.AppCompatResources.getDrawable(this.getContext(), p2));
        return;
    }

    public void setNavigationIcon(android.graphics.drawable.Drawable p3)
    {
        if (p3 == null) {
            if ((this.mNavButtonView != null) && (this.isChildOrHidden(this.mNavButtonView))) {
                this.removeView(this.mNavButtonView);
                this.mHiddenViews.remove(this.mNavButtonView);
            }
        } else {
            this.ensureNavButtonView();
            if (!this.isChildOrHidden(this.mNavButtonView)) {
                this.addSystemView(this.mNavButtonView, 1);
            }
        }
        if (this.mNavButtonView != null) {
            this.mNavButtonView.setImageDrawable(p3);
        }
        return;
    }

    public void setNavigationOnClickListener(android.view.View$OnClickListener p2)
    {
        this.ensureNavButtonView();
        this.mNavButtonView.setOnClickListener(p2);
        return;
    }

    public void setOnMenuItemClickListener(androidx.appcompat.widget.Toolbar$OnMenuItemClickListener p1)
    {
        this.mOnMenuItemClickListener = p1;
        return;
    }

    public void setOverflowIcon(android.graphics.drawable.Drawable p2)
    {
        this.ensureMenu();
        this.mMenuView.setOverflowIcon(p2);
        return;
    }

    public void setPopupTheme(int p3)
    {
        if (this.mPopupTheme != p3) {
            this.mPopupTheme = p3;
            if (p3 != 0) {
                this.mPopupContext = new android.view.ContextThemeWrapper(this.getContext(), p3);
            } else {
                this.mPopupContext = this.getContext();
            }
        }
        return;
    }

    public void setSubtitle(int p2)
    {
        this.setSubtitle(this.getContext().getText(p2));
        return;
    }

    public void setSubtitle(CharSequence p4)
    {
        if (android.text.TextUtils.isEmpty(p4)) {
            if ((this.mSubtitleTextView != null) && (this.isChildOrHidden(this.mSubtitleTextView))) {
                this.removeView(this.mSubtitleTextView);
                this.mHiddenViews.remove(this.mSubtitleTextView);
            }
        } else {
            if (this.mSubtitleTextView == null) {
                android.content.Context v0 = this.getContext();
                this.mSubtitleTextView = new androidx.appcompat.widget.AppCompatTextView(v0);
                this.mSubtitleTextView.setSingleLine();
                this.mSubtitleTextView.setEllipsize(android.text.TextUtils$TruncateAt.END);
                if (this.mSubtitleTextAppearance != 0) {
                    this.mSubtitleTextView.setTextAppearance(v0, this.mSubtitleTextAppearance);
                }
                if (this.mSubtitleTextColor != 0) {
                    this.mSubtitleTextView.setTextColor(this.mSubtitleTextColor);
                }
            }
            if (!this.isChildOrHidden(this.mSubtitleTextView)) {
                this.addSystemView(this.mSubtitleTextView, 1);
            }
        }
        if (this.mSubtitleTextView != null) {
            this.mSubtitleTextView.setText(p4);
        }
        this.mSubtitleText = p4;
        return;
    }

    public void setSubtitleTextAppearance(android.content.Context p2, int p3)
    {
        this.mSubtitleTextAppearance = p3;
        if (this.mSubtitleTextView != null) {
            this.mSubtitleTextView.setTextAppearance(p2, p3);
        }
        return;
    }

    public void setSubtitleTextColor(int p2)
    {
        this.mSubtitleTextColor = p2;
        if (this.mSubtitleTextView != null) {
            this.mSubtitleTextView.setTextColor(p2);
        }
        return;
    }

    public void setTitle(int p2)
    {
        this.setTitle(this.getContext().getText(p2));
        return;
    }

    public void setTitle(CharSequence p4)
    {
        if (android.text.TextUtils.isEmpty(p4)) {
            if ((this.mTitleTextView != null) && (this.isChildOrHidden(this.mTitleTextView))) {
                this.removeView(this.mTitleTextView);
                this.mHiddenViews.remove(this.mTitleTextView);
            }
        } else {
            if (this.mTitleTextView == null) {
                android.content.Context v0 = this.getContext();
                this.mTitleTextView = new androidx.appcompat.widget.AppCompatTextView(v0);
                this.mTitleTextView.setSingleLine();
                this.mTitleTextView.setEllipsize(android.text.TextUtils$TruncateAt.END);
                if (this.mTitleTextAppearance != 0) {
                    this.mTitleTextView.setTextAppearance(v0, this.mTitleTextAppearance);
                }
                if (this.mTitleTextColor != 0) {
                    this.mTitleTextView.setTextColor(this.mTitleTextColor);
                }
            }
            if (!this.isChildOrHidden(this.mTitleTextView)) {
                this.addSystemView(this.mTitleTextView, 1);
            }
        }
        if (this.mTitleTextView != null) {
            this.mTitleTextView.setText(p4);
        }
        this.mTitleText = p4;
        return;
    }

    public void setTitleMargin(int p1, int p2, int p3, int p4)
    {
        this.mTitleMarginStart = p1;
        this.mTitleMarginTop = p2;
        this.mTitleMarginEnd = p3;
        this.mTitleMarginBottom = p4;
        this.requestLayout();
        return;
    }

    public void setTitleMarginBottom(int p1)
    {
        this.mTitleMarginBottom = p1;
        this.requestLayout();
        return;
    }

    public void setTitleMarginEnd(int p1)
    {
        this.mTitleMarginEnd = p1;
        this.requestLayout();
        return;
    }

    public void setTitleMarginStart(int p1)
    {
        this.mTitleMarginStart = p1;
        this.requestLayout();
        return;
    }

    public void setTitleMarginTop(int p1)
    {
        this.mTitleMarginTop = p1;
        this.requestLayout();
        return;
    }

    public void setTitleTextAppearance(android.content.Context p2, int p3)
    {
        this.mTitleTextAppearance = p3;
        if (this.mTitleTextView != null) {
            this.mTitleTextView.setTextAppearance(p2, p3);
        }
        return;
    }

    public void setTitleTextColor(int p2)
    {
        this.mTitleTextColor = p2;
        if (this.mTitleTextView != null) {
            this.mTitleTextView.setTextColor(p2);
        }
        return;
    }

    public boolean showOverflowMenu()
    {
        if ((this.mMenuView == null) || (!this.mMenuView.showOverflowMenu())) {
            int v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }
}
