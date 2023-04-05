package androidx.appcompat.widget;
 class AppCompatTextHelper {
    private static final int MONOSPACE = 3;
    private static final int SANS = 1;
    private static final int SERIF = 2;
    private boolean mAsyncFontPending;
    private final androidx.appcompat.widget.AppCompatTextViewAutoSizeHelper mAutoSizeTextHelper;
    private androidx.appcompat.widget.TintInfo mDrawableBottomTint;
    private androidx.appcompat.widget.TintInfo mDrawableEndTint;
    private androidx.appcompat.widget.TintInfo mDrawableLeftTint;
    private androidx.appcompat.widget.TintInfo mDrawableRightTint;
    private androidx.appcompat.widget.TintInfo mDrawableStartTint;
    private androidx.appcompat.widget.TintInfo mDrawableTopTint;
    private android.graphics.Typeface mFontTypeface;
    private int mStyle;
    private final android.widget.TextView mView;

    AppCompatTextHelper(android.widget.TextView p3)
    {
        this.mStyle = 0;
        this.mView = p3;
        this.mAutoSizeTextHelper = new androidx.appcompat.widget.AppCompatTextViewAutoSizeHelper(this.mView);
        return;
    }

    private void applyCompoundDrawableTint(android.graphics.drawable.Drawable p2, androidx.appcompat.widget.TintInfo p3)
    {
        if ((p2 != null) && (p3 != null)) {
            androidx.appcompat.widget.AppCompatDrawableManager.tintDrawable(p2, p3, this.mView.getDrawableState());
        }
        return;
    }

    private static androidx.appcompat.widget.TintInfo createTintInfo(android.content.Context p3, androidx.appcompat.widget.AppCompatDrawableManager p4, int p5)
    {
        int v0_0;
        android.content.res.ColorStateList v1 = p4.getTintList(p3, p5);
        if (v1 == null) {
            v0_0 = 0;
        } else {
            v0_0 = new androidx.appcompat.widget.TintInfo();
            v0_0.mHasTintList = 1;
            v0_0.mTintList = v1;
        }
        return v0_0;
    }

    private void setTextSizeInternal(int p2, float p3)
    {
        this.mAutoSizeTextHelper.setTextSizeInternal(p2, p3);
        return;
    }

    private void updateTypefaceAndStyle(android.content.Context p10, androidx.appcompat.widget.TintTypedArray p11)
    {
        android.graphics.Typeface v5_0 = 1;
        this.mStyle = p11.getInt(androidx.appcompat.R$styleable.TextAppearance_android_textStyle, this.mStyle);
        if ((!p11.hasValue(androidx.appcompat.R$styleable.TextAppearance_android_fontFamily)) && (!p11.hasValue(androidx.appcompat.R$styleable.TextAppearance_fontFamily))) {
            if (p11.hasValue(androidx.appcompat.R$styleable.TextAppearance_android_typeface)) {
                this.mAsyncFontPending = 0;
                switch (p11.getInt(androidx.appcompat.R$styleable.TextAppearance_android_typeface, 1)) {
                    case 1:
                        this.mFontTypeface = android.graphics.Typeface.SANS_SERIF;
                        break;
                    case 2:
                        this.mFontTypeface = android.graphics.Typeface.SERIF;
                        break;
                    case 3:
                        this.mFontTypeface = android.graphics.Typeface.MONOSPACE;
                        break;
                    default:
                }
            }
        } else {
            int v0;
            this.mFontTypeface = 0;
            if (!p11.hasValue(androidx.appcompat.R$styleable.TextAppearance_fontFamily)) {
                v0 = androidx.appcompat.R$styleable.TextAppearance_android_fontFamily;
            } else {
                v0 = androidx.appcompat.R$styleable.TextAppearance_fontFamily;
            }
            if (!p10.isRestricted()) {
                try {
                    this.mFontTypeface = p11.getFont(v0, this.mStyle, new androidx.appcompat.widget.AppCompatTextHelper$1(this, new ref.WeakReference(this.mView)));
                } catch (android.graphics.Typeface v5) {
                } catch (android.graphics.Typeface v5) {
                }
                if (this.mFontTypeface != null) {
                    v5_0 = 0;
                }
                this.mAsyncFontPending = v5_0;
            }
            if (this.mFontTypeface == null) {
                String v1 = p11.getString(v0);
                if (v1 != null) {
                    this.mFontTypeface = android.graphics.Typeface.create(v1, this.mStyle);
                }
            }
        }
        return;
    }

    void applyCompoundDrawablesTints()
    {
        if ((this.mDrawableLeftTint != null) || ((this.mDrawableTopTint != null) || ((this.mDrawableRightTint != null) || (this.mDrawableBottomTint != null)))) {
            android.graphics.drawable.Drawable[] v0_0 = this.mView.getCompoundDrawables();
            this.applyCompoundDrawableTint(v0_0[0], this.mDrawableLeftTint);
            this.applyCompoundDrawableTint(v0_0[1], this.mDrawableTopTint);
            this.applyCompoundDrawableTint(v0_0[2], this.mDrawableRightTint);
            this.applyCompoundDrawableTint(v0_0[3], this.mDrawableBottomTint);
        }
        if ((android.os.Build$VERSION.SDK_INT >= 17) && ((this.mDrawableStartTint != null) || (this.mDrawableEndTint != null))) {
            android.graphics.drawable.Drawable[] v0_1 = this.mView.getCompoundDrawablesRelative();
            this.applyCompoundDrawableTint(v0_1[0], this.mDrawableStartTint);
            this.applyCompoundDrawableTint(v0_1[2], this.mDrawableEndTint);
        }
        return;
    }

    void autoSizeText()
    {
        this.mAutoSizeTextHelper.autoSizeText();
        return;
    }

    int getAutoSizeMaxTextSize()
    {
        return this.mAutoSizeTextHelper.getAutoSizeMaxTextSize();
    }

    int getAutoSizeMinTextSize()
    {
        return this.mAutoSizeTextHelper.getAutoSizeMinTextSize();
    }

    int getAutoSizeStepGranularity()
    {
        return this.mAutoSizeTextHelper.getAutoSizeStepGranularity();
    }

    int[] getAutoSizeTextAvailableSizes()
    {
        return this.mAutoSizeTextHelper.getAutoSizeTextAvailableSizes();
    }

    int getAutoSizeTextType()
    {
        return this.mAutoSizeTextHelper.getAutoSizeTextType();
    }

    boolean isAutoSizeEnabled()
    {
        return this.mAutoSizeTextHelper.isAutoSizeEnabled();
    }

    void loadFromAttributes(android.util.AttributeSet p24, int p25)
    {
        android.content.Context v9 = this.mView.getContext();
        androidx.appcompat.widget.AppCompatDrawableManager v10 = androidx.appcompat.widget.AppCompatDrawableManager.get();
        androidx.appcompat.widget.TintTypedArray v4_0 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(v9, p24, androidx.appcompat.R$styleable.AppCompatTextHelper, p25, 0);
        int v7 = v4_0.getResourceId(androidx.appcompat.R$styleable.AppCompatTextHelper_android_textAppearance, -1);
        if (v4_0.hasValue(androidx.appcompat.R$styleable.AppCompatTextHelper_android_drawableLeft)) {
            this.mDrawableLeftTint = androidx.appcompat.widget.AppCompatTextHelper.createTintInfo(v9, v10, v4_0.getResourceId(androidx.appcompat.R$styleable.AppCompatTextHelper_android_drawableLeft, 0));
        }
        if (v4_0.hasValue(androidx.appcompat.R$styleable.AppCompatTextHelper_android_drawableTop)) {
            this.mDrawableTopTint = androidx.appcompat.widget.AppCompatTextHelper.createTintInfo(v9, v10, v4_0.getResourceId(androidx.appcompat.R$styleable.AppCompatTextHelper_android_drawableTop, 0));
        }
        if (v4_0.hasValue(androidx.appcompat.R$styleable.AppCompatTextHelper_android_drawableRight)) {
            this.mDrawableRightTint = androidx.appcompat.widget.AppCompatTextHelper.createTintInfo(v9, v10, v4_0.getResourceId(androidx.appcompat.R$styleable.AppCompatTextHelper_android_drawableRight, 0));
        }
        if (v4_0.hasValue(androidx.appcompat.R$styleable.AppCompatTextHelper_android_drawableBottom)) {
            this.mDrawableBottomTint = androidx.appcompat.widget.AppCompatTextHelper.createTintInfo(v9, v10, v4_0.getResourceId(androidx.appcompat.R$styleable.AppCompatTextHelper_android_drawableBottom, 0));
        }
        if (android.os.Build$VERSION.SDK_INT >= 17) {
            if (v4_0.hasValue(androidx.appcompat.R$styleable.AppCompatTextHelper_android_drawableStart)) {
                this.mDrawableStartTint = androidx.appcompat.widget.AppCompatTextHelper.createTintInfo(v9, v10, v4_0.getResourceId(androidx.appcompat.R$styleable.AppCompatTextHelper_android_drawableStart, 0));
            }
            if (v4_0.hasValue(androidx.appcompat.R$styleable.AppCompatTextHelper_android_drawableEnd)) {
                this.mDrawableEndTint = androidx.appcompat.widget.AppCompatTextHelper.createTintInfo(v9, v10, v4_0.getResourceId(androidx.appcompat.R$styleable.AppCompatTextHelper_android_drawableEnd, 0));
            }
        }
        v4_0.recycle();
        boolean v12 = (this.mView.getTransformationMethod() instanceof android.text.method.PasswordTransformationMethod);
        boolean v5 = 0;
        int v6 = 0;
        android.content.res.ColorStateList v15 = 0;
        android.content.res.ColorStateList v16 = 0;
        android.content.res.ColorStateList v17 = 0;
        if (v7 != -1) {
            androidx.appcompat.widget.TintTypedArray v4_1 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(v9, v7, androidx.appcompat.R$styleable.TextAppearance);
            if ((!v12) && (v4_1.hasValue(androidx.appcompat.R$styleable.TextAppearance_textAllCaps))) {
                v6 = 1;
                v5 = v4_1.getBoolean(androidx.appcompat.R$styleable.TextAppearance_textAllCaps, 0);
            }
            this.updateTypefaceAndStyle(v9, v4_1);
            if (android.os.Build$VERSION.SDK_INT < 23) {
                if (v4_1.hasValue(androidx.appcompat.R$styleable.TextAppearance_android_textColor)) {
                    v15 = v4_1.getColorStateList(androidx.appcompat.R$styleable.TextAppearance_android_textColor);
                }
                if (v4_1.hasValue(androidx.appcompat.R$styleable.TextAppearance_android_textColorHint)) {
                    v16 = v4_1.getColorStateList(androidx.appcompat.R$styleable.TextAppearance_android_textColorHint);
                }
                if (v4_1.hasValue(androidx.appcompat.R$styleable.TextAppearance_android_textColorLink)) {
                    v17 = v4_1.getColorStateList(androidx.appcompat.R$styleable.TextAppearance_android_textColorLink);
                }
            }
            v4_1.recycle();
        }
        androidx.appcompat.widget.TintTypedArray v4_2 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(v9, p24, androidx.appcompat.R$styleable.TextAppearance, p25, 0);
        if ((!v12) && (v4_2.hasValue(androidx.appcompat.R$styleable.TextAppearance_textAllCaps))) {
            v6 = 1;
            v5 = v4_2.getBoolean(androidx.appcompat.R$styleable.TextAppearance_textAllCaps, 0);
        }
        if (android.os.Build$VERSION.SDK_INT < 23) {
            if (v4_2.hasValue(androidx.appcompat.R$styleable.TextAppearance_android_textColor)) {
                v15 = v4_2.getColorStateList(androidx.appcompat.R$styleable.TextAppearance_android_textColor);
            }
            if (v4_2.hasValue(androidx.appcompat.R$styleable.TextAppearance_android_textColorHint)) {
                v16 = v4_2.getColorStateList(androidx.appcompat.R$styleable.TextAppearance_android_textColorHint);
            }
            if (v4_2.hasValue(androidx.appcompat.R$styleable.TextAppearance_android_textColorLink)) {
                v17 = v4_2.getColorStateList(androidx.appcompat.R$styleable.TextAppearance_android_textColorLink);
            }
        }
        if ((android.os.Build$VERSION.SDK_INT >= 28) && ((v4_2.hasValue(androidx.appcompat.R$styleable.TextAppearance_android_textSize)) && (v4_2.getDimensionPixelSize(androidx.appcompat.R$styleable.TextAppearance_android_textSize, -1) == 0))) {
            this.mView.setTextSize(0, 0);
        }
        this.updateTypefaceAndStyle(v9, v4_2);
        v4_2.recycle();
        if (v15 != null) {
            this.mView.setTextColor(v15);
        }
        if (v16 != null) {
            this.mView.setHintTextColor(v16);
        }
        if (v17 != null) {
            this.mView.setLinkTextColor(v17);
        }
        if ((!v12) && (v6 != 0)) {
            this.setAllCaps(v5);
        }
        if (this.mFontTypeface != null) {
            this.mView.setTypeface(this.mFontTypeface, this.mStyle);
        }
        this.mAutoSizeTextHelper.loadFromAttributes(p24, p25);
        if ((androidx.core.widget.AutoSizeableTextView.PLATFORM_SUPPORTS_AUTOSIZE) && (this.mAutoSizeTextHelper.getAutoSizeTextType() != 0)) {
            int[] v8 = this.mAutoSizeTextHelper.getAutoSizeTextAvailableSizes();
            if (v8.length > 0) {
                if (((float) this.mView.getAutoSizeStepGranularity()) == -1082130432) {
                    this.mView.setAutoSizeTextTypeUniformWithPresetSizes(v8, 0);
                } else {
                    this.mView.setAutoSizeTextTypeUniformWithConfiguration(this.mAutoSizeTextHelper.getAutoSizeMinTextSize(), this.mAutoSizeTextHelper.getAutoSizeMaxTextSize(), this.mAutoSizeTextHelper.getAutoSizeStepGranularity(), 0);
                }
            }
        }
        androidx.appcompat.widget.TintTypedArray v4_3 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(v9, p24, androidx.appcompat.R$styleable.AppCompatTextView);
        int v11 = v4_3.getDimensionPixelSize(androidx.appcompat.R$styleable.AppCompatTextView_firstBaselineToTopHeight, -1);
        int v13 = v4_3.getDimensionPixelSize(androidx.appcompat.R$styleable.AppCompatTextView_lastBaselineToBottomHeight, -1);
        int v14 = v4_3.getDimensionPixelSize(androidx.appcompat.R$styleable.AppCompatTextView_lineHeight, -1);
        v4_3.recycle();
        if (v11 != -1) {
            androidx.core.widget.TextViewCompat.setFirstBaselineToTopHeight(this.mView, v11);
        }
        if (v13 != -1) {
            androidx.core.widget.TextViewCompat.setLastBaselineToBottomHeight(this.mView, v13);
        }
        if (v14 != -1) {
            androidx.core.widget.TextViewCompat.setLineHeight(this.mView, v14);
        }
        return;
    }

    void onAsyncTypefaceReceived(ref.WeakReference p3, android.graphics.Typeface p4)
    {
        if (this.mAsyncFontPending) {
            this.mFontTypeface = p4;
            android.widget.TextView v0_1 = ((android.widget.TextView) p3.get());
            if (v0_1 != null) {
                v0_1.setTypeface(p4, this.mStyle);
            }
        }
        return;
    }

    void onLayout(boolean p2, int p3, int p4, int p5, int p6)
    {
        if (!androidx.core.widget.AutoSizeableTextView.PLATFORM_SUPPORTS_AUTOSIZE) {
            this.autoSizeText();
        }
        return;
    }

    void onSetTextAppearance(android.content.Context p6, int p7)
    {
        androidx.appcompat.widget.TintTypedArray v0 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(p6, p7, androidx.appcompat.R$styleable.TextAppearance);
        if (v0.hasValue(androidx.appcompat.R$styleable.TextAppearance_textAllCaps)) {
            this.setAllCaps(v0.getBoolean(androidx.appcompat.R$styleable.TextAppearance_textAllCaps, 0));
        }
        if ((android.os.Build$VERSION.SDK_INT < 23) && (v0.hasValue(androidx.appcompat.R$styleable.TextAppearance_android_textColor))) {
            android.content.res.ColorStateList v1 = v0.getColorStateList(androidx.appcompat.R$styleable.TextAppearance_android_textColor);
            if (v1 != null) {
                this.mView.setTextColor(v1);
            }
        }
        if ((v0.hasValue(androidx.appcompat.R$styleable.TextAppearance_android_textSize)) && (v0.getDimensionPixelSize(androidx.appcompat.R$styleable.TextAppearance_android_textSize, -1) == 0)) {
            this.mView.setTextSize(0, 0);
        }
        this.updateTypefaceAndStyle(p6, v0);
        v0.recycle();
        if (this.mFontTypeface != null) {
            this.mView.setTypeface(this.mFontTypeface, this.mStyle);
        }
        return;
    }

    void setAllCaps(boolean p2)
    {
        this.mView.setAllCaps(p2);
        return;
    }

    void setAutoSizeTextTypeUniformWithConfiguration(int p2, int p3, int p4, int p5)
    {
        this.mAutoSizeTextHelper.setAutoSizeTextTypeUniformWithConfiguration(p2, p3, p4, p5);
        return;
    }

    void setAutoSizeTextTypeUniformWithPresetSizes(int[] p2, int p3)
    {
        this.mAutoSizeTextHelper.setAutoSizeTextTypeUniformWithPresetSizes(p2, p3);
        return;
    }

    void setAutoSizeTextTypeWithDefaults(int p2)
    {
        this.mAutoSizeTextHelper.setAutoSizeTextTypeWithDefaults(p2);
        return;
    }

    void setTextSize(int p2, float p3)
    {
        if ((!androidx.core.widget.AutoSizeableTextView.PLATFORM_SUPPORTS_AUTOSIZE) && (!this.isAutoSizeEnabled())) {
            this.setTextSizeInternal(p2, p3);
        }
        return;
    }
}
