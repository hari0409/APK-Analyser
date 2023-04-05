package androidx.appcompat.app;
 class ResourcesFlusher {
    private static final String TAG = "ResourcesFlusher";
    private static reflect.Field sDrawableCacheField;
    private static boolean sDrawableCacheFieldFetched;
    private static reflect.Field sResourcesImplField;
    private static boolean sResourcesImplFieldFetched;
    private static Class sThemedResourceCacheClazz;
    private static boolean sThemedResourceCacheClazzFetched;
    private static reflect.Field sThemedResourceCache_mUnthemedEntriesField;
    private static boolean sThemedResourceCache_mUnthemedEntriesFieldFetched;

    private ResourcesFlusher()
    {
        return;
    }

    static void flush(android.content.res.Resources p2)
    {
        if (android.os.Build$VERSION.SDK_INT < 28) {
            if (android.os.Build$VERSION.SDK_INT < 24) {
                if (android.os.Build$VERSION.SDK_INT < 23) {
                    if (android.os.Build$VERSION.SDK_INT >= 21) {
                        androidx.appcompat.app.ResourcesFlusher.flushLollipops(p2);
                    }
                } else {
                    androidx.appcompat.app.ResourcesFlusher.flushMarshmallows(p2);
                }
            } else {
                androidx.appcompat.app.ResourcesFlusher.flushNougats(p2);
            }
        }
        return;
    }

    private static void flushLollipops(android.content.res.Resources p6)
    {
        if (!androidx.appcompat.app.ResourcesFlusher.sDrawableCacheFieldFetched) {
            try {
                androidx.appcompat.app.ResourcesFlusher.sDrawableCacheField = android.content.res.Resources.getDeclaredField("mDrawableCache");
                androidx.appcompat.app.ResourcesFlusher.sDrawableCacheField.setAccessible(1);
            } catch (IllegalAccessException v2_0) {
                android.util.Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", v2_0);
            }
            androidx.appcompat.app.ResourcesFlusher.sDrawableCacheFieldFetched = 1;
        }
        if (androidx.appcompat.app.ResourcesFlusher.sDrawableCacheField != null) {
            try {
                java.util.Map v1 = ((java.util.Map) androidx.appcompat.app.ResourcesFlusher.sDrawableCacheField.get(p6));
            } catch (IllegalAccessException v2_1) {
                android.util.Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", v2_1);
            }
            if (v1 != null) {
                v1.clear();
            }
        }
        return;
    }

    private static void flushMarshmallows(android.content.res.Resources p5)
    {
        if (!androidx.appcompat.app.ResourcesFlusher.sDrawableCacheFieldFetched) {
            try {
                androidx.appcompat.app.ResourcesFlusher.sDrawableCacheField = android.content.res.Resources.getDeclaredField("mDrawableCache");
                androidx.appcompat.app.ResourcesFlusher.sDrawableCacheField.setAccessible(1);
            } catch (IllegalAccessException v1_0) {
                android.util.Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", v1_0);
            }
            androidx.appcompat.app.ResourcesFlusher.sDrawableCacheFieldFetched = 1;
        }
        Object v0 = 0;
        if (androidx.appcompat.app.ResourcesFlusher.sDrawableCacheField != null) {
            try {
                v0 = androidx.appcompat.app.ResourcesFlusher.sDrawableCacheField.get(p5);
            } catch (IllegalAccessException v1_1) {
                android.util.Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", v1_1);
            }
        }
        if (v0 != null) {
            androidx.appcompat.app.ResourcesFlusher.flushThemedResourcesCache(v0);
        }
        return;
    }

    private static void flushNougats(android.content.res.Resources p6)
    {
        if (!androidx.appcompat.app.ResourcesFlusher.sResourcesImplFieldFetched) {
            try {
                androidx.appcompat.app.ResourcesFlusher.sResourcesImplField = android.content.res.Resources.getDeclaredField("mResourcesImpl");
                androidx.appcompat.app.ResourcesFlusher.sResourcesImplField.setAccessible(1);
            } catch (IllegalAccessException v1_0) {
                android.util.Log.e("ResourcesFlusher", "Could not retrieve Resources#mResourcesImpl field", v1_0);
            }
            androidx.appcompat.app.ResourcesFlusher.sResourcesImplFieldFetched = 1;
        }
        if (androidx.appcompat.app.ResourcesFlusher.sResourcesImplField != null) {
            try {
                Object v2 = androidx.appcompat.app.ResourcesFlusher.sResourcesImplField.get(p6);
            } catch (IllegalAccessException v1_1) {
                android.util.Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mResourcesImpl", v1_1);
            }
            if (v2 != null) {
                if (!androidx.appcompat.app.ResourcesFlusher.sDrawableCacheFieldFetched) {
                    try {
                        androidx.appcompat.app.ResourcesFlusher.sDrawableCacheField = v2.getClass().getDeclaredField("mDrawableCache");
                        androidx.appcompat.app.ResourcesFlusher.sDrawableCacheField.setAccessible(1);
                    } catch (IllegalAccessException v1_2) {
                        android.util.Log.e("ResourcesFlusher", "Could not retrieve ResourcesImpl#mDrawableCache field", v1_2);
                    }
                    androidx.appcompat.app.ResourcesFlusher.sDrawableCacheFieldFetched = 1;
                }
                Object v0 = 0;
                if (androidx.appcompat.app.ResourcesFlusher.sDrawableCacheField != null) {
                    try {
                        v0 = androidx.appcompat.app.ResourcesFlusher.sDrawableCacheField.get(v2);
                    } catch (IllegalAccessException v1_3) {
                        android.util.Log.e("ResourcesFlusher", "Could not retrieve value from ResourcesImpl#mDrawableCache", v1_3);
                    }
                }
                if (v0 != null) {
                    androidx.appcompat.app.ResourcesFlusher.flushThemedResourcesCache(v0);
                }
            }
        }
        return;
    }

    private static void flushThemedResourcesCache(Object p7)
    {
        if (!androidx.appcompat.app.ResourcesFlusher.sThemedResourceCacheClazzFetched) {
            try {
                androidx.appcompat.app.ResourcesFlusher.sThemedResourceCacheClazz = Class.forName("android.content.res.ThemedResourceCache");
            } catch (IllegalAccessException v1_1) {
                android.util.Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", v1_1);
            }
            androidx.appcompat.app.ResourcesFlusher.sThemedResourceCacheClazzFetched = 1;
        }
        if (androidx.appcompat.app.ResourcesFlusher.sThemedResourceCacheClazz != null) {
            if (!androidx.appcompat.app.ResourcesFlusher.sThemedResourceCache_mUnthemedEntriesFieldFetched) {
                try {
                    androidx.appcompat.app.ResourcesFlusher.sThemedResourceCache_mUnthemedEntriesField = androidx.appcompat.app.ResourcesFlusher.sThemedResourceCacheClazz.getDeclaredField("mUnthemedEntries");
                    androidx.appcompat.app.ResourcesFlusher.sThemedResourceCache_mUnthemedEntriesField.setAccessible(1);
                } catch (NoSuchFieldException v2) {
                    android.util.Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", v2);
                }
                androidx.appcompat.app.ResourcesFlusher.sThemedResourceCache_mUnthemedEntriesFieldFetched = 1;
            }
            if (androidx.appcompat.app.ResourcesFlusher.sThemedResourceCache_mUnthemedEntriesField != null) {
                try {
                    android.util.LongSparseArray v3 = ((android.util.LongSparseArray) androidx.appcompat.app.ResourcesFlusher.sThemedResourceCache_mUnthemedEntriesField.get(p7));
                } catch (IllegalAccessException v1_0) {
                    android.util.Log.e("ResourcesFlusher", "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", v1_0);
                }
                if (v3 != null) {
                    v3.clear();
                }
            }
        }
        return;
    }
}
