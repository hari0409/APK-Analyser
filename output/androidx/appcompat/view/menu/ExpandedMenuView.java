package androidx.appcompat.view.menu;
public final class ExpandedMenuView extends android.widget.ListView implements androidx.appcompat.view.menu.MenuBuilder$ItemInvoker, androidx.appcompat.view.menu.MenuView, android.widget.AdapterView$OnItemClickListener {
    private static final int[] TINT_ATTRS;
    private int mAnimations;
    private androidx.appcompat.view.menu.MenuBuilder mMenu;

    static ExpandedMenuView()
    {
        int[] v0_1 = new int[2];
        v0_1 = {16842964, 16843049};
        androidx.appcompat.view.menu.ExpandedMenuView.TINT_ATTRS = v0_1;
        return;
    }

    public ExpandedMenuView(android.content.Context p2, android.util.AttributeSet p3)
    {
        this(p2, p3, 16842868);
        return;
    }

    public ExpandedMenuView(android.content.Context p5, android.util.AttributeSet p6, int p7)
    {
        super(p5, p6);
        super.setOnItemClickListener(super);
        androidx.appcompat.widget.TintTypedArray v0 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(p5, p6, androidx.appcompat.view.menu.ExpandedMenuView.TINT_ATTRS, p7, 0);
        if (v0.hasValue(0)) {
            super.setBackgroundDrawable(v0.getDrawable(0));
        }
        if (v0.hasValue(1)) {
            super.setDivider(v0.getDrawable(1));
        }
        v0.recycle();
        return;
    }

    public int getWindowAnimations()
    {
        return this.mAnimations;
    }

    public void initialize(androidx.appcompat.view.menu.MenuBuilder p1)
    {
        this.mMenu = p1;
        return;
    }

    public boolean invokeItem(androidx.appcompat.view.menu.MenuItemImpl p3)
    {
        return this.mMenu.performItemAction(p3, 0);
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        this.setChildrenDrawingCacheEnabled(0);
        return;
    }

    public void onItemClick(android.widget.AdapterView p2, android.view.View p3, int p4, long p5)
    {
        this.invokeItem(((androidx.appcompat.view.menu.MenuItemImpl) this.getAdapter().getItem(p4)));
        return;
    }
}
