package androidx.appcompat.graphics.drawable;
abstract class DrawableContainer$DrawableContainerState extends android.graphics.drawable.Drawable$ConstantState {
    boolean mAutoMirrored;
    boolean mCanConstantState;
    int mChangingConfigurations;
    boolean mCheckedConstantSize;
    boolean mCheckedConstantState;
    boolean mCheckedOpacity;
    boolean mCheckedPadding;
    boolean mCheckedStateful;
    int mChildrenChangingConfigurations;
    android.graphics.ColorFilter mColorFilter;
    int mConstantHeight;
    int mConstantMinimumHeight;
    int mConstantMinimumWidth;
    android.graphics.Rect mConstantPadding;
    boolean mConstantSize;
    int mConstantWidth;
    int mDensity;
    boolean mDither;
    android.util.SparseArray mDrawableFutures;
    android.graphics.drawable.Drawable[] mDrawables;
    int mEnterFadeDuration;
    int mExitFadeDuration;
    boolean mHasColorFilter;
    boolean mHasTintList;
    boolean mHasTintMode;
    int mLayoutDirection;
    boolean mMutated;
    int mNumChildren;
    int mOpacity;
    final androidx.appcompat.graphics.drawable.DrawableContainer mOwner;
    android.content.res.Resources mSourceRes;
    boolean mStateful;
    android.content.res.ColorStateList mTintList;
    android.graphics.PorterDuff$Mode mTintMode;
    boolean mVariablePadding;

    DrawableContainer$DrawableContainerState(androidx.appcompat.graphics.drawable.DrawableContainer$DrawableContainerState p9, androidx.appcompat.graphics.drawable.DrawableContainer p10, android.content.res.Resources p11)
    {
        android.graphics.drawable.Drawable[] v5_7;
        this.mDensity = 160;
        this.mVariablePadding = 0;
        this.mConstantSize = 0;
        this.mDither = 1;
        this.mEnterFadeDuration = 0;
        this.mExitFadeDuration = 0;
        this.mOwner = p10;
        if (p11 == null) {
            if (p9 == null) {
                v5_7 = 0;
            } else {
                v5_7 = p9.mSourceRes;
            }
        } else {
            v5_7 = p11;
        }
        android.graphics.drawable.Drawable[] v5_8;
        this.mSourceRes = v5_7;
        if (p9 == null) {
            v5_8 = 0;
        } else {
            v5_8 = p9.mDensity;
        }
        this.mDensity = androidx.appcompat.graphics.drawable.DrawableContainer.resolveDensity(p11, v5_8);
        if (p9 == null) {
            android.graphics.drawable.Drawable[] v5_11 = new android.graphics.drawable.Drawable[10];
            this.mDrawables = v5_11;
            this.mNumChildren = 0;
        } else {
            this.mChangingConfigurations = p9.mChangingConfigurations;
            this.mChildrenChangingConfigurations = p9.mChildrenChangingConfigurations;
            this.mCheckedConstantState = 1;
            this.mCanConstantState = 1;
            this.mVariablePadding = p9.mVariablePadding;
            this.mConstantSize = p9.mConstantSize;
            this.mDither = p9.mDither;
            this.mMutated = p9.mMutated;
            this.mLayoutDirection = p9.mLayoutDirection;
            this.mEnterFadeDuration = p9.mEnterFadeDuration;
            this.mExitFadeDuration = p9.mExitFadeDuration;
            this.mAutoMirrored = p9.mAutoMirrored;
            this.mColorFilter = p9.mColorFilter;
            this.mHasColorFilter = p9.mHasColorFilter;
            this.mTintList = p9.mTintList;
            this.mTintMode = p9.mTintMode;
            this.mHasTintList = p9.mHasTintList;
            this.mHasTintMode = p9.mHasTintMode;
            if (p9.mDensity == this.mDensity) {
                if (p9.mCheckedPadding) {
                    this.mConstantPadding = new android.graphics.Rect(p9.mConstantPadding);
                    this.mCheckedPadding = 1;
                }
                if (p9.mCheckedConstantSize) {
                    this.mConstantWidth = p9.mConstantWidth;
                    this.mConstantHeight = p9.mConstantHeight;
                    this.mConstantMinimumWidth = p9.mConstantMinimumWidth;
                    this.mConstantMinimumHeight = p9.mConstantMinimumHeight;
                    this.mCheckedConstantSize = 1;
                }
            }
            if (p9.mCheckedOpacity) {
                this.mOpacity = p9.mOpacity;
                this.mCheckedOpacity = 1;
            }
            if (p9.mCheckedStateful) {
                this.mStateful = p9.mStateful;
                this.mCheckedStateful = 1;
            }
            android.graphics.drawable.Drawable[] v4 = p9.mDrawables;
            android.graphics.drawable.Drawable[] v5_43 = new android.graphics.drawable.Drawable[v4.length];
            this.mDrawables = v5_43;
            this.mNumChildren = p9.mNumChildren;
            android.util.SparseArray v3 = p9.mDrawableFutures;
            if (v3 == null) {
                this.mDrawableFutures = new android.util.SparseArray(this.mNumChildren);
            } else {
                this.mDrawableFutures = v3.clone();
            }
            int v0 = this.mNumChildren;
            int v2 = 0;
            while (v2 < v0) {
                if (v4[v2] != null) {
                    android.graphics.drawable.Drawable$ConstantState v1 = v4[v2].getConstantState();
                    if (v1 == null) {
                        this.mDrawables[v2] = v4[v2];
                    } else {
                        this.mDrawableFutures.put(v2, v1);
                    }
                }
                v2++;
            }
        }
        return;
    }

