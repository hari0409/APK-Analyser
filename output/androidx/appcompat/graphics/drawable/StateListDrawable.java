package androidx.appcompat.graphics.drawable;
 class StateListDrawable extends androidx.appcompat.graphics.drawable.DrawableContainer {
    private static final boolean DEBUG = False;
    private static final String TAG = "StateListDrawable";
    private boolean mMutated;
    private androidx.appcompat.graphics.drawable.StateListDrawable$StateListState mStateListState;

    StateListDrawable()
    {
        this(0, 0);
        return;
    }

    StateListDrawable(androidx.appcompat.graphics.drawable.StateListDrawable$StateListState p1)
    {
        if (p1 != null) {
            this.setConstantState(p1);
        }
        return;
    }

    StateListDrawable(androidx.appcompat.graphics.drawable.StateListDrawable$StateListState p3, android.content.res.Resources p4)
    {
        this.setConstantState(new androidx.appcompat.graphics.drawable.StateListDrawable$StateListState(p3, this, p4));
        this.onStateChange(this.getState());
        return;
    }

    private void inflateChildElements(android.content.Context p14, android.content.res.Resources p15, org.xmlpull.v1.XmlPullParser p16, android.util.AttributeSet p17, android.content.res.Resources$Theme p18)
    {
        androidx.appcompat.graphics.drawable.StateListDrawable$StateListState v7 = this.mStateListState;
        int v6 = (p16.getDepth() + 1);
        while(true) {
            int v9_1 = p16.next();
            if (v9_1 != 1) {
                int v3 = p16.getDepth();
                if ((v3 >= v6) || (v9_1 != 3)) {
                    if ((v9_1 == 2) && ((v3 <= v6) && (p16.getName().equals("item")))) {
                        android.content.res.TypedArray v2 = androidx.core.content.res.TypedArrayUtils.obtainAttributes(p15, p18, p17, androidx.appcompat.R$styleable.StateListDrawableItem);
                        android.graphics.drawable.Drawable v4 = 0;
                        int v5 = v2.getResourceId(androidx.appcompat.R$styleable.StateListDrawableItem_android_drawable, -1);
                        if (v5 > 0) {
                            v4 = androidx.appcompat.content.res.AppCompatResources.getDrawable(p14, v5);
                        }
                        v2.recycle();
                        int[] v8 = this.extractStateSet(p17);
                        if (v4 == null) {
                            do {
                                int v9_0 = p16.next();
                            } while(v9_0 == 4);
                            if (v9_0 != 2) {
                                break;
                            }
                            if (android.os.Build$VERSION.SDK_INT < 21) {
                                v4 = android.graphics.drawable.Drawable.createFromXmlInner(p15, p16, p17);
                            } else {
                                v4 = android.graphics.drawable.Drawable.createFromXmlInner(p15, p16, p17, p18);
                            }
                        }
                        v7.addStateSet(v8, v4);
                    }
                }
            }
            return;
        }
        throw new org.xmlpull.v1.XmlPullParserException(new StringBuilder().append(p16.getPositionDescription()).append(": <item> tag requires a \'drawable\' attribute or ").append("child tag defining a drawable").toString());
    }

    private void updateStateFromTypedArray(android.content.res.TypedArray p4)
    {
        androidx.appcompat.graphics.drawable.StateListDrawable$StateListState v0 = this.mStateListState;
        if (android.os.Build$VERSION.SDK_INT >= 21) {
            v0.mChangingConfigurations = (v0.mChangingConfigurations | p4.getChangingConfigurations());
        }
        v0.mVariablePadding = p4.getBoolean(androidx.appcompat.R$styleable.StateListDrawable_android_variablePadding, v0.mVariablePadding);
        v0.mConstantSize = p4.getBoolean(androidx.appcompat.R$styleable.StateListDrawable_android_constantSize, v0.mConstantSize);
        v0.mEnterFadeDuration = p4.getInt(androidx.appcompat.R$styleable.StateListDrawable_android_enterFadeDuration, v0.mEnterFadeDuration);
        v0.mExitFadeDuration = p4.getInt(androidx.appcompat.R$styleable.StateListDrawable_android_exitFadeDuration, v0.mExitFadeDuration);
        v0.mDither = p4.getBoolean(androidx.appcompat.R$styleable.StateListDrawable_android_dither, v0.mDither);
        return;
    }

    public void addState(int[] p2, android.graphics.drawable.Drawable p3)
    {
        if (p3 != null) {
            this.mStateListState.addStateSet(p2, p3);
            this.onStateChange(this.getState());
        }
        return;
    }

    public void applyTheme(android.content.res.Resources$Theme p2)
    {
        super.applyTheme(p2);
        this.onStateChange(this.getState());
        return;
    }

    void clearMutated()
    {
        super.clearMutated();
        this.mMutated = 0;
        return;
    }

    bridge synthetic androidx.appcompat.graphics.drawable.DrawableContainer$DrawableContainerState cloneConstantState()
    {
        return this.cloneConstantState();
    }

    androidx.appcompat.graphics.drawable.StateListDrawable$StateListState cloneConstantState()
    {
        return new androidx.appcompat.graphics.drawable.StateListDrawable$StateListState(this.mStateListState, this, 0);
    }

    int[] extractStateSet(android.util.AttributeSet p8)
    {
        int v3 = p8.getAttributeCount();
        int[] v5_0 = new int[v3];
        int v0 = 0;
        int v2 = 0;
        while (v0 < v3) {
            int v1_1;
            int v4 = p8.getAttributeNameResource(v0);
            switch (v4) {
                case 0:
                    v1_1 = v2;
                    break;
                case 16842960:
                case 16843161:
                    v1_1 = v2;
                    break;
                default:
                    v1_1 = (v2 + 1);
                    if (!p8.getAttributeBooleanValue(v0, 0)) {
                        v4 = (- v4);
                    }
                    v5_0[v2] = v4;
            }
            v0++;
            v2 = v1_1;
        }
        return android.util.StateSet.trimStateSet(v5_0, v2);
    }

    int getStateCount()
    {
        return this.mStateListState.getChildCount();
    }

    android.graphics.drawable.Drawable getStateDrawable(int p2)
    {
        return this.mStateListState.getChild(p2);
    }

    int getStateDrawableIndex(int[] p2)
    {
        return this.mStateListState.indexOfStateSet(p2);
    }

    androidx.appcompat.graphics.drawable.StateListDrawable$StateListState getStateListState()
    {
        return this.mStateListState;
    }

    int[] getStateSet(int p2)
    {
        return this.mStateListState.mStateSets[p2];
    }

    public void inflate(android.content.Context p4, android.content.res.Resources p5, org.xmlpull.v1.XmlPullParser p6, android.util.AttributeSet p7, android.content.res.Resources$Theme p8)
    {
        android.content.res.TypedArray v0 = androidx.core.content.res.TypedArrayUtils.obtainAttributes(p5, p8, p7, androidx.appcompat.R$styleable.StateListDrawable);
        this.setVisible(v0.getBoolean(androidx.appcompat.R$styleable.StateListDrawable_android_visible, 1), 1);
        this.updateStateFromTypedArray(v0);
        this.updateDensity(p5);
        v0.recycle();
        void v3_1 = this.inflateChildElements(p4, p5, p6, p7, p8);
        v3_1.onStateChange(v3_1.getState());
        return;
    }

    public boolean isStateful()
    {
        return 1;
    }

    public android.graphics.drawable.Drawable mutate()
    {
        if ((!this.mMutated) && (super.mutate() == this)) {
            this.mStateListState.mutate();
            this.mMutated = 1;
        }
        return this;
    }

    protected boolean onStateChange(int[] p5)
    {
        boolean v0 = super.onStateChange(p5);
        int v1 = this.mStateListState.indexOfStateSet(p5);
        if (v1 < 0) {
            v1 = this.mStateListState.indexOfStateSet(android.util.StateSet.WILD_CARD);
        }
        if ((!this.selectDrawable(v1)) && (!v0)) {
            int v2_1 = 0;
        } else {
            v2_1 = 1;
        }
        return v2_1;
    }

    protected void setConstantState(androidx.appcompat.graphics.drawable.DrawableContainer$DrawableContainerState p2)
    {
        super.setConstantState(p2);
        if ((p2 instanceof androidx.appcompat.graphics.drawable.StateListDrawable$StateListState)) {
            this.mStateListState = ((androidx.appcompat.graphics.drawable.StateListDrawable$StateListState) p2);
        }
        return;
    }
}
