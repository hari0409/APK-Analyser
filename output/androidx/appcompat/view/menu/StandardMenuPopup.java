package androidx.appcompat.view.menu;
final class StandardMenuPopup extends androidx.appcompat.view.menu.MenuPopup implements android.widget.PopupWindow$OnDismissListener, android.widget.AdapterView$OnItemClickListener, androidx.appcompat.view.menu.MenuPresenter, android.view.View$OnKeyListener {
    private static final int ITEM_LAYOUT;
    private final androidx.appcompat.view.menu.MenuAdapter mAdapter;
    private android.view.View mAnchorView;
    private final android.view.View$OnAttachStateChangeListener mAttachStateChangeListener;
    private int mContentWidth;
    private final android.content.Context mContext;
    private int mDropDownGravity;
    final android.view.ViewTreeObserver$OnGlobalLayoutListener mGlobalLayoutListener;
    private boolean mHasContentWidth;
    private final androidx.appcompat.view.menu.MenuBuilder mMenu;
    private android.widget.PopupWindow$OnDismissListener mOnDismissListener;
    private final boolean mOverflowOnly;
    final androidx.appcompat.widget.MenuPopupWindow mPopup;
    private final int mPopupMaxWidth;
    private final int mPopupStyleAttr;
    private final int mPopupStyleRes;
    private androidx.appcompat.view.menu.MenuPresenter$Callback mPresenterCallback;
    private boolean mShowTitle;
    android.view.View mShownAnchorView;
    android.view.ViewTreeObserver mTreeObserver;
    private boolean mWasDismissed;

    static StandardMenuPopup()
    {
        androidx.appcompat.view.menu.StandardMenuPopup.ITEM_LAYOUT = androidx.appcompat.R$layout.abc_popup_menu_item_layout;
        return;
    }

    public StandardMenuPopup(android.content.Context p8, androidx.appcompat.view.menu.MenuBuilder p9, android.view.View p10, int p11, int p12, boolean p13)
    {
        this.mGlobalLayoutListener = new androidx.appcompat.view.menu.StandardMenuPopup$1(this);
        this.mAttachStateChangeListener = new androidx.appcompat.view.menu.StandardMenuPopup$2(this);
        this.mDropDownGravity = 0;
        this.mContext = p8;
        this.mMenu = p9;
        this.mOverflowOnly = p13;
        this.mAdapter = new androidx.appcompat.view.menu.MenuAdapter(p9, android.view.LayoutInflater.from(p8), this.mOverflowOnly, androidx.appcompat.view.menu.StandardMenuPopup.ITEM_LAYOUT);
        this.mPopupStyleAttr = p11;
        this.mPopupStyleRes = p12;
        android.content.res.Resources v1 = p8.getResources();
        this.mPopupMaxWidth = Math.max((v1.getDisplayMetrics().widthPixels / 2), v1.getDimensionPixelSize(androidx.appcompat.R$dimen.abc_config_prefDialogWidth));
        this.mAnchorView = p10;
        this.mPopup = new androidx.appcompat.widget.MenuPopupWindow(this.mContext, 0, this.mPopupStyleAttr, this.mPopupStyleRes);
        p9.addMenuPresenter(this, p8);
        return;
    }

    private boolean tryShow()
    {
        int v5 = 1;
        if (!this.isShowing()) {
            if ((!this.mWasDismissed) && (this.mAnchorView != null)) {
                int v0;
                this.mShownAnchorView = this.mAnchorView;
                this.mPopup.setOnDismissListener(this);
                this.mPopup.setOnItemClickListener(this);
                this.mPopup.setModal(1);
                android.view.View v1 = this.mShownAnchorView;
                if (this.mTreeObserver != null) {
                    v0 = 0;
                } else {
                    v0 = 1;
                }
                this.mTreeObserver = v1.getViewTreeObserver();
                if (v0 != 0) {
                    this.mTreeObserver.addOnGlobalLayoutListener(this.mGlobalLayoutListener);
                }
                v1.addOnAttachStateChangeListener(this.mAttachStateChangeListener);
                this.mPopup.setAnchorView(v1);
                this.mPopup.setDropDownGravity(this.mDropDownGravity);
                if (!this.mHasContentWidth) {
                    this.mContentWidth = androidx.appcompat.view.menu.StandardMenuPopup.measureIndividualMenuWidth(this.mAdapter, 0, this.mContext, this.mPopupMaxWidth);
                    this.mHasContentWidth = 1;
                }
                this.mPopup.setContentWidth(this.mContentWidth);
                this.mPopup.setInputMethodMode(2);
                this.mPopup.setEpicenterBounds(this.getEpicenterBounds());
                this.mPopup.show();
                android.widget.ListView v2 = this.mPopup.getListView();
                v2.setOnKeyListener(this);
                if ((this.mShowTitle) && (this.mMenu.getHeaderTitle() != null)) {
                    android.widget.FrameLayout v3_1 = ((android.widget.FrameLayout) android.view.LayoutInflater.from(this.mContext).inflate(androidx.appcompat.R$layout.abc_popup_menu_header_item_layout, v2, 0));
                    android.widget.TextView v4_1 = ((android.widget.TextView) v3_1.findViewById(16908310));
                    if (v4_1 != null) {
                        v4_1.setText(this.mMenu.getHeaderTitle());
                    }
                    v3_1.setEnabled(0);
                    v2.addHeaderView(v3_1, 0, 0);
                }
                this.mPopup.setAdapter(this.mAdapter);
                this.mPopup.show();
            } else {
                v5 = 0;
            }
        }
        return v5;
    }

