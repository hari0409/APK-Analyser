package androidx.appcompat.widget;
public class AppCompatMultiAutoCompleteTextView extends android.widget.MultiAutoCompleteTextView implements androidx.core.view.TintableBackgroundView {
    private static final int[] TINT_ATTRS;
    private final androidx.appcompat.widget.AppCompatBackgroundHelper mBackgroundTintHelper;
    private final androidx.appcompat.widget.AppCompatTextHelper mTextHelper;

    static AppCompatMultiAutoCompleteTextView()
    {
        int[] v0_1 = new int[1];
        v0_1[0] = 16843126;
        androidx.appcompat.widget.AppCompatMultiAutoCompleteTextView.TINT_ATTRS = v0_1;
        return;
    }

    public AppCompatMultiAutoCompleteTextView(android.content.Context p2)
    {
        this(p2, 0);
        return;
    }

    public AppCompatMultiAutoCompleteTextView(android.content.Context p2, android.util.AttributeSet p3)
    {
        this(p2, p3, androidx.appcompat.R$attr.autoCompleteTextViewStyle);
        return;
    }

    public AppCompatMultiAutoCompleteTextView(android.content.Context p5, android.util.AttributeSet p6, int p7)
    {
        super(androidx.appcompat.widget.TintContextWrapper.wrap(p5), p6, p7);
        androidx.appcompat.widget.TintTypedArray v0 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(super.getContext(), p6, androidx.appcompat.widget.AppCompatMultiAutoCompleteTextView.TINT_ATTRS, p7, 0);
        if (v0.hasValue(0)) {
            super.setDropDownBackgroundDrawable(v0.getDrawable(0));
        }
        v0.recycle();
        super.mBackgroundTintHelper = new androidx.appcompat.widget.AppCompatBackgroundHelper(super);
        super.mBackgroundTintHelper.loadFromAttributes(p6, p7);
        super.mTextHelper = new androidx.appcompat.widget.AppCompatTextHelper(super);
        super.mTextHelper.loadFromAttributes(p6, p7);
        super.mTextHelper.applyCompoundDrawablesTints();
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

    public android.view.inputmethod.InputConnection onCreateInputConnection(android.view.inputmethod.EditorInfo p2)
    {
        return androidx.appcompat.widget.AppCompatHintHelper.onCreateInputConnection(super.onCreateInputConnection(p2), p2, this);
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

    public void setDropDownBackgroundResource(int p2)
    {
        this.setDropDownBackgroundDrawable(androidx.appcompat.content.res.AppCompatResources.getDrawable(this.getContext(), p2));
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
}
