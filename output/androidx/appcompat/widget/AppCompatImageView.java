package androidx.appcompat.widget;
public class AppCompatImageView extends android.widget.ImageView implements androidx.core.view.TintableBackgroundView, androidx.core.widget.TintableImageSourceView {
    private final androidx.appcompat.widget.AppCompatBackgroundHelper mBackgroundTintHelper;
    private final androidx.appcompat.widget.AppCompatImageHelper mImageHelper;

    public AppCompatImageView(android.content.Context p2)
    {
        this(p2, 0);
        return;
    }

    public AppCompatImageView(android.content.Context p2, android.util.AttributeSet p3)
    {
        this(p2, p3, 0);
        return;
    }

    public AppCompatImageView(android.content.Context p2, android.util.AttributeSet p3, int p4)
    {
        super(androidx.appcompat.widget.TintContextWrapper.wrap(p2), p3, p4);
        super.mBackgroundTintHelper = new androidx.appcompat.widget.AppCompatBackgroundHelper(super);
        super.mBackgroundTintHelper.loadFromAttributes(p3, p4);
        super.mImageHelper = new androidx.appcompat.widget.AppCompatImageHelper(super);
        super.mImageHelper.loadFromAttributes(p3, p4);
        return;
    }

    protected void drawableStateChanged()
    {
        super.drawableStateChanged();
        if (this.mBackgroundTintHelper != null) {
            this.mBackgroundTintHelper.applySupportBackgroundTint();
        }
        if (this.mImageHelper != null) {
            this.mImageHelper.applySupportImageTint();
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

    public android.content.res.ColorStateList getSupportImageTintList()
    {
        int v0_1;
        if (this.mImageHelper == null) {
            v0_1 = 0;
        } else {
            v0_1 = this.mImageHelper.getSupportImageTintList();
        }
        return v0_1;
    }

    public android.graphics.PorterDuff$Mode getSupportImageTintMode()
    {
        int v0_1;
        if (this.mImageHelper == null) {
            v0_1 = 0;
        } else {
            v0_1 = this.mImageHelper.getSupportImageTintMode();
        }
        return v0_1;
    }

    public boolean hasOverlappingRendering()
    {
        if ((!this.mImageHelper.hasOverlappingRendering()) || (!super.hasOverlappingRendering())) {
            int v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
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

    public void setImageBitmap(android.graphics.Bitmap p2)
    {
        super.setImageBitmap(p2);
        if (this.mImageHelper != null) {
            this.mImageHelper.applySupportImageTint();
        }
        return;
    }

    public void setImageDrawable(android.graphics.drawable.Drawable p2)
    {
        super.setImageDrawable(p2);
        if (this.mImageHelper != null) {
            this.mImageHelper.applySupportImageTint();
        }
        return;
    }

    public void setImageResource(int p2)
    {
        if (this.mImageHelper != null) {
            this.mImageHelper.setImageResource(p2);
        }
        return;
    }

    public void setImageURI(android.net.Uri p2)
    {
        super.setImageURI(p2);
        if (this.mImageHelper != null) {
            this.mImageHelper.applySupportImageTint();
        }
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

    public void setSupportImageTintList(android.content.res.ColorStateList p2)
    {
        if (this.mImageHelper != null) {
            this.mImageHelper.setSupportImageTintList(p2);
        }
        return;
    }

    public void setSupportImageTintMode(android.graphics.PorterDuff$Mode p2)
    {
        if (this.mImageHelper != null) {
            this.mImageHelper.setSupportImageTintMode(p2);
        }
        return;
    }
}
