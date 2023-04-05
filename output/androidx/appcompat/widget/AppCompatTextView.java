package androidx.appcompat.widget;
public class AppCompatTextView extends android.widget.TextView implements androidx.core.view.TintableBackgroundView, androidx.core.widget.AutoSizeableTextView {
    private final androidx.appcompat.widget.AppCompatBackgroundHelper mBackgroundTintHelper;
    private java.util.concurrent.Future mPrecomputedTextFuture;
    private final androidx.appcompat.widget.AppCompatTextHelper mTextHelper;

    public AppCompatTextView(android.content.Context p2)
    {
        this(p2, 0);
        return;
    }

    public AppCompatTextView(android.content.Context p2, android.util.AttributeSet p3)
    {
        this(p2, p3, 16842884);
        return;
    }

    public AppCompatTextView(android.content.Context p2, android.util.AttributeSet p3, int p4)
    {
        super(androidx.appcompat.widget.TintContextWrapper.wrap(p2), p3, p4);
        super.mBackgroundTintHelper = new androidx.appcompat.widget.AppCompatBackgroundHelper(super);
        super.mBackgroundTintHelper.loadFromAttributes(p3, p4);
        super.mTextHelper = new androidx.appcompat.widget.AppCompatTextHelper(super);
        super.mTextHelper.loadFromAttributes(p3, p4);
        super.mTextHelper.applyCompoundDrawablesTints();
        return;
    }

    private void consumeTextFutureAndSetBlocking()
    {
        if (this.mPrecomputedTextFuture != null) {
            try {
                java.util.concurrent.Future v0 = this.mPrecomputedTextFuture;
                this.mPrecomputedTextFuture = 0;
                androidx.core.widget.TextViewCompat.setPrecomputedText(this, ((androidx.core.text.PrecomputedTextCompat) v0.get()));
            } catch (java.util.concurrent.ExecutionException v1) {
            } catch (java.util.concurrent.ExecutionException v1) {
            }
        }
        return;
    }

    protected void drawableStateChanged()
    {
        super.drawableStateChanged();
        if (this.mBackgroundTintHelper != null) {
            this.mBackgroundTintHelper.applySupportBackgroundTint();
        }
        if (this.mTextHelper != null) {
            this.mTextHelper.applyCompoundDrawablesTints();
        }
        return;
    }

    public int getAutoSizeMaxTextSize()
    {
        int v0_2;
        if (!androidx.appcompat.widget.AppCompatTextView.PLATFORM_SUPPORTS_AUTOSIZE) {
            if (this.mTextHelper == null) {
                v0_2 = -1;
            } else {
                v0_2 = this.mTextHelper.getAutoSizeMaxTextSize();
            }
        } else {
            v0_2 = super.getAutoSizeMaxTextSize();
        }
        return v0_2;
    }

    public int getAutoSizeMinTextSize()
    {
        int v0_2;
        if (!androidx.appcompat.widget.AppCompatTextView.PLATFORM_SUPPORTS_AUTOSIZE) {
            if (this.mTextHelper == null) {
                v0_2 = -1;
            } else {
                v0_2 = this.mTextHelper.getAutoSizeMinTextSize();
            }
        } else {
            v0_2 = super.getAutoSizeMinTextSize();
        }
        return v0_2;
    }

    public int getAutoSizeStepGranularity()
    {
        int v0_2;
        if (!androidx.appcompat.widget.AppCompatTextView.PLATFORM_SUPPORTS_AUTOSIZE) {
            if (this.mTextHelper == null) {
                v0_2 = -1;
            } else {
                v0_2 = this.mTextHelper.getAutoSizeStepGranularity();
            }
        } else {
            v0_2 = super.getAutoSizeStepGranularity();
        }
        return v0_2;
    }

