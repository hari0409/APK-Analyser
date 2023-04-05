package androidx.appcompat.widget;
 class ResourcesWrapper extends android.content.res.Resources {
    private final android.content.res.Resources mResources;

    public ResourcesWrapper(android.content.res.Resources p4)
    {
        super(p4.getAssets(), p4.getDisplayMetrics(), p4.getConfiguration());
        super.mResources = p4;
        return;
    }

    public android.content.res.XmlResourceParser getAnimation(int p2)
    {
        return this.mResources.getAnimation(p2);
    }

    public boolean getBoolean(int p2)
    {
        return this.mResources.getBoolean(p2);
    }

    public int getColor(int p2)
    {
        return this.mResources.getColor(p2);
    }

    public android.content.res.ColorStateList getColorStateList(int p2)
    {
        return this.mResources.getColorStateList(p2);
    }

    public android.content.res.Configuration getConfiguration()
    {
        return this.mResources.getConfiguration();
    }

    public float getDimension(int p2)
    {
        return this.mResources.getDimension(p2);
    }

    public int getDimensionPixelOffset(int p2)
    {
        return this.mResources.getDimensionPixelOffset(p2);
    }

    public int getDimensionPixelSize(int p2)
    {
        return this.mResources.getDimensionPixelSize(p2);
    }

    public android.util.DisplayMetrics getDisplayMetrics()
    {
        return this.mResources.getDisplayMetrics();
    }

    public android.graphics.drawable.Drawable getDrawable(int p2)
    {
        return this.mResources.getDrawable(p2);
    }

    public android.graphics.drawable.Drawable getDrawable(int p2, android.content.res.Resources$Theme p3)
    {
        return this.mResources.getDrawable(p2, p3);
    }

    public android.graphics.drawable.Drawable getDrawableForDensity(int p2, int p3)
    {
        return this.mResources.getDrawableForDensity(p2, p3);
    }

    public android.graphics.drawable.Drawable getDrawableForDensity(int p2, int p3, android.content.res.Resources$Theme p4)
    {
        return this.mResources.getDrawableForDensity(p2, p3, p4);
    }

    public float getFraction(int p2, int p3, int p4)
    {
        return this.mResources.getFraction(p2, p3, p4);
    }

    public int getIdentifier(String p2, String p3, String p4)
    {
        return this.mResources.getIdentifier(p2, p3, p4);
    }

    public int[] getIntArray(int p2)
    {
        return this.mResources.getIntArray(p2);
    }

    public int getInteger(int p2)
    {
        return this.mResources.getInteger(p2);
    }

    public android.content.res.XmlResourceParser getLayout(int p2)
    {
        return this.mResources.getLayout(p2);
    }

    public android.graphics.Movie getMovie(int p2)
    {
        return this.mResources.getMovie(p2);
    }

    public String getQuantityString(int p2, int p3)
    {
        return this.mResources.getQuantityString(p2, p3);
    }

    public varargs String getQuantityString(int p2, int p3, Object[] p4)
    {
        return this.mResources.getQuantityString(p2, p3, p4);
    }

    public CharSequence getQuantityText(int p2, int p3)
    {
        return this.mResources.getQuantityText(p2, p3);
    }

    public String getResourceEntryName(int p2)
    {
        return this.mResources.getResourceEntryName(p2);
    }

    public String getResourceName(int p2)
    {
        return this.mResources.getResourceName(p2);
    }

    public String getResourcePackageName(int p2)
    {
        return this.mResources.getResourcePackageName(p2);
    }

    public String getResourceTypeName(int p2)
    {
        return this.mResources.getResourceTypeName(p2);
    }

    public String getString(int p2)
    {
        return this.mResources.getString(p2);
    }

    public varargs String getString(int p2, Object[] p3)
    {
        return this.mResources.getString(p2, p3);
    }

    public String[] getStringArray(int p2)
    {
        return this.mResources.getStringArray(p2);
    }

    public CharSequence getText(int p2)
    {
        return this.mResources.getText(p2);
    }

    public CharSequence getText(int p2, CharSequence p3)
    {
        return this.mResources.getText(p2, p3);
    }

    public CharSequence[] getTextArray(int p2)
    {
        return this.mResources.getTextArray(p2);
    }

    public void getValue(int p2, android.util.TypedValue p3, boolean p4)
    {
        this.mResources.getValue(p2, p3, p4);
        return;
    }

    public void getValue(String p2, android.util.TypedValue p3, boolean p4)
    {
        this.mResources.getValue(p2, p3, p4);
        return;
    }

    public void getValueForDensity(int p2, int p3, android.util.TypedValue p4, boolean p5)
    {
        this.mResources.getValueForDensity(p2, p3, p4, p5);
        return;
    }

    public android.content.res.XmlResourceParser getXml(int p2)
    {
        return this.mResources.getXml(p2);
    }

    public android.content.res.TypedArray obtainAttributes(android.util.AttributeSet p2, int[] p3)
    {
        return this.mResources.obtainAttributes(p2, p3);
    }

    public android.content.res.TypedArray obtainTypedArray(int p2)
    {
        return this.mResources.obtainTypedArray(p2);
    }

    public java.io.InputStream openRawResource(int p2)
    {
        return this.mResources.openRawResource(p2);
    }

    public java.io.InputStream openRawResource(int p2, android.util.TypedValue p3)
    {
        return this.mResources.openRawResource(p2, p3);
    }

    public android.content.res.AssetFileDescriptor openRawResourceFd(int p2)
    {
        return this.mResources.openRawResourceFd(p2);
    }

    public void parseBundleExtra(String p2, android.util.AttributeSet p3, android.os.Bundle p4)
    {
        this.mResources.parseBundleExtra(p2, p3, p4);
        return;
    }

    public void parseBundleExtras(android.content.res.XmlResourceParser p2, android.os.Bundle p3)
    {
        this.mResources.parseBundleExtras(p2, p3);
        return;
    }

    public void updateConfiguration(android.content.res.Configuration p2, android.util.DisplayMetrics p3)
    {
        super.updateConfiguration(p2, p3);
        if (this.mResources != null) {
            this.mResources.updateConfiguration(p2, p3);
        }
        return;
    }
}
