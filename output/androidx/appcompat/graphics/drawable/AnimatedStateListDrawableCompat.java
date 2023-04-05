package androidx.appcompat.graphics.drawable;
public class AnimatedStateListDrawableCompat extends androidx.appcompat.graphics.drawable.StateListDrawable {
    private static final String ELEMENT_ITEM = "item";
    private static final String ELEMENT_TRANSITION = "transition";
    private static final String ITEM_MISSING_DRAWABLE_ERROR = ": <item> tag requires a 'drawable' attribute or child tag defining a drawable";
    private static final String LOGTAG = "";
    private static final String TRANSITION_MISSING_DRAWABLE_ERROR = ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable";
    private static final String TRANSITION_MISSING_FROM_TO_ID = ": <transition> tag requires 'fromId' & 'toId' attributes";
    private boolean mMutated;
    private androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$AnimatedStateListState mState;
    private androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$Transition mTransition;
    private int mTransitionFromIndex;
    private int mTransitionToIndex;

    static AnimatedStateListDrawableCompat()
    {
        androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.LOGTAG = androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.getSimpleName();
        return;
    }

    public AnimatedStateListDrawableCompat()
    {
        this(0, 0);
        return;
    }

    AnimatedStateListDrawableCompat(androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$AnimatedStateListState p4, android.content.res.Resources p5)
    {
        super(0);
        super.mTransitionToIndex = -1;
        super.mTransitionFromIndex = -1;
        super.setConstantState(new androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$AnimatedStateListState(p4, super, p5));
        super.onStateChange(super.getState());
        super.jumpToCurrentState();
        return;
    }

    public static androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat create(android.content.Context p7, int p8, android.content.res.Resources$Theme p9)
    {
        try {
            android.content.res.Resources v3 = p7.getResources();
            android.content.res.XmlResourceParser v2 = v3.getXml(p8);
            android.util.AttributeSet v0 = android.util.Xml.asAttributeSet(v2);
        } catch (java.io.IOException v1_1) {
            android.util.Log.e(androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.LOGTAG, "parser error", v1_1);
            androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat v5_1 = 0;
            return v5_1;
        } catch (java.io.IOException v1_0) {
            android.util.Log.e(androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.LOGTAG, "parser error", v1_0);
        }
        do {
            int v4 = v2.next();
        } while((v4 != 2) && (v4 != 1));
        if (v4 == 2) {
            v5_1 = androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat.createFromXmlInner(p7, v3, v2, v0, p9);
            return v5_1;
        } else {
            throw new org.xmlpull.v1.XmlPullParserException("No start tag found");
        }
    }

    public static androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat createFromXmlInner(android.content.Context p7, android.content.res.Resources p8, org.xmlpull.v1.XmlPullParser p9, android.util.AttributeSet p10, android.content.res.Resources$Theme p11)
    {
        String v6 = p9.getName();
        if (v6.equals("animated-selector")) {
            androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat v0_1 = new androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat();
            v0_1.inflate(p7, p8, p9, p10, p11);
            return v0_1;
        } else {
            throw new org.xmlpull.v1.XmlPullParserException(new StringBuilder().append(p9.getPositionDescription()).append(": invalid animated-selector tag ").append(v6).toString());
        }
    }

    private void inflateChildElements(android.content.Context p6, android.content.res.Resources p7, org.xmlpull.v1.XmlPullParser p8, android.util.AttributeSet p9, android.content.res.Resources$Theme p10)
    {
        int v1 = (p8.getDepth() + 1);
        while(true) {
            int v2 = p8.next();
            if (v2 == 1) {
                break;
            }
            int v0 = p8.getDepth();
            if ((v0 < v1) && (v2 == 3)) {
                break;
            }
            if ((v2 == 2) && (v0 <= v1)) {
                if (!p8.getName().equals("item")) {
                    if (p8.getName().equals("transition")) {
                        this.parseTransition(p6, p7, p8, p9, p10);
                    }
                } else {
                    this.parseItem(p6, p7, p8, p9, p10);
                }
            }
        }
        return;
    }

