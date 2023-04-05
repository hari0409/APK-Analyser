package androidx.appcompat.app;
public class AppCompatDialog extends android.app.Dialog implements androidx.appcompat.app.AppCompatCallback {
    private androidx.appcompat.app.AppCompatDelegate mDelegate;
    private final androidx.core.view.KeyEventDispatcher$Component mKeyDispatcher;

    public AppCompatDialog(android.content.Context p2)
    {
        this(p2, 0);
        return;
    }

    public AppCompatDialog(android.content.Context p3, int p4)
    {
        super(p3, androidx.appcompat.app.AppCompatDialog.getThemeResId(p3, p4));
        super.mKeyDispatcher = new androidx.appcompat.app.AppCompatDialog$1(super);
        super.getDelegate().onCreate(0);
        super.getDelegate().applyDayNight();
        return;
    }

    protected AppCompatDialog(android.content.Context p2, boolean p3, android.content.DialogInterface$OnCancelListener p4)
    {
        super(p2, p3, p4);
        super.mKeyDispatcher = new androidx.appcompat.app.AppCompatDialog$1(super);
        return;
    }

    private static int getThemeResId(android.content.Context p4, int p5)
    {
        if (p5 == 0) {
            android.util.TypedValue v0_1 = new android.util.TypedValue();
            p4.getTheme().resolveAttribute(androidx.appcompat.R$attr.dialogTheme, v0_1, 1);
            p5 = v0_1.resourceId;
        }
        return p5;
    }

    public void addContentView(android.view.View p2, android.view.ViewGroup$LayoutParams p3)
    {
        this.getDelegate().addContentView(p2, p3);
        return;
    }

    public boolean dispatchKeyEvent(android.view.KeyEvent p3)
    {
        return androidx.core.view.KeyEventDispatcher.dispatchKeyEvent(this.mKeyDispatcher, this.getWindow().getDecorView(), this, p3);
    }

    public android.view.View findViewById(int p2)
    {
        return this.getDelegate().findViewById(p2);
    }

    public androidx.appcompat.app.AppCompatDelegate getDelegate()
    {
        if (this.mDelegate == null) {
            this.mDelegate = androidx.appcompat.app.AppCompatDelegate.create(this, this);
        }
        return this.mDelegate;
    }

    public androidx.appcompat.app.ActionBar getSupportActionBar()
    {
        return this.getDelegate().getSupportActionBar();
    }

    public void invalidateOptionsMenu()
    {
        this.getDelegate().invalidateOptionsMenu();
        return;
    }

    protected void onCreate(android.os.Bundle p2)
    {
        this.getDelegate().installViewFactory();
        super.onCreate(p2);
        this.getDelegate().onCreate(p2);
        return;
    }

    protected void onStop()
    {
        super.onStop();
        this.getDelegate().onStop();
        return;
    }

    public void onSupportActionModeFinished(androidx.appcompat.view.ActionMode p1)
    {
        return;
    }

    public void onSupportActionModeStarted(androidx.appcompat.view.ActionMode p1)
    {
        return;
    }

    public androidx.appcompat.view.ActionMode onWindowStartingSupportActionMode(androidx.appcompat.view.ActionMode$Callback p2)
    {
        return 0;
    }

    public void setContentView(int p2)
    {
        this.getDelegate().setContentView(p2);
        return;
    }

    public void setContentView(android.view.View p2)
    {
        this.getDelegate().setContentView(p2);
        return;
    }

    public void setContentView(android.view.View p2, android.view.ViewGroup$LayoutParams p3)
    {
        this.getDelegate().setContentView(p2, p3);
        return;
    }

    public void setTitle(int p3)
    {
        super.setTitle(p3);
        this.getDelegate().setTitle(this.getContext().getString(p3));
        return;
    }

    public void setTitle(CharSequence p2)
    {
        super.setTitle(p2);
        this.getDelegate().setTitle(p2);
        return;
    }

    boolean superDispatchKeyEvent(android.view.KeyEvent p2)
    {
        return super.dispatchKeyEvent(p2);
    }

    public boolean supportRequestWindowFeature(int p2)
    {
        return this.getDelegate().requestWindowFeature(p2);
    }
}
