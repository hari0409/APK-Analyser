package androidx.appcompat.widget;
public class TintTypedArray {
    private final android.content.Context mContext;
    private android.util.TypedValue mTypedValue;
    private final android.content.res.TypedArray mWrapped;

    private TintTypedArray(android.content.Context p1, android.content.res.TypedArray p2)
    {
        this.mContext = p1;
        this.mWrapped = p2;
        return;
    }

    public static androidx.appcompat.widget.TintTypedArray obtainStyledAttributes(android.content.Context p2, int p3, int[] p4)
    {
        return new androidx.appcompat.widget.TintTypedArray(p2, p2.obtainStyledAttributes(p3, p4));
    }

    public static androidx.appcompat.widget.TintTypedArray obtainStyledAttributes(android.content.Context p2, android.util.AttributeSet p3, int[] p4)
    {
        return new androidx.appcompat.widget.TintTypedArray(p2, p2.obtainStyledAttributes(p3, p4));
    }

    public static androidx.appcompat.widget.TintTypedArray obtainStyledAttributes(android.content.Context p2, android.util.AttributeSet p3, int[] p4, int p5, int p6)
    {
        return new androidx.appcompat.widget.TintTypedArray(p2, p2.obtainStyledAttributes(p3, p4, p5, p6));
    }

    public boolean getBoolean(int p2, boolean p3)
    {
        return this.mWrapped.getBoolean(p2, p3);
    }

    public int getChangingConfigurations()
    {
        return this.mWrapped.getChangingConfigurations();
    }

    public int getColor(int p2, int p3)
    {
        return this.mWrapped.getColor(p2, p3);
    }

    public android.content.res.ColorStateList getColorStateList(int p5)
    {
        android.content.res.ColorStateList v1;
        if (!this.mWrapped.hasValue(p5)) {
            v1 = this.mWrapped.getColorStateList(p5);
        } else {
            int v0 = this.mWrapped.getResourceId(p5, 0);
            if (v0 == 0) {
            } else {
                v1 = androidx.appcompat.content.res.AppCompatResources.getColorStateList(this.mContext, v0);
                if (v1 == null) {
                }
            }
        }
        return v1;
    }

    public float getDimension(int p2, float p3)
    {
        return this.mWrapped.getDimension(p2, p3);
    }

    public int getDimensionPixelOffset(int p2, int p3)
    {
        return this.mWrapped.getDimensionPixelOffset(p2, p3);
    }

    public int getDimensionPixelSize(int p2, int p3)
    {
        return this.mWrapped.getDimensionPixelSize(p2, p3);
    }

    public android.graphics.drawable.Drawable getDrawable(int p4)
    {
        android.graphics.drawable.Drawable v1_1;
        if (!this.mWrapped.hasValue(p4)) {
            v1_1 = this.mWrapped.getDrawable(p4);
        } else {
            int v0 = this.mWrapped.getResourceId(p4, 0);
            if (v0 == 0) {
            } else {
                v1_1 = androidx.appcompat.content.res.AppCompatResources.getDrawable(this.mContext, v0);
            }
        }
        return v1_1;
    }

    public android.graphics.drawable.Drawable getDrawableIfKnown(int p5)
    {
        android.graphics.drawable.Drawable v1_2;
        if (!this.mWrapped.hasValue(p5)) {
            v1_2 = 0;
        } else {
            int v0 = this.mWrapped.getResourceId(p5, 0);
            if (v0 == 0) {
            } else {
                v1_2 = androidx.appcompat.widget.AppCompatDrawableManager.get().getDrawable(this.mContext, v0, 1);
            }
        }
        return v1_2;
    }

    public float getFloat(int p2, float p3)
    {
        return this.mWrapped.getFloat(p2, p3);
    }

    public android.graphics.Typeface getFont(int p4, int p5, androidx.core.content.res.ResourcesCompat$FontCallback p6)
    {
        android.graphics.Typeface v1_2;
        int v0 = this.mWrapped.getResourceId(p4, 0);
        if (v0 != 0) {
            if (this.mTypedValue == null) {
                this.mTypedValue = new android.util.TypedValue();
            }
            v1_2 = androidx.core.content.res.ResourcesCompat.getFont(this.mContext, v0, this.mTypedValue, p5, p6);
        } else {
            v1_2 = 0;
        }
        return v1_2;
    }

    public float getFraction(int p2, int p3, int p4, float p5)
    {
        return this.mWrapped.getFraction(p2, p3, p4, p5);
    }

    public int getIndex(int p2)
    {
        return this.mWrapped.getIndex(p2);
    }

    public int getIndexCount()
    {
        return this.mWrapped.getIndexCount();
    }

    public int getInt(int p2, int p3)
    {
        return this.mWrapped.getInt(p2, p3);
    }

    public int getInteger(int p2, int p3)
    {
        return this.mWrapped.getInteger(p2, p3);
    }

    public int getLayoutDimension(int p2, int p3)
    {
        return this.mWrapped.getLayoutDimension(p2, p3);
    }

    public int getLayoutDimension(int p2, String p3)
    {
        return this.mWrapped.getLayoutDimension(p2, p3);
    }

    public String getNonResourceString(int p2)
    {
        return this.mWrapped.getNonResourceString(p2);
    }

    public String getPositionDescription()
    {
        return this.mWrapped.getPositionDescription();
    }

    public int getResourceId(int p2, int p3)
    {
        return this.mWrapped.getResourceId(p2, p3);
    }

    public android.content.res.Resources getResources()
    {
        return this.mWrapped.getResources();
    }

    public String getString(int p2)
    {
        return this.mWrapped.getString(p2);
    }

    public CharSequence getText(int p2)
    {
        return this.mWrapped.getText(p2);
    }

    public CharSequence[] getTextArray(int p2)
    {
        return this.mWrapped.getTextArray(p2);
    }

    public int getType(int p3)
    {
        int v0_2;
        if (android.os.Build$VERSION.SDK_INT < 21) {
            if (this.mTypedValue == null) {
                this.mTypedValue = new android.util.TypedValue();
            }
            this.mWrapped.getValue(p3, this.mTypedValue);
            v0_2 = this.mTypedValue.type;
        } else {
            v0_2 = this.mWrapped.getType(p3);
        }
        return v0_2;
    }

    public boolean getValue(int p2, android.util.TypedValue p3)
    {
        return this.mWrapped.getValue(p2, p3);
    }

    public boolean hasValue(int p2)
    {
        return this.mWrapped.hasValue(p2);
    }

    public int length()
    {
        return this.mWrapped.length();
    }

    public android.util.TypedValue peekValue(int p2)
    {
        return this.mWrapped.peekValue(p2);
    }

    public void recycle()
    {
        this.mWrapped.recycle();
        return;
    }
}
