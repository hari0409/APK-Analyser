package androidx.appcompat.view.menu;
public class MenuPopupHelper implements androidx.appcompat.view.menu.MenuHelper {
    private static final int TOUCH_EPICENTER_SIZE_DP = 48;
    private android.view.View mAnchorView;
    private final android.content.Context mContext;
    private int mDropDownGravity;
    private boolean mForceShowIcon;
    private final android.widget.PopupWindow$OnDismissListener mInternalOnDismissListener;
    private final androidx.appcompat.view.menu.MenuBuilder mMenu;
    private android.widget.PopupWindow$OnDismissListener mOnDismissListener;
    private final boolean mOverflowOnly;
    private androidx.appcompat.view.menu.MenuPopup mPopup;
    private final int mPopupStyleAttr;
    private final int mPopupStyleRes;
    private androidx.appcompat.view.menu.MenuPresenter$Callback mPresenterCallback;

    public MenuPopupHelper(android.content.Context p8, androidx.appcompat.view.menu.MenuBuilder p9)
    {
        this(p8, p9, 0, 0, androidx.appcompat.R$attr.popupMenuStyle, 0);
        return;
    }

    public MenuPopupHelper(android.content.Context p8, androidx.appcompat.view.menu.MenuBuilder p9, android.view.View p10)
    {
        this(p8, p9, p10, 0, androidx.appcompat.R$attr.popupMenuStyle, 0);
        return;
    }

    public MenuPopupHelper(android.content.Context p8, androidx.appcompat.view.menu.MenuBuilder p9, android.view.View p10, boolean p11, int p12)
    {
        this(p8, p9, p10, p11, p12, 0);
        return;
    }

    public MenuPopupHelper(android.content.Context p2, androidx.appcompat.view.menu.MenuBuilder p3, android.view.View p4, boolean p5, int p6, int p7)
    {
        this.mDropDownGravity = 8388611;
        this.mInternalOnDismissListener = new androidx.appcompat.view.menu.MenuPopupHelper$1(this);
        this.mContext = p2;
        this.mMenu = p3;
        this.mAnchorView = p4;
        this.mOverflowOnly = p5;
        this.mPopupStyleAttr = p6;
        this.mPopupStyleRes = p7;
        return;
    }

    private androidx.appcompat.view.menu.MenuPopup createPopup()
    {
        android.view.Display v7 = ((android.view.WindowManager) this.mContext.getSystemService("window")).getDefaultDisplay();
        android.graphics.Point v8_1 = new android.graphics.Point();
        if (android.os.Build$VERSION.SDK_INT < 17) {
            v7.getSize(v8_1);
        } else {
            v7.getRealSize(v8_1);
        }
        int v9;
        if (Math.min(v8_1.x, v8_1.y) < this.mContext.getResources().getDimensionPixelSize(androidx.appcompat.R$dimen.abc_cascading_menus_min_smallest_width)) {
            v9 = 0;
        } else {
            v9 = 1;
        }
        androidx.appcompat.view.menu.StandardMenuPopup v0_1;
        if (v9 == 0) {
            v0_1 = new androidx.appcompat.view.menu.StandardMenuPopup(this.mContext, this.mMenu, this.mAnchorView, this.mPopupStyleAttr, this.mPopupStyleRes, this.mOverflowOnly);
        } else {
            v0_1 = new androidx.appcompat.view.menu.CascadingMenuPopup(this.mContext, this.mAnchorView, this.mPopupStyleAttr, this.mPopupStyleRes, this.mOverflowOnly);
        }
        v0_1.addMenu(this.mMenu);
        v0_1.setOnDismissListener(this.mInternalOnDismissListener);
        v0_1.setAnchorView(this.mAnchorView);
        v0_1.setCallback(this.mPresenterCallback);
        v0_1.setForceShowIcon(this.mForceShowIcon);
        v0_1.setGravity(this.mDropDownGravity);
        return v0_1;
    }

    private void showPopup(int p10, int p11, boolean p12, boolean p13)
    {
        androidx.appcompat.view.menu.MenuPopup v4 = this.getPopup();
        v4.setShowTitle(p13);
        if (p12) {
            if ((androidx.core.view.GravityCompat.getAbsoluteGravity(this.mDropDownGravity, androidx.core.view.ViewCompat.getLayoutDirection(this.mAnchorView)) & 7) == 5) {
                p10 -= this.mAnchorView.getWidth();
            }
            v4.setHorizontalOffset(p10);
            v4.setVerticalOffset(p11);
            int v2 = ((int) ((1111490560 * this.mContext.getResources().getDisplayMetrics().density) / 1073741824));
            v4.setEpicenterBounds(new android.graphics.Rect((p10 - v2), (p11 - v2), (p10 + v2), (p11 + v2)));
        }
        v4.show();
        return;
    }

    public void dismiss()
    {
        if (this.isShowing()) {
            this.mPopup.dismiss();
        }
        return;
    }

    public int getGravity()
    {
        return this.mDropDownGravity;
    }

    public android.widget.ListView getListView()
    {
        return this.getPopup().getListView();
    }

    public androidx.appcompat.view.menu.MenuPopup getPopup()
    {
        if (this.mPopup == null) {
            this.mPopup = this.createPopup();
        }
        return this.mPopup;
    }

    public boolean isShowing()
    {
        if ((this.mPopup == null) || (!this.mPopup.isShowing())) {
            int v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }

    protected void onDismiss()
    {
        this.mPopup = 0;
        if (this.mOnDismissListener != null) {
            this.mOnDismissListener.onDismiss();
        }
        return;
    }

    public void setAnchorView(android.view.View p1)
    {
        this.mAnchorView = p1;
        return;
    }

    public void setForceShowIcon(boolean p2)
    {
        this.mForceShowIcon = p2;
        if (this.mPopup != null) {
            this.mPopup.setForceShowIcon(p2);
        }
        return;
    }

    public void setGravity(int p1)
    {
        this.mDropDownGravity = p1;
        return;
    }

    public void setOnDismissListener(android.widget.PopupWindow$OnDismissListener p1)
    {
        this.mOnDismissListener = p1;
        return;
    }

    public void setPresenterCallback(androidx.appcompat.view.menu.MenuPresenter$Callback p2)
    {
        this.mPresenterCallback = p2;
        if (this.mPopup != null) {
            this.mPopup.setCallback(p2);
        }
        return;
    }

    public void show()
    {
        if (this.tryShow()) {
            return;
        } else {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }

    public void show(int p3, int p4)
    {
        if (this.tryShow(p3, p4)) {
            return;
        } else {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }

    public boolean tryShow()
    {
        int v0 = 1;
        if (!this.isShowing()) {
            if (this.mAnchorView != null) {
                this.showPopup(0, 0, 0, 0);
            } else {
                v0 = 0;
            }
        }
        return v0;
    }

    public boolean tryShow(int p3, int p4)
    {
        int v0 = 1;
        if (!this.isShowing()) {
            if (this.mAnchorView != null) {
                this.showPopup(p3, p4, 1, 1);
            } else {
                v0 = 0;
            }
        }
        return v0;
    }
}
