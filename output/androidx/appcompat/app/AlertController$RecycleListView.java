package androidx.appcompat.app;
public class AlertController$RecycleListView extends android.widget.ListView {
    private final int mPaddingBottomNoButtons;
    private final int mPaddingTopNoTitle;

    public AlertController$RecycleListView(android.content.Context p2)
    {
        this(p2, 0);
        return;
    }

    public AlertController$RecycleListView(android.content.Context p4, android.util.AttributeSet p5)
    {
        super(p4, p5);
        android.content.res.TypedArray v0 = p4.obtainStyledAttributes(p5, androidx.appcompat.R$styleable.RecycleListView);
        super.mPaddingBottomNoButtons = v0.getDimensionPixelOffset(androidx.appcompat.R$styleable.RecycleListView_paddingBottomNoButtons, -1);
        super.mPaddingTopNoTitle = v0.getDimensionPixelOffset(androidx.appcompat.R$styleable.RecycleListView_paddingTopNoTitle, -1);
        return;
    }

    public void setHasDecor(boolean p5, boolean p6)
    {
        if ((!p6) || (!p5)) {
            int v3;
            int v1 = this.getPaddingLeft();
            if (!p5) {
                v3 = this.mPaddingTopNoTitle;
            } else {
                v3 = this.getPaddingTop();
            }
            int v0;
            int v2 = this.getPaddingRight();
            if (!p6) {
                v0 = this.mPaddingBottomNoButtons;
            } else {
                v0 = this.getPaddingBottom();
            }
            this.setPadding(v1, v3, v2, v0);
        }
        return;
    }
}
