package androidx.appcompat.widget;
 class DropDownListView$GateKeeperDrawable extends androidx.appcompat.graphics.drawable.DrawableWrapper {
    private boolean mEnabled;

    DropDownListView$GateKeeperDrawable(android.graphics.drawable.Drawable p2)
    {
        super(p2);
        super.mEnabled = 1;
        return;
    }

    public void draw(android.graphics.Canvas p2)
    {
        if (this.mEnabled) {
            super.draw(p2);
        }
        return;
    }

    void setEnabled(boolean p1)
    {
        this.mEnabled = p1;
        return;
    }

    public void setHotspot(float p2, float p3)
    {
        if (this.mEnabled) {
            super.setHotspot(p2, p3);
        }
        return;
    }

    public void setHotspotBounds(int p2, int p3, int p4, int p5)
    {
        if (this.mEnabled) {
            super.setHotspotBounds(p2, p3, p4, p5);
        }
        return;
    }

    public boolean setState(int[] p2)
    {
        int v0_1;
        if (!this.mEnabled) {
            v0_1 = 0;
        } else {
            v0_1 = super.setState(p2);
        }
        return v0_1;
    }

    public boolean setVisible(boolean p2, boolean p3)
    {
        int v0_1;
        if (!this.mEnabled) {
            v0_1 = 0;
        } else {
            v0_1 = super.setVisible(p2, p3);
        }
        return v0_1;
    }
}
