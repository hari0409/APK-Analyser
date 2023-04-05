package androidx.appcompat.graphics.drawable;
 class DrawableContainer$BlockInvalidateCallback implements android.graphics.drawable.Drawable$Callback {
    private android.graphics.drawable.Drawable$Callback mCallback;

    DrawableContainer$BlockInvalidateCallback()
    {
        return;
    }

    public void invalidateDrawable(android.graphics.drawable.Drawable p1)
    {
        return;
    }

    public void scheduleDrawable(android.graphics.drawable.Drawable p2, Runnable p3, long p4)
    {
        if (this.mCallback != null) {
            this.mCallback.scheduleDrawable(p2, p3, p4);
        }
        return;
    }

    public void unscheduleDrawable(android.graphics.drawable.Drawable p2, Runnable p3)
    {
        if (this.mCallback != null) {
            this.mCallback.unscheduleDrawable(p2, p3);
        }
        return;
    }

    public android.graphics.drawable.Drawable$Callback unwrap()
    {
        android.graphics.drawable.Drawable$Callback v0 = this.mCallback;
        this.mCallback = 0;
        return v0;
    }

    public androidx.appcompat.graphics.drawable.DrawableContainer$BlockInvalidateCallback wrap(android.graphics.drawable.Drawable$Callback p1)
    {
        this.mCallback = p1;
        return this;
    }
}
