package androidx.appcompat.widget;
public class AppCompatRatingBar extends android.widget.RatingBar {
    private final androidx.appcompat.widget.AppCompatProgressBarHelper mAppCompatProgressBarHelper;

    public AppCompatRatingBar(android.content.Context p2)
    {
        this(p2, 0);
        return;
    }

    public AppCompatRatingBar(android.content.Context p2, android.util.AttributeSet p3)
    {
        this(p2, p3, androidx.appcompat.R$attr.ratingBarStyle);
        return;
    }

    public AppCompatRatingBar(android.content.Context p2, android.util.AttributeSet p3, int p4)
    {
        super(p2, p3, p4);
        super.mAppCompatProgressBarHelper = new androidx.appcompat.widget.AppCompatProgressBarHelper(super);
        super.mAppCompatProgressBarHelper.loadFromAttributes(p3, p4);
        return;
    }

    protected declared_synchronized void onMeasure(int p5, int p6)
    {
        try {
            super.onMeasure(p5, p6);
            android.graphics.Bitmap v0 = this.mAppCompatProgressBarHelper.getSampleTime();
        } catch (int v2_3) {
            throw v2_3;
        }
        if (v0 != null) {
            this.setMeasuredDimension(android.view.View.resolveSizeAndState((v0.getWidth() * this.getNumStars()), p5, 0), this.getMeasuredHeight());
        }
        return;
    }
}
