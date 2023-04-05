package androidx.appcompat.text;
public class AllCapsTransformationMethod implements android.text.method.TransformationMethod {
    private java.util.Locale mLocale;

    public AllCapsTransformationMethod(android.content.Context p2)
    {
        this.mLocale = p2.getResources().getConfiguration().locale;
        return;
    }

    public CharSequence getTransformation(CharSequence p3, android.view.View p4)
    {
        int v0_0;
        if (p3 == null) {
            v0_0 = 0;
        } else {
            v0_0 = p3.toString().toUpperCase(this.mLocale);
        }
        return v0_0;
    }

    public void onFocusChanged(android.view.View p1, CharSequence p2, boolean p3, int p4, android.graphics.Rect p5)
    {
        return;
    }
}
