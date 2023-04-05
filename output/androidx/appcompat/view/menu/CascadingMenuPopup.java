package androidx.appcompat.view.menu;
final class CascadingMenuPopup extends androidx.appcompat.view.menu.MenuPopup implements androidx.appcompat.view.menu.MenuPresenter, android.view.View$OnKeyListener, android.widget.PopupWindow$OnDismissListener {
    static final int HORIZ_POSITION_LEFT = 0;
    static final int HORIZ_POSITION_RIGHT = 1;
    private static final int ITEM_LAYOUT = 0;
    static final int SUBMENU_TIMEOUT_MS = 200;
    private android.view.View mAnchorView;
    private final android.view.View$OnAttachStateChangeListener mAttachStateChangeListener;
    private final android.content.Context mContext;
    private int mDropDownGravity;
    private boolean mForceShowIcon;
    final android.view.ViewTreeObserver$OnGlobalLayoutListener mGlobalLayoutListener;
    private boolean mHasXOffset;
    private boolean mHasYOffset;
    private int mLastPosition;
    private final androidx.appcompat.widget.MenuItemHoverListener mMenuItemHoverListener;
    private final int mMenuMaxWidth;
    private android.widget.PopupWindow$OnDismissListener mOnDismissListener;
    private final boolean mOverflowOnly;
    private final java.util.List mPendingMenus;
    private final int mPopupStyleAttr;
    private final int mPopupStyleRes;
    private androidx.appcompat.view.menu.MenuPresenter$Callback mPresenterCallback;
    private int mRawDropDownGravity;
    boolean mShouldCloseImmediately;
    private boolean mShowTitle;
    final java.util.List mShowingMenus;
    android.view.View mShownAnchorView;
    final android.os.Handler mSubMenuHoverHandler;
    android.view.ViewTreeObserver mTreeObserver;
    private int mXOffset;
    private int mYOffset;

    static CascadingMenuPopup()
    {
        androidx.appcompat.view.menu.CascadingMenuPopup.ITEM_LAYOUT = androidx.appcompat.R$layout.abc_cascading_menu_item_layout;
        return;
    }

    public CascadingMenuPopup(android.content.Context p4, android.view.View p5, int p6, int p7, boolean p8)
    {
        this.mPendingMenus = new java.util.ArrayList();
        this.mShowingMenus = new java.util.ArrayList();
        this.mGlobalLayoutListener = new androidx.appcompat.view.menu.CascadingMenuPopup$1(this);
        this.mAttachStateChangeListener = new androidx.appcompat.view.menu.CascadingMenuPopup$2(this);
        this.mMenuItemHoverListener = new androidx.appcompat.view.menu.CascadingMenuPopup$3(this);
        this.mRawDropDownGravity = 0;
        this.mDropDownGravity = 0;
        this.mContext = p4;
        this.mAnchorView = p5;
        this.mPopupStyleAttr = p6;
        this.mPopupStyleRes = p7;
        this.mOverflowOnly = p8;
        this.mForceShowIcon = 0;
        this.mLastPosition = this.getInitialMenuPosition();
        android.content.res.Resources v0 = p4.getResources();
        this.mMenuMaxWidth = Math.max((v0.getDisplayMetrics().widthPixels / 2), v0.getDimensionPixelSize(androidx.appcompat.R$dimen.abc_config_prefDialogWidth));
        this.mSubMenuHoverHandler = new android.os.Handler();
        return;
    }

    private androidx.appcompat.widget.MenuPopupWindow createPopupWindow()
    {
        androidx.appcompat.widget.MenuPopupWindow v0_1 = new androidx.appcompat.widget.MenuPopupWindow(this.mContext, 0, this.mPopupStyleAttr, this.mPopupStyleRes);
        v0_1.setHoverListener(this.mMenuItemHoverListener);
        v0_1.setOnItemClickListener(this);
        v0_1.setOnDismissListener(this);
        v0_1.setAnchorView(this.mAnchorView);
        v0_1.setDropDownGravity(this.mDropDownGravity);
        v0_1.setModal(1);
        v0_1.setInputMethodMode(2);
        return v0_1;
    }

