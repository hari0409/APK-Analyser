package androidx.appcompat.widget;
public class AppCompatCheckedTextView extends android.widget.CheckedTextView {
    private static final int[] TINT_ATTRS;
    private final androidx.appcompat.widget.AppCompatTextHelper mTextHelper;

    static AppCompatCheckedTextView()
    {
        int[] v0_1 = new int[1];
        v0_1[0] = 16843016;
        androidx.appcompat.widget.AppCompatCheckedTextView.TINT_ATTRS = v0_1;
        return;
    }

    public AppCompatCheckedTextView(android.content.Context p2)
    {
        this(p2, 0);
        return;
    }

    public AppCompatCheckedTextView(android.content.Context p2, android.util.AttributeSet p3)
    {
        this(p2, p3, 16843720);
        return;
    }

    public AppCompatCheckedTextView(android.content.Context p5, android.util.AttributeSet p6, int p7)
    {
        super(androidx.appcompat.widget.TintContextWrapper.wrap(p5), p6, p7);
        super.mTextHelper = new androidx.appcompat.widget.AppCompatTextHelper(super);
        super.mTextHelper.loadFromAttributes(p6, p7);
        super.mTextHelper.applyCompoundDrawablesTints();
        androidx.appcompat.widget.TintTypedArray v0 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(super.getContext(), p6, androidx.appcompat.widget.AppCompatCheckedTextView.TINT_ATTRS, p7, 0);
        super.setCheckMarkDrawable(v0.getDrawable(0));
        v0.recycle();
        return;
    }

    protected void drawableStateChanged()
    {
        super.drawableStateChanged();
        if (this.mTextHelper != null) {
            this.mTextHelper.applyCompoundDrawablesTints();
        }
        return;
    }

    public android.view.inputmethod.InputConnection onCreateInputConnection(android.view.inputmethod.EditorInfo p2)
    {
        return androidx.appcompat.widget.AppCompatHintHelper.onCreateInputConnection(super.onCreateInputConnection(p2), p2, this);
    }

    public void setCheckMarkDrawable(int p2)
    {
        this.setCheckMarkDrawable(androidx.appcompat.content.res.AppCompatResources.getDrawable(this.getContext(), p2));
        return;
    }

    public void setCustomSelectionActionModeCallback(android.view.ActionMode$Callback p2)
    {
        super.setCustomSelectionActionModeCallback(androidx.core.widget.TextViewCompat.wrapCustomSelectionActionModeCallback(this, p2));
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
