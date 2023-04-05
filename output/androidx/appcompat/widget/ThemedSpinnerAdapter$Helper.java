package androidx.appcompat.widget;
public final class ThemedSpinnerAdapter$Helper {
    private final android.content.Context mContext;
    private android.view.LayoutInflater mDropDownInflater;
    private final android.view.LayoutInflater mInflater;

    public ThemedSpinnerAdapter$Helper(android.content.Context p2)
    {
        this.mContext = p2;
        this.mInflater = android.view.LayoutInflater.from(p2);
        return;
    }

    public android.view.LayoutInflater getDropDownViewInflater()
    {
        android.view.LayoutInflater v0_1;
        if (this.mDropDownInflater == null) {
            v0_1 = this.mInflater;
        } else {
            v0_1 = this.mDropDownInflater;
        }
        return v0_1;
    }

    public android.content.res.Resources$Theme getDropDownViewTheme()
    {
        android.content.res.Resources$Theme v0_3;
        if (this.mDropDownInflater != null) {
            v0_3 = this.mDropDownInflater.getContext().getTheme();
        } else {
            v0_3 = 0;
        }
        return v0_3;
    }

    public void setDropDownViewTheme(android.content.res.Resources$Theme p3)
    {
        if (p3 != null) {
            if (p3 != this.mContext.getTheme()) {
                this.mDropDownInflater = android.view.LayoutInflater.from(new androidx.appcompat.view.ContextThemeWrapper(this.mContext, p3));
            } else {
                this.mDropDownInflater = this.mInflater;
            }
        } else {
            this.mDropDownInflater = 0;
        }
        return;
    }
}
