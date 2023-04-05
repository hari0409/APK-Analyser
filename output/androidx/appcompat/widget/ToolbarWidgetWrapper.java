package androidx.appcompat.widget;
public class ToolbarWidgetWrapper implements androidx.appcompat.widget.DecorToolbar {
    private static final int AFFECTS_LOGO_MASK = 3;
    private static final long DEFAULT_FADE_DURATION_MS = 200;
    private static final String TAG = "ToolbarWidgetWrapper";
    private androidx.appcompat.widget.ActionMenuPresenter mActionMenuPresenter;
    private android.view.View mCustomView;
    private int mDefaultNavigationContentDescription;
    private android.graphics.drawable.Drawable mDefaultNavigationIcon;
    private int mDisplayOpts;
    private CharSequence mHomeDescription;
    private android.graphics.drawable.Drawable mIcon;
    private android.graphics.drawable.Drawable mLogo;
    boolean mMenuPrepared;
    private android.graphics.drawable.Drawable mNavIcon;
    private int mNavigationMode;
    private android.widget.Spinner mSpinner;
    private CharSequence mSubtitle;
    private android.view.View mTabView;
    CharSequence mTitle;
    private boolean mTitleSet;
    androidx.appcompat.widget.Toolbar mToolbar;
    android.view.Window$Callback mWindowCallback;

    public ToolbarWidgetWrapper(androidx.appcompat.widget.Toolbar p3, boolean p4)
    {
        this(p3, p4, androidx.appcompat.R$string.abc_action_bar_up_description, androidx.appcompat.R$drawable.abc_ic_ab_back_material);
        return;
    }

    public ToolbarWidgetWrapper(androidx.appcompat.widget.Toolbar p21, boolean p22, int p23, int p24)
    {
        androidx.appcompat.widget.Toolbar v15_24;
        androidx.appcompat.widget.ToolbarWidgetWrapper v20_1 = ;
v20_1.mNavigationMode = 0;
        v20_1.mDefaultNavigationContentDescription = 0;
        v20_1.mToolbar = p21;
        v20_1.mTitle = p21.getTitle();
        v20_1.mSubtitle = p21.getSubtitle();
        if (v20_1.mTitle == null) {
            v15_24 = 0;
        } else {
            v15_24 = 1;
        }
        v20_1.mTitleSet = v15_24;
        v20_1.mNavIcon = p21.getNavigationIcon();
        androidx.appcompat.widget.TintTypedArray v2 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(p21.getContext(), 0, androidx.appcompat.R$styleable.ActionBar, androidx.appcompat.R$attr.actionBarStyle, 0);
        v20_1.mDefaultNavigationIcon = v2.getDrawable(androidx.appcompat.R$styleable.ActionBar_homeAsUpIndicator);
        if (!p22) {
            v20_1.mDisplayOpts = v20_1.detectDisplayOptions();
        } else {
            CharSequence v13 = v2.getText(androidx.appcompat.R$styleable.ActionBar_title);
            if (!android.text.TextUtils.isEmpty(v13)) {
                v20_1.setTitle(v13);
            }
            CharSequence v11 = v2.getText(androidx.appcompat.R$styleable.ActionBar_subtitle);
            if (!android.text.TextUtils.isEmpty(v11)) {
                v20_1.setSubtitle(v11);
            }
            android.graphics.drawable.Drawable v8 = v2.getDrawable(androidx.appcompat.R$styleable.ActionBar_logo);
            if (v8 != null) {
                v20_1.setLogo(v8);
            }
            android.graphics.drawable.Drawable v7 = v2.getDrawable(androidx.appcompat.R$styleable.ActionBar_icon);
            if (v7 != null) {
                v20_1.setIcon(v7);
            }
            if ((v20_1.mNavIcon == null) && (v20_1.mDefaultNavigationIcon != null)) {
                v20_1.setNavigationIcon(v20_1.mDefaultNavigationIcon);
            }
            v20_1.setDisplayOptions(v2.getInt(androidx.appcompat.R$styleable.ActionBar_displayOptions, 0));
            int v5 = v2.getResourceId(androidx.appcompat.R$styleable.ActionBar_customNavigationLayout, 0);
            if (v5 != 0) {
                v20_1.setCustomView(android.view.LayoutInflater.from(v20_1.mToolbar.getContext()).inflate(v5, v20_1.mToolbar, 0));
                v20_1.setDisplayOptions((v20_1.mDisplayOpts | 16));
            }
            int v6 = v2.getLayoutDimension(androidx.appcompat.R$styleable.ActionBar_height, 0);
            if (v6 > 0) {
                android.view.ViewGroup$LayoutParams v9 = v20_1.mToolbar.getLayoutParams();
                v9.height = v6;
                v20_1.mToolbar.setLayoutParams(v9);
            }
            int v4 = v2.getDimensionPixelOffset(androidx.appcompat.R$styleable.ActionBar_contentInsetStart, -1);
            int v3 = v2.getDimensionPixelOffset(androidx.appcompat.R$styleable.ActionBar_contentInsetEnd, -1);
            if ((v4 >= 0) || (v3 >= 0)) {
                v20_1.mToolbar.setContentInsetsRelative(Math.max(v4, 0), Math.max(v3, 0));
            }
            int v14 = v2.getResourceId(androidx.appcompat.R$styleable.ActionBar_titleTextStyle, 0);
            if (v14 != 0) {
                v20_1.mToolbar.setTitleTextAppearance(v20_1.mToolbar.getContext(), v14);
            }
            int v12 = v2.getResourceId(androidx.appcompat.R$styleable.ActionBar_subtitleTextStyle, 0);
            if (v12 != 0) {
                v20_1.mToolbar.setSubtitleTextAppearance(v20_1.mToolbar.getContext(), v12);
            }
            int v10 = v2.getResourceId(androidx.appcompat.R$styleable.ActionBar_popupTheme, 0);
            if (v10 != 0) {
                v20_1.mToolbar.setPopupTheme(v10);
            }
        }
        v2.recycle();
        v20_1.setDefaultNavigationContentDescription(p23);
        v20_1.mHomeDescription = v20_1.mToolbar.getNavigationContentDescription();
        androidx.appcompat.widget.Toolbar v15_23 = v20_1.mToolbar;
        int v16_13 = new androidx.appcompat.widget.ToolbarWidgetWrapper$1;
        v16_13(v20_1);
        v15_23.setNavigationOnClickListener(v16_13);
        return;
    }