    private void createAllFutures()
    {
        if (this.mDrawableFutures != null) {
            int v1 = this.mDrawableFutures.size();
            int v3 = 0;
            while (v3 < v1) {
                this.mDrawables[this.mDrawableFutures.keyAt(v3)] = this.prepareDrawable(((android.graphics.drawable.Drawable$ConstantState) this.mDrawableFutures.valueAt(v3)).newDrawable(this.mSourceRes));
                v3++;
            }
            this.mDrawableFutures = 0;
        }
        return;
    }

    private android.graphics.drawable.Drawable prepareDrawable(android.graphics.drawable.Drawable p3)
    {
        if (android.os.Build$VERSION.SDK_INT >= 23) {
            p3.setLayoutDirection(this.mLayoutDirection);
        }
        android.graphics.drawable.Drawable v3_1 = p3.mutate();
        v3_1.setCallback(this.mOwner);
        return v3_1;
    }

    public final int addChild(android.graphics.drawable.Drawable p5)
    {
        int v0 = this.mNumChildren;
        if (v0 >= this.mDrawables.length) {
            this.growArray(v0, (v0 + 10));
        }
        p5.mutate();
        p5.setVisible(0, 1);
        p5.setCallback(this.mOwner);
        this.mDrawables[v0] = p5;
        this.mNumChildren = (this.mNumChildren + 1);
        this.mChildrenChangingConfigurations = (this.mChildrenChangingConfigurations | p5.getChangingConfigurations());
        this.invalidateCache();
        this.mConstantPadding = 0;
        this.mCheckedPadding = 0;
        this.mCheckedConstantSize = 0;
        this.mCheckedConstantState = 0;
        return v0;
    }

    final void applyTheme(android.content.res.Resources$Theme p6)
    {
        if (p6 != null) {
            this.createAllFutures();
            int v0 = this.mNumChildren;
            android.graphics.drawable.Drawable[] v1 = this.mDrawables;
            int v2 = 0;
            while (v2 < v0) {
                if ((v1[v2] != null) && (v1[v2].canApplyTheme())) {
                    v1[v2].applyTheme(p6);
                    this.mChildrenChangingConfigurations = (this.mChildrenChangingConfigurations | v1[v2].getChangingConfigurations());
                }
                v2++;
            }
            this.updateDensity(p6.getResources());
        }
        return;
    }

    public boolean canApplyTheme()
    {
        int v5 = 1;
        int v4 = 0;
        while (v4 < this.mNumChildren) {
            android.graphics.drawable.Drawable v1 = this.mDrawables[v4];
            if (v1 == null) {
                android.graphics.drawable.Drawable$ConstantState v3_1 = ((android.graphics.drawable.Drawable$ConstantState) this.mDrawableFutures.get(v4));
                if ((v3_1 != null) && (v3_1.canApplyTheme())) {
                    return v5;
                }
            } else {
                if (v1.canApplyTheme()) {
                    return v5;
                }
            }
            v4++;
        }
        v5 = 0;
        return v5;
    }