    private void init()
    {
        this.onStateChange(this.getState());
        return;
    }

    private int parseItem(android.content.Context p10, android.content.res.Resources p11, org.xmlpull.v1.XmlPullParser p12, android.util.AttributeSet p13, android.content.res.Resources$Theme p14)
    {
        android.content.res.TypedArray v0 = androidx.core.content.res.TypedArrayUtils.obtainAttributes(p11, p14, p13, androidx.appcompat.R$styleable.AnimatedStateListDrawableItem);
        int v3 = v0.getResourceId(androidx.appcompat.R$styleable.AnimatedStateListDrawableItem_android_id, 0);
        android.graphics.drawable.Drawable v1 = 0;
        int v2 = v0.getResourceId(androidx.appcompat.R$styleable.AnimatedStateListDrawableItem_android_drawable, -1);
        if (v2 > 0) {
            v1 = androidx.appcompat.content.res.AppCompatResources.getDrawable(p10, v2);
        }
        v0.recycle();
        int[] v4 = this.extractStateSet(p13);
        if (v1 == null) {
            do {
                int v5 = p12.next();
            } while(v5 == 4);
            if (v5 == 2) {
                if (!p12.getName().equals("vector")) {
                    if (android.os.Build$VERSION.SDK_INT < 21) {
                        v1 = android.graphics.drawable.Drawable.createFromXmlInner(p11, p12, p13);
                    } else {
                        v1 = android.graphics.drawable.Drawable.createFromXmlInner(p11, p12, p13, p14);
                    }
                } else {
                    v1 = androidx.vectordrawable.graphics.drawable.VectorDrawableCompat.createFromXmlInner(p11, p12, p13, p14);
                }
            } else {
                throw new org.xmlpull.v1.XmlPullParserException(new StringBuilder().append(p12.getPositionDescription()).append(": <item> tag requires a \'drawable\' attribute or child tag defining a drawable").toString());
            }
        }
        if (v1 != null) {
            return this.mState.addStateSet(v4, v1, v3);
        } else {
            throw new org.xmlpull.v1.XmlPullParserException(new StringBuilder().append(p12.getPositionDescription()).append(": <item> tag requires a \'drawable\' attribute or child tag defining a drawable").toString());
        }
    }

    private int parseTransition(android.content.Context p11, android.content.res.Resources p12, org.xmlpull.v1.XmlPullParser p13, android.util.AttributeSet p14, android.content.res.Resources$Theme p15)
    {
        android.content.res.TypedArray v0 = androidx.core.content.res.TypedArrayUtils.obtainAttributes(p12, p15, p14, androidx.appcompat.R$styleable.AnimatedStateListDrawableTransition);
        int v3 = v0.getResourceId(androidx.appcompat.R$styleable.AnimatedStateListDrawableTransition_android_fromId, -1);
        int v5 = v0.getResourceId(androidx.appcompat.R$styleable.AnimatedStateListDrawableTransition_android_toId, -1);
        android.graphics.drawable.Drawable v1 = 0;
        int v2 = v0.getResourceId(androidx.appcompat.R$styleable.AnimatedStateListDrawableTransition_android_drawable, -1);
        if (v2 > 0) {
            v1 = androidx.appcompat.content.res.AppCompatResources.getDrawable(p11, v2);
        }
        boolean v4 = v0.getBoolean(androidx.appcompat.R$styleable.AnimatedStateListDrawableTransition_android_reversible, 0);
        v0.recycle();
        if (v1 == null) {
            do {
                int v6 = p13.next();
            } while(v6 == 4);
            if (v6 == 2) {
                if (!p13.getName().equals("animated-vector")) {
                    if (android.os.Build$VERSION.SDK_INT < 21) {
                        v1 = android.graphics.drawable.Drawable.createFromXmlInner(p12, p13, p14);
                    } else {
                        v1 = android.graphics.drawable.Drawable.createFromXmlInner(p12, p13, p14, p15);
                    }
                } else {
                    v1 = androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat.createFromXmlInner(p11, p12, p13, p14, p15);
                }
            } else {
                throw new org.xmlpull.v1.XmlPullParserException(new StringBuilder().append(p13.getPositionDescription()).append(": <transition> tag requires a \'drawable\' attribute or child tag defining a drawable").toString());
            }
        }
        if (v1 != null) {
            if ((v3 != -1) && (v5 != -1)) {
                return this.mState.addTransition(v3, v5, v1, v4);
            } else {
                throw new org.xmlpull.v1.XmlPullParserException(new StringBuilder().append(p13.getPositionDescription()).append(": <transition> tag requires \'fromId\' & \'toId\' attributes").toString());
            }
        } else {
            throw new org.xmlpull.v1.XmlPullParserException(new StringBuilder().append(p13.getPositionDescription()).append(": <transition> tag requires a \'drawable\' attribute or child tag defining a drawable").toString());
        }
    }