    public int[] getAutoSizeTextAvailableSizes()
    {
        int[] v0_1;
        if (!androidx.appcompat.widget.AppCompatTextView.PLATFORM_SUPPORTS_AUTOSIZE) {
            if (this.mTextHelper == null) {
                v0_1 = new int[0];
            } else {
                v0_1 = this.mTextHelper.getAutoSizeTextAvailableSizes();
            }
        } else {
            v0_1 = super.getAutoSizeTextAvailableSizes();
        }
        return v0_1;
    }

    public int getAutoSizeTextType()
    {
        int v0_0 = 1;
        if (!androidx.appcompat.widget.AppCompatTextView.PLATFORM_SUPPORTS_AUTOSIZE) {
            if (this.mTextHelper == null) {
                v0_0 = 0;
            } else {
                v0_0 = this.mTextHelper.getAutoSizeTextType();
            }
        } else {
            if (super.getAutoSizeTextType() != 1) {
                v0_0 = 0;
            }
        }
        return v0_0;
    }

    public int getFirstBaselineToTopHeight()
    {
        return androidx.core.widget.TextViewCompat.getFirstBaselineToTopHeight(this);
    }

    public int getLastBaselineToBottomHeight()
    {
        return androidx.core.widget.TextViewCompat.getLastBaselineToBottomHeight(this);
    }

    public android.content.res.ColorStateList getSupportBackgroundTintList()
    {
        int v0_1;
        if (this.mBackgroundTintHelper == null) {
            v0_1 = 0;
        } else {
            v0_1 = this.mBackgroundTintHelper.getSupportBackgroundTintList();
        }
        return v0_1;
    }

    public android.graphics.PorterDuff$Mode getSupportBackgroundTintMode()
    {
        int v0_1;
        if (this.mBackgroundTintHelper == null) {
            v0_1 = 0;
        } else {
            v0_1 = this.mBackgroundTintHelper.getSupportBackgroundTintMode();
        }
        return v0_1;
    }

    public CharSequence getText()
    {
        this.consumeTextFutureAndSetBlocking();
        return super.getText();
    }

    public androidx.core.text.PrecomputedTextCompat$Params getTextMetricsParamsCompat()
    {
        return androidx.core.widget.TextViewCompat.getTextMetricsParams(this);
    }

    public android.view.inputmethod.InputConnection onCreateInputConnection(android.view.inputmethod.EditorInfo p2)
    {
        return androidx.appcompat.widget.AppCompatHintHelper.onCreateInputConnection(super.onCreateInputConnection(p2), p2, this);
    }

    protected void onLayout(boolean p7, int p8, int p9, int p10, int p11)
    {
        this = super.onLayout(p7, p8, p9, p10, p11);
        if (this.mTextHelper != null) {
            this.mTextHelper.onLayout(p7, p8, p9, p10, p11);
        }
        return;
    }

    protected void onMeasure(int p1, int p2)
    {
        this.consumeTextFutureAndSetBlocking();
        super.onMeasure(p1, p2);
        return;
    }

    protected void onTextChanged(CharSequence p2, int p3, int p4, int p5)
    {
        super.onTextChanged(p2, p3, p4, p5);
        if ((this.mTextHelper != null) && ((!androidx.appcompat.widget.AppCompatTextView.PLATFORM_SUPPORTS_AUTOSIZE) && (this.mTextHelper.isAutoSizeEnabled()))) {
            this.mTextHelper.autoSizeText();
        }
        return;
    }

