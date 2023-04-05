package androidx.appcompat.widget;
public class AppCompatEditText extends android.widget.EditText implements androidx.core.view.TintableBackgroundView {
    private final androidx.appcompat.widget.AppCompatBackgroundHelper mBackgroundTintHelper;
    private final androidx.appcompat.widget.AppCompatTextHelper mTextHelper;

    public AppCompatEditText(android.content.Context p2)
    {
        this(p2, 0);
        return;
    }

    public AppCompatEditText(android.content.Context p2, android.util.AttributeSet p3)
    {
        this(p2, p3, androidx.appcompat.R$attr.editTextStyle);
        return;
    }

    public AppCompatEditText(android.content.Context p2, android.util.AttributeSet p3, int p4)
    {
        super(androidx.appcompat.widget.TintContextWrapper.wrap(p2), p3, p4);
        super.mBackgroundTintHelper = new androidx.appcompat.widget.AppCompatBackgroundHelper(super);
        super.mBackgroundTintHelper.loadFromAttributes(p3, p4);
        super.mTextHelper = new androidx.appcompat.widget.AppCompatTextHelper(super);
        super.mTextHelper.loadFromAttributes(p3, p4);
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

    public android.text.Editable getText()
    {
        android.text.Editable v0_1;
        if (android.os.Build$VERSION.SDK_INT < 28) {
            v0_1 = super.getEditableText();
        } else {
            v0_1 = super.getText();
        }
        return v0_1;
    }

    public bridge synthetic CharSequence getText()
    {
        return this.getText();
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

    public void setCustomSelectionActionModeCallback(android.view.ActionMode$Callback p2)
    {
        super.setCustomSelectionActionModeCallback(androidx.core.widget.TextViewCompat.wrapCustomSelectionActionModeCallback(this, p2));
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