    private int detectDisplayOptions()
    {
        int v0 = 11;
        if (this.mToolbar.getNavigationIcon() != null) {
            v0 = (11 | 4);
            this.mDefaultNavigationIcon = this.mToolbar.getNavigationIcon();
        }
        return v0;
    }

    private void ensureSpinner()
    {
        if (this.mSpinner == null) {
            this.mSpinner = new androidx.appcompat.widget.AppCompatSpinner(this.getContext(), 0, androidx.appcompat.R$attr.actionDropDownStyle);
            this.mSpinner.setLayoutParams(new androidx.appcompat.widget.Toolbar$LayoutParams(-2, -2, 8388627));
        }
        return;
    }

    private void setTitleInt(CharSequence p2)
    {
        this.mTitle = p2;
        if ((this.mDisplayOpts & 8) != 0) {
            this.mToolbar.setTitle(p2);
        }
        return;
    }

    private void updateHomeAccessibility()
    {
        if ((this.mDisplayOpts & 4) != 0) {
            if (!android.text.TextUtils.isEmpty(this.mHomeDescription)) {
                this.mToolbar.setNavigationContentDescription(this.mHomeDescription);
            } else {
                this.mToolbar.setNavigationContentDescription(this.mDefaultNavigationContentDescription);
            }
        }
        return;
    }

    private void updateNavigationIcon()
    {
        if ((this.mDisplayOpts & 4) == 0) {
            this.mToolbar.setNavigationIcon(0);
        } else {
            android.graphics.drawable.Drawable v0_2;
            if (this.mNavIcon == null) {
                v0_2 = this.mDefaultNavigationIcon;
            } else {
                v0_2 = this.mNavIcon;
            }
            this.mToolbar.setNavigationIcon(v0_2);
        }
        return;
    }

    private void updateToolbarLogo()
    {
        android.graphics.drawable.Drawable v0 = 0;
        if ((this.mDisplayOpts & 2) != 0) {
            if ((this.mDisplayOpts & 1) == 0) {
                v0 = this.mIcon;
            } else {
                if (this.mLogo == null) {
                    v0 = this.mIcon;
                } else {
                    v0 = this.mLogo;
                }
            }
        }
        this.mToolbar.setLogo(v0);
        return;
    }

