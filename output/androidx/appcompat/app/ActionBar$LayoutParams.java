package androidx.appcompat.app;
public class ActionBar$LayoutParams extends android.view.ViewGroup$MarginLayoutParams {
    public int gravity;

    public ActionBar$LayoutParams(int p3)
    {
        this(-2, -1, p3);
        return;
    }

    public ActionBar$LayoutParams(int p2, int p3)
    {
        super(p2, p3);
        super.gravity = 0;
        super.gravity = 8388627;
        return;
    }

    public ActionBar$LayoutParams(int p2, int p3, int p4)
    {
        super(p2, p3);
        super.gravity = 0;
        super.gravity = p4;
        return;
    }

    public ActionBar$LayoutParams(android.content.Context p4, android.util.AttributeSet p5)
    {
        super(p4, p5);
        super.gravity = 0;
        android.content.res.TypedArray v0 = p4.obtainStyledAttributes(p5, androidx.appcompat.R$styleable.ActionBarLayout);
        super.gravity = v0.getInt(androidx.appcompat.R$styleable.ActionBarLayout_android_layout_gravity, 0);
        v0.recycle();
        return;
    }

    public ActionBar$LayoutParams(android.view.ViewGroup$LayoutParams p2)
    {
        super(p2);
        super.gravity = 0;
        return;
    }

    public ActionBar$LayoutParams(androidx.appcompat.app.ActionBar$LayoutParams p2)
    {
        super(p2);
        super.gravity = 0;
        super.gravity = p2.gravity;
        return;
    }
}
