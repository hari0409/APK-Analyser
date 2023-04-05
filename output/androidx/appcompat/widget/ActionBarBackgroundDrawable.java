package androidx.appcompat.widget;
 class ActionBarBackgroundDrawable extends android.graphics.drawable.Drawable {
    final androidx.appcompat.widget.ActionBarContainer mContainer;

    public ActionBarBackgroundDrawable(androidx.appcompat.widget.ActionBarContainer p1)
    {
        this.mContainer = p1;
        return;
    }

    public void draw(android.graphics.Canvas p2)
    {
        if (!this.mContainer.mIsSplit) {
            if (this.mContainer.mBackground != null) {
                this.mContainer.mBackground.draw(p2);
            }
            if ((this.mContainer.mStackedBackground != null) && (this.mContainer.mIsStacked)) {
                this.mContainer.mStackedBackground.draw(p2);
            }
        } else {
            if (this.mContainer.mSplitBackground != null) {
                this.mContainer.mSplitBackground.draw(p2);
            }
        }
        return;
    }

    public int getOpacity()
    {
        return 0;
    }

    public void getOutline(android.graphics.Outline p2)
    {
        if (!this.mContainer.mIsSplit) {
            if (this.mContainer.mBackground != null) {
                this.mContainer.mBackground.getOutline(p2);
            }
        } else {
            if (this.mContainer.mSplitBackground != null) {
                this.mContainer.mSplitBackground.getOutline(p2);
            }
        }
        return;
    }

    public void setAlpha(int p1)
    {
        return;
    }

    public void setColorFilter(android.graphics.ColorFilter p1)
    {
        return;
    }
}
