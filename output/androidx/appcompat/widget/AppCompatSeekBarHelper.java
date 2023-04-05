package androidx.appcompat.widget;
 class AppCompatSeekBarHelper extends androidx.appcompat.widget.AppCompatProgressBarHelper {
    private boolean mHasTickMarkTint;
    private boolean mHasTickMarkTintMode;
    private android.graphics.drawable.Drawable mTickMark;
    private android.content.res.ColorStateList mTickMarkTintList;
    private android.graphics.PorterDuff$Mode mTickMarkTintMode;
    private final android.widget.SeekBar mView;

    AppCompatSeekBarHelper(android.widget.SeekBar p3)
    {
        super(p3);
        super.mTickMarkTintList = 0;
        super.mTickMarkTintMode = 0;
        super.mHasTickMarkTint = 0;
        super.mHasTickMarkTintMode = 0;
        super.mView = p3;
        return;
    }

    private void applyTickMarkTint()
    {
        if ((this.mTickMark != null) && ((this.mHasTickMarkTint) || (this.mHasTickMarkTintMode))) {
            this.mTickMark = androidx.core.graphics.drawable.DrawableCompat.wrap(this.mTickMark.mutate());
            if (this.mHasTickMarkTint) {
                androidx.core.graphics.drawable.DrawableCompat.setTintList(this.mTickMark, this.mTickMarkTintList);
            }
            if (this.mHasTickMarkTintMode) {
                androidx.core.graphics.drawable.DrawableCompat.setTintMode(this.mTickMark, this.mTickMarkTintMode);
            }
            if (this.mTickMark.isStateful()) {
                this.mTickMark.setState(this.mView.getDrawableState());
            }
        }
        return;
    }

    void drawTickMarks(android.graphics.Canvas p12)
    {
        int v2 = 1;
        if (this.mTickMark != null) {
            int v0 = this.mView.getMax();
            if (v0 > 1) {
                int v3;
                int v7 = this.mTickMark.getIntrinsicWidth();
                int v1 = this.mTickMark.getIntrinsicHeight();
                if (v7 < 0) {
                    v3 = 1;
                } else {
                    v3 = (v7 / 2);
                }
                if (v1 >= 0) {
                    v2 = (v1 / 2);
                }
                this.mTickMark.setBounds((- v3), (- v2), v3, v2);
                float v6 = (((float) ((this.mView.getWidth() - this.mView.getPaddingLeft()) - this.mView.getPaddingRight())) / ((float) v0));
                int v5 = p12.save();
                p12.translate(((float) this.mView.getPaddingLeft()), ((float) (this.mView.getHeight() / 2)));
                int v4 = 0;
                while (v4 <= v0) {
                    this.mTickMark.draw(p12);
                    p12.translate(v6, 0);
                    v4++;
                }
                p12.restoreToCount(v5);
            }
        }
        return;
    }

    void drawableStateChanged()
    {
        android.graphics.drawable.Drawable v0 = this.mTickMark;
        if ((v0 != null) && ((v0.isStateful()) && (v0.setState(this.mView.getDrawableState())))) {
            this.mView.invalidateDrawable(v0);
        }
        return;
    }

    android.graphics.drawable.Drawable getTickMark()
    {
        return this.mTickMark;
    }

    android.content.res.ColorStateList getTickMarkTintList()
    {
        return this.mTickMarkTintList;
    }

    android.graphics.PorterDuff$Mode getTickMarkTintMode()
    {
        return this.mTickMarkTintMode;
    }

    void jumpDrawablesToCurrentState()
    {
        if (this.mTickMark != null) {
            this.mTickMark.jumpToCurrentState();
        }
        return;
    }

    void loadFromAttributes(android.util.AttributeSet p8, int p9)
    {
        super.loadFromAttributes(p8, p9);
        androidx.appcompat.widget.TintTypedArray v0 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(this.mView.getContext(), p8, androidx.appcompat.R$styleable.AppCompatSeekBar, p9, 0);
        android.graphics.drawable.Drawable v1 = v0.getDrawableIfKnown(androidx.appcompat.R$styleable.AppCompatSeekBar_android_thumb);
        if (v1 != null) {
            this.mView.setThumb(v1);
        }
        this.setTickMark(v0.getDrawable(androidx.appcompat.R$styleable.AppCompatSeekBar_tickMark));
        if (v0.hasValue(androidx.appcompat.R$styleable.AppCompatSeekBar_tickMarkTintMode)) {
            this.mTickMarkTintMode = androidx.appcompat.widget.DrawableUtils.parseTintMode(v0.getInt(androidx.appcompat.R$styleable.AppCompatSeekBar_tickMarkTintMode, -1), this.mTickMarkTintMode);
            this.mHasTickMarkTintMode = 1;
        }
        if (v0.hasValue(androidx.appcompat.R$styleable.AppCompatSeekBar_tickMarkTint)) {
            this.mTickMarkTintList = v0.getColorStateList(androidx.appcompat.R$styleable.AppCompatSeekBar_tickMarkTint);
            this.mHasTickMarkTint = 1;
        }
        v0.recycle();
        this.applyTickMarkTint();
        return;
    }

    void setTickMark(android.graphics.drawable.Drawable p3)
    {
        if (this.mTickMark != null) {
            this.mTickMark.setCallback(0);
        }
        this.mTickMark = p3;
        if (p3 != null) {
            p3.setCallback(this.mView);
            androidx.core.graphics.drawable.DrawableCompat.setLayoutDirection(p3, androidx.core.view.ViewCompat.getLayoutDirection(this.mView));
            if (p3.isStateful()) {
                p3.setState(this.mView.getDrawableState());
            }
            this.applyTickMarkTint();
        }
        this.mView.invalidate();
        return;
    }

    void setTickMarkTintList(android.content.res.ColorStateList p2)
    {
        this.mTickMarkTintList = p2;
        this.mHasTickMarkTint = 1;
        this.applyTickMarkTint();
        return;
    }

    void setTickMarkTintMode(android.graphics.PorterDuff$Mode p2)
    {
        this.mTickMarkTintMode = p2;
        this.mHasTickMarkTintMode = 1;
        this.applyTickMarkTint();
        return;
    }
}
