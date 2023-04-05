package androidx.appcompat.widget;
public class LinearLayoutCompat$LayoutParams extends android.view.ViewGroup$MarginLayoutParams {
    public int gravity;
    public float weight;

    public LinearLayoutCompat$LayoutParams(int p2, int p3)
    {
        super(p2, p3);
        super.gravity = -1;
        super.weight = 0;
        return;
    }

    public LinearLayoutCompat$LayoutParams(int p2, int p3, float p4)
    {
        super(p2, p3);
        super.gravity = -1;
        super.weight = p4;
        return;
    }

    public LinearLayoutCompat$LayoutParams(android.content.Context p5, android.util.AttributeSet p6)
    {
        super(p5, p6);
        super.gravity = -1;
        android.content.res.TypedArray v0 = p5.obtainStyledAttributes(p6, androidx.appcompat.R$styleable.LinearLayoutCompat_Layout);
        super.weight = v0.getFloat(androidx.appcompat.R$styleable.LinearLayoutCompat_Layout_android_layout_weight, 0);
        super.gravity = v0.getInt(androidx.appcompat.R$styleable.LinearLayoutCompat_Layout_android_layout_gravity, -1);
        v0.recycle();
        return;
    }

    public LinearLayoutCompat$LayoutParams(android.view.ViewGroup$LayoutParams p2)
    {
        super(p2);
        super.gravity = -1;
        return;
    }

    public LinearLayoutCompat$LayoutParams(android.view.ViewGroup$MarginLayoutParams p2)
    {
        super(p2);
        super.gravity = -1;
        return;
    }

    public LinearLayoutCompat$LayoutParams(androidx.appcompat.widget.LinearLayoutCompat$LayoutParams p2)
    {
        super(p2);
        super.gravity = -1;
        super.weight = p2.weight;
        super.gravity = p2.gravity;
        return;
    }
}