    private boolean selectTransition(int p15)
    {
        int v3;
        int v10 = 1;
        androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$Transition v0 = this.mTransition;
        if (v0 == null) {
            v3 = this.getCurrentIndex();
            this.mTransition = 0;
            this.mTransitionFromIndex = -1;
            this.mTransitionToIndex = -1;
            androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$AnimatedStateListState v6 = this.mState;
            int v2 = v6.getKeyframeIdAt(v3);
            int v7 = v6.getKeyframeIdAt(p15);
            if ((v7 != 0) && (v2 != 0)) {
                int v9 = v6.indexOfTransition(v2, v7);
                if (v9 >= 0) {
                    androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$AnimatableTransition v8_1;
                    boolean v4 = v6.transitionHasReversibleFlag(v2, v7);
                    this.selectDrawable(v9);
                    android.graphics.drawable.Animatable v1_0 = this.getCurrent();
                    if (!(v1_0 instanceof android.graphics.drawable.AnimationDrawable)) {
                        if (!(v1_0 instanceof androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat)) {
                            if (!(v1_0 instanceof android.graphics.drawable.Animatable)) {
                                v10 = 0;
                                return v10;
                            } else {
                                v8_1 = new androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$AnimatableTransition(((android.graphics.drawable.Animatable) v1_0));
                            }
                        } else {
                            v8_1 = new androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$AnimatedVectorDrawableTransition(((androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat) v1_0));
                        }
                    } else {
                        v8_1 = new androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$AnimationDrawableTransition(((android.graphics.drawable.AnimationDrawable) v1_0), v6.isTransitionReversed(v2, v7), v4);
                    }
                    v8_1.start();
                    this.mTransition = v8_1;
                    this.mTransitionFromIndex = v3;
                    this.mTransitionToIndex = p15;
                } else {
                    v10 = 0;
                }
            } else {
                v10 = 0;
            }
        } else {
            if (p15 != this.mTransitionToIndex) {
                if ((p15 != this.mTransitionFromIndex) || (!v0.canReverse())) {
                    v3 = this.mTransitionToIndex;
                    v0.stop();
                } else {
                    v0.reverse();
                    this.mTransitionToIndex = this.mTransitionFromIndex;
                    this.mTransitionFromIndex = p15;
                }
            }
        }
        return v10;
    }

    private void updateStateFromTypedArray(android.content.res.TypedArray p4)
    {
        androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$AnimatedStateListState v0 = this.mState;
        if (android.os.Build$VERSION.SDK_INT >= 21) {
            v0.mChangingConfigurations = (v0.mChangingConfigurations | p4.getChangingConfigurations());
        }
        v0.setVariablePadding(p4.getBoolean(androidx.appcompat.R$styleable.AnimatedStateListDrawableCompat_android_variablePadding, v0.mVariablePadding));
        v0.setConstantSize(p4.getBoolean(androidx.appcompat.R$styleable.AnimatedStateListDrawableCompat_android_constantSize, v0.mConstantSize));
        v0.setEnterFadeDuration(p4.getInt(androidx.appcompat.R$styleable.AnimatedStateListDrawableCompat_android_enterFadeDuration, v0.mEnterFadeDuration));
        v0.setExitFadeDuration(p4.getInt(androidx.appcompat.R$styleable.AnimatedStateListDrawableCompat_android_exitFadeDuration, v0.mExitFadeDuration));
        this.setDither(p4.getBoolean(androidx.appcompat.R$styleable.AnimatedStateListDrawableCompat_android_dither, v0.mDither));
        return;
    }