    public void animateToVisibility(int p5)
    {
        androidx.core.view.ViewPropertyAnimatorCompat v0 = this.setupAnimatorToVisibility(p5, 200);
        if (v0 != null) {
            v0.start();
        }
        return;
    }

    public boolean canShowOverflowMenu()
    {
        return this.mToolbar.canShowOverflowMenu();
    }

    public void collapseActionView()
    {
        this.mToolbar.collapseActionView();
        return;
    }

    public void dismissPopupMenus()
    {
        this.mToolbar.dismissPopupMenus();
        return;
    }

    public android.content.Context getContext()
    {
        return this.mToolbar.getContext();
    }

    public android.view.View getCustomView()
    {
        return this.mCustomView;
    }

    public int getDisplayOptions()
    {
        return this.mDisplayOpts;
    }

    public int getDropdownItemCount()
    {
        int v0_1;
        if (this.mSpinner == null) {
            v0_1 = 0;
        } else {
            v0_1 = this.mSpinner.getCount();
        }
        return v0_1;
    }

    public int getDropdownSelectedPosition()
    {
        int v0_1;
        if (this.mSpinner == null) {
            v0_1 = 0;
        } else {
            v0_1 = this.mSpinner.getSelectedItemPosition();
        }
        return v0_1;
    }

    public int getHeight()
    {
        return this.mToolbar.getHeight();
    }

    public android.view.Menu getMenu()
    {
        return this.mToolbar.getMenu();
    }

    public int getNavigationMode()
    {
        return this.mNavigationMode;
    }

    public CharSequence getSubtitle()
    {
        return this.mToolbar.getSubtitle();
    }

    public CharSequence getTitle()
    {
        return this.mToolbar.getTitle();
    }

    public android.view.ViewGroup getViewGroup()
    {
        return this.mToolbar;
    }

    public int getVisibility()
    {
        return this.mToolbar.getVisibility();
    }

    public boolean hasEmbeddedTabs()
    {
        int v0_1;
        if (this.mTabView == null) {
            v0_1 = 0;
        } else {
            v0_1 = 1;
        }
        return v0_1;
    }

    public boolean hasExpandedActionView()
    {
        return this.mToolbar.hasExpandedActionView();
    }

    public boolean hasIcon()
    {
        int v0_1;
        if (this.mIcon == null) {
            v0_1 = 0;
        } else {
            v0_1 = 1;
        }
        return v0_1;
    }

    public boolean hasLogo()
    {
        int v0_1;
        if (this.mLogo == null) {
            v0_1 = 0;
        } else {
            v0_1 = 1;
        }
        return v0_1;
    }

    public boolean hideOverflowMenu()
    {
        return this.mToolbar.hideOverflowMenu();
    }

    public void initIndeterminateProgress()
    {
        android.util.Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
        return;
    }

    public void initProgress()
    {
        android.util.Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
        return;
    }

    public boolean isOverflowMenuShowPending()
    {
        return this.mToolbar.isOverflowMenuShowPending();
    }

    public boolean isOverflowMenuShowing()
    {
        return this.mToolbar.isOverflowMenuShowing();
    }

    public boolean isTitleTruncated()
    {
        return this.mToolbar.isTitleTruncated();
    }

    public void restoreHierarchyState(android.util.SparseArray p2)
    {
        this.mToolbar.restoreHierarchyState(p2);
        return;
    }

    public void saveHierarchyState(android.util.SparseArray p2)
    {
        this.mToolbar.saveHierarchyState(p2);
        return;
    }

    public void setBackgroundDrawable(android.graphics.drawable.Drawable p2)
    {
        androidx.core.view.ViewCompat.setBackground(this.mToolbar, p2);
        return;
    }

    public void setCollapsible(boolean p2)
    {
        this.mToolbar.setCollapsible(p2);
        return;
    }

    public void setCustomView(android.view.View p3)
    {
        if ((this.mCustomView != null) && ((this.mDisplayOpts & 16) != 0)) {
            this.mToolbar.removeView(this.mCustomView);
        }
        this.mCustomView = p3;
        if ((p3 != null) && ((this.mDisplayOpts & 16) != 0)) {
            this.mToolbar.addView(this.mCustomView);
        }
        return;
    }

