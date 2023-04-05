package androidx.appcompat.widget;
 class AppCompatPopupWindow extends android.widget.PopupWindow {
    private static final boolean COMPAT_OVERLAP_ANCHOR;
    private boolean mOverlapAnchor;

    static AppCompatPopupWindow()
    {
        int v0_1;
        if (android.os.Build$VERSION.SDK_INT >= 21) {
            v0_1 = 0;
        } else {
            v0_1 = 1;
        }
        androidx.appcompat.widget.AppCompatPopupWindow.COMPAT_OVERLAP_ANCHOR = v0_1;
        return;
    }

    public AppCompatPopupWindow(android.content.Context p2, android.util.AttributeSet p3, int p4)
    {
        super(p2, p3, p4);
        super.init(p2, p3, p4, 0);
        return;
    }

    public AppCompatPopupWindow(android.content.Context p1, android.util.AttributeSet p2, int p3, int p4)
    {
        super(p1, p2, p3, p4);
        super.init(p1, p2, p3, p4);
        return;
    }

    private void init(android.content.Context p4, android.util.AttributeSet p5, int p6, int p7)
    {
        androidx.appcompat.widget.TintTypedArray v0 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(p4, p5, androidx.appcompat.R$styleable.PopupWindow, p6, p7);
        if (v0.hasValue(androidx.appcompat.R$styleable.PopupWindow_overlapAnchor)) {
            this.setSupportOverlapAnchor(v0.getBoolean(androidx.appcompat.R$styleable.PopupWindow_overlapAnchor, 0));
        }
        this.setBackgroundDrawable(v0.getDrawable(androidx.appcompat.R$styleable.PopupWindow_android_popupBackground));
        v0.recycle();
        return;
    }

    private void setSupportOverlapAnchor(boolean p2)
    {
        if (!androidx.appcompat.widget.AppCompatPopupWindow.COMPAT_OVERLAP_ANCHOR) {
            androidx.core.widget.PopupWindowCompat.setOverlapAnchor(this, p2);
        } else {
            this.mOverlapAnchor = p2;
        }
        return;
    }

    public void showAsDropDown(android.view.View p2, int p3, int p4)
    {
        if ((androidx.appcompat.widget.AppCompatPopupWindow.COMPAT_OVERLAP_ANCHOR) && (this.mOverlapAnchor)) {
            p4 -= p2.getHeight();
        }
        super.showAsDropDown(p2, p3, p4);
        return;
    }

    public void showAsDropDown(android.view.View p2, int p3, int p4, int p5)
    {
        if ((androidx.appcompat.widget.AppCompatPopupWindow.COMPAT_OVERLAP_ANCHOR) && (this.mOverlapAnchor)) {
            p4 -= p2.getHeight();
        }
        super.showAsDropDown(p2, p3, p4, p5);
        return;
    }

    public void update(android.view.View p2, int p3, int p4, int p5, int p6)
    {
        if ((androidx.appcompat.widget.AppCompatPopupWindow.COMPAT_OVERLAP_ANCHOR) && (this.mOverlapAnchor)) {
            p4 -= p2.getHeight();
        }
        super.update(p2, p3, p4, p5, p6);
        return;
    }
}