    public bridge synthetic void addState(int[] p1, android.graphics.drawable.Drawable p2)
    {
        super.addState(p1, p2);
        return;
    }

    public void addState(int[] p3, android.graphics.drawable.Drawable p4, int p5)
    {
        if (p4 != null) {
            this.mState.addStateSet(p3, p4, p5);
            this.onStateChange(this.getState());
            return;
        } else {
            throw new IllegalArgumentException("Drawable must not be null");
        }
    }

    public void addTransition(int p3, int p4, android.graphics.drawable.Drawable p5, boolean p6)
    {
        if (p5 != null) {
            this.mState.addTransition(p3, p4, p5, p6);
            return;
        } else {
            throw new IllegalArgumentException("Transition drawable must not be null");
        }
    }

    public bridge synthetic void applyTheme(android.content.res.Resources$Theme p1)
    {
        super.applyTheme(p1);
        return;
    }

    public bridge synthetic boolean canApplyTheme()
    {
        return super.canApplyTheme();
    }

    void clearMutated()
    {
        super.clearMutated();
        this.mMutated = 0;
        return;
    }

    androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$AnimatedStateListState cloneConstantState()
    {
        return new androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$AnimatedStateListState(this.mState, this, 0);
    }

    bridge synthetic androidx.appcompat.graphics.drawable.DrawableContainer$DrawableContainerState cloneConstantState()
    {
        return this.cloneConstantState();
    }

    bridge synthetic androidx.appcompat.graphics.drawable.StateListDrawable$StateListState cloneConstantState()
    {
        return this.cloneConstantState();
    }

    public bridge synthetic void draw(android.graphics.Canvas p1)
    {
        super.draw(p1);
        return;
    }

    public bridge synthetic int getAlpha()
    {
        return super.getAlpha();
    }

    public bridge synthetic int getChangingConfigurations()
    {
        return super.getChangingConfigurations();
    }

    public bridge synthetic android.graphics.drawable.Drawable getCurrent()
    {
        return super.getCurrent();
    }

    public bridge synthetic void getHotspotBounds(android.graphics.Rect p1)
    {
        super.getHotspotBounds(p1);
        return;
    }

    public bridge synthetic int getIntrinsicHeight()
    {
        return super.getIntrinsicHeight();
    }

    public bridge synthetic int getIntrinsicWidth()
    {
        return super.getIntrinsicWidth();
    }

    public bridge synthetic int getMinimumHeight()
    {
        return super.getMinimumHeight();
    }

    public bridge synthetic int getMinimumWidth()
    {
        return super.getMinimumWidth();
    }

    public bridge synthetic int getOpacity()
    {
        return super.getOpacity();
    }

    public bridge synthetic void getOutline(android.graphics.Outline p1)
    {
        super.getOutline(p1);
        return;
    }

    public bridge synthetic boolean getPadding(android.graphics.Rect p2)
    {
        return super.getPadding(p2);
    }

    public void inflate(android.content.Context p4, android.content.res.Resources p5, org.xmlpull.v1.XmlPullParser p6, android.util.AttributeSet p7, android.content.res.Resources$Theme p8)
    {
        android.content.res.TypedArray v0 = androidx.core.content.res.TypedArrayUtils.obtainAttributes(p5, p8, p7, androidx.appcompat.R$styleable.AnimatedStateListDrawableCompat);
        this.setVisible(v0.getBoolean(androidx.appcompat.R$styleable.AnimatedStateListDrawableCompat_android_visible, 1), 1);
        this.updateStateFromTypedArray(v0);
        this.updateDensity(p5);
        v0.recycle();
        this.inflateChildElements(p4, p5, p6, p7, p8).init();
        return;
    }

