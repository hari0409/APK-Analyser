package androidx.appcompat.widget;
public class ScrollingTabContainerView extends android.widget.HorizontalScrollView implements android.widget.AdapterView$OnItemSelectedListener {
    private static final int FADE_DURATION = 200;
    private static final String TAG = "ScrollingTabContainerView";
    private static final android.view.animation.Interpolator sAlphaInterpolator;
    private boolean mAllowCollapse;
    private int mContentHeight;
    int mMaxTabWidth;
    private int mSelectedTabIndex;
    int mStackedTabMaxWidth;
    private androidx.appcompat.widget.ScrollingTabContainerView$TabClickListener mTabClickListener;
    androidx.appcompat.widget.LinearLayoutCompat mTabLayout;
    Runnable mTabSelector;
    private android.widget.Spinner mTabSpinner;
    protected final androidx.appcompat.widget.ScrollingTabContainerView$VisibilityAnimListener mVisAnimListener;
    protected android.view.ViewPropertyAnimator mVisibilityAnim;

    static ScrollingTabContainerView()
    {
        androidx.appcompat.widget.ScrollingTabContainerView.sAlphaInterpolator = new android.view.animation.DecelerateInterpolator();
        return;
    }

    public ScrollingTabContainerView(android.content.Context p6)
    {
        super(p6);
        super.mVisAnimListener = new androidx.appcompat.widget.ScrollingTabContainerView$VisibilityAnimListener(super);
        super.setHorizontalScrollBarEnabled(0);
        androidx.appcompat.view.ActionBarPolicy v0 = androidx.appcompat.view.ActionBarPolicy.get(p6);
        super.setContentHeight(v0.getTabContainerHeight());
        super.mStackedTabMaxWidth = v0.getStackedTabMaxWidth();
        super.mTabLayout = super.createTabLayout();
        super.addView(super.mTabLayout, new android.view.ViewGroup$LayoutParams(-2, -1));
        return;
    }

    private android.widget.Spinner createSpinner()
    {
        androidx.appcompat.widget.AppCompatSpinner v0_1 = new androidx.appcompat.widget.AppCompatSpinner(this.getContext(), 0, androidx.appcompat.R$attr.actionDropDownStyle);
        v0_1.setLayoutParams(new androidx.appcompat.widget.LinearLayoutCompat$LayoutParams(-2, -1));
        v0_1.setOnItemSelectedListener(this);
        return v0_1;
    }

    private androidx.appcompat.widget.LinearLayoutCompat createTabLayout()
    {
        androidx.appcompat.widget.LinearLayoutCompat v0_1 = new androidx.appcompat.widget.LinearLayoutCompat(this.getContext(), 0, androidx.appcompat.R$attr.actionBarTabBarStyle);
        v0_1.setMeasureWithLargestChildEnabled(1);
        v0_1.setGravity(17);
        v0_1.setLayoutParams(new androidx.appcompat.widget.LinearLayoutCompat$LayoutParams(-2, -1));
        return v0_1;
    }

