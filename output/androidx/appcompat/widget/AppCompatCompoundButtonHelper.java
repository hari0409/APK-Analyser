package androidx.appcompat.widget;
 class AppCompatCompoundButtonHelper {
    private android.content.res.ColorStateList mButtonTintList;
    private android.graphics.PorterDuff$Mode mButtonTintMode;
    private boolean mHasButtonTint;
    private boolean mHasButtonTintMode;
    private boolean mSkipNextApply;
    private final android.widget.CompoundButton mView;

    AppCompatCompoundButtonHelper(android.widget.CompoundButton p3)
    {
        this.mButtonTintList = 0;
        this.mButtonTintMode = 0;
        this.mHasButtonTint = 0;
        this.mHasButtonTintMode = 0;
        this.mView = p3;
        return;
    }

    void applyButtonTint()
    {
        android.graphics.drawable.Drawable v0_1 = androidx.core.widget.CompoundButtonCompat.getButtonDrawable(this.mView);
        if ((v0_1 != null) && ((this.mHasButtonTint) || (this.mHasButtonTintMode))) {
            android.graphics.drawable.Drawable v0_0 = androidx.core.graphics.drawable.DrawableCompat.wrap(v0_1).mutate();
            if (this.mHasButtonTint) {
                androidx.core.graphics.drawable.DrawableCompat.setTintList(v0_0, this.mButtonTintList);
            }
            if (this.mHasButtonTintMode) {
                androidx.core.graphics.drawable.DrawableCompat.setTintMode(v0_0, this.mButtonTintMode);
            }
            if (v0_0.isStateful()) {
                v0_0.setState(this.mView.getDrawableState());
            }
            this.mView.setButtonDrawable(v0_0);
        }
        return;
    }

    int getCompoundPaddingLeft(int p4)
    {
        if (android.os.Build$VERSION.SDK_INT < 17) {
            android.graphics.drawable.Drawable v0 = androidx.core.widget.CompoundButtonCompat.getButtonDrawable(this.mView);
            if (v0 != null) {
                p4 += v0.getIntrinsicWidth();
            }
        }
        return p4;
    }

    android.content.res.ColorStateList getSupportButtonTintList()
    {
        return this.mButtonTintList;
    }

    android.graphics.PorterDuff$Mode getSupportButtonTintMode()
    {
        return this.mButtonTintMode;
    }

    void loadFromAttributes(android.util.AttributeSet p6, int p7)
    {
        android.content.res.TypedArray v0 = this.mView.getContext().obtainStyledAttributes(p6, androidx.appcompat.R$styleable.CompoundButton, p7, 0);
        try {
            if (v0.hasValue(androidx.appcompat.R$styleable.CompoundButton_android_button)) {
                int v1 = v0.getResourceId(androidx.appcompat.R$styleable.CompoundButton_android_button, 0);
                if (v1 != 0) {
                    this.mView.setButtonDrawable(androidx.appcompat.content.res.AppCompatResources.getDrawable(this.mView.getContext(), v1));
                }
            }
        } catch (android.widget.CompoundButton v2_10) {
            v0.recycle();
            throw v2_10;
        }
        if (v0.hasValue(androidx.appcompat.R$styleable.CompoundButton_buttonTint)) {
            androidx.core.widget.CompoundButtonCompat.setButtonTintList(this.mView, v0.getColorStateList(androidx.appcompat.R$styleable.CompoundButton_buttonTint));
        }
        if (v0.hasValue(androidx.appcompat.R$styleable.CompoundButton_buttonTintMode)) {
            androidx.core.widget.CompoundButtonCompat.setButtonTintMode(this.mView, androidx.appcompat.widget.DrawableUtils.parseTintMode(v0.getInt(androidx.appcompat.R$styleable.CompoundButton_buttonTintMode, -1), 0));
        }
        v0.recycle();
        return;
    }

    void onSetButtonDrawable()
    {
        if (!this.mSkipNextApply) {
            this.mSkipNextApply = 1;
            this.applyButtonTint();
        } else {
            this.mSkipNextApply = 0;
        }
        return;
    }

    void setSupportButtonTintList(android.content.res.ColorStateList p2)
    {
        this.mButtonTintList = p2;
        this.mHasButtonTint = 1;
        this.applyButtonTint();
        return;
    }

    void setSupportButtonTintMode(android.graphics.PorterDuff$Mode p2)
    {
        this.mButtonTintMode = p2;
        this.mHasButtonTintMode = 1;
        this.applyButtonTint();
        return;
    }
}
