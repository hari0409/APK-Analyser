package androidx.appcompat.view.menu;
public interface MenuPresenter {

    public abstract boolean collapseItemActionView();

    public abstract boolean expandItemActionView();

    public abstract boolean flagActionItems();

    public abstract int getId();

    public abstract androidx.appcompat.view.menu.MenuView getMenuView();

    public abstract void initForMenu();

    public abstract void onCloseMenu();

    public abstract void onRestoreInstanceState();

    public abstract android.os.Parcelable onSaveInstanceState();

    public abstract boolean onSubMenuSelected();

    public abstract void setCallback();

    public abstract void updateMenuView();
}