    public declared_synchronized boolean canConstantState()
    {
        int v3_0 = 0;
        try {
            if (!this.mCheckedConstantState) {
                this.createAllFutures();
                this.mCheckedConstantState = 1;
                int v2 = 0;
                while (v2 < this.mNumChildren) {
                    if (this.mDrawables[v2].getConstantState() != null) {
                        v2++;
                    } else {
                        this.mCanConstantState = 0;
                    }
                }
                this.mCanConstantState = 1;
                v3_0 = 1;
            } else {
                v3_0 = this.mCanConstantState;
            }
        } catch (int v3_2) {
            throw v3_2;
        }
        return v3_0;
    }

    final void clearMutated()
    {
        this.mMutated = 0;
        return;
    }

    protected void computeConstantSize()
    {
        this.mCheckedConstantSize = 1;
        this.createAllFutures();
        int v0 = this.mNumChildren;
        android.graphics.drawable.Drawable[] v2 = this.mDrawables;
        this.mConstantHeight = -1;
        this.mConstantWidth = -1;
        this.mConstantMinimumHeight = 0;
        this.mConstantMinimumWidth = 0;
        int v3 = 0;
        while (v3 < v0) {
            android.graphics.drawable.Drawable v1 = v2[v3];
            int v4_0 = v1.getIntrinsicWidth();
            if (v4_0 > this.mConstantWidth) {
                this.mConstantWidth = v4_0;
            }
            int v4_1 = v1.getIntrinsicHeight();
            if (v4_1 > this.mConstantHeight) {
                this.mConstantHeight = v4_1;
            }
            int v4_2 = v1.getMinimumWidth();
            if (v4_2 > this.mConstantMinimumWidth) {
                this.mConstantMinimumWidth = v4_2;
            }
            int v4_3 = v1.getMinimumHeight();
            if (v4_3 > this.mConstantMinimumHeight) {
                this.mConstantMinimumHeight = v4_3;
            }
            v3++;
        }
        return;
    }

    final int getCapacity()
    {
        return this.mDrawables.length;
    }

    public int getChangingConfigurations()
    {
        return (this.mChangingConfigurations | this.mChildrenChangingConfigurations);
    }

    public final android.graphics.drawable.Drawable getChild(int p7)
    {
        android.graphics.drawable.Drawable v3 = this.mDrawables[p7];
        if (v3 == null) {
            if (this.mDrawableFutures != null) {
                int v1 = this.mDrawableFutures.indexOfKey(p7);
                if (v1 >= 0) {
                    android.graphics.drawable.Drawable v2 = this.prepareDrawable(((android.graphics.drawable.Drawable$ConstantState) this.mDrawableFutures.valueAt(v1)).newDrawable(this.mSourceRes));
                    this.mDrawables[p7] = v2;
                    this.mDrawableFutures.removeAt(v1);
                    if (this.mDrawableFutures.size() == 0) {
                        this.mDrawableFutures = 0;
                    }
                    v3 = v2;
                    return v3;
                }
            }
            v3 = 0;
        }
        return v3;
    }

    public final int getChildCount()
    {
        return this.mNumChildren;
    }

    public final int getConstantHeight()
    {
        if (!this.mCheckedConstantSize) {
            this.computeConstantSize();
        }
        return this.mConstantHeight;
    }

    public final int getConstantMinimumHeight()
    {
        if (!this.mCheckedConstantSize) {
            this.computeConstantSize();
        }
        return this.mConstantMinimumHeight;
    }

    public final int getConstantMinimumWidth()
    {
        if (!this.mCheckedConstantSize) {
            this.computeConstantSize();
        }
        return this.mConstantMinimumWidth;
    }

    public final android.graphics.Rect getConstantPadding()
    {
        android.graphics.Rect v3_1;
        if (!this.mVariablePadding) {
            if ((this.mConstantPadding == null) && (!this.mCheckedPadding)) {
                this.createAllFutures();
                v3_1 = 0;
                android.graphics.Rect v4_0 = new android.graphics.Rect();
                int v0 = this.mNumChildren;
                android.graphics.drawable.Drawable[] v1 = this.mDrawables;
                int v2 = 0;
                while (v2 < v0) {
                    if (v1[v2].getPadding(v4_0)) {
                        if (v3_1 == null) {
                            v3_1 = new android.graphics.Rect(0, 0, 0, 0);
                        }
                        if (v4_0.left > v3_1.left) {
                            v3_1.left = v4_0.left;
                        }
                        if (v4_0.top > v3_1.top) {
                            v3_1.top = v4_0.top;
                        }
                        if (v4_0.right > v3_1.right) {
                            v3_1.right = v4_0.right;
                        }
                        if (v4_0.bottom > v3_1.bottom) {
                            v3_1.bottom = v4_0.bottom;
                        }
                    }
                    v2++;
                }
                this.mCheckedPadding = 1;
                this.mConstantPadding = v3_1;
            } else {
                v3_1 = this.mConstantPadding;
            }
        } else {
            v3_1 = 0;
        }
        return v3_1;
    }

