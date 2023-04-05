package androidx.appcompat.widget;
public class AppCompatImageHelper {
    private androidx.appcompat.widget.TintInfo mImageTint;
    private androidx.appcompat.widget.TintInfo mInternalImageTint;
    private androidx.appcompat.widget.TintInfo mTmpInfo;
    private final android.widget.ImageView mView;

    public AppCompatImageHelper(android.widget.ImageView p1)
    {
        this.mView = p1;
        return;
    }

    private boolean applyFrameworkTintUsingColorFilter(android.graphics.drawable.Drawable p6)
    {
        int v3 = 1;
        if (this.mTmpInfo == null) {
            this.mTmpInfo = new androidx.appcompat.widget.TintInfo();
        }
        androidx.appcompat.widget.TintInfo v0 = this.mTmpInfo;
        v0.clear();
        android.content.res.ColorStateList v2 = androidx.core.widget.ImageViewCompat.getImageTintList(this.mView);
        if (v2 != null) {
            v0.mHasTintList = 1;
            v0.mTintList = v2;
        }
        android.graphics.PorterDuff$Mode v1 = androidx.core.widget.ImageViewCompat.getImageTintMode(this.mView);
        if (v1 != null) {
            v0.mHasTintMode = 1;
            v0.mTintMode = v1;
        }
        if ((!v0.mHasTintList) && (!v0.mHasTintMode)) {
            v3 = 0;
        } else {
            androidx.appcompat.widget.AppCompatDrawableManager.tintDrawable(p6, v0, this.mView.getDrawableState());
        }
        return v3;
    }

    private boolean shouldApplyFrameworkTintUsingColorFilter()
    {
        int v1 = 1;
        int v0 = android.os.Build$VERSION.SDK_INT;
        if (v0 <= 21) {
            if (v0 != 21) {
                v1 = 0;
            }
        } else {
            if (this.mInternalImageTint == null) {
                v1 = 0;
            }
        }
        return v1;
    }

    void applySupportImageTint()
    {
        android.graphics.drawable.Drawable v0 = this.mView.getDrawable();
        if (v0 != null) {
            androidx.appcompat.widget.DrawableUtils.fixDrawable(v0);
        }
        if ((v0 != null) && ((!this.shouldApplyFrameworkTintUsingColorFilter()) || (!this.applyFrameworkTintUsingColorFilter(v0)))) {
            if (this.mImageTint == null) {
                if (this.mInternalImageTint != null) {
                    androidx.appcompat.widget.AppCompatDrawableManager.tintDrawable(v0, this.mInternalImageTint, this.mView.getDrawableState());
                }
            } else {
                androidx.appcompat.widget.AppCompatDrawableManager.tintDrawable(v0, this.mImageTint, this.mView.getDrawableState());
            }
        }
        return;
    }

    android.content.res.ColorStateList getSupportImageTintList()
    {
        int v0_1;
        if (this.mImageTint == null) {
            v0_1 = 0;
        } else {
            v0_1 = this.mImageTint.mTintList;
        }
        return v0_1;
    }

    android.graphics.PorterDuff$Mode getSupportImageTintMode()
    {
        int v0_1;
        if (this.mImageTint == null) {
            v0_1 = 0;
        } else {
            v0_1 = this.mImageTint.mTintMode;
        }
        return v0_1;
    }

    boolean hasOverlappingRendering()
    {
        int v1_3;
        android.graphics.drawable.Drawable vtmp1 = this.mView.getBackground();
        if ((android.os.Build$VERSION.SDK_INT < 21) || (!(vtmp1 instanceof android.graphics.drawable.RippleDrawable))) {
            v1_3 = 1;
        } else {
            v1_3 = 0;
        }
        return v1_3;
    }

    public void loadFromAttributes(android.util.AttributeSet p8, int p9)
    {
        androidx.appcompat.widget.TintTypedArray v0 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(this.mView.getContext(), p8, androidx.appcompat.R$styleable.AppCompatImageView, p9, 0);
        try {
            android.graphics.drawable.Drawable v1 = this.mView.getDrawable();
        } catch (android.widget.ImageView v3_12) {
            v0.recycle();
            throw v3_12;
        }
        if (v1 == null) {
            int v2 = v0.getResourceId(androidx.appcompat.R$styleable.AppCompatImageView_srcCompat, -1);
            if (v2 != -1) {
                v1 = androidx.appcompat.content.res.AppCompatResources.getDrawable(this.mView.getContext(), v2);
                if (v1 != null) {
                    this.mView.setImageDrawable(v1);
                }
            }
        }
        if (v1 != null) {
            androidx.appcompat.widget.DrawableUtils.fixDrawable(v1);
        }
        if (v0.hasValue(androidx.appcompat.R$styleable.AppCompatImageView_tint)) {
            androidx.core.widget.ImageViewCompat.setImageTintList(this.mView, v0.getColorStateList(androidx.appcompat.R$styleable.AppCompatImageView_tint));
        }
        if (v0.hasValue(androidx.appcompat.R$styleable.AppCompatImageView_tintMode)) {
            androidx.core.widget.ImageViewCompat.setImageTintMode(this.mView, androidx.appcompat.widget.DrawableUtils.parseTintMode(v0.getInt(androidx.appcompat.R$styleable.AppCompatImageView_tintMode, -1), 0));
        }
        v0.recycle();
        return;
    }

    public void setImageResource(int p4)
    {
        if (p4 == 0) {
            this.mView.setImageDrawable(0);
        } else {
            android.graphics.drawable.Drawable v0 = androidx.appcompat.content.res.AppCompatResources.getDrawable(this.mView.getContext(), p4);
            if (v0 != null) {
                androidx.appcompat.widget.DrawableUtils.fixDrawable(v0);
            }
            this.mView.setImageDrawable(v0);
        }
        this.applySupportImageTint();
        return;
    }

    void setInternalImageTint(android.content.res.ColorStateList p3)
    {
        if (p3 == null) {
            this.mInternalImageTint = 0;
        } else {
            if (this.mInternalImageTint == null) {
                this.mInternalImageTint = new androidx.appcompat.widget.TintInfo();
            }
            this.mInternalImageTint.mTintList = p3;
            this.mInternalImageTint.mHasTintList = 1;
        }
        this.applySupportImageTint();
        return;
    }

    void setSupportImageTintList(android.content.res.ColorStateList p3)
    {
        if (this.mImageTint == null) {
            this.mImageTint = new androidx.appcompat.widget.TintInfo();
        }
        this.mImageTint.mTintList = p3;
        this.mImageTint.mHasTintList = 1;
        this.applySupportImageTint();
        return;
    }

    void setSupportImageTintMode(android.graphics.PorterDuff$Mode p3)
    {
        if (this.mImageTint == null) {
            this.mImageTint = new androidx.appcompat.widget.TintInfo();
        }
        this.mImageTint.mTintMode = p3;
        this.mImageTint.mHasTintMode = 1;
        this.applySupportImageTint();
        return;
    }
}
