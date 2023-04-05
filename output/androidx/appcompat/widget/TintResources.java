package androidx.appcompat.widget;
 class TintResources extends androidx.appcompat.widget.ResourcesWrapper {
    private final ref.WeakReference mContextRef;

    public TintResources(android.content.Context p2, android.content.res.Resources p3)
    {
        super(p3);
        super.mContextRef = new ref.WeakReference(p2);
        return;
    }

    public android.graphics.drawable.Drawable getDrawable(int p4)
    {
        android.graphics.drawable.Drawable v1 = super.getDrawable(p4);
        android.content.Context v0_1 = ((android.content.Context) this.mContextRef.get());
        if ((v1 != null) && (v0_1 != null)) {
            androidx.appcompat.widget.AppCompatDrawableManager.get();
            androidx.appcompat.widget.AppCompatDrawableManager.tintDrawableUsingColorFilter(v0_1, p4, v1);
        }
        return v1;
    }
}
