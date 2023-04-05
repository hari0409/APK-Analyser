package androidx.appcompat.widget;
public class ActionMenuView$LayoutParams extends androidx.appcompat.widget.LinearLayoutCompat$LayoutParams {
    public int cellsUsed;
    public boolean expandable;
    boolean expanded;
    public int extraPixels;
    public boolean isOverflowButton;
    public boolean preventEdgeOffset;

    public ActionMenuView$LayoutParams(int p2, int p3)
    {
        super(p2, p3);
        super.isOverflowButton = 0;
        return;
    }

    ActionMenuView$LayoutParams(int p1, int p2, boolean p3)
    {
        super(p1, p2);
        super.isOverflowButton = p3;
        return;
    }

    public ActionMenuView$LayoutParams(android.content.Context p1, android.util.AttributeSet p2)
    {
        super(p1, p2);
        return;
    }

    public ActionMenuView$LayoutParams(android.view.ViewGroup$LayoutParams p1)
    {
        super(p1);
        return;
    }

    public ActionMenuView$LayoutParams(androidx.appcompat.widget.ActionMenuView$LayoutParams p2)
    {
        super(p2);
        super.isOverflowButton = p2.isOverflowButton;
        return;
    }
}
