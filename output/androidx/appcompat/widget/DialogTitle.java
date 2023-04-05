package androidx.appcompat.widget;
public class DialogTitle extends android.widget.TextView {

    public DialogTitle(android.content.Context p1)
    {
        super(p1);
        return;
    }

    public DialogTitle(android.content.Context p1, android.util.AttributeSet p2)
    {
        super(p1, p2);
        return;
    }

    public DialogTitle(android.content.Context p1, android.util.AttributeSet p2, int p3)
    {
        super(p1, p2, p3);
        return;
    }

    protected void onMeasure(int p12, int p13)
    {
        super.onMeasure(p12, p13);
        android.text.Layout v2 = this.getLayout();
        if (v2 != null) {
            int v3 = v2.getLineCount();
            if ((v3 > 0) && (v2.getEllipsisCount((v3 - 1)) > 0)) {
                this.setSingleLine(0);
                this.setMaxLines(2);
                android.content.res.TypedArray v0 = this.getContext().obtainStyledAttributes(0, androidx.appcompat.R$styleable.TextAppearance, 16842817, 16973892);
                int v4 = v0.getDimensionPixelSize(androidx.appcompat.R$styleable.TextAppearance_android_textSize, 0);
                if (v4 != 0) {
                    this.setTextSize(0, ((float) v4));
                }
                v0.recycle();
                super.onMeasure(p12, p13);
            }
        }
        return;
    }

    public void setCustomSelectionActionModeCallback(android.view.ActionMode$Callback p2)
    {
        super.setCustomSelectionActionModeCallback(androidx.core.widget.TextViewCompat.wrapCustomSelectionActionModeCallback(this, p2));
        return;
    }
}
