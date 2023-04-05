package androidx.appcompat.widget;
public class FitWindowsFrameLayout extends android.widget.FrameLayout implements androidx.appcompat.widget.FitWindowsViewGroup {
    private androidx.appcompat.widget.FitWindowsViewGroup$OnFitSystemWindowsListener mListener;

    public FitWindowsFrameLayout(android.content.Context p1)
    {
        super(p1);
        return;
    }

    public FitWindowsFrameLayout(android.content.Context p1, android.util.AttributeSet p2)
    {
        super(p1, p2);
        return;
    }

    protected boolean fitSystemWindows(android.graphics.Rect p2)
    {
        if (this.mListener != null) {
            this.mListener.onFitSystemWindows(p2);
        }
        return super.fitSystemWindows(p2);
    }

    public void setOnFitSystemWindowsListener(androidx.appcompat.widget.FitWindowsViewGroup$OnFitSystemWindowsListener p1)
    {
        this.mListener = p1;
        return;
    }
}
