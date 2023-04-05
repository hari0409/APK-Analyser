package androidx.appcompat.widget;
 class AppCompatDrawableManager$ColorFilterLruCache extends androidx.collection.LruCache {

    public AppCompatDrawableManager$ColorFilterLruCache(int p1)
    {
        super(p1);
        return;
    }

    private static int generateCacheKey(int p3, android.graphics.PorterDuff$Mode p4)
    {
        return (((p3 + 31) * 31) + p4.hashCode());
    }

    android.graphics.PorterDuffColorFilter get(int p2, android.graphics.PorterDuff$Mode p3)
    {
        return ((android.graphics.PorterDuffColorFilter) this.get(Integer.valueOf(androidx.appcompat.widget.AppCompatDrawableManager$ColorFilterLruCache.generateCacheKey(p2, p3))));
    }

    android.graphics.PorterDuffColorFilter put(int p2, android.graphics.PorterDuff$Mode p3, android.graphics.PorterDuffColorFilter p4)
    {
        return ((android.graphics.PorterDuffColorFilter) this.put(Integer.valueOf(androidx.appcompat.widget.AppCompatDrawableManager$ColorFilterLruCache.generateCacheKey(p2, p3)), p4));
    }
}
