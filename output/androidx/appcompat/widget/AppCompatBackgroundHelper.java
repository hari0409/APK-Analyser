package androidx.appcompat.widget;
 class AppCompatBackgroundHelper {
    private int mBackgroundResId;
    private androidx.appcompat.widget.TintInfo mBackgroundTint;
    private final androidx.appcompat.widget.AppCompatDrawableManager mDrawableManager;
    private androidx.appcompat.widget.TintInfo mInternalBackgroundTint;
    private androidx.appcompat.widget.TintInfo mTmpInfo;
    private final android.view.View mView;

    AppCompatBackgroundHelper(android.view.View p2)
    {
        this.mBackgroundResId = -1;
        this.mView = p2;
        this.mDrawableManager = androidx.appcompat.widget.AppCompatDrawableManager.get();
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
        android.content.res.ColorStateList v2 = androidx.core.view.ViewCompat.getBackgroundTintList(this.mView);
        if (v2 != null) {
            v0.mHasTintList = 1;
            v0.mTintList = v2;
        }
        android.graphics.PorterDuff$Mode v1 = androidx.core.view.ViewCompat.getBackgroundTintMode(this.mView);
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
            if (this.mInternalBackgroundTint == null) {
                v1 = 0;
            }
        }
        return v1;
    }

    void applySupportBackgroundTint()
    {
        android.graphics.drawable.Drawable v0 = this.mView.getBackground();
        if ((v0 != null) && ((!this.shouldApplyFrameworkTintUsingColorFilter()) || (!this.applyFrameworkTintUsingColorFilter(v0)))) {
            if (this.mBackgroundTint == null) {
                if (this.mInternalBackgroundTint != null) {
                    androidx.appcompat.widget.AppCompatDrawableManager.tintDrawable(v0, this.mInternalBackgroundTint, this.mView.getDrawableState());
                }
            } else {
                androidx.appcompat.widget.AppCompatDrawableManager.tintDrawable(v0, this.mBackgroundTint, this.mView.getDrawableState());
            }
        }
        return;
    }

    android.content.res.ColorStateList getSupportBackgroundTintList()
    {
        int v0_1;
        if (this.mBackgroundTint == null) {
            v0_1 = 0;
        } else {
            v0_1 = this.mBackgroundTint.mTintList;
        }
        return v0_1;
    }

    android.graphics.PorterDuff$Mode getSupportBackgroundTintMode()
    {
        int v0_1;
        if (this.mBackgroundTint == null) {
            v0_1 = 0;
        } else {
            v0_1 = this.mBackgroundTint.mTintMode;
        }
        return v0_1;
    }

    void loadFromAttributes(android.util.AttributeSet p6, int p7)
    {
        androidx.appcompat.widget.TintTypedArray v0 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(this.mView.getContext(), p6, androidx.appcompat.R$styleable.ViewBackgroundHelper, p7, 0);
        try {
            if (v0.hasValue(androidx.appcompat.R$styleable.ViewBackgroundHelper_android_background)) {
                this.mBackgroundResId = v0.getResourceId(androidx.appcompat.R$styleable.ViewBackgroundHelper_android_background, -1);
                android.content.res.ColorStateList v1 = this.mDrawableManager.getTintList(this.mView.getContext(), this.mBackgroundResId);
                if (v1 != null) {
                    this.setInternalBackgroundTint(v1);
                }
            }
        } catch (android.view.View v2_11) {
            v0.recycle();
            throw v2_11;
        }
        if (v0.hasValue(androidx.appcompat.R$styleable.ViewBackgroundHelper_backgroundTint)) {
            androidx.core.view.ViewCompat.setBackgroundTintList(this.mView, v0.getColorStateList(androidx.appcompat.R$styleable.ViewBackgroundHelper_backgroundTint));
        }
        if (v0.hasValue(androidx.appcompat.R$styleable.ViewBackgroundHelper_backgroundTintMode)) {
            androidx.core.view.ViewCompat.setBackgroundTintMode(this.mView, androidx.appcompat.widget.DrawableUtils.parseTintMode(v0.getInt(androidx.appcompat.R$styleable.ViewBackgroundHelper_backgroundTintMode, -1), 0));
        }
        v0.recycle();
        return;
    }

    void onSetBackgroundDrawable(android.graphics.drawable.Drawable p2)
    {
        this.mBackgroundResId = -1;
        this.setInternalBackgroundTint(0);
        this.applySupportBackgroundTint();
        return;
    }

    void onSetBackgroundResource(int p3)
    {
        int v0_1;
        this.mBackgroundResId = p3;
        if (this.mDrawableManager == null) {
            v0_1 = 0;
        } else {
            v0_1 = this.mDrawableManager.getTintList(this.mView.getContext(), p3);
        }
        this.setInternalBackgroundTint(v0_1);
        this.applySupportBackgroundTint();
        return;
    }

    void setInternalBackgroundTint(android.content.res.ColorStateList p3)
    {
        if (p3 == null) {
            this.mInternalBackgroundTint = 0;
        } else {
            if (this.mInternalBackgroundTint == null) {
                this.mInternalBackgroundTint = new androidx.appcompat.widget.TintInfo();
            }
            this.mInternalBackgroundTint.mTintList = p3;
            this.mInternalBackgroundTint.mHasTintList = 1;
        }
        this.applySupportBackgroundTint();
        return;
    }

    void setSupportBackgroundTintList(android.content.res.ColorStateList p3)
    {
        if (this.mBackgroundTint == null) {
            this.mBackgroundTint = new androidx.appcompat.widget.TintInfo();
        }
        this.mBackgroundTint.mTintList = p3;
        this.mBackgroundTint.mHasTintList = 1;
        this.applySupportBackgroundTint();
        return;
    }

    void setSupportBackgroundTintMode(android.graphics.PorterDuff$Mode p3)
    {
        if (this.mBackgroundTint == null) {
            this.mBackgroundTint = new androidx.appcompat.widget.TintInfo();
        }
        this.mBackgroundTint.mTintMode = p3;
        this.mBackgroundTint.mHasTintMode = 1;
        this.applySupportBackgroundTint();
        return;
    }
}
