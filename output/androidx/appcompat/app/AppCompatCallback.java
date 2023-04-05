package androidx.appcompat.app;
public interface AppCompatCallback {

    public abstract void onSupportActionModeFinished();

    public abstract void onSupportActionModeStarted();

    public abstract androidx.appcompat.view.ActionMode onWindowStartingSupportActionMode();
}
