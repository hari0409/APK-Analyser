package androidx.appcompat.widget;
 class TintInfo {
    public boolean mHasTintList;
    public boolean mHasTintMode;
    public android.content.res.ColorStateList mTintList;
    public android.graphics.PorterDuff$Mode mTintMode;

    TintInfo()
    {
        return;
    }

    void clear()
    {
        this.mTintList = 0;
        this.mHasTintList = 0;
        this.mTintMode = 0;
        this.mHasTintMode = 0;
        return;
    }
}