    private int findIndexOfAddedMenu(androidx.appcompat.view.menu.MenuBuilder p5)
    {
        int v1 = 0;
        int v0 = this.mShowingMenus.size();
        while (v1 < v0) {
            if (p5 != ((androidx.appcompat.view.menu.CascadingMenuPopup$CascadingMenuInfo) this.mShowingMenus.get(v1)).menu) {
                v1++;
            }
            return v1;
        }
        v1 = -1;
        return v1;
    }

    private android.view.MenuItem findMenuItemForSubmenu(androidx.appcompat.view.menu.MenuBuilder p5, androidx.appcompat.view.menu.MenuBuilder p6)
    {
        int v1 = 0;
        int v0 = p5.size();
        while (v1 < v0) {
            int v2 = p5.getItem(v1);
            if ((!v2.hasSubMenu()) || (p6 != v2.getSubMenu())) {
                v1++;
            }
            return v2;
        }
        v2 = 0;
        return v2;
    }

    private android.view.View findParentViewForSubmenu(androidx.appcompat.view.menu.CascadingMenuPopup$CascadingMenuInfo p13, androidx.appcompat.view.menu.MenuBuilder p14)
    {
        android.view.View v10 = 0;
        android.view.MenuItem v7 = this.findMenuItemForSubmenu(p13.menu, p14);
        if (v7 != null) {
            int v2;
            androidx.appcompat.view.menu.MenuAdapter v6_1;
            android.widget.ListView v5 = p13.getListView();
            android.widget.ListAdapter v4 = v5.getAdapter();
            if (!(v4 instanceof android.widget.HeaderViewListAdapter)) {
                v2 = 0;
                v6_1 = ((androidx.appcompat.view.menu.MenuAdapter) v4);
            } else {
                android.widget.HeaderViewListAdapter v1_1 = ((android.widget.HeaderViewListAdapter) v4);
                v2 = v1_1.getHeadersCount();
                v6_1 = ((androidx.appcompat.view.menu.MenuAdapter) v1_1.getWrappedAdapter());
            }
            int v8_0 = -1;
            int v3 = 0;
            int v0 = v6_1.getCount();
            while (v3 < v0) {
                if (v7 != v6_1.getItem(v3)) {
                    v3++;
                } else {
                    v8_0 = v3;
                    break;
                }
            }
            if (v8_0 != -1) {
                int v9 = ((v8_0 + v2) - v5.getFirstVisiblePosition());
                if ((v9 >= 0) && (v9 < v5.getChildCount())) {
                    v10 = v5.getChildAt(v9);
                }
            }
        }
        return v10;
    }

    private int getInitialMenuPosition()
    {
        int v1 = 1;
        if (androidx.core.view.ViewCompat.getLayoutDirection(this.mAnchorView) == 1) {
            v1 = 0;
        }
        return v1;
    }

    private int getNextMenuPosition(int p10)
    {
        int v5_5;
        android.widget.ListView v1 = ((androidx.appcompat.view.menu.CascadingMenuPopup$CascadingMenuInfo) this.mShowingMenus.get((this.mShowingMenus.size() - 1))).getListView();
        int[] v4 = new int[2];
        v1.getLocationOnScreen(v4);
        android.graphics.Rect v0_1 = new android.graphics.Rect();
        this.mShownAnchorView.getWindowVisibleDisplayFrame(v0_1);
        if (this.mLastPosition != 1) {
            if ((v4[0] - p10) >= 0) {
                v5_5 = 0;
            } else {
                v5_5 = 1;
            }
        } else {
            if (((v4[0] + v1.getWidth()) + p10) <= v0_1.right) {
                v5_5 = 1;
            } else {
                v5_5 = 0;
            }
        }
        return v5_5;
    }

