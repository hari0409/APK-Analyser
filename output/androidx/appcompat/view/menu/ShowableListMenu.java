package androidx.appcompat.view.menu;
public interface ShowableListMenu {

    public abstract void dismiss();

    public abstract android.widget.ListView getListView();

    public abstract boolean isShowing();

    public abstract void show();
}
