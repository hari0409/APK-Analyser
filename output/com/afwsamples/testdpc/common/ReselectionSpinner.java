package com.afwsamples.testdpc.common;
public class ReselectionSpinner extends android.widget.Spinner {

    public ReselectionSpinner(android.content.Context p1)
    {
        super(p1);
        return;
    }

    public ReselectionSpinner(android.content.Context p1, int p2)
    {
        super(p1, p2);
        return;
    }

    public ReselectionSpinner(android.content.Context p1, android.util.AttributeSet p2)
    {
        super(p1, p2);
        return;
    }

    public ReselectionSpinner(android.content.Context p1, android.util.AttributeSet p2, int p3)
    {
        super(p1, p2, p3);
        return;
    }

    public ReselectionSpinner(android.content.Context p1, android.util.AttributeSet p2, int p3, int p4)
    {
        super(p1, p2, p3, p4);
        return;
    }

    public ReselectionSpinner(android.content.Context p1, android.util.AttributeSet p2, int p3, int p4, int p5)
    {
        super(p1, p2, p3, p4, p5);
        return;
    }

    public void setSelection(int p8)
    {
        int v6 = this.getSelectedItemPosition();
        super.setSelection(p8);
        if (p8 == v6) {
            android.widget.AdapterView$OnItemSelectedListener v0 = this.getOnItemSelectedListener();
            if (v0 != null) {
                v0.onItemSelected(this, this.getSelectedView(), p8, this.getSelectedItemId());
            }
        }
        return;
    }
}
