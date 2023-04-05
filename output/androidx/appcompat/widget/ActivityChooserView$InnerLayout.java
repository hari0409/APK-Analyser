package androidx.appcompat.widget;
public class ActivityChooserView$InnerLayout extends android.widget.LinearLayout {
    private static final int[] TINT_ATTRS;

    static ActivityChooserView$InnerLayout()
    {
        int[] v0_1 = new int[1];
        v0_1[0] = 16842964;
        androidx.appcompat.widget.ActivityChooserView$InnerLayout.TINT_ATTRS = v0_1;
        return;
    }

    public ActivityChooserView$InnerLayout(android.content.Context p3, android.util.AttributeSet p4)
    {
        super(p3, p4);
        androidx.appcompat.widget.TintTypedArray v0 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(p3, p4, androidx.appcompat.widget.ActivityChooserView$InnerLayout.TINT_ATTRS);
        super.setBackgroundDrawable(v0.getDrawable(0));
        v0.recycle();
        return;
    }
}
