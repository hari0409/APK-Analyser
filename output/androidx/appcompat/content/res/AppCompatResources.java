package androidx.appcompat.content.res;
public final class AppCompatResources {
    private static final String LOG_TAG = "AppCompatResources";
    private static final ThreadLocal TL_TYPED_VALUE;
    private static final Object sColorStateCacheLock;
    private static final java.util.WeakHashMap sColorStateCaches;

    static AppCompatResources()
    {
        androidx.appcompat.content.res.AppCompatResources.TL_TYPED_VALUE = new ThreadLocal();
        androidx.appcompat.content.res.AppCompatResources.sColorStateCaches = new java.util.WeakHashMap(0);
        androidx.appcompat.content.res.AppCompatResources.sColorStateCacheLock = new Object();
        return;
    }

    private AppCompatResources()
    {
        return;
    }

    private static void addColorStateListToCache(android.content.Context p4, int p5, android.content.res.ColorStateList p6)
    {
        try {
            android.util.SparseArray v0_1 = ((android.util.SparseArray) androidx.appcompat.content.res.AppCompatResources.sColorStateCaches.get(p4));
        } catch (androidx.appcompat.content.res.AppCompatResources$ColorStateListCacheEntry v1_3) {
            throw v1_3;
        }
        if (v0_1 == null) {
            v0_1 = new android.util.SparseArray();
            androidx.appcompat.content.res.AppCompatResources.sColorStateCaches.put(p4, v0_1);
        }
        v0_1.append(p5, new androidx.appcompat.content.res.AppCompatResources$ColorStateListCacheEntry(p6, p4.getResources().getConfiguration()));
        return;
    }

    private static android.content.res.ColorStateList getCachedColorStateList(android.content.Context p5, int p6)
    {
        try {
            android.content.res.ColorStateList v2_3;
            android.util.SparseArray v0_1 = ((android.util.SparseArray) androidx.appcompat.content.res.AppCompatResources.sColorStateCaches.get(p5));
        } catch (android.content.res.ColorStateList v2_4) {
            throw v2_4;
        }
        if ((v0_1 == null) || (v0_1.size() <= 0)) {
            v2_3 = 0;
        } else {
            androidx.appcompat.content.res.AppCompatResources$ColorStateListCacheEntry v1_1 = ((androidx.appcompat.content.res.AppCompatResources$ColorStateListCacheEntry) v0_1.get(p6));
            if (v1_1 == null) {
            } else {
                if (!v1_1.configuration.equals(p5.getResources().getConfiguration())) {
                    v0_1.remove(p6);
                } else {
                    v2_3 = v1_1.value;
                }
            }
        }
        return v2_3;
    }

    public static android.content.res.ColorStateList getColorStateList(android.content.Context p3, int p4)
    {
        android.content.res.ColorStateList v0;
        if (android.os.Build$VERSION.SDK_INT < 23) {
            v0 = androidx.appcompat.content.res.AppCompatResources.getCachedColorStateList(p3, p4);
            if (v0 == null) {
                v0 = androidx.appcompat.content.res.AppCompatResources.inflateColorStateList(p3, p4);
                if (v0 == null) {
                    v0 = androidx.core.content.ContextCompat.getColorStateList(p3, p4);
                } else {
                    androidx.appcompat.content.res.AppCompatResources.addColorStateListToCache(p3, p4, v0);
                }
            }
        } else {
            v0 = p3.getColorStateList(p4);
        }
        return v0;
    }

    public static android.graphics.drawable.Drawable getDrawable(android.content.Context p1, int p2)
    {
        return androidx.appcompat.widget.AppCompatDrawableManager.get().getDrawable(p1, p2);
    }

    private static android.util.TypedValue getTypedValue()
    {
        android.util.TypedValue v0_1 = ((android.util.TypedValue) androidx.appcompat.content.res.AppCompatResources.TL_TYPED_VALUE.get());
        if (v0_1 == null) {
            v0_1 = new android.util.TypedValue();
            androidx.appcompat.content.res.AppCompatResources.TL_TYPED_VALUE.set(v0_1);
        }
        return v0_1;
    }

    private static android.content.res.ColorStateList inflateColorStateList(android.content.Context p6, int p7)
    {
        android.content.res.ColorStateList v3 = 0;
        if (!androidx.appcompat.content.res.AppCompatResources.isColorInt(p6, p7)) {
            android.content.res.Resources v1 = p6.getResources();
            try {
                v3 = androidx.core.content.res.ColorStateListInflaterCompat.createFromXml(v1, v1.getXml(p7), p6.getTheme());
            } catch (Exception v0) {
                android.util.Log.e("AppCompatResources", "Failed to inflate ColorStateList, leaving it to the framework", v0);
            }
        }
        return v3;
    }

    private static boolean isColorInt(android.content.Context p5, int p6)
    {
        int v2 = 1;
        android.content.res.Resources v0 = p5.getResources();
        android.util.TypedValue v1 = androidx.appcompat.content.res.AppCompatResources.getTypedValue();
        v0.getValue(p6, v1, 1);
        if ((v1.type < 28) || (v1.type > 31)) {
            v2 = 0;
        }
        return v2;
    }
}
