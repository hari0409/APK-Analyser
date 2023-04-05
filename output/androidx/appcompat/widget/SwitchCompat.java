package androidx.appcompat.widget;
public class SwitchCompat extends android.widget.CompoundButton {
    private static final String ACCESSIBILITY_EVENT_CLASS_NAME = "android.widget.Switch";
    private static final int[] CHECKED_STATE_SET = None;
    private static final int MONOSPACE = 3;
    private static final int SANS = 1;
    private static final int SERIF = 2;
    private static final int THUMB_ANIMATION_DURATION = 250;
    private static final android.util.Property THUMB_POS = None;
    private static final int TOUCH_MODE_DOWN = 1;
    private static final int TOUCH_MODE_DRAGGING = 2;
    private static final int TOUCH_MODE_IDLE;
    private boolean mHasThumbTint;
    private boolean mHasThumbTintMode;
    private boolean mHasTrackTint;
    private boolean mHasTrackTintMode;
    private int mMinFlingVelocity;
    private android.text.Layout mOffLayout;
    private android.text.Layout mOnLayout;
    android.animation.ObjectAnimator mPositionAnimator;
    private boolean mShowText;
    private boolean mSplitTrack;
    private int mSwitchBottom;
    private int mSwitchHeight;
    private int mSwitchLeft;
    private int mSwitchMinWidth;
    private int mSwitchPadding;
    private int mSwitchRight;
    private int mSwitchTop;
    private android.text.method.TransformationMethod mSwitchTransformationMethod;
    private int mSwitchWidth;
    private final android.graphics.Rect mTempRect;
    private android.content.res.ColorStateList mTextColors;
    private CharSequence mTextOff;
    private CharSequence mTextOn;
    private final android.text.TextPaint mTextPaint;
    private android.graphics.drawable.Drawable mThumbDrawable;
    float mThumbPosition;
    private int mThumbTextPadding;
    private android.content.res.ColorStateList mThumbTintList;
    private android.graphics.PorterDuff$Mode mThumbTintMode;
    private int mThumbWidth;
    private int mTouchMode;
    private int mTouchSlop;
    private float mTouchX;
    private float mTouchY;
    private android.graphics.drawable.Drawable mTrackDrawable;
    private android.content.res.ColorStateList mTrackTintList;
    private android.graphics.PorterDuff$Mode mTrackTintMode;
    private android.view.VelocityTracker mVelocityTracker;

    static SwitchCompat()
    {
        androidx.appcompat.widget.SwitchCompat.THUMB_POS = new androidx.appcompat.widget.SwitchCompat$1(Float, "thumbPos");
        int[] v0_3 = new int[1];
        v0_3[0] = 16842912;
        androidx.appcompat.widget.SwitchCompat.CHECKED_STATE_SET = v0_3;
        return;
    }

    public SwitchCompat(android.content.Context p2)
    {
        this(p2, 0);
        return;
    }

    public SwitchCompat(android.content.Context p2, android.util.AttributeSet p3)
    {
        this(p2, p3, androidx.appcompat.R$attr.switchStyle);
        return;
    }

