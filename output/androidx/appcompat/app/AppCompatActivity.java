package androidx.appcompat.app;
public class AppCompatActivity extends androidx.fragment.app.FragmentActivity implements androidx.appcompat.app.AppCompatCallback, androidx.core.app.TaskStackBuilder$SupportParentable, androidx.appcompat.app.ActionBarDrawerToggle$DelegateProvider {
    private androidx.appcompat.app.AppCompatDelegate mDelegate;
    private android.content.res.Resources mResources;
    private int mThemeId;

    public AppCompatActivity()
    {
        this.mThemeId = 0;
        return;
    }

    private boolean performMenuItemShortcut(int p5, android.view.KeyEvent p6)
    {
        if ((android.os.Build$VERSION.SDK_INT >= 26) || ((p6.isCtrlPressed()) || ((android.view.KeyEvent.metaStateHasNoModifiers(p6.getMetaState())) || ((p6.getRepeatCount() != 0) || (android.view.KeyEvent.isModifierKey(p6.getKeyCode())))))) {
            int v2_6 = 0;
        } else {
            android.view.Window v0 = this.getWindow();
            if ((v0 == null) || ((v0.getDecorView() == null) || (!v0.getDecorView().dispatchKeyShortcutEvent(p6)))) {
            } else {
                v2_6 = 1;
            }
        }
        return v2_6;
    }

    public void addContentView(android.view.View p2, android.view.ViewGroup$LayoutParams p3)
    {
        this.getDelegate().addContentView(p2, p3);
        return;
    }

    public void closeOptionsMenu()
    {
        androidx.appcompat.app.ActionBar v0 = this.getSupportActionBar();
        if ((this.getWindow().hasFeature(0)) && ((v0 == null) || (!v0.closeOptionsMenu()))) {
            super.closeOptionsMenu();
        }
        return;
    }