    public final int getConstantWidth()
    {
        if (!this.mCheckedConstantSize) {
            this.computeConstantSize();
        }
        return this.mConstantWidth;
    }

    public final int getEnterFadeDuration()
    {
        return this.mEnterFadeDuration;
    }

    public final int getExitFadeDuration()
    {
        return this.mExitFadeDuration;
    }

    public final int getOpacity()
    {
        int v3;
        if (!this.mCheckedOpacity) {
            this.createAllFutures();
            int v0 = this.mNumChildren;
            android.graphics.drawable.Drawable[] v1 = this.mDrawables;
            if (v0 <= 0) {
                v3 = -2;
            } else {
                v3 = v1[0].getOpacity();
            }
            int v2 = 1;
            while (v2 < v0) {
                v3 = android.graphics.drawable.Drawable.resolveOpacity(v3, v1[v2].getOpacity());
                v2++;
            }
            this.mOpacity = v3;
            this.mCheckedOpacity = 1;
        } else {
            v3 = this.mOpacity;
        }
        return v3;
    }

    public void growArray(int p4, int p5)
    {
        android.graphics.drawable.Drawable[] v0 = new android.graphics.drawable.Drawable[p5];
        System.arraycopy(this.mDrawables, 0, v0, 0, p4);
        this.mDrawables = v0;
        return;
    }

    void invalidateCache()
    {
        this.mCheckedOpacity = 0;
        this.mCheckedStateful = 0;
        return;
    }

    public final boolean isConstantSize()
    {
        return this.mConstantSize;
    }

    public final boolean isStateful()
    {
        int v3;
        if (!this.mCheckedStateful) {
            this.createAllFutures();
            v3 = 0;
            int v2 = 0;
            while (v2 < this.mNumChildren) {
                if (!this.mDrawables[v2].isStateful()) {
                    v2++;
                } else {
                    v3 = 1;
                    break;
                }
            }
            this.mStateful = v3;
            this.mCheckedStateful = 1;
        } else {
            v3 = this.mStateful;
        }
        return v3;
    }

    void mutate()
    {
        int v0 = this.mNumChildren;
        android.graphics.drawable.Drawable[] v1 = this.mDrawables;
        int v2 = 0;
        while (v2 < v0) {
            if (v1[v2] != null) {
                v1[v2].mutate();
            }
            v2++;
        }
        this.mMutated = 1;
        return;
    }

    public final void setConstantSize(boolean p1)
    {
        this.mConstantSize = p1;
        return;
    }

    public final void setEnterFadeDuration(int p1)
    {
        this.mEnterFadeDuration = p1;
        return;
    }

    public final void setExitFadeDuration(int p1)
    {
        this.mExitFadeDuration = p1;
        return;
    }

    final boolean setLayoutDirection(int p8, int p9)
    {
        boolean v0 = 0;
        int v2 = this.mNumChildren;
        android.graphics.drawable.Drawable[] v3 = this.mDrawables;
        int v4 = 0;
        while (v4 < v2) {
            if (v3[v4] != null) {
                boolean v1 = 0;
                if (android.os.Build$VERSION.SDK_INT >= 23) {
                    v1 = v3[v4].setLayoutDirection(p8);
                }
                if (v4 == p9) {
                    v0 = v1;
                }
            }
            v4++;
        }
        this.mLayoutDirection = p8;
        return v0;
    }

    public final void setVariablePadding(boolean p1)
    {
        this.mVariablePadding = p1;
        return;
    }

    final void updateDensity(android.content.res.Resources p5)
    {
        if (p5 != null) {
            this.mSourceRes = p5;
            int v1 = androidx.appcompat.graphics.drawable.DrawableContainer.resolveDensity(p5, this.mDensity);
            int v0 = this.mDensity;
            this.mDensity = v1;
            if (v0 != v1) {
                this.mCheckedConstantSize = 0;
                this.mCheckedPadding = 0;
            }
        }
        return;
    }
}