    private boolean isCollapsed()
    {
        if ((this.mTabSpinner == null) || (this.mTabSpinner.getParent() != this)) {
            int v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }

    private void performCollapse()
    {
        if (!this.isCollapsed()) {
            if (this.mTabSpinner == null) {
                this.mTabSpinner = this.createSpinner();
            }
            this.removeView(this.mTabLayout);
            this.addView(this.mTabSpinner, new android.view.ViewGroup$LayoutParams(-2, -1));
            if (this.mTabSpinner.getAdapter() == null) {
                this.mTabSpinner.setAdapter(new androidx.appcompat.widget.ScrollingTabContainerView$TabAdapter(this));
            }
            if (this.mTabSelector != null) {
                this.removeCallbacks(this.mTabSelector);
                this.mTabSelector = 0;
            }
            this.mTabSpinner.setSelection(this.mSelectedTabIndex);
        }
        return;
    }

    private boolean performExpand()
    {
        if (this.isCollapsed()) {
            this.removeView(this.mTabSpinner);
            this.addView(this.mTabLayout, new android.view.ViewGroup$LayoutParams(-2, -1));
            this.setTabSelected(this.mTabSpinner.getSelectedItemPosition());
        }
        return 0;
    }

    public void addTab(androidx.appcompat.app.ActionBar$Tab p7, int p8, boolean p9)
    {
        androidx.appcompat.widget.ScrollingTabContainerView$TabView v0 = this.createTabView(p7, 0);
        this.mTabLayout.addView(v0, p8, new androidx.appcompat.widget.LinearLayoutCompat$LayoutParams(0, -1, 1065353216));
        if (this.mTabSpinner != null) {
            ((androidx.appcompat.widget.ScrollingTabContainerView$TabAdapter) this.mTabSpinner.getAdapter()).notifyDataSetChanged();
        }
        if (p9) {
            v0.setSelected(1);
        }
        if (this.mAllowCollapse) {
            this.requestLayout();
        }
        return;
    }

    public void addTab(androidx.appcompat.app.ActionBar$Tab p7, boolean p8)
    {
        androidx.appcompat.widget.ScrollingTabContainerView$TabView v0 = this.createTabView(p7, 0);
        this.mTabLayout.addView(v0, new androidx.appcompat.widget.LinearLayoutCompat$LayoutParams(0, -1, 1065353216));
        if (this.mTabSpinner != null) {
            ((androidx.appcompat.widget.ScrollingTabContainerView$TabAdapter) this.mTabSpinner.getAdapter()).notifyDataSetChanged();
        }
        if (p8) {
            v0.setSelected(1);
        }
        if (this.mAllowCollapse) {
            this.requestLayout();
        }
        return;
    }

    public void animateToTab(int p3)
    {
        android.view.View v0 = this.mTabLayout.getChildAt(p3);
        if (this.mTabSelector != null) {
            this.removeCallbacks(this.mTabSelector);
        }
        this.mTabSelector = new androidx.appcompat.widget.ScrollingTabContainerView$1(this, v0);
        this.post(this.mTabSelector);
        return;
    }

    public void animateToVisibility(int p7)
    {
        if (this.mVisibilityAnim != null) {
            this.mVisibilityAnim.cancel();
        }
        if (p7 != 0) {
            android.view.ViewPropertyAnimator v0_0 = this.animate().alpha(0);
            v0_0.setDuration(200);
            v0_0.setInterpolator(androidx.appcompat.widget.ScrollingTabContainerView.sAlphaInterpolator);
            v0_0.setListener(this.mVisAnimListener.withFinalVisibility(v0_0, p7));
            v0_0.start();
        } else {
            if (this.getVisibility() != 0) {
                this.setAlpha(0);
            }
            android.view.ViewPropertyAnimator v0_1 = this.animate().alpha(1065353216);
            v0_1.setDuration(200);
            v0_1.setInterpolator(androidx.appcompat.widget.ScrollingTabContainerView.sAlphaInterpolator);
            v0_1.setListener(this.mVisAnimListener.withFinalVisibility(v0_1, p7));
            v0_1.start();
        }
        return;
    }

    androidx.appcompat.widget.ScrollingTabContainerView$TabView createTabView(androidx.appcompat.app.ActionBar$Tab p5, boolean p6)
    {
        androidx.appcompat.widget.ScrollingTabContainerView$TabView v0_1 = new androidx.appcompat.widget.ScrollingTabContainerView$TabView(this, this.getContext(), p5, p6);
        if (!p6) {
            v0_1.setFocusable(1);
            if (this.mTabClickListener == null) {
                this.mTabClickListener = new androidx.appcompat.widget.ScrollingTabContainerView$TabClickListener(this);
            }
            v0_1.setOnClickListener(this.mTabClickListener);
        } else {
            v0_1.setBackgroundDrawable(0);
            v0_1.setLayoutParams(new android.widget.AbsListView$LayoutParams(-1, this.mContentHeight));
        }
        return v0_1;
    }

    public void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        if (this.mTabSelector != null) {
            this.post(this.mTabSelector);
        }
        return;
    }

    protected void onConfigurationChanged(android.content.res.Configuration p3)
    {
        super.onConfigurationChanged(p3);
        androidx.appcompat.view.ActionBarPolicy v0 = androidx.appcompat.view.ActionBarPolicy.get(this.getContext());
        this.setContentHeight(v0.getTabContainerHeight());
        this.mStackedTabMaxWidth = v0.getStackedTabMaxWidth();
        return;
    }