    public boolean dispatchKeyEvent(android.view.KeyEvent p4)
    {
        int v2_0;
        int v1 = p4.getKeyCode();
        androidx.appcompat.app.ActionBar v0 = this.getSupportActionBar();
        if ((v1 != 82) || ((v0 == null) || (!v0.onMenuKeyEvent(p4)))) {
            v2_0 = super.dispatchKeyEvent(p4);
        } else {
            v2_0 = 1;
        }
        return v2_0;
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

    public androidx.appcompat.app.ActionBarDrawerToggle$Delegate getDrawerToggleDelegate()
    {
        return this.getDelegate().getDrawerToggleDelegate();
    }

    public android.view.MenuInflater getMenuInflater()
    {
        return this.getDelegate().getMenuInflater();
    }

    public android.content.res.Resources getResources()
    {
        if ((this.mResources == null) && (androidx.appcompat.widget.VectorEnabledTintResources.shouldBeUsed())) {
            this.mResources = new androidx.appcompat.widget.VectorEnabledTintResources(this, super.getResources());
        }
        android.content.res.Resources v0_2;
        if (this.mResources != null) {
            v0_2 = this.mResources;
        } else {
            v0_2 = super.getResources();
        }
        return v0_2;
    }

    public androidx.appcompat.app.ActionBar getSupportActionBar()
    {
        return this.getDelegate().getSupportActionBar();
    }

    public android.content.Intent getSupportParentActivityIntent()
    {
        return androidx.core.app.NavUtils.getParentActivityIntent(this);
    }

    public void invalidateOptionsMenu()
    {
        this.getDelegate().invalidateOptionsMenu();
        return;
    }

    public void onConfigurationChanged(android.content.res.Configuration p3)
    {
        super.onConfigurationChanged(p3);
        this.getDelegate().onConfigurationChanged(p3);
        if (this.mResources != null) {
            this.mResources.updateConfiguration(p3, super.getResources().getDisplayMetrics());
        }
        return;
    }

    public void onContentChanged()
    {
        this.onSupportContentChanged();
        return;
    }

    protected void onCreate(android.os.Bundle p5)
    {
        androidx.appcompat.app.AppCompatDelegate v0 = this.getDelegate();
        v0.installViewFactory();
        v0.onCreate(p5);
        if ((v0.applyDayNight()) && (this.mThemeId != 0)) {
            if (android.os.Build$VERSION.SDK_INT < 23) {
                this.setTheme(this.mThemeId);
            } else {
                this.onApplyThemeResource(this.getTheme(), this.mThemeId, 0);
            }
        }
        super.onCreate(p5);
        return;
    }

    public void onCreateSupportNavigateUpTaskStack(androidx.core.app.TaskStackBuilder p1)
    {
        p1.addParentStack(this);
        return;
    }

    protected void onDestroy()
    {
        super.onDestroy();
        this.getDelegate().onDestroy();
        return;
    }

    public boolean onKeyDown(int p2, android.view.KeyEvent p3)
    {
        boolean v0_1;
        if (!this.performMenuItemShortcut(p2, p3)) {
            v0_1 = super.onKeyDown(p2, p3);
        } else {
            v0_1 = 1;
        }
        return v0_1;
    }

    public final boolean onMenuItemSelected(int p4, android.view.MenuItem p5)
    {
        boolean v1_3;
        if (!super.onMenuItemSelected(p4, p5)) {
            androidx.appcompat.app.ActionBar v0 = this.getSupportActionBar();
            if ((p5.getItemId() != 16908332) || ((v0 == null) || ((v0.getDisplayOptions() & 4) == 0))) {
                v1_3 = 0;
            } else {
                v1_3 = this.onSupportNavigateUp();
            }
        } else {
            v1_3 = 1;
        }
        return v1_3;
    }

    public boolean onMenuOpened(int p2, android.view.Menu p3)
    {
        return super.onMenuOpened(p2, p3);
    }

    public void onPanelClosed(int p1, android.view.Menu p2)
    {
        super.onPanelClosed(p1, p2);
        return;
    }

    protected void onPostCreate(android.os.Bundle p2)
    {
        super.onPostCreate(p2);
        this.getDelegate().onPostCreate(p2);
        return;
    }

    protected void onPostResume()
    {
        super.onPostResume();
        this.getDelegate().onPostResume();
        return;
    }

    public void onPrepareSupportNavigateUpTaskStack(androidx.core.app.TaskStackBuilder p1)
    {
        return;
    }

    protected void onSaveInstanceState(android.os.Bundle p2)
    {
        super.onSaveInstanceState(p2);
        this.getDelegate().onSaveInstanceState(p2);
        return;
    }

    protected void onStart()
    {
        super.onStart();
        this.getDelegate().onStart();
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

    public void onSupportContentChanged()
    {
        return;
    }

    public boolean onSupportNavigateUp()
    {
        int v3_0;
        android.content.Intent v2 = this.getSupportParentActivityIntent();
        if (v2 == null) {
            v3_0 = 0;
        } else {
            if (!this.supportShouldUpRecreateTask(v2)) {
                this.supportNavigateUpTo(v2);
            } else {
                androidx.core.app.TaskStackBuilder v0 = androidx.core.app.TaskStackBuilder.create(this);
                this.onCreateSupportNavigateUpTaskStack(v0);
                this.onPrepareSupportNavigateUpTaskStack(v0);
                v0.startActivities();
                try {
                    androidx.core.app.ActivityCompat.finishAffinity(this);
                } catch (IllegalStateException v1) {
                    this.finish();
                }
            }
            v3_0 = 1;
        }
        return v3_0;
    }

    protected void onTitleChanged(CharSequence p2, int p3)
    {
        super.onTitleChanged(p2, p3);
        this.getDelegate().setTitle(p2);
        return;
    }

    public androidx.appcompat.view.ActionMode onWindowStartingSupportActionMode(androidx.appcompat.view.ActionMode$Callback p2)
    {
        return 0;
    }

    public void openOptionsMenu()
    {
        androidx.appcompat.app.ActionBar v0 = this.getSupportActionBar();
        if ((this.getWindow().hasFeature(0)) && ((v0 == null) || (!v0.openOptionsMenu()))) {
            super.openOptionsMenu();
        }
        return;
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

    public void setSupportActionBar(androidx.appcompat.widget.Toolbar p2)
    {
        this.getDelegate().setSupportActionBar(p2);
        return;
    }

    public void setSupportProgress(int p1)
    {
        return;
    }

    public void setSupportProgressBarIndeterminate(boolean p1)
    {
        return;
    }

    public void setSupportProgressBarIndeterminateVisibility(boolean p1)
    {
        return;
    }

    public void setSupportProgressBarVisibility(boolean p1)
    {
        return;
    }

    public void setTheme(int p1)
    {
        super.setTheme(p1);
        this.mThemeId = p1;
        return;
    }

    public androidx.appcompat.view.ActionMode startSupportActionMode(androidx.appcompat.view.ActionMode$Callback p2)
    {
        return this.getDelegate().startSupportActionMode(p2);
    }

    public void supportInvalidateOptionsMenu()
    {
        this.getDelegate().invalidateOptionsMenu();
        return;
    }

    public void supportNavigateUpTo(android.content.Intent p1)
    {
        androidx.core.app.NavUtils.navigateUpTo(this, p1);
        return;
    }

    public boolean supportRequestWindowFeature(int p2)
    {
        return this.getDelegate().requestWindowFeature(p2);
    }

    public boolean supportShouldUpRecreateTask(android.content.Intent p2)
    {
        return androidx.core.app.NavUtils.shouldUpRecreateTask(this, p2);
    }
}
