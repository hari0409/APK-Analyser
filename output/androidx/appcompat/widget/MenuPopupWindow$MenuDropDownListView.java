package androidx.appcompat.widget;
public class MenuPopupWindow$MenuDropDownListView extends androidx.appcompat.widget.DropDownListView {
    final int mAdvanceKey;
    private androidx.appcompat.widget.MenuItemHoverListener mHoverListener;
    private android.view.MenuItem mHoveredMenuItem;
    final int mRetreatKey;

    public MenuPopupWindow$MenuDropDownListView(android.content.Context p7, boolean p8)
    {
        super(p7, p8);
        android.content.res.Configuration v0 = p7.getResources().getConfiguration();
        if ((android.os.Build$VERSION.SDK_INT < 17) || (1 != v0.getLayoutDirection())) {
            super.mAdvanceKey = 22;
            super.mRetreatKey = 21;
        } else {
            super.mAdvanceKey = 21;
            super.mRetreatKey = 22;
        }
        return;
    }

    public void clearSelection()
    {
        this.setSelection(-1);
        return;
    }

    public bridge synthetic boolean hasFocus()
    {
        return super.hasFocus();
    }

    public bridge synthetic boolean hasWindowFocus()
    {
        return super.hasWindowFocus();
    }

    public bridge synthetic boolean isFocused()
    {
        return super.isFocused();
    }

    public bridge synthetic boolean isInTouchMode()
    {
        return super.isInTouchMode();
    }

    public bridge synthetic int lookForSelectablePosition(int p2, boolean p3)
    {
        return super.lookForSelectablePosition(p2, p3);
    }

    public bridge synthetic int measureHeightOfChildrenCompat(int p2, int p3, int p4, int p5, int p6)
    {
        return super.measureHeightOfChildrenCompat(p2, p3, p4, p5, p6);
    }

    public bridge synthetic boolean onForwardedEvent(android.view.MotionEvent p2, int p3)
    {
        return super.onForwardedEvent(p2, p3);
    }

    public boolean onHoverEvent(android.view.MotionEvent p12)
    {
        if (this.mHoverListener != null) {
            int v2;
            androidx.appcompat.view.menu.MenuAdapter v5_1;
            android.widget.ListAdapter v0 = this.getAdapter();
            if (!(v0 instanceof android.widget.HeaderViewListAdapter)) {
                v2 = 0;
                v5_1 = ((androidx.appcompat.view.menu.MenuAdapter) v0);
            } else {
                android.widget.HeaderViewListAdapter v1_0 = ((android.widget.HeaderViewListAdapter) v0);
                v2 = v1_0.getHeadersCount();
                v5_1 = ((androidx.appcompat.view.menu.MenuAdapter) v1_0.getWrappedAdapter());
            }
            androidx.appcompat.view.menu.MenuItemImpl v6 = 0;
            if (p12.getAction() != 10) {
                int v8 = this.pointToPosition(((int) p12.getX()), ((int) p12.getY()));
                if (v8 != -1) {
                    int v3 = (v8 - v2);
                    if ((v3 >= 0) && (v3 < v5_1.getCount())) {
                        v6 = v5_1.getItem(v3);
                    }
                }
            }
            android.view.MenuItem v7 = this.mHoveredMenuItem;
            if (v7 != v6) {
                androidx.appcompat.view.menu.MenuBuilder v4 = v5_1.getAdapterMenu();
                if (v7 != null) {
                    this.mHoverListener.onItemHoverExit(v4, v7);
                }
                this.mHoveredMenuItem = v6;
                if (v6 != null) {
                    this.mHoverListener.onItemHoverEnter(v4, v6);
                }
            }
        }
        return super.onHoverEvent(p12);
    }

    public boolean onKeyDown(int p7, android.view.KeyEvent p8)
    {
        int v1_0;
        androidx.appcompat.view.menu.ListMenuItemView v0_1 = ((androidx.appcompat.view.menu.ListMenuItemView) this.getSelectedView());
        if ((v0_1 == null) || (p7 != this.mAdvanceKey)) {
            if ((v0_1 == null) || (p7 != this.mRetreatKey)) {
                v1_0 = super.onKeyDown(p7, p8);
            } else {
                this.setSelection(-1);
                ((androidx.appcompat.view.menu.MenuAdapter) this.getAdapter()).getAdapterMenu().close(0);
                v1_0 = 1;
            }
        } else {
            if ((v0_1.isEnabled()) && (v0_1.getItemData().hasSubMenu())) {
                this.performItemClick(v0_1, this.getSelectedItemPosition(), this.getSelectedItemId());
            }
            v1_0 = 1;
        }
        return v1_0;
    }

    public bridge synthetic boolean onTouchEvent(android.view.MotionEvent p2)
    {
        return super.onTouchEvent(p2);
    }

    public void setHoverListener(androidx.appcompat.widget.MenuItemHoverListener p1)
    {
        this.mHoverListener = p1;
        return;
    }

    public bridge synthetic void setSelector(android.graphics.drawable.Drawable p1)
    {
        super.setSelector(p1);
        return;
    }
}