    private void showMenu(androidx.appcompat.view.menu.MenuBuilder p25)
    {
        android.view.LayoutInflater v6 = android.view.LayoutInflater.from(this.mContext);
        androidx.appcompat.view.menu.MenuAdapter v3_0 = new androidx.appcompat.view.menu.MenuAdapter(p25, v6, this.mOverflowOnly, androidx.appcompat.view.menu.CascadingMenuPopup.ITEM_LAYOUT);
        if ((this.isShowing()) || (!this.mForceShowIcon)) {
            if (this.isShowing()) {
                v3_0.setForceShowIcon(androidx.appcompat.view.menu.MenuPopup.shouldPreserveIconSpacing(p25));
            }
        } else {
            v3_0.setForceShowIcon(1);
        }
        int v14;
        int v11_0;
        int v9 = androidx.appcompat.view.menu.CascadingMenuPopup.measureIndividualMenuWidth(v3_0, 0, this.mContext, this.mMenuMaxWidth);
        androidx.appcompat.widget.MenuPopupWindow v16 = this.createPopupWindow();
        v16.setAdapter(v3_0);
        v16.setContentWidth(v9);
        v16.setDropDownGravity(this.mDropDownGravity);
        if (this.mShowingMenus.size() <= 0) {
            v11_0 = 0;
            v14 = 0;
        } else {
            v11_0 = ((androidx.appcompat.view.menu.CascadingMenuPopup$CascadingMenuInfo) this.mShowingMenus.get((this.mShowingMenus.size() - 1)));
            v14 = this.findParentViewForSubmenu(v11_0, p25);
        }
        if (v14 == 0) {
            if (this.mHasXOffset) {
                v16.setHorizontalOffset(this.mXOffset);
            }
            if (this.mHasYOffset) {
                v16.setVerticalOffset(this.mYOffset);
            }
            v16.setEpicenterBounds(this.getEpicenterBounds());
        } else {
            int v17;
            v16.setTouchModal(0);
            v16.setEnterTransition(0);
            int v10 = this.getNextMenuPosition(v9);
            if (v10 != 1) {
                v17 = 0;
            } else {
                v17 = 1;
            }
            int v13;
            int v12;
            this.mLastPosition = v10;
            if (android.os.Build$VERSION.SDK_INT < 26) {
                int[] v4 = new int[2];
                this.mAnchorView.getLocationOnScreen(v4);
                int[] v15 = new int[2];
                v14.getLocationOnScreen(v15);
                if ((this.mDropDownGravity & 7) == 5) {
                    v4[0] = (v4[0] + this.mAnchorView.getWidth());
                    v15[0] = (v15[0] + v14.getWidth());
                }
                v12 = (v15[0] - v4[0]);
                v13 = (v15[1] - v4[1]);
            } else {
                v16.setAnchorView(v14);
                v12 = 0;
                v13 = 0;
            }
            int v20;
            if ((this.mDropDownGravity & 5) != 5) {
                if (v17 == 0) {
                    v20 = (v12 - v9);
                } else {
                    v20 = (v12 + v14.getWidth());
                }
            } else {
                if (v17 == 0) {
                    v20 = (v12 - v14.getWidth());
                } else {
                    v20 = (v12 + v9);
                }
            }
            v16.setHorizontalOffset(v20);
            v16.setOverlapAnchor(1);
            v16.setVerticalOffset(v13);
        }
        this.mShowingMenus.add(new androidx.appcompat.view.menu.CascadingMenuPopup$CascadingMenuInfo(v16, p25, this.mLastPosition));
        v16.show();
        android.widget.ListView v7 = v16.getListView();
        v7.setOnKeyListener(this);
        if ((v11_0 == 0) && ((this.mShowTitle) && (p25.getHeaderTitle() != null))) {
            android.widget.FrameLayout v18_1 = ((android.widget.FrameLayout) v6.inflate(androidx.appcompat.R$layout.abc_popup_menu_header_item_layout, v7, 0));
            android.widget.TextView v19_1 = ((android.widget.TextView) v18_1.findViewById(16908310));
            v18_1.setEnabled(0);
            v19_1.setText(p25.getHeaderTitle());
            v7.addHeaderView(v18_1, 0, 0);
            v16.show();
        }
        return;
    }

    public void addMenu(androidx.appcompat.view.menu.MenuBuilder p2)
    {
        p2.addMenuPresenter(this, this.mContext);
        if (!this.isShowing()) {
            this.mPendingMenus.add(p2);
        } else {
            this.showMenu(p2);
        }
        return;
    }

    protected boolean closeMenuOnSubMenuOpened()
    {
        return 0;
    }