    public bridge synthetic void invalidateDrawable(android.graphics.drawable.Drawable p1)
    {
        super.invalidateDrawable(p1);
        return;
    }

    public bridge synthetic boolean isAutoMirrored()
    {
        return super.isAutoMirrored();
    }

    public boolean isStateful()
    {
        return 1;
    }

    public void jumpToCurrentState()
    {
        super.jumpToCurrentState();
        if (this.mTransition != null) {
            this.mTransition.stop();
            this.mTransition = 0;
            this.selectDrawable(this.mTransitionToIndex);
            this.mTransitionToIndex = -1;
            this.mTransitionFromIndex = -1;
        }
        return;
    }

    public android.graphics.drawable.Drawable mutate()
    {
        if ((!this.mMutated) && (super.mutate() == this)) {
            this.mState.mutate();
            this.mMutated = 1;
        }
        return this;
    }

    public bridge synthetic boolean onLayoutDirectionChanged(int p2)
    {
        return super.onLayoutDirectionChanged(p2);
    }

    protected boolean onStateChange(int[] p5)
    {
        int v0;
        int v2 = this.mState.indexOfKeyframe(p5);
        if ((v2 == this.getCurrentIndex()) || ((!this.selectTransition(v2)) && (!this.selectDrawable(v2)))) {
            v0 = 0;
        } else {
            v0 = 1;
        }
        android.graphics.drawable.Drawable v1 = this.getCurrent();
        if (v1 != null) {
            v0 |= v1.setState(p5);
        }
        return v0;
    }

    public bridge synthetic void scheduleDrawable(android.graphics.drawable.Drawable p2, Runnable p3, long p4)
    {
        super.scheduleDrawable(p2, p3, p4);
        return;
    }

    public bridge synthetic void setAlpha(int p1)
    {
        super.setAlpha(p1);
        return;
    }

    public bridge synthetic void setAutoMirrored(boolean p1)
    {
        super.setAutoMirrored(p1);
        return;
    }

    public bridge synthetic void setColorFilter(android.graphics.ColorFilter p1)
    {
        super.setColorFilter(p1);
        return;
    }

    protected void setConstantState(androidx.appcompat.graphics.drawable.DrawableContainer$DrawableContainerState p2)
    {
        super.setConstantState(p2);
        if ((p2 instanceof androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$AnimatedStateListState)) {
            this.mState = ((androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat$AnimatedStateListState) p2);
        }
        return;
    }

    public bridge synthetic void setDither(boolean p1)
    {
        super.setDither(p1);
        return;
    }

    public bridge synthetic void setEnterFadeDuration(int p1)
    {
        super.setEnterFadeDuration(p1);
        return;
    }

    public bridge synthetic void setExitFadeDuration(int p1)
    {
        super.setExitFadeDuration(p1);
        return;
    }

    public bridge synthetic void setHotspot(float p1, float p2)
    {
        super.setHotspot(p1, p2);
        return;
    }

    public bridge synthetic void setHotspotBounds(int p1, int p2, int p3, int p4)
    {
        super.setHotspotBounds(p1, p2, p3, p4);
        return;
    }

    public bridge synthetic void setTintList(android.content.res.ColorStateList p1)
    {
        super.setTintList(p1);
        return;
    }

    public bridge synthetic void setTintMode(android.graphics.PorterDuff$Mode p1)
    {
        super.setTintMode(p1);
        return;
    }

    public boolean setVisible(boolean p3, boolean p4)
    {
        boolean v0 = super.setVisible(p3, p4);
        if ((this.mTransition != null) && ((v0) || (p4))) {
            if (!p3) {
                this.jumpToCurrentState();
            } else {
                this.mTransition.start();
            }
        }
        return v0;
    }

    public bridge synthetic void unscheduleDrawable(android.graphics.drawable.Drawable p1, Runnable p2)
    {
        super.unscheduleDrawable(p1, p2);
        return;
    }
}
