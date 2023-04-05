package androidx.appcompat.widget;
public class PopupMenu {
    private final android.view.View mAnchor;
    private final android.content.Context mContext;
    private android.view.View$OnTouchListener mDragListener;
    private final androidx.appcompat.view.menu.MenuBuilder mMenu;
    androidx.appcompat.widget.PopupMenu$OnMenuItemClickListener mMenuItemClickListener;
    androidx.appcompat.widget.PopupMenu$OnDismissListener mOnDismissListener;
    final androidx.appcompat.view.menu.MenuPopupHelper mPopup;

    public PopupMenu(android.content.Context p2, android.view.View p3)
    {
        this(p2, p3, 0);
        return;
    }

    public PopupMenu(android.content.Context p7, android.view.View p8, int p9)
    {
        this(p7, p8, p9, androidx.appcompat.R$attr.popupMenuStyle, 0);
        return;
    }

    public PopupMenu(android.content.Context p8, android.view.View p9, int p10, int p11, int p12)
    {
        this.mContext = p8;
        this.mAnchor = p9;
        this.mMenu = new androidx.appcompat.view.menu.MenuBuilder(p8);
        this.mMenu.setCallback(new androidx.appcompat.widget.PopupMenu$1(this));
        this.mPopup = new androidx.appcompat.view.menu.MenuPopupHelper(p8, this.mMenu, p9, 0, p11, p12);
        this.mPopup.setGravity(p10);
        this.mPopup.setOnDismissListener(new androidx.appcompat.widget.PopupMenu$2(this));
        return;
    }

    public void dismiss()
    {
        this.mPopup.dismiss();
        return;
    }

    public android.view.View$OnTouchListener getDragToOpenListener()
    {
        if (this.mDragListener == null) {
            this.mDragListener = new androidx.appcompat.widget.PopupMenu$3(this, this.mAnchor);
        }
        return this.mDragListener;
    }

    public int getGravity()
    {
        return this.mPopup.getGravity();
    }

    public android.view.Menu getMenu()
    {
        return this.mMenu;
    }

    public android.view.MenuInflater getMenuInflater()
    {
        return new androidx.appcompat.view.SupportMenuInflater(this.mContext);
    }

    android.widget.ListView getMenuListView()
    {
        android.widget.ListView v0_3;
        if (this.mPopup.isShowing()) {
            v0_3 = this.mPopup.getListView();
        } else {
            v0_3 = 0;
        }
        return v0_3;
    }

    public void inflate(int p3)
    {
        this.getMenuInflater().inflate(p3, this.mMenu);
        return;
    }

    public void setGravity(int p2)
    {
        this.mPopup.setGravity(p2);
        return;
    }

    public void setOnDismissListener(androidx.appcompat.widget.PopupMenu$OnDismissListener p1)
    {
        this.mOnDismissListener = p1;
        return;
    }

    public void setOnMenuItemClickListener(androidx.appcompat.widget.PopupMenu$OnMenuItemClickListener p1)
    {
        this.mMenuItemClickListener = p1;
        return;
    }

    public void show()
    {
        this.mPopup.show();
        return;
    }
}
