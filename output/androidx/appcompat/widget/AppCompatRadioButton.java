package androidx.appcompat.widget;
public class AppCompatRadioButton extends android.widget.RadioButton implements androidx.core.widget.TintableCompoundButton {
    private final androidx.appcompat.widget.AppCompatCompoundButtonHelper mCompoundButtonHelper;
    private final androidx.appcompat.widget.AppCompatTextHelper mTextHelper;

    public AppCompatRadioButton(android.content.Context p2)
    {
        this(p2, 0);
        return;
    }

    public AppCompatRadioButton(android.content.Context p2, android.util.AttributeSet p3)
    {
        this(p2, p3, androidx.appcompat.R$attr.radioButtonStyle);
        return;
    }

    public AppCompatRadioButton(android.content.Context p2, android.util.AttributeSet p3, int p4)
    {
        super(androidx.appcompat.widget.TintContextWrapper.wrap(p2), p3, p4);
        super.mCompoundButtonHelper = new androidx.appcompat.widget.AppCompatCompoundButtonHelper(super);
        super.mCompoundButtonHelper.loadFromAttributes(p3, p4);
        super.mTextHelper = new androidx.appcompat.widget.AppCompatTextHelper(super);
        super.mTextHelper.loadFromAttributes(p3, p4);
        return;
    }

    public int getCompoundPaddingLeft()
    {
        int v0 = super.getCompoundPaddingLeft();
        if (this.mCompoundButtonHelper != null) {
            v0 = this.mCompoundButtonHelper.getCompoundPaddingLeft(v0);
        }
        return v0;
    }

    public android.content.res.ColorStateList getSupportButtonTintList()
    {
        int v0_1;
        if (this.mCompoundButtonHelper == null) {
            v0_1 = 0;
        } else {
            v0_1 = this.mCompoundButtonHelper.getSupportButtonTintList();
        }
        return v0_1;
    }

    public android.graphics.PorterDuff$Mode getSupportButtonTintMode()
    {
        int v0_1;
        if (this.mCompoundButtonHelper == null) {
            v0_1 = 0;
        } else {
            v0_1 = this.mCompoundButtonHelper.getSupportButtonTintMode();
        }
        return v0_1;
    }

    public void setButtonDrawable(int p2)
    {
        this.setButtonDrawable(androidx.appcompat.content.res.AppCompatResources.getDrawable(this.getContext(), p2));
        return;
    }

    public void setButtonDrawable(android.graphics.drawable.Drawable p2)
    {
        super.setButtonDrawable(p2);
        if (this.mCompoundButtonHelper != null) {
            this.mCompoundButtonHelper.onSetButtonDrawable();
        }
        return;
    }

    public void setSupportButtonTintList(android.content.res.ColorStateList p2)
    {
        if (this.mCompoundButtonHelper != null) {
            this.mCompoundButtonHelper.setSupportButtonTintList(p2);
        }
        return;
    }

    public void setSupportButtonTintMode(android.graphics.PorterDuff$Mode p2)
    {
        if (this.mCompoundButtonHelper != null) {
            this.mCompoundButtonHelper.setSupportButtonTintMode(p2);
        }
        return;
    }
}