    public void dismiss()
    {
        int v3 = this.mShowingMenus.size();
        if (v3 > 0) {
            androidx.appcompat.view.menu.CascadingMenuPopup$CascadingMenuInfo[] v5 = new androidx.appcompat.view.menu.CascadingMenuPopup$CascadingMenuInfo[v3];
            androidx.appcompat.view.menu.CascadingMenuPopup$CascadingMenuInfo[] v0_1 = ((androidx.appcompat.view.menu.CascadingMenuPopup$CascadingMenuInfo[]) this.mShowingMenus.toArray(v5));
            int v1 = (v3 - 1);
            while (v1 >= 0) {
                androidx.appcompat.view.menu.CascadingMenuPopup$CascadingMenuInfo v2 = v0_1[v1];
                if (v2.window.isShowing()) {
                    v2.window.dismiss();
                }
                v1--;
            }
        }
        return;
    }

    public boolean flagActionItems()
    {
        return 0;
    }

    public android.widget.ListView getListView()
    {
        android.widget.ListView v0_3;
        if (!this.mShowingMenus.isEmpty()) {
            v0_3 = ((androidx.appcompat.view.menu.CascadingMenuPopup$CascadingMenuInfo) this.mShowingMenus.get((this.mShowingMenus.size() - 1))).getListView();
        } else {
            v0_3 = 0;
        }
        return v0_3;
    }

