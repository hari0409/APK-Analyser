package androidx.appcompat.view.menu;
 class CascadingMenuPopup$CascadingMenuInfo {
    public final androidx.appcompat.view.menu.MenuBuilder menu;
    public final int position;
    public final androidx.appcompat.widget.MenuPopupWindow window;

    public CascadingMenuPopup$CascadingMenuInfo(androidx.appcompat.widget.MenuPopupWindow p1, androidx.appcompat.view.menu.MenuBuilder p2, int p3)
    {
        this.window = p1;
        this.menu = p2;
        this.position = p3;
        return;
    }

    public android.widget.ListView getListView()
    {
        return this.window.getListView();
    }
}
