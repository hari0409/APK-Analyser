package androidx.appcompat.widget;
 class ActionMenuPresenter extends androidx.appcompat.view.menu.BaseMenuPresenter implements androidx.core.view.ActionProvider$SubUiVisibilityListener {
    private static final String TAG = "ActionMenuPresenter";
    private final android.util.SparseBooleanArray mActionButtonGroups;
    androidx.appcompat.widget.ActionMenuPresenter$ActionButtonSubmenu mActionButtonPopup;
    private int mActionItemWidthLimit;
    private boolean mExpandedActionViewsExclusive;
    private int mMaxItems;
    private boolean mMaxItemsSet;
    private int mMinCellSize;
    int mOpenSubMenuId;
    androidx.appcompat.widget.ActionMenuPresenter$OverflowMenuButton mOverflowButton;
    androidx.appcompat.widget.ActionMenuPresenter$OverflowPopup mOverflowPopup;
    private android.graphics.drawable.Drawable mPendingOverflowIcon;
    private boolean mPendingOverflowIconSet;
    private androidx.appcompat.widget.ActionMenuPresenter$ActionMenuPopupCallback mPopupCallback;
    final androidx.appcompat.widget.ActionMenuPresenter$PopupPresenterCallback mPopupPresenterCallback;
    androidx.appcompat.widget.ActionMenuPresenter$OpenOverflowRunnable mPostedOpenRunnable;
    private boolean mReserveOverflow;
    private boolean mReserveOverflowSet;
    private android.view.View mScrapActionButtonView;
    private boolean mStrictWidthLimit;
    private int mWidthLimit;
    private boolean mWidthLimitSet;

    public ActionMenuPresenter(android.content.Context p3)
    {
        super(p3, androidx.appcompat.R$layout.abc_action_menu_layout, androidx.appcompat.R$layout.abc_action_menu_item_layout);
        super.mActionButtonGroups = new android.util.SparseBooleanArray();
        super.mPopupPresenterCallback = new androidx.appcompat.widget.ActionMenuPresenter$PopupPresenterCallback(super);
        return;
    }

    static synthetic androidx.appcompat.view.menu.MenuBuilder access$000(androidx.appcompat.widget.ActionMenuPresenter p1)
    {
        return p1.mMenu;
    }

    static synthetic androidx.appcompat.view.menu.MenuBuilder access$100(androidx.appcompat.widget.ActionMenuPresenter p1)
    {
        return p1.mMenu;
    }

    static synthetic androidx.appcompat.view.menu.MenuView access$200(androidx.appcompat.widget.ActionMenuPresenter p1)
    {
        return p1.mMenuView;
    }

    static synthetic androidx.appcompat.view.menu.MenuBuilder access$300(androidx.appcompat.widget.ActionMenuPresenter p1)
    {
        return p1.mMenu;
    }

    static synthetic androidx.appcompat.view.menu.MenuBuilder access$400(androidx.appcompat.widget.ActionMenuPresenter p1)
    {
        return p1.mMenu;
    }

    static synthetic androidx.appcompat.view.menu.MenuView access$500(androidx.appcompat.widget.ActionMenuPresenter p1)
    {
        return p1.mMenuView;
    }

    private android.view.View findViewForItem(android.view.MenuItem p7)
    {
        int v0;
        android.view.ViewGroup v3_1 = ((android.view.ViewGroup) this.mMenuView);
        if (v3_1 != null) {
            int v1 = v3_1.getChildCount();
            int v2 = 0;
            while (v2 < v1) {
                v0 = v3_1.getChildAt(v2);
                if ((!(v0 instanceof androidx.appcompat.view.menu.MenuView$ItemView)) || (((androidx.appcompat.view.menu.MenuView$ItemView) v0).getItemData() != p7)) {
                    v2++;
                }
            }
            v0 = 0;
        } else {
            v0 = 0;
        }
        return v0;
    }

    public void bindItemView(androidx.appcompat.view.menu.MenuItemImpl p4, androidx.appcompat.view.menu.MenuView$ItemView p5)
    {
        p5.initialize(p4, 0);
        ((androidx.appcompat.view.menu.ActionMenuItemView) p5).setItemInvoker(((androidx.appcompat.widget.ActionMenuView) this.mMenuView));
        if (this.mPopupCallback == null) {
            this.mPopupCallback = new androidx.appcompat.widget.ActionMenuPresenter$ActionMenuPopupCallback(this);
        }
        ((androidx.appcompat.view.menu.ActionMenuItemView) p5).setPopupCallback(this.mPopupCallback);
        return;
    }

    public boolean dismissPopupMenus()
    {
        return (this.hideOverflowMenu() | this.hideSubMenus());
    }

    public boolean filterLeftoverView(android.view.ViewGroup p3, int p4)
    {
        boolean v0_1;
        if (p3.getChildAt(p4) != this.mOverflowButton) {
            v0_1 = super.filterLeftoverView(p3, p4);
        } else {
            v0_1 = 0;
        }
        return v0_1;
    }

    public boolean flagActionItems()
    {
        int v15;
        int v25;
        if (this.mMenu == null) {
            v25 = 0;
            v15 = 0;
        } else {
            v25 = this.mMenu.getVisibleItems();
            v15 = v25.size();
        }
        int v17_0 = this.mMaxItems;
        int v26 = this.mActionItemWidthLimit;
        int v20 = android.view.View$MeasureSpec.makeMeasureSpec(0, 0);
        android.view.ViewGroup v19_1 = ((android.view.ViewGroup) this.mMenuView);
        int v22 = 0;
        int v21 = 0;
        int v8 = 0;
        int v10 = 0;
        int v11_1 = 0;
        while (v11_1 < v15) {
            androidx.appcompat.view.menu.MenuItemImpl v14_1 = ((androidx.appcompat.view.menu.MenuItemImpl) v25.get(v11_1));
            if (!v14_1.requiresActionButton()) {
                if (!v14_1.requestsActionButton()) {
                    v10 = 1;
                } else {
                    v21++;
                }
            } else {
                v22++;
            }
            if ((this.mExpandedActionViewsExclusive) && (v14_1.isActionViewExpanded())) {
                v17_0 = 0;
            }
            v11_1++;
        }
        if ((this.mReserveOverflow) && ((v10 != 0) || ((v22 + v21) > v17_0))) {
            v17_0--;
        }
        int v17_1 = (v17_0 - v22);
        android.util.SparseBooleanArray v23 = this.mActionButtonGroups;
        v23.clear();
        int v4 = 0;
        int v7 = 0;
        if (this.mStrictWidthLimit) {
            v7 = (v26 / this.mMinCellSize);
            v4 = (this.mMinCellSize + ((v26 % this.mMinCellSize) / v7));
        }
        int v11_0 = 0;
        while (v11_0 < v15) {
            androidx.appcompat.view.menu.MenuItemImpl v14_3 = ((androidx.appcompat.view.menu.MenuItemImpl) v25.get(v11_0));
            if (!v14_3.requiresActionButton()) {
                if (!v14_3.requestsActionButton()) {
                    v14_3.setIsActionButton(0);
                } else {
                    int v13;
                    int v9_1 = v14_3.getGroupId();
                    boolean v12 = v23.get(v9_1);
                    if (((v17_1 <= 0) && (!v12)) || ((v26 <= 0) || ((this.mStrictWidthLimit) && (v7 <= 0)))) {
                        v13 = 0;
                    } else {
                        v13 = 1;
                    }
                    if (v13 != 0) {
                        android.view.View v24_0 = this.getItemView(v14_3, this.mScrapActionButtonView, v19_1);
                        if (this.mScrapActionButtonView == null) {
                            this.mScrapActionButtonView = v24_0;
                        }
                        if (!this.mStrictWidthLimit) {
                            v24_0.measure(v20, v20);
                        } else {
                            int v6 = androidx.appcompat.widget.ActionMenuView.measureChildForCells(v24_0, v4, v7, v20, 0);
                            v7 -= v6;
                            if (v6 == 0) {
                                v13 = 0;
                            }
                        }
                        int v18_0 = v24_0.getMeasuredWidth();
                        v26 -= v18_0;
                        if (v8 == 0) {
                            v8 = v18_0;
                        }
                        if (!this.mStrictWidthLimit) {
                            int v27_6;
                            if ((v26 + v8) <= 0) {
                                v27_6 = 0;
                            } else {
                                v27_6 = 1;
                            }
                            v13 &= v27_6;
                        } else {
                            int v27_7;
                            if (v26 < 0) {
                                v27_7 = 0;
                            } else {
                                v27_7 = 1;
                            }
                            v13 &= v27_7;
                        }
                    }
                    if ((v13 == 0) || (v9_1 == 0)) {
                        if (v12) {
                            v23.put(v9_1, 0);
                            int v16 = 0;
                            while (v16 < v11_0) {
                                androidx.appcompat.view.menu.MenuItemImpl v3_1 = ((androidx.appcompat.view.menu.MenuItemImpl) v25.get(v16));
                                if (v3_1.getGroupId() == v9_1) {
                                    if (v3_1.isActionButton()) {
                                        v17_1++;
                                    }
                                    v3_1.setIsActionButton(0);
                                }
                                v16++;
                            }
                        }
                    } else {
                        v23.put(v9_1, 1);
                    }
                    if (v13 != 0) {
                        v17_1--;
                    }
                    v14_3.setIsActionButton(v13);
                }
            } else {
                android.view.View v24_1 = this.getItemView(v14_3, this.mScrapActionButtonView, v19_1);
                if (this.mScrapActionButtonView == null) {
                    this.mScrapActionButtonView = v24_1;
                }
                if (!this.mStrictWidthLimit) {
                    v24_1.measure(v20, v20);
                } else {
                    v7 -= androidx.appcompat.widget.ActionMenuView.measureChildForCells(v24_1, v4, v7, v20, 0);
                }
                int v18_1 = v24_1.getMeasuredWidth();
                v26 -= v18_1;
                if (v8 == 0) {
                    v8 = v18_1;
                }
                int v9_0 = v14_3.getGroupId();
                if (v9_0 != 0) {
                    v23.put(v9_0, 1);
                }
                v14_3.setIsActionButton(1);
            }
            v11_0++;
        }
        return 1;
    }

    public android.view.View getItemView(androidx.appcompat.view.menu.MenuItemImpl p5, android.view.View p6, android.view.ViewGroup p7)
    {
        android.view.View v0 = p5.getActionView();
        if ((v0 == null) || (p5.hasCollapsibleActionView())) {
            v0 = super.getItemView(p5, p6, p7);
        }
        androidx.appcompat.widget.ActionMenuView$LayoutParams v3_0;
        if (!p5.isActionViewExpanded()) {
            v3_0 = 0;
        } else {
            v3_0 = 8;
        }
        v0.setVisibility(v3_0);
        android.view.ViewGroup$LayoutParams v1 = v0.getLayoutParams();
        if (!((androidx.appcompat.widget.ActionMenuView) p7).checkLayoutParams(v1)) {
            v0.setLayoutParams(((androidx.appcompat.widget.ActionMenuView) p7).generateLayoutParams(v1));
        }
        return v0;
    }

    public androidx.appcompat.view.menu.MenuView getMenuView(android.view.ViewGroup p4)
    {
        androidx.appcompat.view.menu.MenuView v0 = this.mMenuView;
        androidx.appcompat.view.menu.MenuView v1 = super.getMenuView(p4);
        if (v0 != v1) {
            ((androidx.appcompat.widget.ActionMenuView) v1).setPresenter(this);
        }
        return v1;
    }

    public android.graphics.drawable.Drawable getOverflowIcon()
    {
        int v0_2;
        if (this.mOverflowButton == null) {
            if (!this.mPendingOverflowIconSet) {
                v0_2 = 0;
            } else {
                v0_2 = this.mPendingOverflowIcon;
            }
        } else {
            v0_2 = this.mOverflowButton.getDrawable();
        }
        return v0_2;
    }

    public boolean hideOverflowMenu()
    {
        if ((this.mPostedOpenRunnable == null) || (this.mMenuView == null)) {
            androidx.appcompat.widget.ActionMenuPresenter$OverflowPopup v0 = this.mOverflowPopup;
            if (v0 == null) {
                int v1_4 = 0;
            } else {
                v0.dismiss();
                v1_4 = 1;
            }
        } else {
            ((android.view.View) this.mMenuView).removeCallbacks(this.mPostedOpenRunnable);
            this.mPostedOpenRunnable = 0;
            v1_4 = 1;
        }
        return v1_4;
    }

    public boolean hideSubMenus()
    {
        int v0_1;
        if (this.mActionButtonPopup == null) {
            v0_1 = 0;
        } else {
            this.mActionButtonPopup.dismiss();
            v0_1 = 1;
        }
        return v0_1;
    }

    public void initForMenu(android.content.Context p9, androidx.appcompat.view.menu.MenuBuilder p10)
    {
        super.initForMenu(p9, p10);
        android.content.res.Resources v1 = p9.getResources();
        androidx.appcompat.view.ActionBarPolicy v0 = androidx.appcompat.view.ActionBarPolicy.get(p9);
        if (!this.mReserveOverflowSet) {
            this.mReserveOverflow = v0.showsOverflowMenuButton();
        }
        if (!this.mWidthLimitSet) {
            this.mWidthLimit = v0.getEmbeddedMenuWidthLimit();
        }
        if (!this.mMaxItemsSet) {
            this.mMaxItems = v0.getMaxActionButtons();
        }
        int v3 = this.mWidthLimit;
        if (!this.mReserveOverflow) {
            this.mOverflowButton = 0;
        } else {
            if (this.mOverflowButton == null) {
                this.mOverflowButton = new androidx.appcompat.widget.ActionMenuPresenter$OverflowMenuButton(this, this.mSystemContext);
                if (this.mPendingOverflowIconSet) {
                    this.mOverflowButton.setImageDrawable(this.mPendingOverflowIcon);
                    this.mPendingOverflowIcon = 0;
                    this.mPendingOverflowIconSet = 0;
                }
                this.mOverflowButton.measure(android.view.View$MeasureSpec.makeMeasureSpec(0, 0), android.view.View$MeasureSpec.makeMeasureSpec(0, 0));
            }
            v3 -= this.mOverflowButton.getMeasuredWidth();
        }
        this.mActionItemWidthLimit = v3;
        this.mMinCellSize = ((int) (1113587712 * v1.getDisplayMetrics().density));
        this.mScrapActionButtonView = 0;
        return;
    }

    public boolean isOverflowMenuShowPending()
    {
        if ((this.mPostedOpenRunnable == null) && (!this.isOverflowMenuShowing())) {
            int v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    public boolean isOverflowMenuShowing()
    {
        if ((this.mOverflowPopup == null) || (!this.mOverflowPopup.isShowing())) {
            int v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }

    public boolean isOverflowReserved()
    {
        return this.mReserveOverflow;
    }

    public void onCloseMenu(androidx.appcompat.view.menu.MenuBuilder p1, boolean p2)
    {
        this.dismissPopupMenus();
        super.onCloseMenu(p1, p2);
        return;
    }

    public void onConfigurationChanged(android.content.res.Configuration p3)
    {
        if (!this.mMaxItemsSet) {
            this.mMaxItems = androidx.appcompat.view.ActionBarPolicy.get(this.mContext).getMaxActionButtons();
        }
        if (this.mMenu != null) {
            this.mMenu.onItemsChanged(1);
        }
        return;
    }

    public void onRestoreInstanceState(android.os.Parcelable p6)
    {
        if (((p6 instanceof androidx.appcompat.widget.ActionMenuPresenter$SavedState)) && (((androidx.appcompat.widget.ActionMenuPresenter$SavedState) p6).openSubMenuId > 0)) {
            android.view.MenuItem v0 = this.mMenu.findItem(((androidx.appcompat.widget.ActionMenuPresenter$SavedState) p6).openSubMenuId);
            if (v0 != null) {
                this.onSubMenuSelected(((androidx.appcompat.view.menu.SubMenuBuilder) v0.getSubMenu()));
            }
        }
        return;
    }

    public android.os.Parcelable onSaveInstanceState()
    {
        androidx.appcompat.widget.ActionMenuPresenter$SavedState v0_1 = new androidx.appcompat.widget.ActionMenuPresenter$SavedState();
        v0_1.openSubMenuId = this.mOpenSubMenuId;
        return v0_1;
    }

    public boolean onSubMenuSelected(androidx.appcompat.view.menu.SubMenuBuilder p10)
    {
        android.graphics.drawable.Drawable v6_0 = 0;
        if (p10.hasVisibleItems()) {
            androidx.appcompat.view.menu.SubMenuBuilder v5_0 = p10;
            while (v5_0.getParentMenu() != this.mMenu) {
                v5_0 = ((androidx.appcompat.view.menu.SubMenuBuilder) v5_0.getParentMenu());
            }
            android.view.View v0 = this.findViewForItem(v5_0.getItem());
            if (v0 != null) {
                this.mOpenSubMenuId = p10.getItem().getItemId();
                int v4 = 0;
                int v2 = p10.size();
                int v3 = 0;
                while (v3 < v2) {
                    android.view.MenuItem v1 = p10.getItem(v3);
                    if ((!v1.isVisible()) || (v1.getIcon() == null)) {
                        v3++;
                    } else {
                        v4 = 1;
                        break;
                    }
                }
                this.mActionButtonPopup = new androidx.appcompat.widget.ActionMenuPresenter$ActionButtonSubmenu(this, this.mContext, p10, v0);
                this.mActionButtonPopup.setForceShowIcon(v4);
                this.mActionButtonPopup.show();
                super.onSubMenuSelected(p10);
                v6_0 = 1;
            }
        }
        return v6_0;
    }

    public void onSubUiVisibilityChanged(boolean p3)
    {
        if (!p3) {
            if (this.mMenu != null) {
                this.mMenu.close(0);
            }
        } else {
            super.onSubMenuSelected(0);
        }
        return;
    }

    public void setExpandedActionViewsExclusive(boolean p1)
    {
        this.mExpandedActionViewsExclusive = p1;
        return;
    }

    public void setItemLimit(int p2)
    {
        this.mMaxItems = p2;
        this.mMaxItemsSet = 1;
        return;
    }

    public void setMenuView(androidx.appcompat.widget.ActionMenuView p2)
    {
        this.mMenuView = p2;
        p2.initialize(this.mMenu);
        return;
    }

    public void setOverflowIcon(android.graphics.drawable.Drawable p2)
    {
        if (this.mOverflowButton == null) {
            this.mPendingOverflowIconSet = 1;
            this.mPendingOverflowIcon = p2;
        } else {
            this.mOverflowButton.setImageDrawable(p2);
        }
        return;
    }

    public void setReserveOverflow(boolean p2)
    {
        this.mReserveOverflow = p2;
        this.mReserveOverflowSet = 1;
        return;
    }

    public void setWidthLimit(int p2, boolean p3)
    {
        this.mWidthLimit = p2;
        this.mStrictWidthLimit = p3;
        this.mWidthLimitSet = 1;
        return;
    }

    public boolean shouldIncludeItem(int p2, androidx.appcompat.view.menu.MenuItemImpl p3)
    {
        return p3.isActionButton();
    }

    public boolean showOverflowMenu()
    {
        int v5 = 1;
        if ((!this.mReserveOverflow) || ((this.isOverflowMenuShowing()) || ((this.mMenu == null) || ((this.mMenuView == null) || ((this.mPostedOpenRunnable != null) || (this.mMenu.getNonActionItems().isEmpty())))))) {
            v5 = 0;
        } else {
            this.mPostedOpenRunnable = new androidx.appcompat.widget.ActionMenuPresenter$OpenOverflowRunnable(this, new androidx.appcompat.widget.ActionMenuPresenter$OverflowPopup(this, this.mContext, this.mMenu, this.mOverflowButton, 1));
            ((android.view.View) this.mMenuView).post(this.mPostedOpenRunnable);
            super.onSubMenuSelected(0);
        }
        return v5;
    }

    public void updateMenuView(boolean p12)
    {
        super.updateMenuView(p12);
        ((android.view.View) this.mMenuView).requestLayout();
        if (this.mMenu != null) {
            java.util.ArrayList v0 = this.mMenu.getActionItems();
            int v1_0 = v0.size();
            int v3 = 0;
            while (v3 < v1_0) {
                androidx.core.view.ActionProvider v7 = ((androidx.appcompat.view.menu.MenuItemImpl) v0.get(v3)).getSupportActionProvider();
                if (v7 != null) {
                    v7.setSubUiVisibilityListener(this);
                }
                v3++;
            }
        }
        int v5;
        if (this.mMenu == null) {
            v5 = 0;
        } else {
            v5 = this.mMenu.getNonActionItems();
        }
        int v2 = 0;
        if ((this.mReserveOverflow) && (v5 != 0)) {
            int v1_1 = v5.size();
            if (v1_1 != 1) {
                if (v1_1 <= 0) {
                    v2 = 0;
                } else {
                    v2 = 1;
                }
            } else {
                if (((androidx.appcompat.view.menu.MenuItemImpl) v5.get(0)).isActionViewExpanded()) {
                    v2 = 0;
                } else {
                    v2 = 1;
                }
            }
        }
        if (v2 == 0) {
            if ((this.mOverflowButton != null) && (this.mOverflowButton.getParent() == this.mMenuView)) {
                ((android.view.ViewGroup) this.mMenuView).removeView(this.mOverflowButton);
            }
        } else {
            if (this.mOverflowButton == null) {
                this.mOverflowButton = new androidx.appcompat.widget.ActionMenuPresenter$OverflowMenuButton(this, this.mSystemContext);
            }
            android.view.ViewGroup v6_1 = ((android.view.ViewGroup) this.mOverflowButton.getParent());
            if (v6_1 != this.mMenuView) {
                if (v6_1 != null) {
                    v6_1.removeView(this.mOverflowButton);
                }
                androidx.appcompat.widget.ActionMenuView v4_1 = ((androidx.appcompat.widget.ActionMenuView) this.mMenuView);
                v4_1.addView(this.mOverflowButton, v4_1.generateOverflowButtonLayoutParams());
            }
        }
        ((androidx.appcompat.widget.ActionMenuView) this.mMenuView).setOverflowReserved(this.mReserveOverflow);
        return;
    }
}
