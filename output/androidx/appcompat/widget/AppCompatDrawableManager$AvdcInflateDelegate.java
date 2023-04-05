package androidx.appcompat.widget;
 class AppCompatDrawableManager$AvdcInflateDelegate implements androidx.appcompat.widget.AppCompatDrawableManager$InflateDelegate {

    AppCompatDrawableManager$AvdcInflateDelegate()
    {
        return;
    }

    public android.graphics.drawable.Drawable createFromXmlInner(android.content.Context p4, org.xmlpull.v1.XmlPullParser p5, android.util.AttributeSet p6, android.content.res.Resources$Theme p7)
    {
        try {
            int v1_1 = androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat.createFromXmlInner(p4, p4.getResources(), p5, p6, p7);
        } catch (Exception v0) {
            android.util.Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", v0);
            v1_1 = 0;
        }
        return v1_1;
    }
}