    public boolean isShowing()
    {
        if ((this.mShowingMenus.size() <= 0) || (!((androidx.appcompat.view.menu.CascadingMenuPopup$CascadingMenuInfo) this.mShowingMenus.get(0)).window.isShowing())) {
            int v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    public void onCloseMenu(androidx.appcompat.view.menu.MenuBuilder p11, boolean p12)
    {
        int v3 = this.findIndexOfAddedMenu(p11);
        if (v3 >= 0) {
            int v4 = (v3 + 1);
            if (v4 < this.mShowingMenus.size()) {
                ((androidx.appcompat.view.menu.CascadingMenuPopup$CascadingMenuInfo) this.mShowingMenus.get(v4)).menu.close(0);
            }
            androidx.appcompat.view.menu.CascadingMenuPopup$CascadingMenuInfo v2_1 = ((androidx.appcompat.view.menu.CascadingMenuPopup$CascadingMenuInfo) this.mShowingMenus.remove(v3));
            v2_1.menu.removeMenuPresenter(this);
            if (this.mShouldCloseImmediately) {
                v2_1.window.setExitTransition(0);
                v2_1.window.setAnimationStyle(0);
            }
            v2_1.window.dismiss();
            int v1 = this.mShowingMenus.size();
            if (v1 <= 0) {
                this.mLastPosition = this.getInitialMenuPosition();
            } else {
                this.mLastPosition = ((androidx.appcompat.view.menu.CascadingMenuPopup$CascadingMenuInfo) this.mShowingMenus.get((v1 - 1))).position;
            }
            if (v1 != 0) {
                if (p12) {
                    ((androidx.appcompat.view.menu.CascadingMenuPopup$CascadingMenuInfo) this.mShowingMenus.get(0)).menu.close(0);
                }
            } else {
                this.dismiss();
                if (this.mPresenterCallback != null) {
                    this.mPresenterCallback.onCloseMenu(p11, 1);
                }
                if (this.mTreeObserver != null) {
                    if (this.mTreeObserver.isAlive()) {
                        this.mTreeObserver.removeGlobalOnLayoutListener(this.mGlobalLayoutListener);
                    }
                    this.mTreeObserver = 0;
                }
                this.mShownAnchorView.removeOnAttachStateChangeListener(this.mAttachStateChangeListener);
                this.mOnDismissListener.onDismiss();
            }
        }
        return;
    }

    public void onDismiss()
    {
        androidx.appcompat.view.menu.CascadingMenuPopup$CascadingMenuInfo v1 = 0;
        int v2 = 0;
        int v0 = this.mShowingMenus.size();
        while (v2 < v0) {
            androidx.appcompat.view.menu.CascadingMenuPopup$CascadingMenuInfo v3_1 = ((androidx.appcompat.view.menu.CascadingMenuPopup$CascadingMenuInfo) this.mShowingMenus.get(v2));
            if (v3_1.window.isShowing()) {
                v2++;
            } else {
                v1 = v3_1;
                break;
            }
        }
        if (v1 != null) {
            v1.menu.close(0);
        }
        return;
    }

    public boolean onKey(android.view.View p3, int p4, android.view.KeyEvent p5)
    {
        int v0 = 1;
        if ((p5.getAction() != 1) || (p4 != 82)) {
            v0 = 0;
        } else {
            this.dismiss();
        }
        return v0;
    }

    public void onRestoreInstanceState(android.os.Parcelable p1)
    {
        return;
    }

    public android.os.Parcelable onSaveInstanceState()
    {
        return 0;
    }

    public boolean onSubMenuSelected(androidx.appcompat.view.menu.SubMenuBuilder p5)
    {
        int v1 = 1;
        androidx.appcompat.view.menu.MenuPresenter$Callback v2_4 = this.mShowingMenus.iterator();
        while (v2_4.hasNext()) {
            androidx.appcompat.view.menu.CascadingMenuPopup$CascadingMenuInfo v0_1 = ((androidx.appcompat.view.menu.CascadingMenuPopup$CascadingMenuInfo) v2_4.next());
            if (p5 == v0_1.menu) {
                v0_1.getListView().requestFocus();
            }
            return v1;
        }
        if (!p5.hasVisibleItems()) {
            v1 = 0;
        } else {
            this.addMenu(p5);
            if (this.mPresenterCallback != null) {
                this.mPresenterCallback.onOpenSubMenu(p5);
            }
        }
        return v1;
    }

    public void setAnchorView(android.view.View p3)
    {
        if (this.mAnchorView != p3) {
            this.mAnchorView = p3;
            this.mDropDownGravity = androidx.core.view.GravityCompat.getAbsoluteGravity(this.mRawDropDownGravity, androidx.core.view.ViewCompat.getLayoutDirection(this.mAnchorView));
        }
        return;
    }

    public void setCallback(androidx.appcompat.view.menu.MenuPresenter$Callback p1)
    {
        this.mPresenterCallback = p1;
        return;
    }

    public void setForceShowIcon(boolean p1)
    {
        this.mForceShowIcon = p1;
        return;
    }

    public void setGravity(int p2)
    {
        if (this.mRawDropDownGravity != p2) {
            this.mRawDropDownGravity = p2;
            this.mDropDownGravity = androidx.core.view.GravityCompat.getAbsoluteGravity(p2, androidx.core.view.ViewCompat.getLayoutDirection(this.mAnchorView));
        }
        return;
    }

    public void setHorizontalOffset(int p2)
    {
        this.mHasXOffset = 1;
        this.mXOffset = p2;
        return;
    }

    public void setOnDismissListener(android.widget.PopupWindow$OnDismissListener p1)
    {
        this.mOnDismissListener = p1;
        return;
    }

    public void setShowTitle(boolean p1)
    {
        this.mShowTitle = p1;
        return;
    }

    public void setVerticalOffset(int p2)
    {
        this.mHasYOffset = 1;
        this.mYOffset = p2;
        return;
    }

    public void show()
    {
        if (!this.isShowing()) {
            android.view.View v2_9 = this.mPendingMenus.iterator();
            while (v2_9.hasNext()) {
                this.showMenu(((androidx.appcompat.view.menu.MenuBuilder) v2_9.next()));
            }
            this.mPendingMenus.clear();
            this.mShownAnchorView = this.mAnchorView;
            if (this.mShownAnchorView != null) {
                int v0;
                if (this.mTreeObserver != null) {
                    v0 = 0;
                } else {
                    v0 = 1;
                }
                this.mTreeObserver = this.mShownAnchorView.getViewTreeObserver();
                if (v0 != 0) {
                    this.mTreeObserver.addOnGlobalLayoutListener(this.mGlobalLayoutListener);
                }
                this.mShownAnchorView.addOnAttachStateChangeListener(this.mAttachStateChangeListener);
            }
        }
        return;
    }

    public void updateMenuView(boolean p4)
    {
        java.util.Iterator v1_1 = this.mShowingMenus.iterator();
        while (v1_1.hasNext()) {
            androidx.appcompat.view.menu.CascadingMenuPopup.toMenuAdapter(((androidx.appcompat.view.menu.CascadingMenuPopup$CascadingMenuInfo) v1_1.next()).getListView().getAdapter()).notifyDataSetChanged();
        }
        return;
    }
}