    public void setDefaultNavigationContentDescription(int p2)
    {
        if (p2 != this.mDefaultNavigationContentDescription) {
            this.mDefaultNavigationContentDescription = p2;
            if (android.text.TextUtils.isEmpty(this.mToolbar.getNavigationContentDescription())) {
                this.setNavigationContentDescription(this.mDefaultNavigationContentDescription);
            }
        }
        return;
    }

    public void setDefaultNavigationIcon(android.graphics.drawable.Drawable p2)
    {
        if (this.mDefaultNavigationIcon != p2) {
            this.mDefaultNavigationIcon = p2;
            this.updateNavigationIcon();
        }
        return;
    }

    public void setDisplayOptions(int p5)
    {
        int v0 = (this.mDisplayOpts ^ p5);
        this.mDisplayOpts = p5;
        if (v0 != 0) {
            if ((v0 & 4) != 0) {
                if ((p5 & 4) != 0) {
                    this.updateHomeAccessibility();
                }
                this.updateNavigationIcon();
            }
            if ((v0 & 3) != 0) {
                this.updateToolbarLogo();
            }
            if ((v0 & 8) != 0) {
                if ((p5 & 8) == 0) {
                    this.mToolbar.setTitle(0);
                    this.mToolbar.setSubtitle(0);
                } else {
                    this.mToolbar.setTitle(this.mTitle);
                    this.mToolbar.setSubtitle(this.mSubtitle);
                }
            }
            if (((v0 & 16) != 0) && (this.mCustomView != null)) {
                if ((p5 & 16) == 0) {
                    this.mToolbar.removeView(this.mCustomView);
                } else {
                    this.mToolbar.addView(this.mCustomView);
                }
            }
        }
        return;
    }

    public void setDropdownParams(android.widget.SpinnerAdapter p2, android.widget.AdapterView$OnItemSelectedListener p3)
    {
        this.ensureSpinner();
        this.mSpinner.setAdapter(p2);
        this.mSpinner.setOnItemSelectedListener(p3);
        return;
    }

    public void setDropdownSelectedPosition(int p3)
    {
        if (this.mSpinner != null) {
            this.mSpinner.setSelection(p3);
            return;
        } else {
            throw new IllegalStateException("Can\'t set dropdown selected position without an adapter");
        }
    }

    public void setEmbeddedTabView(androidx.appcompat.widget.ScrollingTabContainerView p6)
    {
        if ((this.mTabView != null) && (this.mTabView.getParent() == this.mToolbar)) {
            this.mToolbar.removeView(this.mTabView);
        }
        this.mTabView = p6;
        if ((p6 != null) && (this.mNavigationMode == 2)) {
            this.mToolbar.addView(this.mTabView, 0);
            androidx.appcompat.widget.Toolbar$LayoutParams v0_1 = ((androidx.appcompat.widget.Toolbar$LayoutParams) this.mTabView.getLayoutParams());
            v0_1.width = -2;
            v0_1.height = -2;
            v0_1.gravity = 8388691;
            p6.setAllowCollapse(1);
        }
        return;
    }

    public void setHomeButtonEnabled(boolean p1)
    {
        return;
    }

    public void setIcon(int p2)
    {
        int v0_0;
        if (p2 == 0) {
            v0_0 = 0;
        } else {
            v0_0 = androidx.appcompat.content.res.AppCompatResources.getDrawable(this.getContext(), p2);
        }
        this.setIcon(v0_0);
        return;
    }

    public void setIcon(android.graphics.drawable.Drawable p1)
    {
        this.mIcon = p1;
        this.updateToolbarLogo();
        return;
    }

    public void setLogo(int p2)
    {
        int v0_0;
        if (p2 == 0) {
            v0_0 = 0;
        } else {
            v0_0 = androidx.appcompat.content.res.AppCompatResources.getDrawable(this.getContext(), p2);
        }
        this.setLogo(v0_0);
        return;
    }

    public void setLogo(android.graphics.drawable.Drawable p1)
    {
        this.mLogo = p1;
        this.updateToolbarLogo();
        return;
    }

    public void setMenu(android.view.Menu p3, androidx.appcompat.view.menu.MenuPresenter$Callback p4)
    {
        if (this.mActionMenuPresenter == null) {
            this.mActionMenuPresenter = new androidx.appcompat.widget.ActionMenuPresenter(this.mToolbar.getContext());
            this.mActionMenuPresenter.setId(androidx.appcompat.R$id.action_menu_presenter);
        }
        this.mActionMenuPresenter.setCallback(p4);
        this.mToolbar.setMenu(((androidx.appcompat.view.menu.MenuBuilder) p3), this.mActionMenuPresenter);
        return;
    }

