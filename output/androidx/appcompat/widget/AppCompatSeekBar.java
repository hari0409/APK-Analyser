package androidx.appcompat.widget;
public class AppCompatSeekBar extends android.widget.SeekBar {
    private final androidx.appcompat.widget.AppCompatSeekBarHelper mAppCompatSeekBarHelper;

    public AppCompatSeekBar(android.content.Context p2)
    {
        this(p2, 0);
        return;
    }

    public AppCompatSeekBar(android.content.Context p2, android.util.AttributeSet p3)
    {
        this(p2, p3, androidx.appcompat.R$attr.seekBarStyle);
        return;
    }

    public AppCompatSeekBar(android.content.Context p2, android.util.AttributeSet p3, int p4)
    {
        super(p2, p3, p4);
        super.mAppCompatSeekBarHelper = new androidx.appcompat.widget.AppCompatSeekBarHelper(super);
        super.mAppCompatSeekBarHelper.loadFromAttributes(p3, p4);
        return;
    }

    protected void drawableStateChanged()
    {
        super.drawableStateChanged();
        this.mAppCompatSeekBarHelper.drawableStateChanged();
        return;
    }

    public void jumpDrawablesToCurrentState()
    {
        super.jumpDrawablesToCurrentState();
        this.mAppCompatSeekBarHelper.jumpDrawablesToCurrentState();
        return;
    }

    protected declared_synchronized void onDraw(android.graphics.Canvas p2)
    {
        try {
            super.onDraw(p2);
            this.mAppCompatSeekBarHelper.drawTickMarks(p2);
            return;
        } catch (Throwable v0_1) {
            throw v0_1;
        }
    }
}
