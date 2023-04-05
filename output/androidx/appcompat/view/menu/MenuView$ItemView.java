package androidx.appcompat.view.menu;
public interface MenuView$ItemView {

    public abstract androidx.appcompat.view.menu.MenuItemImpl getItemData();

    public abstract void initialize();

    public abstract boolean prefersCondensedTitle();

    public abstract void setCheckable();

    public abstract void setChecked();

    public abstract void setEnabled();

    public abstract void setIcon();

    public abstract void setShortcut();

    public abstract void setTitle();

    public abstract boolean showsIcon();
}