    public void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        if (this.mTabSelector != null) {
            this.removeCallbacks(this.mTabSelector);
        }
        return;
    }

    public void onItemSelected(android.widget.AdapterView p3, android.view.View p4, int p5, long p6)
    {
        ((androidx.appcompat.widget.ScrollingTabContainerView$TabView) p4).getTab().select();
        return;
    }

    public void onMeasure(int p12, int p13)
    {
        int v2;
        int v5 = android.view.View$MeasureSpec.getMode(p12);
        if (v5 != 1073741824) {
            v2 = 0;
        } else {
            v2 = 1;
        }
        this.setFillViewport(v2);
        int v1 = this.mTabLayout.getChildCount();
        if ((v1 <= 1) || ((v5 != 1073741824) && (v5 != -2147483648))) {
            this.mMaxTabWidth = -1;
        } else {
            if (v1 <= 2) {
                this.mMaxTabWidth = (android.view.View$MeasureSpec.getSize(p12) / 2);
            } else {
                this.mMaxTabWidth = ((int) (((float) android.view.View$MeasureSpec.getSize(p12)) * 1053609165));
            }
            this.mMaxTabWidth = Math.min(this.mMaxTabWidth, this.mStackedTabMaxWidth);
        }
        int v0;
        p13 = android.view.View$MeasureSpec.makeMeasureSpec(this.mContentHeight, 1073741824);
        if ((v2 != 0) || (!this.mAllowCollapse)) {
            v0 = 0;
        } else {
            v0 = 1;
        }
        if (v0 == 0) {
            this.performExpand();
        } else {
            this.mTabLayout.measure(0, p13);
            if (this.mTabLayout.getMeasuredWidth() <= android.view.View$MeasureSpec.getSize(p12)) {
                this.performExpand();
            } else {
                this.performCollapse();
            }
        }
        int v4 = this.getMeasuredWidth();
        super.onMeasure(p12, p13);
        int v3 = this.getMeasuredWidth();
        if ((v2 != 0) && (v4 != v3)) {
            this.setTabSelected(this.mSelectedTabIndex);
        }
        return;
    }

    public void onNothingSelected(android.widget.AdapterView p1)
    {
        return;
    }

    public void removeAllTabs()
    {
        this.mTabLayout.removeAllViews();
        if (this.mTabSpinner != null) {
            ((androidx.appcompat.widget.ScrollingTabContainerView$TabAdapter) this.mTabSpinner.getAdapter()).notifyDataSetChanged();
        }
        if (this.mAllowCollapse) {
            this.requestLayout();
        }
        return;
    }

    public void removeTabAt(int p2)
    {
        this.mTabLayout.removeViewAt(p2);
        if (this.mTabSpinner != null) {
            ((androidx.appcompat.widget.ScrollingTabContainerView$TabAdapter) this.mTabSpinner.getAdapter()).notifyDataSetChanged();
        }
        if (this.mAllowCollapse) {
            this.requestLayout();
        }
        return;
    }

    public void setAllowCollapse(boolean p1)
    {
        this.mAllowCollapse = p1;
        return;
    }

    public void setContentHeight(int p1)
    {
        this.mContentHeight = p1;
        this.requestLayout();
        return;
    }

    public void setTabSelected(int p6)
    {
        this.mSelectedTabIndex = p6;
        int v3 = this.mTabLayout.getChildCount();
        int v1 = 0;
        while (v1 < v3) {
            int v2;
            android.view.View vtmp2 = this.mTabLayout.getChildAt(v1);
            if (v1 != p6) {
                v2 = 0;
            } else {
                v2 = 1;
            }
            vtmp2.setSelected(v2);
            if (v2 != 0) {
                this.animateToTab(p6);
            }
            v1++;
        }
        if ((this.mTabSpinner != null) && (p6 >= 0)) {
            this.mTabSpinner.setSelection(p6);
        }
        return;
    }

    public void updateTab(int p2)
    {
        ((androidx.appcompat.widget.ScrollingTabContainerView$TabView) this.mTabLayout.getChildAt(p2)).update();
        if (this.mTabSpinner != null) {
            ((androidx.appcompat.widget.ScrollingTabContainerView$TabAdapter) this.mTabSpinner.getAdapter()).notifyDataSetChanged();
        }
        if (this.mAllowCollapse) {
            this.requestLayout();
        }
        return;
    }
}
