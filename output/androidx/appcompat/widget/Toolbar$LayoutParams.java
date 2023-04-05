package androidx.appcompat.widget;
public class Toolbar$LayoutParams extends androidx.appcompat.app.ActionBar$LayoutParams {
    static final int CUSTOM = 0;
    static final int EXPANDED = 2;
    static final int SYSTEM = 1;
    int mViewType;

    public Toolbar$LayoutParams(int p3)
    {
        this(-2, -1, p3);
        return;
    }

    public Toolbar$LayoutParams(int p2, int p3)
    {
        super(p2, p3);
        super.mViewType = 0;
        super.gravity = 8388627;
        return;
    }

    public Toolbar$LayoutParams(int p2, int p3, int p4)
    {
        super(p2, p3);
        super.mViewType = 0;
        super.gravity = p4;
        return;
    }

    public Toolbar$LayoutParams(android.content.Context p2, android.util.AttributeSet p3)
    {
        super(p2, p3);
        super.mViewType = 0;
        return;
    }

    public Toolbar$LayoutParams(android.view.ViewGroup$LayoutParams p2)
    {
        super(p2);
        super.mViewType = 0;
        return;
    }

    public Toolbar$LayoutParams(android.view.ViewGroup$MarginLayoutParams p2)
    {
        super(p2);
        super.mViewType = 0;
        super.copyMarginsFromCompat(p2);
        return;
    }

    public Toolbar$LayoutParams(androidx.appcompat.app.ActionBar$LayoutParams p2)
    {
        super(p2);
        super.mViewType = 0;
        return;
    }

    public Toolbar$LayoutParams(androidx.appcompat.widget.Toolbar$LayoutParams p2)
    {
        super(p2);
        super.mViewType = 0;
        super.mViewType = p2.mViewType;
        return;
    }

    void copyMarginsFromCompat(android.view.ViewGroup$MarginLayoutParams p2)
    {
        this.leftMargin = p2.leftMargin;
        this.topMargin = p2.topMargin;
        this.rightMargin = p2.rightMargin;
        this.bottomMargin = p2.bottomMargin;
        return;
    }
}