    public SwitchCompat(android.content.Context p11, android.util.AttributeSet p12, int p13)
    {
        super(p11, p12, p13);
        super.mThumbTintList = 0;
        super.mThumbTintMode = 0;
        super.mHasThumbTint = 0;
        super.mHasThumbTintMode = 0;
        super.mTrackTintList = 0;
        super.mTrackTintMode = 0;
        super.mHasTrackTint = 0;
        super.mHasTrackTintMode = 0;
        super.mVelocityTracker = android.view.VelocityTracker.obtain();
        super.mTempRect = new android.graphics.Rect();
        super.mTextPaint = new android.text.TextPaint(1);
        super.mTextPaint.density = super.getResources().getDisplayMetrics().density;
        androidx.appcompat.widget.TintTypedArray v0 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(p11, p12, androidx.appcompat.R$styleable.SwitchCompat, p13, 0);
        super.mThumbDrawable = v0.getDrawable(androidx.appcompat.R$styleable.SwitchCompat_android_thumb);
        if (super.mThumbDrawable != null) {
            super.mThumbDrawable.setCallback(super);
        }
        super.mTrackDrawable = v0.getDrawable(androidx.appcompat.R$styleable.SwitchCompat_track);
        if (super.mTrackDrawable != null) {
            super.mTrackDrawable.setCallback(super);
        }
        super.mTextOn = v0.getText(androidx.appcompat.R$styleable.SwitchCompat_android_textOn);
        super.mTextOff = v0.getText(androidx.appcompat.R$styleable.SwitchCompat_android_textOff);
        super.mShowText = v0.getBoolean(androidx.appcompat.R$styleable.SwitchCompat_showText, 1);
        super.mThumbTextPadding = v0.getDimensionPixelSize(androidx.appcompat.R$styleable.SwitchCompat_thumbTextPadding, 0);
        super.mSwitchMinWidth = v0.getDimensionPixelSize(androidx.appcompat.R$styleable.SwitchCompat_switchMinWidth, 0);
        super.mSwitchPadding = v0.getDimensionPixelSize(androidx.appcompat.R$styleable.SwitchCompat_switchPadding, 0);
        super.mSplitTrack = v0.getBoolean(androidx.appcompat.R$styleable.SwitchCompat_splitTrack, 0);
        android.content.res.ColorStateList v4 = v0.getColorStateList(androidx.appcompat.R$styleable.SwitchCompat_thumbTint);
        if (v4 != null) {
            super.mThumbTintList = v4;
            super.mHasThumbTint = 1;
        }
        android.graphics.PorterDuff$Mode v5 = androidx.appcompat.widget.DrawableUtils.parseTintMode(v0.getInt(androidx.appcompat.R$styleable.SwitchCompat_thumbTintMode, -1), 0);
        if (super.mThumbTintMode != v5) {
            super.mThumbTintMode = v5;
            super.mHasThumbTintMode = 1;
        }
        if ((super.mHasThumbTint) || (super.mHasThumbTintMode)) {
            super.applyThumbTint();
        }
        android.content.res.ColorStateList v6 = v0.getColorStateList(androidx.appcompat.R$styleable.SwitchCompat_trackTint);
        if (v6 != null) {
            super.mTrackTintList = v6;
            super.mHasTrackTint = 1;
        }
        android.graphics.PorterDuff$Mode v7 = androidx.appcompat.widget.DrawableUtils.parseTintMode(v0.getInt(androidx.appcompat.R$styleable.SwitchCompat_trackTintMode, -1), 0);
        if (super.mTrackTintMode != v7) {
            super.mTrackTintMode = v7;
            super.mHasTrackTintMode = 1;
        }
        if ((super.mHasTrackTint) || (super.mHasTrackTintMode)) {
            super.applyTrackTint();
        }
        int v1 = v0.getResourceId(androidx.appcompat.R$styleable.SwitchCompat_switchTextAppearance, 0);
        if (v1 != 0) {
            super.setSwitchTextAppearance(p11, v1);
        }
        v0.recycle();
        android.view.ViewConfiguration v2 = android.view.ViewConfiguration.get(p11);
        super.mTouchSlop = v2.getScaledTouchSlop();
        super.mMinFlingVelocity = v2.getScaledMinimumFlingVelocity();
        super.refreshDrawableState();
        super.setChecked(super.isChecked());
        return;
    }

    private void animateThumbToCheckedState(boolean p6)
    {
        int v0;
        if (!p6) {
            v0 = 0;
        } else {
            v0 = 1065353216;
        }
        int v2_2 = new float[1];
        v2_2[0] = v0;
        this.mPositionAnimator = android.animation.ObjectAnimator.ofFloat(this, androidx.appcompat.widget.SwitchCompat.THUMB_POS, v2_2);
        this.mPositionAnimator.setDuration(250);
        if (android.os.Build$VERSION.SDK_INT >= 18) {
            this.mPositionAnimator.setAutoCancel(1);
        }
        this.mPositionAnimator.start();
        return;
    }

    private void applyThumbTint()
    {
        if ((this.mThumbDrawable != null) && ((this.mHasThumbTint) || (this.mHasThumbTintMode))) {
            this.mThumbDrawable = this.mThumbDrawable.mutate();
            if (this.mHasThumbTint) {
                androidx.core.graphics.drawable.DrawableCompat.setTintList(this.mThumbDrawable, this.mThumbTintList);
            }
            if (this.mHasThumbTintMode) {
                androidx.core.graphics.drawable.DrawableCompat.setTintMode(this.mThumbDrawable, this.mThumbTintMode);
            }
            if (this.mThumbDrawable.isStateful()) {
                this.mThumbDrawable.setState(this.getDrawableState());
            }
        }
        return;
    }

    private void applyTrackTint()
    {
        if ((this.mTrackDrawable != null) && ((this.mHasTrackTint) || (this.mHasTrackTintMode))) {
            this.mTrackDrawable = this.mTrackDrawable.mutate();
            if (this.mHasTrackTint) {
                androidx.core.graphics.drawable.DrawableCompat.setTintList(this.mTrackDrawable, this.mTrackTintList);
            }
            if (this.mHasTrackTintMode) {
                androidx.core.graphics.drawable.DrawableCompat.setTintMode(this.mTrackDrawable, this.mTrackTintMode);
            }
            if (this.mTrackDrawable.isStateful()) {
                this.mTrackDrawable.setState(this.getDrawableState());
            }
        }
        return;
    }

