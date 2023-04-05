package androidx.appcompat.widget;
public class MenuPopupWindow extends androidx.appcompat.widget.ListPopupWindow implements androidx.appcompat.widget.MenuItemHoverListener {
    private static final String TAG = "MenuPopupWindow";
    private static reflect.Method sSetTouchModalMethod;
    private androidx.appcompat.widget.MenuItemHoverListener mHoverListener;

    static MenuPopupWindow()
    {
        try {
            Class[] v3_1 = new Class[1];
            v3_1[0] = Boolean.TYPE;
            androidx.appcompat.widget.MenuPopupWindow.sSetTouchModalMethod = android.widget.PopupWindow.getDeclaredMethod("setTouchModal", v3_1);
        } catch (NoSuchMethodException v0) {
            android.util.Log.i("MenuPopupWindow", "Could not find method setTouchModal() on PopupWindow. Oh well.");
        }
        return;
    }

    public MenuPopupWindow(android.content.Context p1, android.util.AttributeSet p2, int p3, int p4)
    {
        super(p1, p2, p3, p4);
        return;
    }

    androidx.appcompat.widget.DropDownListView createDropDownListView(android.content.Context p2, boolean p3)
    {
        androidx.appcompat.widget.MenuPopupWindow$MenuDropDownListView v0_1 = new androidx.appcompat.widget.MenuPopupWindow$MenuDropDownListView(p2, p3);
        v0_1.setHoverListener(this);
        return v0_1;
    }

    public void onItemHoverEnter(androidx.appcompat.view.menu.MenuBuilder p2, android.view.MenuItem p3)
    {
        if (this.mHoverListener != null) {
            this.mHoverListener.onItemHoverEnter(p2, p3);
        }
        return;
    }

    public void onItemHoverExit(androidx.appcompat.view.menu.MenuBuilder p2, android.view.MenuItem p3)
    {
        if (this.mHoverListener != null) {
            this.mHoverListener.onItemHoverExit(p2, p3);
        }
        return;
    }

    public void setEnterTransition(Object p3)
    {
        if (android.os.Build$VERSION.SDK_INT >= 23) {
            this.mPopup.setEnterTransition(((android.transition.Transition) p3));
        }
        return;
    }

    public void setExitTransition(Object p3)
    {
        if (android.os.Build$VERSION.SDK_INT >= 23) {
            this.mPopup.setExitTransition(((android.transition.Transition) p3));
        }
        return;
    }

    public void setHoverListener(androidx.appcompat.widget.MenuItemHoverListener p1)
    {
        this.mHoverListener = p1;
        return;
    }

    public void setTouchModal(boolean p7)
    {
        if (androidx.appcompat.widget.MenuPopupWindow.sSetTouchModalMethod != null) {
            try {
                String v2_1 = this.mPopup;
                Object[] v3_1 = new Object[1];
                v3_1[0] = Boolean.valueOf(p7);
                androidx.appcompat.widget.MenuPopupWindow.sSetTouchModalMethod.invoke(v2_1, v3_1);
            } catch (Exception v0) {
                android.util.Log.i("MenuPopupWindow", "Could not invoke setTouchModal() on PopupWindow. Oh well.");
            }
        }
        return;
    }
}
