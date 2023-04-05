package androidx.appcompat.graphics.drawable;
public class DrawableWrapper extends android.graphics.drawable.Drawable implements android.graphics.drawable.Drawable$Callback {
    private android.graphics.drawable.Drawable mDrawable;

    public DrawableWrapper(android.graphics.drawable.Drawable p1)
    {
        this.setWrappedDrawable(p1);
        return;
    }

    public void draw(android.graphics.Canvas p2)
    {
        this.mDrawable.draw(p2);
        return;
    }

    public int getChangingConfigurations()
    {
        return this.mDrawable.getChangingConfigurations();
    }

    public android.graphics.drawable.Drawable getCurrent()
    {
        return this.mDrawable.getCurrent();
    }

    public int getIntrinsicHeight()
    {
        return this.mDrawable.getIntrinsicHeight();
    }

    public int getIntrinsicWidth()
    {
        return this.mDrawable.getIntrinsicWidth();
    }

    public int getMinimumHeight()
    {
        return this.mDrawable.getMinimumHeight();
    }

    public int getMinimumWidth()
    {
        return this.mDrawable.getMinimumWidth();
    }

    public int getOpacity()
    {
        return this.mDrawable.getOpacity();
    }

    public boolean getPadding(android.graphics.Rect p2)
    {
        return this.mDrawable.getPadding(p2);
    }

    public int[] getState()
    {
        return this.mDrawable.getState();
    }

    public android.graphics.Region getTransparentRegion()
    {
        return this.mDrawable.getTransparentRegion();
    }

    public android.graphics.drawable.Drawable getWrappedDrawable()
    {
        return this.mDrawable;
    }

    public void invalidateDrawable(android.graphics.drawable.Drawable p1)
    {
        this.invalidateSelf();
        return;
    }

    public boolean isAutoMirrored()
    {
        return androidx.core.graphics.drawable.DrawableCompat.isAutoMirrored(this.mDrawable);
    }

    public boolean isStateful()
    {
        return this.mDrawable.isStateful();
    }

    public void jumpToCurrentState()
    {
        androidx.core.graphics.drawable.DrawableCompat.jumpToCurrentState(this.mDrawable);
        return;
    }

    protected void onBoundsChange(android.graphics.Rect p2)
    {
        this.mDrawable.setBounds(p2);
        return;
    }

    protected boolean onLevelChange(int p2)
    {
        return this.mDrawable.setLevel(p2);
    }

    public void scheduleDrawable(android.graphics.drawable.Drawable p2, Runnable p3, long p4)
    {
        this.scheduleSelf(p3, p4);
        return;
    }

    public void setAlpha(int p2)
    {
        this.mDrawable.setAlpha(p2);
        return;
    }

    public void setAutoMirrored(boolean p2)
    {
        androidx.core.graphics.drawable.DrawableCompat.setAutoMirrored(this.mDrawable, p2);
        return;
    }

    public void setChangingConfigurations(int p2)
    {
        this.mDrawable.setChangingConfigurations(p2);
        return;
    }

    public void setColorFilter(android.graphics.ColorFilter p2)
    {
        this.mDrawable.setColorFilter(p2);
        return;
    }

    public void setDither(boolean p2)
    {
        this.mDrawable.setDither(p2);
        return;
    }

    public void setFilterBitmap(boolean p2)
    {
        this.mDrawable.setFilterBitmap(p2);
        return;
    }

    public void setHotspot(float p2, float p3)
    {
        androidx.core.graphics.drawable.DrawableCompat.setHotspot(this.mDrawable, p2, p3);
        return;
    }

    public void setHotspotBounds(int p2, int p3, int p4, int p5)
    {
        androidx.core.graphics.drawable.DrawableCompat.setHotspotBounds(this.mDrawable, p2, p3, p4, p5);
        return;
    }

    public boolean setState(int[] p2)
    {
        return this.mDrawable.setState(p2);
    }

    public void setTint(int p2)
    {
        androidx.core.graphics.drawable.DrawableCompat.setTint(this.mDrawable, p2);
        return;
    }

    public void setTintList(android.content.res.ColorStateList p2)
    {
        androidx.core.graphics.drawable.DrawableCompat.setTintList(this.mDrawable, p2);
        return;
    }

    public void setTintMode(android.graphics.PorterDuff$Mode p2)
    {
        androidx.core.graphics.drawable.DrawableCompat.setTintMode(this.mDrawable, p2);
        return;
    }

    public boolean setVisible(boolean p2, boolean p3)
    {
        if ((!super.setVisible(p2, p3)) && (!this.mDrawable.setVisible(p2, p3))) {
            int v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }

    public void setWrappedDrawable(android.graphics.drawable.Drawable p3)
    {
        if (this.mDrawable != null) {
            this.mDrawable.setCallback(0);
        }
        this.mDrawable = p3;
        if (p3 != null) {
            p3.setCallback(this);
        }
        return;
    }

    public void unscheduleDrawable(android.graphics.drawable.Drawable p1, Runnable p2)
    {
        this.unscheduleSelf(p2);
        return;
    }
}
