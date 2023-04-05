package androidx.appcompat.view;
public class ContextThemeWrapper extends android.content.ContextWrapper {
    private android.view.LayoutInflater mInflater;
    private android.content.res.Configuration mOverrideConfiguration;
    private android.content.res.Resources mResources;
    private android.content.res.Resources$Theme mTheme;
    private int mThemeResource;

    public ContextThemeWrapper()
    {
        super(0);
        return;
    }

    public ContextThemeWrapper(android.content.Context p1, int p2)
    {
        super(p1);
        super.mThemeResource = p2;
        return;
    }

    public ContextThemeWrapper(android.content.Context p1, android.content.res.Resources$Theme p2)
    {
        super(p1);
        super.mTheme = p2;
        return;
    }

    private android.content.res.Resources getResourcesInternal()
    {
        if (this.mResources == null) {
            if (this.mOverrideConfiguration != null) {
                if (android.os.Build$VERSION.SDK_INT >= 17) {
                    this.mResources = this.createConfigurationContext(this.mOverrideConfiguration).getResources();
                }
            } else {
                this.mResources = super.getResources();
            }
        }
        return this.mResources;
    }

    private void initializeTheme()
    {
        int v0;
        if (this.mTheme != null) {
            v0 = 0;
        } else {
            v0 = 1;
        }
        if (v0 != 0) {
            this.mTheme = this.getResources().newTheme();
            android.content.res.Resources$Theme v1 = this.getBaseContext().getTheme();
            if (v1 != null) {
                this.mTheme.setTo(v1);
            }
        }
        this.onApplyThemeResource(this.mTheme, this.mThemeResource, v0);
        return;
    }

    public void applyOverrideConfiguration(android.content.res.Configuration p3)
    {
        if (this.mResources == null) {
            if (this.mOverrideConfiguration == null) {
                this.mOverrideConfiguration = new android.content.res.Configuration(p3);
                return;
            } else {
                throw new IllegalStateException("Override configuration has already been set");
            }
        } else {
            throw new IllegalStateException("getResources() or getAssets() has already been called");
        }
    }

    protected void attachBaseContext(android.content.Context p1)
    {
        super.attachBaseContext(p1);
        return;
    }

    public android.content.res.AssetManager getAssets()
    {
        return this.getResources().getAssets();
    }

    public android.content.res.Resources getResources()
    {
        return this.getResourcesInternal();
    }

    public Object getSystemService(String p2)
    {
        android.view.LayoutInflater v0_4;
        if (!"layout_inflater".equals(p2)) {
            v0_4 = this.getBaseContext().getSystemService(p2);
        } else {
            if (this.mInflater == null) {
                this.mInflater = android.view.LayoutInflater.from(this.getBaseContext()).cloneInContext(this);
            }
            v0_4 = this.mInflater;
        }
        return v0_4;
    }

    public android.content.res.Resources$Theme getTheme()
    {
        android.content.res.Resources$Theme v0_3;
        if (this.mTheme == null) {
            if (this.mThemeResource == 0) {
                this.mThemeResource = androidx.appcompat.R$style.Theme_AppCompat_Light;
            }
            this.initializeTheme();
            v0_3 = this.mTheme;
        } else {
            v0_3 = this.mTheme;
        }
        return v0_3;
    }

    public int getThemeResId()
    {
        return this.mThemeResource;
    }

    protected void onApplyThemeResource(android.content.res.Resources$Theme p2, int p3, boolean p4)
    {
        p2.applyStyle(p3, 1);
        return;
    }

    public void setTheme(int p2)
    {
        if (this.mThemeResource != p2) {
            this.mThemeResource = p2;
            this.initializeTheme();
        }
        return;
    }
}
