package androidx.appcompat.widget;
public class VectorEnabledTintResources extends android.content.res.Resources {
    public static final int MAX_SDK_WHERE_REQUIRED = 20;
    private static boolean sCompatVectorFromResourcesEnabled;
    private final ref.WeakReference mContextRef;

    static VectorEnabledTintResources()
    {
        androidx.appcompat.widget.VectorEnabledTintResources.sCompatVectorFromResourcesEnabled = 0;
        return;
    }

    public VectorEnabledTintResources(android.content.Context p4, android.content.res.Resources p5)
    {
        super(p5.getAssets(), p5.getDisplayMetrics(), p5.getConfiguration());
        super.mContextRef = new ref.WeakReference(p4);
        return;
    }

    public static boolean isCompatVectorFromResourcesEnabled()
    {
        return androidx.appcompat.widget.VectorEnabledTintResources.sCompatVectorFromResourcesEnabled;
    }

    public static void setCompatVectorFromResourcesEnabled(boolean p0)
    {
        androidx.appcompat.widget.VectorEnabledTintResources.sCompatVectorFromResourcesEnabled = p0;
        return;
    }

    public static boolean shouldBeUsed()
    {
        if ((!androidx.appcompat.widget.VectorEnabledTintResources.isCompatVectorFromResourcesEnabled()) || (android.os.Build$VERSION.SDK_INT > 20)) {
            int v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    public android.graphics.drawable.Drawable getDrawable(int p3)
    {
        android.graphics.drawable.Drawable v1_1;
        android.content.Context v0_1 = ((android.content.Context) this.mContextRef.get());
        if (v0_1 == null) {
            v1_1 = super.getDrawable(p3);
        } else {
            v1_1 = androidx.appcompat.widget.AppCompatDrawableManager.get().onDrawableLoadedFromResources(v0_1, this, p3);
        }
        return v1_1;
    }

    final android.graphics.drawable.Drawable superGetDrawable(int p2)
    {
        return super.getDrawable(p2);
    }
}