    public void setAutoSizeTextTypeUniformWithConfiguration(int p2, int p3, int p4, int p5)
    {
        if (!androidx.appcompat.widget.AppCompatTextView.PLATFORM_SUPPORTS_AUTOSIZE) {
            if (this.mTextHelper != null) {
                this.mTextHelper.setAutoSizeTextTypeUniformWithConfiguration(p2, p3, p4, p5);
            }
        } else {
            super.setAutoSizeTextTypeUniformWithConfiguration(p2, p3, p4, p5);
        }
        return;
    }

    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] p2, int p3)
    {
        if (!androidx.appcompat.widget.AppCompatTextView.PLATFORM_SUPPORTS_AUTOSIZE) {
            if (this.mTextHelper != null) {
                this.mTextHelper.setAutoSizeTextTypeUniformWithPresetSizes(p2, p3);
            }
        } else {
            super.setAutoSizeTextTypeUniformWithPresetSizes(p2, p3);
        }
        return;
    }

    public void setAutoSizeTextTypeWithDefaults(int p2)
    {
        if (!androidx.appcompat.widget.AppCompatTextView.PLATFORM_SUPPORTS_AUTOSIZE) {
            if (this.mTextHelper != null) {
                this.mTextHelper.setAutoSizeTextTypeWithDefaults(p2);
            }
        } else {
            super.setAutoSizeTextTypeWithDefaults(p2);
        }
        return;
    }

    public void setBackgroundDrawable(android.graphics.drawable.Drawable p2)
    {
        super.setBackgroundDrawable(p2);
        if (this.mBackgroundTintHelper != null) {
            this.mBackgroundTintHelper.onSetBackgroundDrawable(p2);
        }
        return;
    }

    public void setBackgroundResource(int p2)
    {
        super.setBackgroundResource(p2);
        if (this.mBackgroundTintHelper != null) {
            this.mBackgroundTintHelper.onSetBackgroundResource(p2);
        }
        return;
    }

    public void setCustomSelectionActionModeCallback(android.view.ActionMode$Callback p2)
    {
        super.setCustomSelectionActionModeCallback(androidx.core.widget.TextViewCompat.wrapCustomSelectionActionModeCallback(this, p2));
        return;
    }

    public void setFirstBaselineToTopHeight(int p3)
    {
        if (android.os.Build$VERSION.SDK_INT < 28) {
            androidx.core.widget.TextViewCompat.setFirstBaselineToTopHeight(this, p3);
        } else {
            super.setFirstBaselineToTopHeight(p3);
        }
        return;
    }

    public void setLastBaselineToBottomHeight(int p3)
    {
        if (android.os.Build$VERSION.SDK_INT < 28) {
            androidx.core.widget.TextViewCompat.setLastBaselineToBottomHeight(this, p3);
        } else {
            super.setLastBaselineToBottomHeight(p3);
        }
        return;
    }

    public void setLineHeight(int p1)
    {
        androidx.core.widget.TextViewCompat.setLineHeight(this, p1);
        return;
    }

    public void setPrecomputedText(androidx.core.text.PrecomputedTextCompat p1)
    {
        androidx.core.widget.TextViewCompat.setPrecomputedText(this, p1);
        return;
    }

    public void setSupportBackgroundTintList(android.content.res.ColorStateList p2)
    {
        if (this.mBackgroundTintHelper != null) {
            this.mBackgroundTintHelper.setSupportBackgroundTintList(p2);
        }
        return;
    }

    public void setSupportBackgroundTintMode(android.graphics.PorterDuff$Mode p2)
    {
        if (this.mBackgroundTintHelper != null) {
            this.mBackgroundTintHelper.setSupportBackgroundTintMode(p2);
        }
        return;
    }

    public void setTextAppearance(android.content.Context p2, int p3)
    {
        super.setTextAppearance(p2, p3);
        if (this.mTextHelper != null) {
            this.mTextHelper.onSetTextAppearance(p2, p3);
        }
        return;
    }

    public void setTextFuture(java.util.concurrent.Future p1)
    {
        this.mPrecomputedTextFuture = p1;
        this.requestLayout();
        return;
    }

    public void setTextMetricsParamsCompat(androidx.core.text.PrecomputedTextCompat$Params p1)
    {
        androidx.core.widget.TextViewCompat.setTextMetricsParams(this, p1);
        return;
    }

    public void setTextSize(int p2, float p3)
    {
        if (!androidx.appcompat.widget.AppCompatTextView.PLATFORM_SUPPORTS_AUTOSIZE) {
            if (this.mTextHelper != null) {
                this.mTextHelper.setTextSize(p2, p3);
            }
        } else {
            super.setTextSize(p2, p3);
        }
        return;
    }
}
