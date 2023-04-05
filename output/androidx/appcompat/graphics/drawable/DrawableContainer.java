package androidx.appcompat.graphics.drawable;
 class DrawableContainer extends android.graphics.drawable.Drawable implements android.graphics.drawable.Drawable$Callback {
    private static final boolean DEBUG = False;
    private static final boolean DEFAULT_DITHER = True;
    private static final String TAG = "DrawableContainer";
    private int mAlpha;
    private Runnable mAnimationRunnable;
    private androidx.appcompat.graphics.drawable.DrawableContainer$BlockInvalidateCallback mBlockInvalidateCallback;
    private int mCurIndex;
    private android.graphics.drawable.Drawable mCurrDrawable;
    private androidx.appcompat.graphics.drawable.DrawableContainer$DrawableContainerState mDrawableContainerState;
    private long mEnterAnimationEnd;
    private long mExitAnimationEnd;
    private boolean mHasAlpha;
    private android.graphics.Rect mHotspotBounds;
    private android.graphics.drawable.Drawable mLastDrawable;
    private int mLastIndex;
    private boolean mMutated;

    DrawableContainer()
    {
        this.mAlpha = 255;
        this.mCurIndex = -1;
        this.mLastIndex = -1;
        return;
    }

    private void initializeDrawableForDisplay(android.graphics.drawable.Drawable p6)
    {
        if (this.mBlockInvalidateCallback == null) {
            this.mBlockInvalidateCallback = new androidx.appcompat.graphics.drawable.DrawableContainer$BlockInvalidateCallback();
        }
        p6.setCallback(this.mBlockInvalidateCallback.wrap(p6.getCallback()));
        try {
            if ((this.mDrawableContainerState.mEnterFadeDuration <= 0) && (this.mHasAlpha)) {
                p6.setAlpha(this.mAlpha);
            }
        } catch (int v1_33) {
            p6.setCallback(this.mBlockInvalidateCallback.unwrap());
            throw v1_33;
        }
        if (!this.mDrawableContainerState.mHasColorFilter) {
            if (this.mDrawableContainerState.mHasTintList) {
                androidx.core.graphics.drawable.DrawableCompat.setTintList(p6, this.mDrawableContainerState.mTintList);
            }
            if (this.mDrawableContainerState.mHasTintMode) {
                androidx.core.graphics.drawable.DrawableCompat.setTintMode(p6, this.mDrawableContainerState.mTintMode);
            }
        } else {
            p6.setColorFilter(this.mDrawableContainerState.mColorFilter);
        }
        p6.setVisible(this.isVisible(), 1);
        p6.setDither(this.mDrawableContainerState.mDither);
        p6.setState(this.getState());
        p6.setLevel(this.getLevel());
        p6.setBounds(this.getBounds());
        if (android.os.Build$VERSION.SDK_INT >= 23) {
            p6.setLayoutDirection(this.getLayoutDirection());
        }
        if (android.os.Build$VERSION.SDK_INT >= 19) {
            p6.setAutoMirrored(this.mDrawableContainerState.mAutoMirrored);
        }
        android.graphics.Rect v0 = this.mHotspotBounds;
        if ((android.os.Build$VERSION.SDK_INT >= 21) && (v0 != null)) {
            p6.setHotspotBounds(v0.left, v0.top, v0.right, v0.bottom);
        }
        p6.setCallback(this.mBlockInvalidateCallback.unwrap());
        return;
    }

    private boolean needsMirroring()
    {
        int v0 = 1;
        if ((!this.isAutoMirrored()) || (this.getLayoutDirection() != 1)) {
            v0 = 0;
        }
        return v0;
    }

    static int resolveDensity(android.content.res.Resources p2, int p3)
    {
        int v0;
        if (p2 != null) {
            v0 = p2.getDisplayMetrics().densityDpi;
        } else {
            v0 = p3;
        }
        if (v0 == 0) {
            v0 = 160;
        }
        return v0;
    }

    void animate(boolean p13)
    {
        this.mHasAlpha = 1;
        long v2 = android.os.SystemClock.uptimeMillis();
        int v1 = 0;
        if (this.mCurrDrawable == null) {
            this.mEnterAnimationEnd = 0;
        } else {
            if (this.mEnterAnimationEnd != 0) {
                if (this.mEnterAnimationEnd > v2) {
                    this.mCurrDrawable.setAlpha((((255 - (((int) ((this.mEnterAnimationEnd - v2) * 255)) / this.mDrawableContainerState.mEnterFadeDuration)) * this.mAlpha) / 255));
                    v1 = 1;
                } else {
                    this.mCurrDrawable.setAlpha(this.mAlpha);
                    this.mEnterAnimationEnd = 0;
                }
            }
        }
        if (this.mLastDrawable == null) {
            this.mExitAnimationEnd = 0;
        } else {
            if (this.mExitAnimationEnd != 0) {
                if (this.mExitAnimationEnd > v2) {
                    this.mLastDrawable.setAlpha(((this.mAlpha * (((int) ((this.mExitAnimationEnd - v2) * 255)) / this.mDrawableContainerState.mExitFadeDuration)) / 255));
                    v1 = 1;
                } else {
                    this.mLastDrawable.setVisible(0, 0);
                    this.mLastDrawable = 0;
                    this.mLastIndex = -1;
                    this.mExitAnimationEnd = 0;
                }
            }
        }
        if ((p13) && (v1 != 0)) {
            this.scheduleSelf(this.mAnimationRunnable, (16 + v2));
        }
        return;
    }

    public void applyTheme(android.content.res.Resources$Theme p2)
    {
        this.mDrawableContainerState.applyTheme(p2);
        return;
    }

    public boolean canApplyTheme()
    {
        return this.mDrawableContainerState.canApplyTheme();
    }

    void clearMutated()
    {
        this.mDrawableContainerState.clearMutated();
        this.mMutated = 0;
        return;
    }

    androidx.appcompat.graphics.drawable.DrawableContainer$DrawableContainerState cloneConstantState()
    {
        return this.mDrawableContainerState;
    }

    public void draw(android.graphics.Canvas p2)
    {
        if (this.mCurrDrawable != null) {
            this.mCurrDrawable.draw(p2);
        }
        if (this.mLastDrawable != null) {
            this.mLastDrawable.draw(p2);
        }
        return;
    }

    public int getAlpha()
    {
        return this.mAlpha;
    }

    public int getChangingConfigurations()
    {
        return (super.getChangingConfigurations() | this.mDrawableContainerState.getChangingConfigurations());
    }

    public final android.graphics.drawable.Drawable$ConstantState getConstantState()
    {
        int v0_2;
        if (!this.mDrawableContainerState.canConstantState()) {
            v0_2 = 0;
        } else {
            this.mDrawableContainerState.mChangingConfigurations = this.getChangingConfigurations();
            v0_2 = this.mDrawableContainerState;
        }
        return v0_2;
    }

    public android.graphics.drawable.Drawable getCurrent()
    {
        return this.mCurrDrawable;
    }

    int getCurrentIndex()
    {
        return this.mCurIndex;
    }

    public void getHotspotBounds(android.graphics.Rect p2)
    {
        if (this.mHotspotBounds == null) {
            super.getHotspotBounds(p2);
        } else {
            p2.set(this.mHotspotBounds);
        }
        return;
    }

    public int getIntrinsicHeight()
    {
        int v0_2;
        if (!this.mDrawableContainerState.isConstantSize()) {
            if (this.mCurrDrawable == null) {
                v0_2 = -1;
            } else {
                v0_2 = this.mCurrDrawable.getIntrinsicHeight();
            }
        } else {
            v0_2 = this.mDrawableContainerState.getConstantHeight();
        }
        return v0_2;
    }

    public int getIntrinsicWidth()
    {
        int v0_2;
        if (!this.mDrawableContainerState.isConstantSize()) {
            if (this.mCurrDrawable == null) {
                v0_2 = -1;
            } else {
                v0_2 = this.mCurrDrawable.getIntrinsicWidth();
            }
        } else {
            v0_2 = this.mDrawableContainerState.getConstantWidth();
        }
        return v0_2;
    }

    public int getMinimumHeight()
    {
        int v0_2;
        if (!this.mDrawableContainerState.isConstantSize()) {
            if (this.mCurrDrawable == null) {
                v0_2 = 0;
            } else {
                v0_2 = this.mCurrDrawable.getMinimumHeight();
            }
        } else {
            v0_2 = this.mDrawableContainerState.getConstantMinimumHeight();
        }
        return v0_2;
    }

    public int getMinimumWidth()
    {
        int v0_2;
        if (!this.mDrawableContainerState.isConstantSize()) {
            if (this.mCurrDrawable == null) {
                v0_2 = 0;
            } else {
                v0_2 = this.mCurrDrawable.getMinimumWidth();
            }
        } else {
            v0_2 = this.mDrawableContainerState.getConstantMinimumWidth();
        }
        return v0_2;
    }

    public int getOpacity()
    {
        if ((this.mCurrDrawable != null) && (this.mCurrDrawable.isVisible())) {
            int v0_4 = this.mDrawableContainerState.getOpacity();
        } else {
            v0_4 = -2;
        }
        return v0_4;
    }

    public void getOutline(android.graphics.Outline p2)
    {
        if (this.mCurrDrawable != null) {
            this.mCurrDrawable.getOutline(p2);
        }
        return;
    }

    public boolean getPadding(android.graphics.Rect p7)
    {
        boolean v2;
        android.graphics.Rect v1 = this.mDrawableContainerState.getConstantPadding();
        if (v1 == null) {
            if (this.mCurrDrawable == null) {
                v2 = super.getPadding(p7);
            } else {
                v2 = this.mCurrDrawable.getPadding(p7);
            }
        } else {
            p7.set(v1);
            if ((((v1.left | v1.top) | v1.bottom) | v1.right) == 0) {
                v2 = 0;
            } else {
                v2 = 1;
            }
        }
        if (this.needsMirroring()) {
            int v0 = p7.left;
            p7.left = p7.right;
            p7.right = v0;
        }
        return v2;
    }

    public void invalidateDrawable(android.graphics.drawable.Drawable p2)
    {
        if (this.mDrawableContainerState != null) {
            this.mDrawableContainerState.invalidateCache();
        }
        if ((p2 == this.mCurrDrawable) && (this.getCallback() != null)) {
            this.getCallback().invalidateDrawable(this);
        }
        return;
    }

    public boolean isAutoMirrored()
    {
        return this.mDrawableContainerState.mAutoMirrored;
    }

    public boolean isStateful()
    {
        return this.mDrawableContainerState.isStateful();
    }

    public void jumpToCurrentState()
    {
        int v0 = 0;
        if (this.mLastDrawable != null) {
            this.mLastDrawable.jumpToCurrentState();
            this.mLastDrawable = 0;
            this.mLastIndex = -1;
            v0 = 1;
        }
        if (this.mCurrDrawable != null) {
            this.mCurrDrawable.jumpToCurrentState();
            if (this.mHasAlpha) {
                this.mCurrDrawable.setAlpha(this.mAlpha);
            }
        }
        if (this.mExitAnimationEnd != 0) {
            this.mExitAnimationEnd = 0;
            v0 = 1;
        }
        if (this.mEnterAnimationEnd != 0) {
            this.mEnterAnimationEnd = 0;
            v0 = 1;
        }
        if (v0 != 0) {
            this.invalidateSelf();
        }
        return;
    }

    public android.graphics.drawable.Drawable mutate()
    {
        if ((!this.mMutated) && (super.mutate() == this)) {
            androidx.appcompat.graphics.drawable.DrawableContainer$DrawableContainerState v0 = this.cloneConstantState();
            v0.mutate();
            this.setConstantState(v0);
            this.mMutated = 1;
        }
        return this;
    }

    protected void onBoundsChange(android.graphics.Rect p2)
    {
        if (this.mLastDrawable != null) {
            this.mLastDrawable.setBounds(p2);
        }
        if (this.mCurrDrawable != null) {
            this.mCurrDrawable.setBounds(p2);
        }
        return;
    }

    public boolean onLayoutDirectionChanged(int p3)
    {
        return this.mDrawableContainerState.setLayoutDirection(p3, this.getCurrentIndex());
    }

    protected boolean onLevelChange(int p2)
    {
        int v0_1;
        if (this.mLastDrawable == null) {
            if (this.mCurrDrawable == null) {
                v0_1 = 0;
            } else {
                v0_1 = this.mCurrDrawable.setLevel(p2);
            }
        } else {
            v0_1 = this.mLastDrawable.setLevel(p2);
        }
        return v0_1;
    }

    protected boolean onStateChange(int[] p2)
    {
        int v0_1;
        if (this.mLastDrawable == null) {
            if (this.mCurrDrawable == null) {
                v0_1 = 0;
            } else {
                v0_1 = this.mCurrDrawable.setState(p2);
            }
        } else {
            v0_1 = this.mLastDrawable.setState(p2);
        }
        return v0_1;
    }

    public void scheduleDrawable(android.graphics.drawable.Drawable p2, Runnable p3, long p4)
    {
        if ((p2 == this.mCurrDrawable) && (this.getCallback() != null)) {
            this.getCallback().scheduleDrawable(this, p3, p4);
        }
        return;
    }

    boolean selectDrawable(int p13)
    {
        Runnable v1_7 = 0;
        if (p13 != this.mCurIndex) {
            long v2 = android.os.SystemClock.uptimeMillis();
            if (this.mDrawableContainerState.mExitFadeDuration <= 0) {
                if (this.mCurrDrawable != null) {
                    this.mCurrDrawable.setVisible(0, 0);
                }
            } else {
                if (this.mLastDrawable != null) {
                    this.mLastDrawable.setVisible(0, 0);
                }
                if (this.mCurrDrawable == null) {
                    this.mLastDrawable = 0;
                    this.mLastIndex = -1;
                    this.mExitAnimationEnd = 0;
                } else {
                    this.mLastDrawable = this.mCurrDrawable;
                    this.mLastIndex = this.mCurIndex;
                    this.mExitAnimationEnd = (((long) this.mDrawableContainerState.mExitFadeDuration) + v2);
                }
            }
            if ((p13 < 0) || (p13 >= this.mDrawableContainerState.mNumChildren)) {
                this.mCurrDrawable = 0;
                this.mCurIndex = -1;
            } else {
                android.graphics.drawable.Drawable v0 = this.mDrawableContainerState.getChild(p13);
                this.mCurrDrawable = v0;
                this.mCurIndex = p13;
                if (v0 != null) {
                    if (this.mDrawableContainerState.mEnterFadeDuration > 0) {
                        this.mEnterAnimationEnd = (((long) this.mDrawableContainerState.mEnterFadeDuration) + v2);
                    }
                    this.initializeDrawableForDisplay(v0);
                }
            }
            if ((this.mEnterAnimationEnd != 0) || (this.mExitAnimationEnd != 0)) {
                if (this.mAnimationRunnable != null) {
                    this.unscheduleSelf(this.mAnimationRunnable);
                } else {
                    this.mAnimationRunnable = new androidx.appcompat.graphics.drawable.DrawableContainer$1(this);
                }
                this.animate(1);
            }
            this.invalidateSelf();
            v1_7 = 1;
        }
        return v1_7;
    }

    public void setAlpha(int p5)
    {
        if ((!this.mHasAlpha) || (this.mAlpha != p5)) {
            this.mHasAlpha = 1;
            this.mAlpha = p5;
            if (this.mCurrDrawable != null) {
                if (this.mEnterAnimationEnd != 0) {
                    this.animate(0);
                } else {
                    this.mCurrDrawable.setAlpha(p5);
                }
            }
        }
        return;
    }

    public void setAutoMirrored(boolean p3)
    {
        if (this.mDrawableContainerState.mAutoMirrored != p3) {
            this.mDrawableContainerState.mAutoMirrored = p3;
            if (this.mCurrDrawable != null) {
                androidx.core.graphics.drawable.DrawableCompat.setAutoMirrored(this.mCurrDrawable, this.mDrawableContainerState.mAutoMirrored);
            }
        }
        return;
    }

    public void setColorFilter(android.graphics.ColorFilter p3)
    {
        this.mDrawableContainerState.mHasColorFilter = 1;
        if (this.mDrawableContainerState.mColorFilter != p3) {
            this.mDrawableContainerState.mColorFilter = p3;
            if (this.mCurrDrawable != null) {
                this.mCurrDrawable.setColorFilter(p3);
            }
        }
        return;
    }

    protected void setConstantState(androidx.appcompat.graphics.drawable.DrawableContainer$DrawableContainerState p2)
    {
        this.mDrawableContainerState = p2;
        if (this.mCurIndex >= 0) {
            this.mCurrDrawable = p2.getChild(this.mCurIndex);
            if (this.mCurrDrawable != null) {
                this.initializeDrawableForDisplay(this.mCurrDrawable);
            }
        }
        this.mLastIndex = -1;
        this.mLastDrawable = 0;
        return;
    }

    void setCurrentIndex(int p1)
    {
        this.selectDrawable(p1);
        return;
    }

    public void setDither(boolean p3)
    {
        if (this.mDrawableContainerState.mDither != p3) {
            this.mDrawableContainerState.mDither = p3;
            if (this.mCurrDrawable != null) {
                this.mCurrDrawable.setDither(this.mDrawableContainerState.mDither);
            }
        }
        return;
    }

    public void setEnterFadeDuration(int p2)
    {
        this.mDrawableContainerState.mEnterFadeDuration = p2;
        return;
    }

    public void setExitFadeDuration(int p2)
    {
        this.mDrawableContainerState.mExitFadeDuration = p2;
        return;
    }

    public void setHotspot(float p2, float p3)
    {
        if (this.mCurrDrawable != null) {
            androidx.core.graphics.drawable.DrawableCompat.setHotspot(this.mCurrDrawable, p2, p3);
        }
        return;
    }

    public void setHotspotBounds(int p2, int p3, int p4, int p5)
    {
        if (this.mHotspotBounds != null) {
            this.mHotspotBounds.set(p2, p3, p4, p5);
        } else {
            this.mHotspotBounds = new android.graphics.Rect(p2, p3, p4, p5);
        }
        if (this.mCurrDrawable != null) {
            androidx.core.graphics.drawable.DrawableCompat.setHotspotBounds(this.mCurrDrawable, p2, p3, p4, p5);
        }
        return;
    }

    public void setTintList(android.content.res.ColorStateList p3)
    {
        this.mDrawableContainerState.mHasTintList = 1;
        if (this.mDrawableContainerState.mTintList != p3) {
            this.mDrawableContainerState.mTintList = p3;
            androidx.core.graphics.drawable.DrawableCompat.setTintList(this.mCurrDrawable, p3);
        }
        return;
    }

    public void setTintMode(android.graphics.PorterDuff$Mode p3)
    {
        this.mDrawableContainerState.mHasTintMode = 1;
        if (this.mDrawableContainerState.mTintMode != p3) {
            this.mDrawableContainerState.mTintMode = p3;
            androidx.core.graphics.drawable.DrawableCompat.setTintMode(this.mCurrDrawable, p3);
        }
        return;
    }

    public boolean setVisible(boolean p3, boolean p4)
    {
        boolean v0 = super.setVisible(p3, p4);
        if (this.mLastDrawable != null) {
            this.mLastDrawable.setVisible(p3, p4);
        }
        if (this.mCurrDrawable != null) {
            this.mCurrDrawable.setVisible(p3, p4);
        }
        return v0;
    }

    public void unscheduleDrawable(android.graphics.drawable.Drawable p2, Runnable p3)
    {
        if ((p2 == this.mCurrDrawable) && (this.getCallback() != null)) {
            this.getCallback().unscheduleDrawable(this, p3);
        }
        return;
    }

    final void updateDensity(android.content.res.Resources p2)
    {
        this.mDrawableContainerState.updateDensity(p2);
        return;
    }
}