    public void addMenu(androidx.appcompat.view.menu.MenuBuilder p1)
    {
        return;
    }

    public void dismiss()
    {
        if (this.isShowing()) {
            this.mPopup.dismiss();
        }
        return;
    }

    public boolean flagActionItems()
    {
        return 0;
    }

    public android.widget.ListView getListView()
    {
        return this.mPopup.getListView();
    }

    public boolean isShowing()
    {
        if ((this.mWasDismissed) || (!this.mPopup.isShowing())) {
            int v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }

    public void onCloseMenu(androidx.appcompat.view.menu.MenuBuilder p2, boolean p3)
    {
        if (p2 == this.mMenu) {
            this.dismiss();
            if (this.mPresenterCallback != null) {
                this.mPresenterCallback.onCloseMenu(p2, p3);
            }
        }
        return;
    }

    public void onDismiss()
    {
        this.mWasDismissed = 1;
        this.mMenu.close();
        if (this.mTreeObserver != null) {
            if (!this.mTreeObserver.isAlive()) {
                this.mTreeObserver = this.mShownAnchorView.getViewTreeObserver();
            }
            this.mTreeObserver.removeGlobalOnLayoutListener(this.mGlobalLayoutListener);
            this.mTreeObserver = 0;
        }
        this.mShownAnchorView.removeOnAttachStateChangeListener(this.mAttachStateChangeListener);
        if (this.mOnDismissListener != null) {
            this.mOnDismissListener.onDismiss();
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

    public boolean onSubMenuSelected(androidx.appcompat.view.menu.SubMenuBuilder p12)
    {
        int v1_14;
        if (!p12.hasVisibleItems()) {
            v1_14 = 0;
        } else {
            androidx.appcompat.view.menu.MenuPopupHelper v0_0 = new androidx.appcompat.view.menu.MenuPopupHelper(this.mContext, p12, this.mShownAnchorView, this.mOverflowOnly, this.mPopupStyleAttr, this.mPopupStyleRes);
            v0_0.setPresenterCallback(this.mPresenterCallback);
            v0_0.setForceShowIcon(androidx.appcompat.view.menu.MenuPopup.shouldPreserveIconSpacing(p12));
            v0_0.setOnDismissListener(this.mOnDismissListener);
            this.mOnDismissListener = 0;
            this.mMenu.close(0);
            int v8 = this.mPopup.getHorizontalOffset();
            int v9 = this.mPopup.getVerticalOffset();
            if ((android.view.Gravity.getAbsoluteGravity(this.mDropDownGravity, androidx.core.view.ViewCompat.getLayoutDirection(this.mAnchorView)) & 7) == 5) {
                v8 += this.mAnchorView.getWidth();
            }
            if (!v0_0.tryShow(v8, v9)) {
            } else {
                if (this.mPresenterCallback != null) {
                    this.mPresenterCallback.onOpenSubMenu(p12);
                }
                v1_14 = 1;
            }
        }
        return v1_14;
    }

    public void setAnchorView(android.view.View p1)
    {
        this.mAnchorView = p1;
        return;
    }

    public void setCallback(androidx.appcompat.view.menu.MenuPresenter$Callback p1)
    {
        this.mPresenterCallback = p1;
        return;
    }

    public void setForceShowIcon(boolean p2)
    {
        this.mAdapter.setForceShowIcon(p2);
        return;
    }

    public void setGravity(int p1)
    {
        this.mDropDownGravity = p1;
        return;
    }

    public void setHorizontalOffset(int p2)
    {
        this.mPopup.setHorizontalOffset(p2);
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
        this.mPopup.setVerticalOffset(p2);
        return;
    }

    public void show()
    {
        if (this.tryShow()) {
            return;
        } else {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
    }

    public void updateMenuView(boolean p2)
    {
        this.mHasContentWidth = 0;
        if (this.mAdapter != null) {
            this.mAdapter.notifyDataSetChanged();
        }
        return;
    }
}