    public void setMenuCallbacks(androidx.appcompat.view.menu.MenuPresenter$Callback p2, androidx.appcompat.view.menu.MenuBuilder$Callback p3)
    {
        this.mToolbar.setMenuCallbacks(p2, p3);
        return;
    }

    public void setMenuPrepared()
    {
        this.mMenuPrepared = 1;
        return;
    }

    public void setNavigationContentDescription(int p2)
    {
        String v0_1;
        if (p2 != 0) {
            v0_1 = this.getContext().getString(p2);
        } else {
            v0_1 = 0;
        }
        this.setNavigationContentDescription(v0_1);
        return;
    }

    public void setNavigationContentDescription(CharSequence p1)
    {
        this.mHomeDescription = p1;
        this.updateHomeAccessibility();
        return;
    }

    public void setNavigationIcon(int p2)
    {
        int v0_0;
        if (p2 == 0) {
            v0_0 = 0;
        } else {
            v0_0 = androidx.appcompat.content.res.AppCompatResources.getDrawable(this.getContext(), p2);
        }
        this.setNavigationIcon(v0_0);
        return;
    }

    public void setNavigationIcon(android.graphics.drawable.Drawable p1)
    {
        this.mNavIcon = p1;
        this.updateNavigationIcon();
        return;
    }

    public void setNavigationMode(int p7)
    {
        int v1 = this.mNavigationMode;
        if (p7 != v1) {
            switch (v1) {
                case 1:
                    if ((this.mSpinner == null) || (this.mSpinner.getParent() != this.mToolbar)) {
                    } else {
                        this.mToolbar.removeView(this.mSpinner);
                    }
                    break;
                case 2:
                    if ((this.mTabView == null) || (this.mTabView.getParent() != this.mToolbar)) {
                    } else {
                        this.mToolbar.removeView(this.mTabView);
                    }
                    break;
            }
            this.mNavigationMode = p7;
            switch (p7) {
                case 0:
                    break;
                case 1:
                    this.ensureSpinner();
                    this.mToolbar.addView(this.mSpinner, 0);
                    break;
                case 2:
                    if (this.mTabView != null) {
                        this.mToolbar.addView(this.mTabView, 0);
                        androidx.appcompat.widget.Toolbar$LayoutParams v0_1 = ((androidx.appcompat.widget.Toolbar$LayoutParams) this.mTabView.getLayoutParams());
                        v0_1.width = -2;
                        v0_1.height = -2;
                        v0_1.gravity = 8388691;
                    }
                    break;
                default:
                    throw new IllegalArgumentException(new StringBuilder().append("Invalid navigation mode ").append(p7).toString());
            }
        }
        return;
    }

    public void setSubtitle(CharSequence p2)
    {
        this.mSubtitle = p2;
        if ((this.mDisplayOpts & 8) != 0) {
            this.mToolbar.setSubtitle(p2);
        }
        return;
    }

    public void setTitle(CharSequence p2)
    {
        this.mTitleSet = 1;
        this.setTitleInt(p2);
        return;
    }

    public void setVisibility(int p2)
    {
        this.mToolbar.setVisibility(p2);
        return;
    }

    public void setWindowCallback(android.view.Window$Callback p1)
    {
        this.mWindowCallback = p1;
        return;
    }

    public void setWindowTitle(CharSequence p2)
    {
        if (!this.mTitleSet) {
            this.setTitleInt(p2);
        }
        return;
    }

    public androidx.core.view.ViewPropertyAnimatorCompat setupAnimatorToVisibility(int p3, long p4)
    {
        androidx.core.view.ViewPropertyAnimatorCompat v0_2;
        androidx.core.view.ViewPropertyAnimatorCompat vtmp1 = androidx.core.view.ViewCompat.animate(this.mToolbar);
        if (p3 != 0) {
            v0_2 = 0;
        } else {
            v0_2 = 1065353216;
        }
        return vtmp1.alpha(v0_2).setDuration(p4).setListener(new androidx.appcompat.widget.ToolbarWidgetWrapper$2(this, p3));
    }

    public boolean showOverflowMenu()
    {
        return this.mToolbar.showOverflowMenu();
    }
}
