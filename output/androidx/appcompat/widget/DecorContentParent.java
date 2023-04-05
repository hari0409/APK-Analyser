package androidx.appcompat.widget;
public interface DecorContentParent {

    public abstract boolean canShowOverflowMenu();

    public abstract void dismissPopups();

    public abstract CharSequence getTitle();

    public abstract boolean hasIcon();

    public abstract boolean hasLogo();

    public abstract boolean hideOverflowMenu();

    public abstract void initFeature();

    public abstract boolean isOverflowMenuShowPending();

    public abstract boolean isOverflowMenuShowing();

    public abstract void restoreToolbarHierarchyState();

    public abstract void saveToolbarHierarchyState();

    public abstract void setIcon();

    public abstract void setIcon();

    public abstract void setLogo();

    public abstract void setMenu();

    public abstract void setMenuPrepared();

    public abstract void setUiOptions();

    public abstract void setWindowCallback();

    public abstract void setWindowTitle();

    public abstract boolean showOverflowMenu();
}
