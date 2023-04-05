package androidx.appcompat.widget;
public class TintContextWrapper extends android.content.ContextWrapper {
    private static final Object CACHE_LOCK;
    private static java.util.ArrayList sCache;
    private final android.content.res.Resources mResources;
    private final android.content.res.Resources$Theme mTheme;

    static TintContextWrapper()
    {
        androidx.appcompat.widget.TintContextWrapper.CACHE_LOCK = new Object();
        return;
    }

    private TintContextWrapper(android.content.Context p3)
    {
        super(p3);
        if (!androidx.appcompat.widget.VectorEnabledTintResources.shouldBeUsed()) {
            super.mResources = new androidx.appcompat.widget.TintResources(super, p3.getResources());
            super.mTheme = 0;
        } else {
            super.mResources = new androidx.appcompat.widget.VectorEnabledTintResources(super, p3.getResources());
            super.mTheme = super.mResources.newTheme();
            super.mTheme.setTo(p3.getTheme());
        }
        return;
    }

    private static boolean shouldWrap(android.content.Context p3)
    {
        int v0 = 0;
        if ((!(p3 instanceof androidx.appcompat.widget.TintContextWrapper)) && ((!(p3.getResources() instanceof androidx.appcompat.widget.TintResources)) && ((!(p3.getResources() instanceof androidx.appcompat.widget.VectorEnabledTintResources)) && ((android.os.Build$VERSION.SDK_INT < 21) || (androidx.appcompat.widget.VectorEnabledTintResources.shouldBeUsed()))))) {
            v0 = 1;
        }
        return v0;
    }

    public static android.content.Context wrap(android.content.Context p6)
    {
        try {
            int v2_0;
            if (!androidx.appcompat.widget.TintContextWrapper.shouldWrap(p6)) {
                v2_0 = p6;
            } else {
                if (androidx.appcompat.widget.TintContextWrapper.sCache != null) {
                    int v0_0 = (androidx.appcompat.widget.TintContextWrapper.sCache.size() - 1);
                    while (v0_0 >= 0) {
                        ref.WeakReference v1_3 = ((ref.WeakReference) androidx.appcompat.widget.TintContextWrapper.sCache.get(v0_0));
                        if ((v1_3 == null) || (v1_3.get() == null)) {
                            androidx.appcompat.widget.TintContextWrapper.sCache.remove(v0_0);
                        }
                        v0_0--;
                    }
                    int v0_1 = (androidx.appcompat.widget.TintContextWrapper.sCache.size() - 1);
                    while (v0_1 >= 0) {
                        ref.WeakReference v1_1 = ((ref.WeakReference) androidx.appcompat.widget.TintContextWrapper.sCache.get(v0_1));
                        if (v1_1 == null) {
                            v2_0 = 0;
                        } else {
                            v2_0 = ((androidx.appcompat.widget.TintContextWrapper) v1_1.get());
                        }
                        if ((v2_0 == 0) || (v2_0.getBaseContext() != p6)) {
                            v0_1--;
                        } else {
                        }
                    }
                } else {
                    androidx.appcompat.widget.TintContextWrapper.sCache = new java.util.ArrayList();
                }
                v2_0 = new androidx.appcompat.widget.TintContextWrapper(p6);
                androidx.appcompat.widget.TintContextWrapper.sCache.add(new ref.WeakReference(v2_0));
            }
        } catch (android.content.Context v3_14) {
            throw v3_14;
        }
        return v2_0;
    }

    public android.content.res.AssetManager getAssets()
    {
        return this.mResources.getAssets();
    }

    public android.content.res.Resources getResources()
    {
        return this.mResources;
    }

    public android.content.res.Resources$Theme getTheme()
    {
        android.content.res.Resources$Theme v0_1;
        if (this.mTheme != null) {
            v0_1 = this.mTheme;
        } else {
            v0_1 = super.getTheme();
        }
        return v0_1;
    }

    public void setTheme(int p3)
    {
        if (this.mTheme != null) {
            this.mTheme.applyStyle(p3, 1);
        } else {
            super.setTheme(p3);
        }
        return;
    }
}