    private void cancelPositionAnimator()
    {
        if (this.mPositionAnimator != null) {
            this.mPositionAnimator.cancel();
        }
        return;
    }

    private void cancelSuperTouch(android.view.MotionEvent p3)
    {
        android.view.MotionEvent v0 = android.view.MotionEvent.obtain(p3);
        v0.setAction(3);
        super.onTouchEvent(v0);
        v0.recycle();
        return;
    }

    private static float constrain(float p1, float p2, float p3)
    {
        if (p1 >= p2) {
            if (p1 <= p3) {
                p2 = p1;
            } else {
                p2 = p3;
            }
        }
        return p2;
    }

    private boolean getTargetCheckedState()
    {
        int v0_2;
        if (this.mThumbPosition <= 1056964608) {
            v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    private int getThumbOffset()
    {
        float v0;
        if (!androidx.appcompat.widget.ViewUtils.isLayoutRtl(this)) {
            v0 = this.mThumbPosition;
        } else {
            v0 = (1065353216 - this.mThumbPosition);
        }
        return ((int) ((((float) this.getThumbScrollRange()) * v0) + 1056964608));
    }

    private int getThumbScrollRange()
    {
        int v2_5;
        if (this.mTrackDrawable == null) {
            v2_5 = 0;
        } else {
            android.graphics.Rect v0;
            android.graphics.Rect v1 = this.mTempRect;
            this.mTrackDrawable.getPadding(v1);
            if (this.mThumbDrawable == null) {
                v0 = androidx.appcompat.widget.DrawableUtils.INSETS_NONE;
            } else {
                v0 = androidx.appcompat.widget.DrawableUtils.getOpticalBounds(this.mThumbDrawable);
            }
            v2_5 = (((((this.mSwitchWidth - this.mThumbWidth) - v1.left) - v1.right) - v0.left) - v0.right);
        }
        return v2_5;
    }

    private boolean hitThumb(float p9, float p10)
    {
        int v5 = 0;
        if (this.mThumbDrawable != null) {
            int v2 = this.getThumbOffset();
            this.mThumbDrawable.getPadding(this.mTempRect);
            int v1 = ((this.mSwitchLeft + v2) - this.mTouchSlop);
            if ((p9 > ((float) v1)) && ((p9 < ((float) ((((this.mThumbWidth + v1) + this.mTempRect.left) + this.mTempRect.right) + this.mTouchSlop))) && ((p10 > ((float) (this.mSwitchTop - this.mTouchSlop))) && (p10 < ((float) (this.mSwitchBottom + this.mTouchSlop)))))) {
                v5 = 1;
            }
        }
        return v5;
    }

    private android.text.Layout makeLayout(CharSequence p9)
    {
        CharSequence v1;
        if (this.mSwitchTransformationMethod == null) {
            v1 = p9;
        } else {
            v1 = this.mSwitchTransformationMethod.getTransformation(p9, this);
        }
        int v3_2;
        if (v1 == null) {
            v3_2 = 0;
        } else {
            v3_2 = ((int) Math.ceil(((double) android.text.Layout.getDesiredWidth(v1, this.mTextPaint))));
        }
        return new android.text.StaticLayout(v1, this.mTextPaint, v3_2, android.text.Layout$Alignment.ALIGN_NORMAL, 1065353216, 0, 1);
    }

    private void setSwitchTypefaceByIndex(int p2, int p3)
    {
        android.graphics.Typeface v0 = 0;
        switch (p2) {
            case 1:
                v0 = android.graphics.Typeface.SANS_SERIF;
                break;
            case 2:
                v0 = android.graphics.Typeface.SERIF;
                break;
            case 3:
                v0 = android.graphics.Typeface.MONOSPACE;
                break;
        }
        this.setSwitchTypeface(v0, p3);
        return;
    }

    private void stopDrag(android.view.MotionEvent p10)
    {
        int v0;
        this.mTouchMode = 0;
        if ((p10.getAction() != 1) || (!this.isEnabled())) {
            v0 = 0;
        } else {
            v0 = 1;
        }
        int v1;
        boolean v2 = this.isChecked();
        if (v0 == 0) {
            v1 = v2;
        } else {
            this.mVelocityTracker.computeCurrentVelocity(1000);
            float v3 = this.mVelocityTracker.getXVelocity();
            if (Math.abs(v3) <= ((float) this.mMinFlingVelocity)) {
                v1 = this.getTargetCheckedState();
            } else {
                if (!androidx.appcompat.widget.ViewUtils.isLayoutRtl(this)) {
                    if (v3 <= 0) {
                        v1 = 0;
                    } else {
                        v1 = 1;
                    }
                } else {
                    if (v3 >= 0) {
                        v1 = 0;
                    } else {
                        v1 = 1;
                    }
                }
            }
        }
        if (v1 != v2) {
            this.playSoundEffect(0);
        }
        this.setChecked(v1);
        this.cancelSuperTouch(p10);
        return;
    }

    public void draw(android.graphics.Canvas p18)
    {
        android.graphics.Rect v8;
        android.graphics.Rect v2 = this.mTempRect;
        int v4 = this.mSwitchLeft;
        int v6 = this.mSwitchTop;
        int v5 = this.mSwitchRight;
        int v3 = this.mSwitchBottom;
        int v7 = (v4 + this.getThumbOffset());
        if (this.mThumbDrawable == null) {
            v8 = androidx.appcompat.widget.DrawableUtils.INSETS_NONE;
        } else {
            v8 = androidx.appcompat.widget.DrawableUtils.getOpticalBounds(this.mThumbDrawable);
        }
        if (this.mTrackDrawable != null) {
            this.mTrackDrawable.getPadding(v2);
            v7 += v2.left;
            int v12 = v4;
            int v14 = v6;
            int v13 = v5;
            int v11 = v3;
            if (v8 != null) {
                if (v8.left > v2.left) {
                    v12 += (v8.left - v2.left);
                }
                if (v8.top > v2.top) {
                    v14 += (v8.top - v2.top);
                }
                if (v8.right > v2.right) {
                    v13 -= (v8.right - v2.right);
                }
                if (v8.bottom > v2.bottom) {
                    v11 -= (v8.bottom - v2.bottom);
                }
            }
            this.mTrackDrawable.setBounds(v12, v14, v13, v11);
        }
        if (this.mThumbDrawable != null) {
            this.mThumbDrawable.getPadding(v2);
            int v9 = (v7 - v2.left);
            int v10 = ((this.mThumbWidth + v7) + v2.right);
            this.mThumbDrawable.setBounds(v9, v6, v10, v3);
            android.graphics.drawable.Drawable v1 = this.getBackground();
            if (v1 != null) {
                androidx.core.graphics.drawable.DrawableCompat.setHotspotBounds(v1, v9, v6, v10, v3);
            }
        }
        super.draw(p18);
        return;
    }

    public void drawableHotspotChanged(float p3, float p4)
    {
        if (android.os.Build$VERSION.SDK_INT >= 21) {
            super.drawableHotspotChanged(p3, p4);
        }
        if (this.mThumbDrawable != null) {
            androidx.core.graphics.drawable.DrawableCompat.setHotspot(this.mThumbDrawable, p3, p4);
        }
        if (this.mTrackDrawable != null) {
            androidx.core.graphics.drawable.DrawableCompat.setHotspot(this.mTrackDrawable, p3, p4);
        }
        return;
    }

    protected void drawableStateChanged()
    {
        super.drawableStateChanged();
        int[] v1 = this.getDrawableState();
        int v0 = 0;
        android.graphics.drawable.Drawable v2 = this.mThumbDrawable;
        if ((v2 != null) && (v2.isStateful())) {
            v0 = (0 | v2.setState(v1));
        }
        android.graphics.drawable.Drawable v3 = this.mTrackDrawable;
        if ((v3 != null) && (v3.isStateful())) {
            v0 |= v3.setState(v1);
        }
        if (v0 != 0) {
            this.invalidate();
        }
        return;
    }

    public int getCompoundPaddingLeft()
    {
        int v0;
        if (androidx.appcompat.widget.ViewUtils.isLayoutRtl(this)) {
            v0 = (super.getCompoundPaddingLeft() + this.mSwitchWidth);
            if (!android.text.TextUtils.isEmpty(this.getText())) {
                v0 += this.mSwitchPadding;
            }
        } else {
            v0 = super.getCompoundPaddingLeft();
        }
        return v0;
    }

    public int getCompoundPaddingRight()
    {
        int v0;
        if (!androidx.appcompat.widget.ViewUtils.isLayoutRtl(this)) {
            v0 = (super.getCompoundPaddingRight() + this.mSwitchWidth);
            if (!android.text.TextUtils.isEmpty(this.getText())) {
                v0 += this.mSwitchPadding;
            }
        } else {
            v0 = super.getCompoundPaddingRight();
        }
        return v0;
    }

    public boolean getShowText()
    {
        return this.mShowText;
    }

    public boolean getSplitTrack()
    {
        return this.mSplitTrack;
    }

    public int getSwitchMinWidth()
    {
        return this.mSwitchMinWidth;
    }

    public int getSwitchPadding()
    {
        return this.mSwitchPadding;
    }

    public CharSequence getTextOff()
    {
        return this.mTextOff;
    }

    public CharSequence getTextOn()
    {
        return this.mTextOn;
    }

    public android.graphics.drawable.Drawable getThumbDrawable()
    {
        return this.mThumbDrawable;
    }

    public int getThumbTextPadding()
    {
        return this.mThumbTextPadding;
    }

    public android.content.res.ColorStateList getThumbTintList()
    {
        return this.mThumbTintList;
    }

    public android.graphics.PorterDuff$Mode getThumbTintMode()
    {
        return this.mThumbTintMode;
    }

    public android.graphics.drawable.Drawable getTrackDrawable()
    {
        return this.mTrackDrawable;
    }

    public android.content.res.ColorStateList getTrackTintList()
    {
        return this.mTrackTintList;
    }

    public android.graphics.PorterDuff$Mode getTrackTintMode()
    {
        return this.mTrackTintMode;
    }

    public void jumpDrawablesToCurrentState()
    {
        super.jumpDrawablesToCurrentState();
        if (this.mThumbDrawable != null) {
            this.mThumbDrawable.jumpToCurrentState();
        }
        if (this.mTrackDrawable != null) {
            this.mTrackDrawable.jumpToCurrentState();
        }
        if ((this.mPositionAnimator != null) && (this.mPositionAnimator.isStarted())) {
            this.mPositionAnimator.end();
            this.mPositionAnimator = 0;
        }
        return;
    }

    protected int[] onCreateDrawableState(int p3)
    {
        int[] v0 = super.onCreateDrawableState((p3 + 1));
        if (this.isChecked()) {
            androidx.appcompat.widget.SwitchCompat.mergeDrawableStates(v0, androidx.appcompat.widget.SwitchCompat.CHECKED_STATE_SET);
        }
        return v0;
    }

    protected void onDraw(android.graphics.Canvas p22)
    {
        this = super.onDraw(p22);
        android.graphics.Rect v8 = this.mTempRect;
        android.graphics.drawable.Drawable v17 = this.mTrackDrawable;
        if (v17 == null) {
            v8.setEmpty();
        } else {
            v17.getPadding(v8);
        }
        int v12 = (this.mSwitchTop + v8.top);
        int v11 = (this.mSwitchBottom - v8.bottom);
        android.graphics.drawable.Drawable v15 = this.mThumbDrawable;
        if (v17 != null) {
            if ((!this.mSplitTrack) || (v15 == null)) {
                v17.draw(p22);
            } else {
                android.graphics.Rect v6 = androidx.appcompat.widget.DrawableUtils.getOpticalBounds(v15);
                v15.copyBounds(v8);
                v8.left = (v8.left + v6.left);
                v8.right = (v8.right - v6.right);
                int v9_0 = p22.save();
                p22.clipRect(v8, android.graphics.Region$Op.DIFFERENCE);
                v17.draw(p22);
                p22.restoreToCount(v9_0);
            }
        }
        int v9_1 = p22.save();
        if (v15 != null) {
            v15.draw(p22);
        }
        android.text.Layout v13;
        if (!this.getTargetCheckedState()) {
            v13 = this.mOffLayout;
        } else {
            v13 = this.mOnLayout;
        }
        if (v13 != null) {
            int[] v5 = this.getDrawableState();
            if (this.mTextColors != null) {
                this.mTextPaint.setColor(this.mTextColors.getColorForState(v5, 0));
            }
            int v4;
            this.mTextPaint.drawableState = v5;
            if (v15 == null) {
                v4 = this.getWidth();
            } else {
                android.graphics.Rect v3 = v15.getBounds();
                v4 = (v3.left + v3.right);
            }
            p22.translate(((float) ((v4 / 2) - (v13.getWidth() / 2))), ((float) (((v12 + v11) / 2) - (v13.getHeight() / 2))));
            v13.draw(p22);
        }
        p22.restoreToCount(v9_1);
        return;
    }

    public void onInitializeAccessibilityEvent(android.view.accessibility.AccessibilityEvent p2)
    {
        super.onInitializeAccessibilityEvent(p2);
        p2.setClassName("android.widget.Switch");
        return;
    }

    public void onInitializeAccessibilityNodeInfo(android.view.accessibility.AccessibilityNodeInfo p6)
    {
        CharSequence v2;
        super.onInitializeAccessibilityNodeInfo(p6);
        p6.setClassName("android.widget.Switch");
        if (!this.isChecked()) {
            v2 = this.mTextOff;
        } else {
            v2 = this.mTextOn;
        }
        if (!android.text.TextUtils.isEmpty(v2)) {
            CharSequence v1 = p6.getText();
            if (!android.text.TextUtils.isEmpty(v1)) {
                StringBuilder v0_1 = new StringBuilder();
                v0_1.append(v1).append(32).append(v2);
                p6.setText(v0_1);
            } else {
                p6.setText(v2);
            }
        }
        return;
    }

    protected void onLayout(boolean p12, int p13, int p14, int p15, int p16)
    {
        this = super.onLayout(p12, p13, p14, p15, p16);
        int v1 = 0;
        int v2 = 0;
        if (this.mThumbDrawable != null) {
            android.graphics.Rect v7 = this.mTempRect;
            if (this.mTrackDrawable == null) {
                v7.setEmpty();
            } else {
                this.mTrackDrawable.getPadding(v7);
            }
            android.graphics.Rect v0 = androidx.appcompat.widget.DrawableUtils.getOpticalBounds(this.mThumbDrawable);
            v1 = Math.max(0, (v0.left - v7.left));
            v2 = Math.max(0, (v0.right - v7.right));
        }
        int v4;
        int v5;
        if (!androidx.appcompat.widget.ViewUtils.isLayoutRtl(this)) {
            v5 = ((this.getWidth() - this.getPaddingRight()) - v2);
            v4 = (((v5 - this.mSwitchWidth) + v1) + v2);
        } else {
            v4 = (this.getPaddingLeft() + v1);
            v5 = (((this.mSwitchWidth + v4) - v1) - v2);
        }
        int v3;
        int v6;
        switch ((this.getGravity() & 112)) {
            case 16:
                v6 = ((((this.getPaddingTop() + this.getHeight()) - this.getPaddingBottom()) / 2) - (this.mSwitchHeight / 2));
                v3 = (v6 + this.mSwitchHeight);
                break;
            case 80:
                v3 = (this.getHeight() - this.getPaddingBottom());
                v6 = (v3 - this.mSwitchHeight);
                break;
            default:
                v6 = this.getPaddingTop();
                v3 = (v6 + this.mSwitchHeight);
        }
        this.mSwitchLeft = v4;
        this.mSwitchTop = v6;
        this.mSwitchBottom = v3;
        this.mSwitchRight = v5;
        return;
    }

    public void onMeasure(int p14, int p15)
    {
        if (this.mShowText) {
            if (this.mOnLayout == null) {
                this.mOnLayout = this.makeLayout(this.mTextOn);
            }
            if (this.mOffLayout == null) {
                this.mOffLayout = this.makeLayout(this.mTextOff);
            }
        }
        int v8;
        int v9;
        android.graphics.Rect v3 = this.mTempRect;
        if (this.mThumbDrawable == null) {
            v9 = 0;
            v8 = 0;
        } else {
            this.mThumbDrawable.getPadding(v3);
            v9 = ((this.mThumbDrawable.getIntrinsicWidth() - v3.left) - v3.right);
            v8 = this.mThumbDrawable.getIntrinsicHeight();
        }
        int v1;
        if (!this.mShowText) {
            v1 = 0;
        } else {
            v1 = (Math.max(this.mOnLayout.getWidth(), this.mOffLayout.getWidth()) + (this.mThumbTextPadding * 2));
        }
        int v10;
        this.mThumbWidth = Math.max(v1, v9);
        if (this.mTrackDrawable == null) {
            v3.setEmpty();
            v10 = 0;
        } else {
            this.mTrackDrawable.getPadding(v3);
            v10 = this.mTrackDrawable.getIntrinsicHeight();
        }
        int v4 = v3.left;
        int v5 = v3.right;
        if (this.mThumbDrawable != null) {
            android.graphics.Rect v0 = androidx.appcompat.widget.DrawableUtils.getOpticalBounds(this.mThumbDrawable);
            v4 = Math.max(v4, v0.left);
            v5 = Math.max(v5, v0.right);
        }
        int v7 = Math.max(this.mSwitchMinWidth, (((this.mThumbWidth * 2) + v4) + v5));
        int v6 = Math.max(v10, v8);
        this.mSwitchWidth = v7;
        this.mSwitchHeight = v6;
        super.onMeasure(p14, p15);
        if (this.getMeasuredHeight() < v6) {
            this.setMeasuredDimension(this.getMeasuredWidthAndState(), v6);
        }
        return;
    }

    public void onPopulateAccessibilityEvent(android.view.accessibility.AccessibilityEvent p3)
    {
        CharSequence v0;
        super.onPopulateAccessibilityEvent(p3);
        if (!this.isChecked()) {
            v0 = this.mTextOff;
        } else {
            v0 = this.mTextOn;
        }
        if (v0 != null) {
            p3.getText().add(v0);
        }
        return;
    }

    public boolean onTouchEvent(android.view.MotionEvent p13)
    {
        int v7_3;
        this.mVelocityTracker.addMovement(p13);
        switch (p13.getActionMasked()) {
            case 0:
                float v5_2 = p13.getX();
                float v6_1 = p13.getY();
                if ((!this.isEnabled()) || (!this.hitThumb(v5_2, v6_1))) {
                    v7_3 = super.onTouchEvent(p13);
                } else {
                    this.mTouchMode = 1;
                    this.mTouchX = v5_2;
                    this.mTouchY = v6_1;
                }
                break;
            case 1:
            case 3:
                if (this.mTouchMode != 2) {
                    this.mTouchMode = 0;
                    this.mVelocityTracker.clear();
                } else {
                    this.stopDrag(p13);
                    super.onTouchEvent(p13);
                    v7_3 = 1;
                }
                break;
            case 2:
                switch (this.mTouchMode) {
                    case 1:
                        float v5_1 = p13.getX();
                        float v6_0 = p13.getY();
                        if ((Math.abs((v5_1 - this.mTouchX)) <= ((float) this.mTouchSlop)) && (Math.abs((v6_0 - this.mTouchY)) <= ((float) this.mTouchSlop))) {
                        } else {
                            this.mTouchMode = 2;
                            this.getParent().requestDisallowInterceptTouchEvent(1);
                            this.mTouchX = v5_1;
                            this.mTouchY = v6_0;
                            v7_3 = 1;
                        }
                        break;
                    case 2:
                        int v1;
                        float v5_0 = p13.getX();
                        int v4 = this.getThumbScrollRange();
                        float v3 = (v5_0 - this.mTouchX);
                        if (v4 == 0) {
                            if (v3 <= 0) {
                                v1 = -1082130432;
                            } else {
                                v1 = 1065353216;
                            }
                        } else {
                            v1 = (v3 / ((float) v4));
                        }
                        if (androidx.appcompat.widget.ViewUtils.isLayoutRtl(this)) {
                            v1 = (- v1);
                        }
                        float v2 = androidx.appcompat.widget.SwitchCompat.constrain((this.mThumbPosition + v1), 0, 1065353216);
                        if (v2 != this.mThumbPosition) {
                            this.mTouchX = v5_0;
                            this.setThumbPosition(v2);
                        }
                        v7_3 = 1;
                        break;
                    default:
                }
                break;
            default:
        }
        return v7_3;
    }

    public void setChecked(boolean p2)
    {
        super.setChecked(p2);
        boolean v2_1 = this.isChecked();
        if ((this.getWindowToken() == null) || (!androidx.core.view.ViewCompat.isLaidOut(this))) {
            int v0_0;
            this.cancelPositionAnimator();
            if (!v2_1) {
                v0_0 = 0;
            } else {
                v0_0 = 1065353216;
            }
            this.setThumbPosition(v0_0);
        } else {
            this.animateThumbToCheckedState(v2_1);
        }
        return;
    }

    public void setCustomSelectionActionModeCallback(android.view.ActionMode$Callback p2)
    {
        super.setCustomSelectionActionModeCallback(androidx.core.widget.TextViewCompat.wrapCustomSelectionActionModeCallback(this, p2));
        return;
    }

    public void setShowText(boolean p2)
    {
        if (this.mShowText != p2) {
            this.mShowText = p2;
            this.requestLayout();
        }
        return;
    }

    public void setSplitTrack(boolean p1)
    {
        this.mSplitTrack = p1;
        this.invalidate();
        return;
    }

    public void setSwitchMinWidth(int p1)
    {
        this.mSwitchMinWidth = p1;
        this.requestLayout();
        return;
    }

    public void setSwitchPadding(int p1)
    {
        this.mSwitchPadding = p1;
        this.requestLayout();
        return;
    }

    public void setSwitchTextAppearance(android.content.Context p11, int p12)
    {
        androidx.appcompat.widget.TintTypedArray v1 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(p11, p12, androidx.appcompat.R$styleable.TextAppearance);
        android.content.res.ColorStateList v2 = v1.getColorStateList(androidx.appcompat.R$styleable.TextAppearance_android_textColor);
        if (v2 == null) {
            this.mTextColors = this.getTextColors();
        } else {
            this.mTextColors = v2;
        }
        int v4 = v1.getDimensionPixelSize(androidx.appcompat.R$styleable.TextAppearance_android_textSize, 0);
        if ((v4 != 0) && (((float) v4) != this.mTextPaint.getTextSize())) {
            this.mTextPaint.setTextSize(((float) v4));
            this.requestLayout();
        }
        this.setSwitchTypefaceByIndex(v1.getInt(androidx.appcompat.R$styleable.TextAppearance_android_typeface, -1), v1.getInt(androidx.appcompat.R$styleable.TextAppearance_android_textStyle, -1));
        if (!v1.getBoolean(androidx.appcompat.R$styleable.TextAppearance_textAllCaps, 0)) {
            this.mSwitchTransformationMethod = 0;
        } else {
            this.mSwitchTransformationMethod = new androidx.appcompat.text.AllCapsTransformationMethod(this.getContext());
        }
        v1.recycle();
        return;
    }

    public void setSwitchTypeface(android.graphics.Typeface p2)
    {
        if (((this.mTextPaint.getTypeface() != null) && (!this.mTextPaint.getTypeface().equals(p2))) || ((this.mTextPaint.getTypeface() == null) && (p2 != null))) {
            this.mTextPaint.setTypeface(p2);
            this.requestLayout();
            this.invalidate();
        }
        return;
    }

    public void setSwitchTypeface(android.graphics.Typeface p7, int p8)
    {
        int v2_0 = 0;
        if (p8 <= 0) {
            this.mTextPaint.setFakeBoldText(0);
            this.mTextPaint.setTextSkewX(0);
            this.setSwitchTypeface(p7);
        } else {
            android.graphics.Typeface v7_1;
            if (p7 != null) {
                v7_1 = android.graphics.Typeface.create(p7, p8);
            } else {
                v7_1 = android.graphics.Typeface.defaultFromStyle(p8);
            }
            android.text.TextPaint v1;
            this.setSwitchTypeface(v7_1);
            if (v7_1 == null) {
                v1 = 0;
            } else {
                v1 = v7_1.getStyle();
            }
            int v0 = (p8 & (v1 ^ -1));
            if ((v0 & 1) != 0) {
                v2_0 = 1;
            }
            int v2_2;
            this.mTextPaint.setFakeBoldText(v2_0);
            if ((v0 & 2) == 0) {
                v2_2 = 0;
            } else {
                v2_2 = -1098907648;
            }
            this.mTextPaint.setTextSkewX(v2_2);
        }
        return;
    }

    public void setTextOff(CharSequence p1)
    {
        this.mTextOff = p1;
        this.requestLayout();
        return;
    }

    public void setTextOn(CharSequence p1)
    {
        this.mTextOn = p1;
        this.requestLayout();
        return;
    }

    public void setThumbDrawable(android.graphics.drawable.Drawable p3)
    {
        if (this.mThumbDrawable != null) {
            this.mThumbDrawable.setCallback(0);
        }
        this.mThumbDrawable = p3;
        if (p3 != null) {
            p3.setCallback(this);
        }
        this.requestLayout();
        return;
    }

    void setThumbPosition(float p1)
    {
        this.mThumbPosition = p1;
        this.invalidate();
        return;
    }

    public void setThumbResource(int p2)
    {
        this.setThumbDrawable(androidx.appcompat.content.res.AppCompatResources.getDrawable(this.getContext(), p2));
        return;
    }

    public void setThumbTextPadding(int p1)
    {
        this.mThumbTextPadding = p1;
        this.requestLayout();
        return;
    }

    public void setThumbTintList(android.content.res.ColorStateList p2)
    {
        this.mThumbTintList = p2;
        this.mHasThumbTint = 1;
        this.applyThumbTint();
        return;
    }

    public void setThumbTintMode(android.graphics.PorterDuff$Mode p2)
    {
        this.mThumbTintMode = p2;
        this.mHasThumbTintMode = 1;
        this.applyThumbTint();
        return;
    }

    public void setTrackDrawable(android.graphics.drawable.Drawable p3)
    {
        if (this.mTrackDrawable != null) {
            this.mTrackDrawable.setCallback(0);
        }
        this.mTrackDrawable = p3;
        if (p3 != null) {
            p3.setCallback(this);
        }
        this.requestLayout();
        return;
    }

    public void setTrackResource(int p2)
    {
        this.setTrackDrawable(androidx.appcompat.content.res.AppCompatResources.getDrawable(this.getContext(), p2));
        return;
    }

    public void setTrackTintList(android.content.res.ColorStateList p2)
    {
        this.mTrackTintList = p2;
        this.mHasTrackTint = 1;
        this.applyTrackTint();
        return;
    }

    public void setTrackTintMode(android.graphics.PorterDuff$Mode p2)
    {
        this.mTrackTintMode = p2;
        this.mHasTrackTintMode = 1;
        this.applyTrackTint();
        return;
    }

    public void toggle()
    {
        int v0_1;
        if (this.isChecked()) {
            v0_1 = 0;
        } else {
            v0_1 = 1;
        }
        this.setChecked(v0_1);
        return;
    }

    protected boolean verifyDrawable(android.graphics.drawable.Drawable p2)
    {
        if ((!super.verifyDrawable(p2)) && ((p2 != this.mThumbDrawable) && (p2 != this.mTrackDrawable))) {
            int v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }
}
