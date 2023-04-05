package androidx.appcompat.widget;
public class LinearLayoutCompat extends android.view.ViewGroup {
    public static final int HORIZONTAL = 0;
    private static final int INDEX_BOTTOM = 2;
    private static final int INDEX_CENTER_VERTICAL = 0;
    private static final int INDEX_FILL = 3;
    private static final int INDEX_TOP = 1;
    public static final int SHOW_DIVIDER_BEGINNING = 1;
    public static final int SHOW_DIVIDER_END = 4;
    public static final int SHOW_DIVIDER_MIDDLE = 2;
    public static final int SHOW_DIVIDER_NONE = 0;
    public static final int VERTICAL = 1;
    private static final int VERTICAL_GRAVITY_COUNT = 4;
    private boolean mBaselineAligned;
    private int mBaselineAlignedChildIndex;
    private int mBaselineChildTop;
    private android.graphics.drawable.Drawable mDivider;
    private int mDividerHeight;
    private int mDividerPadding;
    private int mDividerWidth;
    private int mGravity;
    private int[] mMaxAscent;
    private int[] mMaxDescent;
    private int mOrientation;
    private int mShowDividers;
    private int mTotalLength;
    private boolean mUseLargestChild;
    private float mWeightSum;

    public LinearLayoutCompat(android.content.Context p2)
    {
        this(p2, 0);
        return;
    }

    public LinearLayoutCompat(android.content.Context p2, android.util.AttributeSet p3)
    {
        this(p2, p3, 0);
        return;
    }

    public LinearLayoutCompat(android.content.Context p8, android.util.AttributeSet p9, int p10)
    {
        super(p8, p9, p10);
        super.mBaselineAligned = 1;
        super.mBaselineAlignedChildIndex = -1;
        super.mBaselineChildTop = 0;
        super.mGravity = 8388659;
        androidx.appcompat.widget.TintTypedArray v0 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(p8, p9, androidx.appcompat.R$styleable.LinearLayoutCompat, p10, 0);
        int v2_0 = v0.getInt(androidx.appcompat.R$styleable.LinearLayoutCompat_android_orientation, -1);
        if (v2_0 >= 0) {
            super.setOrientation(v2_0);
        }
        int v2_1 = v0.getInt(androidx.appcompat.R$styleable.LinearLayoutCompat_android_gravity, -1);
        if (v2_1 >= 0) {
            super.setGravity(v2_1);
        }
        boolean v1 = v0.getBoolean(androidx.appcompat.R$styleable.LinearLayoutCompat_android_baselineAligned, 1);
        if (!v1) {
            super.setBaselineAligned(v1);
        }
        super.mWeightSum = v0.getFloat(androidx.appcompat.R$styleable.LinearLayoutCompat_android_weightSum, -1082130432);
        super.mBaselineAlignedChildIndex = v0.getInt(androidx.appcompat.R$styleable.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        super.mUseLargestChild = v0.getBoolean(androidx.appcompat.R$styleable.LinearLayoutCompat_measureWithLargestChild, 0);
        super.setDividerDrawable(v0.getDrawable(androidx.appcompat.R$styleable.LinearLayoutCompat_divider));
        super.mShowDividers = v0.getInt(androidx.appcompat.R$styleable.LinearLayoutCompat_showDividers, 0);
        super.mDividerPadding = v0.getDimensionPixelSize(androidx.appcompat.R$styleable.LinearLayoutCompat_dividerPadding, 0);
        v0.recycle();
        return;
    }

    private void forceUniformHeight(int p10, int p11)
    {
        int v4 = android.view.View$MeasureSpec.makeMeasureSpec(this.getMeasuredHeight(), 1073741824);
        int v6 = 0;
        while (v6 < p10) {
            android.view.View v1 = this.getVirtualChildAt(v6);
            if (v1.getVisibility() != 8) {
                androidx.appcompat.widget.LinearLayoutCompat$LayoutParams v7_1 = ((androidx.appcompat.widget.LinearLayoutCompat$LayoutParams) v1.getLayoutParams());
                if (v7_1.height == -1) {
                    int v8 = v7_1.width;
                    v7_1.width = v1.getMeasuredWidth();
                    this.measureChildWithMargins(v1, p11, 0, v4, 0);
                    v7_1.width = v8;
                }
            }
            v6++;
        }
        return;
    }

    private void forceUniformWidth(int p10, int p11)
    {
        int v2 = android.view.View$MeasureSpec.makeMeasureSpec(this.getMeasuredWidth(), 1073741824);
        int v6 = 0;
        while (v6 < p10) {
            android.view.View v1 = this.getVirtualChildAt(v6);
            if (v1.getVisibility() != 8) {
                androidx.appcompat.widget.LinearLayoutCompat$LayoutParams v7_1 = ((androidx.appcompat.widget.LinearLayoutCompat$LayoutParams) v1.getLayoutParams());
                if (v7_1.width == -1) {
                    int v8 = v7_1.height;
                    v7_1.height = v1.getMeasuredHeight();
                    this.measureChildWithMargins(v1, v2, 0, p11, 0);
                    v7_1.height = v8;
                }
            }
            v6++;
        }
        return;
    }

    private void setChildFrame(android.view.View p3, int p4, int p5, int p6, int p7)
    {
        p3.layout(p4, p5, (p4 + p6), (p5 + p7));
        return;
    }

    protected boolean checkLayoutParams(android.view.ViewGroup$LayoutParams p2)
    {
        return (p2 instanceof androidx.appcompat.widget.LinearLayoutCompat$LayoutParams);
    }

    void drawDividersHorizontal(android.graphics.Canvas p9)
    {
        int v1 = this.getVirtualChildCount();
        boolean v3 = androidx.appcompat.widget.ViewUtils.isLayoutRtl(this);
        int v2 = 0;
        while (v2 < v1) {
            android.view.View v0_1 = this.getVirtualChildAt(v2);
            if ((v0_1 != null) && ((v0_1.getVisibility() != 8) && (this.hasDividerBeforeChildAt(v2)))) {
                int v5_1;
                androidx.appcompat.widget.LinearLayoutCompat$LayoutParams v4_3 = ((androidx.appcompat.widget.LinearLayoutCompat$LayoutParams) v0_1.getLayoutParams());
                if (!v3) {
                    v5_1 = ((v0_1.getLeft() - v4_3.leftMargin) - this.mDividerWidth);
                } else {
                    v5_1 = (v0_1.getRight() + v4_3.rightMargin);
                }
                this.drawVerticalDivider(p9, v5_1);
            }
            v2++;
        }
        if (this.hasDividerBeforeChildAt(v1)) {
            int v5_0;
            android.view.View v0_0 = this.getVirtualChildAt((v1 - 1));
            if (v0_0 != null) {
                androidx.appcompat.widget.LinearLayoutCompat$LayoutParams v4_1 = ((androidx.appcompat.widget.LinearLayoutCompat$LayoutParams) v0_0.getLayoutParams());
                if (!v3) {
                    v5_0 = (v0_0.getRight() + v4_1.rightMargin);
                } else {
                    v5_0 = ((v0_0.getLeft() - v4_1.leftMargin) - this.mDividerWidth);
                }
            } else {
                if (!v3) {
                    v5_0 = ((this.getWidth() - this.getPaddingRight()) - this.mDividerWidth);
                } else {
                    v5_0 = this.getPaddingLeft();
                }
            }
            this.drawVerticalDivider(p9, v5_0);
        }
        return;
    }

    void drawDividersVertical(android.graphics.Canvas p9)
    {
        int v2 = this.getVirtualChildCount();
        int v3 = 0;
        while (v3 < v2) {
            android.view.View v1_0 = this.getVirtualChildAt(v3);
            if ((v1_0 != null) && ((v1_0.getVisibility() != 8) && (this.hasDividerBeforeChildAt(v3)))) {
                this.drawHorizontalDivider(p9, ((v1_0.getTop() - ((androidx.appcompat.widget.LinearLayoutCompat$LayoutParams) v1_0.getLayoutParams()).topMargin) - this.mDividerHeight));
            }
            v3++;
        }
        if (this.hasDividerBeforeChildAt(v2)) {
            int v0;
            android.view.View v1_1 = this.getVirtualChildAt((v2 - 1));
            if (v1_1 != null) {
                v0 = (v1_1.getBottom() + ((androidx.appcompat.widget.LinearLayoutCompat$LayoutParams) v1_1.getLayoutParams()).bottomMargin);
            } else {
                v0 = ((this.getHeight() - this.getPaddingBottom()) - this.mDividerHeight);
            }
            this.drawHorizontalDivider(p9, v0);
        }
        return;
    }

    void drawHorizontalDivider(android.graphics.Canvas p5, int p6)
    {
        this.mDivider.setBounds((this.getPaddingLeft() + this.mDividerPadding), p6, ((this.getWidth() - this.getPaddingRight()) - this.mDividerPadding), (this.mDividerHeight + p6));
        this.mDivider.draw(p5);
        return;
    }

    void drawVerticalDivider(android.graphics.Canvas p6, int p7)
    {
        this.mDivider.setBounds(p7, (this.getPaddingTop() + this.mDividerPadding), (this.mDividerWidth + p7), ((this.getHeight() - this.getPaddingBottom()) - this.mDividerPadding));
        this.mDivider.draw(p6);
        return;
    }

    protected bridge synthetic android.view.ViewGroup$LayoutParams generateDefaultLayoutParams()
    {
        return this.generateDefaultLayoutParams();
    }

    protected androidx.appcompat.widget.LinearLayoutCompat$LayoutParams generateDefaultLayoutParams()
    {
        int v0_2;
        if (this.mOrientation != 0) {
            if (this.mOrientation != 1) {
                v0_2 = 0;
            } else {
                v0_2 = new androidx.appcompat.widget.LinearLayoutCompat$LayoutParams(-1, -2);
            }
        } else {
            v0_2 = new androidx.appcompat.widget.LinearLayoutCompat$LayoutParams(-2, -2);
        }
        return v0_2;
    }

    public bridge synthetic android.view.ViewGroup$LayoutParams generateLayoutParams(android.util.AttributeSet p2)
    {
        return this.generateLayoutParams(p2);
    }

    protected bridge synthetic android.view.ViewGroup$LayoutParams generateLayoutParams(android.view.ViewGroup$LayoutParams p2)
    {
        return this.generateLayoutParams(p2);
    }

    public androidx.appcompat.widget.LinearLayoutCompat$LayoutParams generateLayoutParams(android.util.AttributeSet p3)
    {
        return new androidx.appcompat.widget.LinearLayoutCompat$LayoutParams(this.getContext(), p3);
    }

    protected androidx.appcompat.widget.LinearLayoutCompat$LayoutParams generateLayoutParams(android.view.ViewGroup$LayoutParams p2)
    {
        return new androidx.appcompat.widget.LinearLayoutCompat$LayoutParams(p2);
    }

    public int getBaseline()
    {
        int v5_0 = -1;
        if (this.mBaselineAlignedChildIndex >= 0) {
            if (this.getChildCount() > this.mBaselineAlignedChildIndex) {
                android.view.View v0 = this.getChildAt(this.mBaselineAlignedChildIndex);
                int v1 = v0.getBaseline();
                if (v1 != -1) {
                    int v2 = this.mBaselineChildTop;
                    if (this.mOrientation == 1) {
                        int v4 = (this.mGravity & 112);
                        if (v4 != 48) {
                            switch (v4) {
                                case 16:
                                    v2 += (((((this.getBottom() - this.getTop()) - this.getPaddingTop()) - this.getPaddingBottom()) - this.mTotalLength) / 2);
                                    break;
                                case 80:
                                    v2 = (((this.getBottom() - this.getTop()) - this.getPaddingBottom()) - this.mTotalLength);
                                    break;
                            }
                        }
                    }
                    v5_0 = ((((androidx.appcompat.widget.LinearLayoutCompat$LayoutParams) v0.getLayoutParams()).topMargin + v2) + v1);
                } else {
                    if (this.mBaselineAlignedChildIndex != 0) {
                        throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline.");
                    }
                }
            } else {
                throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
            }
        } else {
            v5_0 = super.getBaseline();
        }
        return v5_0;
    }

    public int getBaselineAlignedChildIndex()
    {
        return this.mBaselineAlignedChildIndex;
    }

    int getChildrenSkipCount(android.view.View p2, int p3)
    {
        return 0;
    }

    public android.graphics.drawable.Drawable getDividerDrawable()
    {
        return this.mDivider;
    }

    public int getDividerPadding()
    {
        return this.mDividerPadding;
    }

    public int getDividerWidth()
    {
        return this.mDividerWidth;
    }

    public int getGravity()
    {
        return this.mGravity;
    }

    int getLocationOffset(android.view.View p2)
    {
        return 0;
    }

    int getNextLocationOffset(android.view.View p2)
    {
        return 0;
    }

    public int getOrientation()
    {
        return this.mOrientation;
    }

    public int getShowDividers()
    {
        return this.mShowDividers;
    }

    android.view.View getVirtualChildAt(int p2)
    {
        return this.getChildAt(p2);
    }

    int getVirtualChildCount()
    {
        return this.getChildCount();
    }

    public float getWeightSum()
    {
        return this.mWeightSum;
    }

    protected boolean hasDividerBeforeChildAt(int p6)
    {
        int v2_0 = 1;
        if (p6 != 0) {
            if (p6 != this.getChildCount()) {
                if ((this.mShowDividers & 2) == 0) {
                    v2_0 = 0;
                } else {
                    int v0 = 0;
                    int v1 = (p6 - 1);
                    while (v1 >= 0) {
                        if (this.getChildAt(v1).getVisibility() == 8) {
                            v1--;
                        } else {
                            v0 = 1;
                            break;
                        }
                    }
                    v2_0 = v0;
                }
            } else {
                if ((this.mShowDividers & 4) == 0) {
                    v2_0 = 0;
                }
            }
        } else {
            if ((this.mShowDividers & 1) == 0) {
                v2_0 = 0;
            }
        }
        return v2_0;
    }

    public boolean isBaselineAligned()
    {
        return this.mBaselineAligned;
    }

    public boolean isMeasureWithLargestChildEnabled()
    {
        return this.mUseLargestChild;
    }

    void layoutHorizontal(int p31, int p32, int p33, int p34)
    {
        int v12_0;
        boolean v20 = androidx.appcompat.widget.ViewUtils.isLayoutRtl(this);
        int v27 = this.getPaddingTop();
        int v18 = (p34 - p32);
        int v10 = (v18 - this.getPaddingBottom());
        int v13 = ((v18 - v27) - this.getPaddingBottom());
        int v14 = this.getVirtualChildCount();
        int v26 = (this.mGravity & 112);
        boolean v8 = this.mBaselineAligned;
        int[] v24 = this.mMaxAscent;
        int[] v25 = this.mMaxDescent;
        switch (androidx.core.view.GravityCompat.getAbsoluteGravity((this.mGravity & 8388615), androidx.core.view.ViewCompat.getLayoutDirection(this))) {
            case 1:
                v12_0 = (this.getPaddingLeft() + (((p33 - p31) - this.mTotalLength) / 2));
                break;
            case 5:
                v12_0 = (((this.getPaddingLeft() + p33) - p31) - this.mTotalLength);
                break;
            default:
                v12_0 = this.getPaddingLeft();
        }
        int v28 = 0;
        int v16 = 1;
        if (v20) {
            v28 = (v14 - 1);
            v16 = -1;
        }
        int v19 = 0;
        while (v19 < v14) {
            int v11 = (v28 + (v16 * v19));
            android.view.View v3 = this.getVirtualChildAt(v11);
            if (v3 != null) {
                if (v3.getVisibility() != 8) {
                    int v6 = v3.getMeasuredWidth();
                    int v7 = v3.getMeasuredHeight();
                    int v9 = -1;
                    androidx.appcompat.widget.LinearLayoutCompat$LayoutParams v22_1 = ((androidx.appcompat.widget.LinearLayoutCompat$LayoutParams) v3.getLayoutParams());
                    if ((v8) && (v22_1.height != -1)) {
                        v9 = v3.getBaseline();
                    }
                    int v17 = v22_1.gravity;
                    if (v17 < 0) {
                        v17 = v26;
                    }
                    int v5;
                    switch ((v17 & 112)) {
                        case 16:
                            v5 = (((((v13 - v7) / 2) + v27) + v22_1.topMargin) - v22_1.bottomMargin);
                            break;
                        case 48:
                            v5 = (v27 + v22_1.topMargin);
                            if (v9 == -1) {
                            } else {
                                v5 += (v24[1] - v9);
                            }
                            break;
                        case 80:
                            v5 = ((v10 - v7) - v22_1.bottomMargin);
                            if (v9 == -1) {
                            } else {
                                v5 -= (v25[2] - (v3.getMeasuredHeight() - v9));
                            }
                            break;
                        default:
                            v5 = v27;
                    }
                    if (this.hasDividerBeforeChildAt(v11)) {
                        v12_0 += this.mDividerWidth;
                    }
                    int v12_1 = (v12_0 + v22_1.leftMargin);
                    this.setChildFrame(v3, (v12_1 + this.getLocationOffset(v3)), v5, v6, v7);
                    v12_0 = (v12_1 + ((v22_1.rightMargin + v6) + this.getNextLocationOffset(v3)));
                    v19 += this.getChildrenSkipCount(v3, v11);
                }
            } else {
                v12_0 += this.measureNullChild(v11);
            }
            v19++;
        }
        return;
    }

    void layoutVertical(int p22, int p23, int p24, int p25)
    {
        int v10_0;
        int v18 = this.getPaddingLeft();
        int v19 = (p24 - p22);
        int v8 = (v19 - this.getPaddingRight());
        int v9 = ((v19 - v18) - this.getPaddingRight());
        int v11 = this.getVirtualChildCount();
        int v17 = (this.mGravity & 8388615);
        switch ((this.mGravity & 112)) {
            case 16:
                v10_0 = (this.getPaddingTop() + (((p25 - p23) - this.mTotalLength) / 2));
                break;
            case 80:
                v10_0 = (((this.getPaddingTop() + p25) - p23) - this.mTotalLength);
                break;
            default:
                v10_0 = this.getPaddingTop();
        }
        int v13 = 0;
        while (v13 < v11) {
            android.view.View v2 = this.getVirtualChildAt(v13);
            if (v2 != null) {
                if (v2.getVisibility() != 8) {
                    int v5 = v2.getMeasuredWidth();
                    int v6 = v2.getMeasuredHeight();
                    androidx.appcompat.widget.LinearLayoutCompat$LayoutParams v15_1 = ((androidx.appcompat.widget.LinearLayoutCompat$LayoutParams) v2.getLayoutParams());
                    int v12 = v15_1.gravity;
                    if (v12 < 0) {
                        v12 = v17;
                    }
                    int v3;
                    switch ((androidx.core.view.GravityCompat.getAbsoluteGravity(v12, androidx.core.view.ViewCompat.getLayoutDirection(this)) & 7)) {
                        case 1:
                            v3 = (((((v9 - v5) / 2) + v18) + v15_1.leftMargin) - v15_1.rightMargin);
                            break;
                        case 5:
                            v3 = ((v8 - v5) - v15_1.rightMargin);
                            break;
                        default:
                            v3 = (v18 + v15_1.leftMargin);
                    }
                    if (this.hasDividerBeforeChildAt(v13)) {
                        v10_0 += this.mDividerHeight;
                    }
                    int v10_1 = (v10_0 + v15_1.topMargin);
                    this.setChildFrame(v2, v3, (v10_1 + this.getLocationOffset(v2)), v5, v6);
                    v10_0 = (v10_1 + ((v15_1.bottomMargin + v6) + this.getNextLocationOffset(v2)));
                    v13 += this.getChildrenSkipCount(v2, v13);
                }
            } else {
                v10_0 += this.measureNullChild(v13);
            }
            v13++;
        }
        return;
    }

    void measureChildBeforeLayout(android.view.View p7, int p8, int p9, int p10, int p11, int p12)
    {
        this.measureChildWithMargins(p7, p9, p10, p11, p12);
        return;
    }

    void measureHorizontal(int p48, int p49)
    {
        this.mTotalLength = 0;
        int v35_0 = 0;
        int v18 = 0;
        int v11 = 0;
        int v43 = 0;
        int v10 = 1;
        float v40 = 0;
        int v20 = this.getVirtualChildCount();
        int v44 = android.view.View$MeasureSpec.getMode(p48);
        int v25 = android.view.View$MeasureSpec.getMode(p49);
        int v31 = 0;
        int v38 = 0;
        if ((this.mMaxAscent == null) || (this.mMaxDescent == null)) {
            int v3_29 = new int[4];
            this.mMaxAscent = v3_29;
            int v3_44 = new int[4];
            this.mMaxDescent = v3_44;
        }
        int v27;
        int[] v33 = this.mMaxAscent;
        int[] v34 = this.mMaxDescent;
        v33[3] = -1;
        v33[2] = -1;
        v33[1] = -1;
        v33[0] = -1;
        v34[3] = -1;
        v34[2] = -1;
        v34[1] = -1;
        v34[0] = -1;
        boolean v13 = this.mBaselineAligned;
        boolean v41 = this.mUseLargestChild;
        if (v44 != 1073741824) {
            v27 = 0;
        } else {
            v27 = 1;
        }
        int v28 = 0;
        int v5_3 = 0;
        while (v5_3 < v20) {
            android.view.View v4_3 = this.getVirtualChildAt(v5_3);
            if (v4_3 != null) {
                if (v4_3.getVisibility() != 8) {
                    if (this.hasDividerBeforeChildAt(v5_3)) {
                        this.mTotalLength = (this.mTotalLength + this.mDividerWidth);
                    }
                    androidx.appcompat.widget.LinearLayoutCompat$LayoutParams v29_7 = ((androidx.appcompat.widget.LinearLayoutCompat$LayoutParams) v4_3.getLayoutParams());
                    v40 += v29_7.weight;
                    if ((v44 != 1073741824) || ((v29_7.width != 0) || (v29_7.weight <= 0))) {
                        int v36 = -2147483648;
                        if ((v29_7.width == 0) && (v29_7.weight > 0)) {
                            v36 = 0;
                            v29_7.width = -2;
                        }
                        int v7_24;
                        if (v40 != 0) {
                            v7_24 = 0;
                        } else {
                            v7_24 = this.mTotalLength;
                        }
                        this.measureChildBeforeLayout(v4_3, v5_3, p48, v7_24, p49, 0);
                        if (v36 != -2147483648) {
                            v29_7.width = v36;
                        }
                        int v19_1 = v4_3.getMeasuredWidth();
                        if (v27 == 0) {
                            int v39_2 = this.mTotalLength;
                            this.mTotalLength = Math.max(v39_2, ((((v39_2 + v19_1) + v29_7.leftMargin) + v29_7.rightMargin) + this.getNextLocationOffset(v4_3)));
                        } else {
                            this.mTotalLength = (this.mTotalLength + (((v29_7.leftMargin + v19_1) + v29_7.rightMargin) + this.getNextLocationOffset(v4_3)));
                        }
                        if (v41) {
                            v28 = Math.max(v19_1, v28);
                        }
                    } else {
                        if (v27 == 0) {
                            int v39_3 = this.mTotalLength;
                            this.mTotalLength = Math.max(v39_3, ((v29_7.leftMargin + v39_3) + v29_7.rightMargin));
                        } else {
                            this.mTotalLength = (this.mTotalLength + (v29_7.leftMargin + v29_7.rightMargin));
                        }
                        if (!v13) {
                            v38 = 1;
                        } else {
                            int v23 = android.view.View$MeasureSpec.makeMeasureSpec(0, 0);
                            v4_3.measure(v23, v23);
                        }
                    }
                    int v32_1 = 0;
                    if ((v25 != 1073741824) && (v29_7.height == -1)) {
                        v31 = 1;
                        v32_1 = 1;
                    }
                    int v30_1 = (v29_7.topMargin + v29_7.bottomMargin);
                    int v16_1 = (v4_3.getMeasuredHeight() + v30_1);
                    v18 = android.view.View.combineMeasuredStates(v18, v4_3.getMeasuredState());
                    if (v13) {
                        int v14_1 = v4_3.getBaseline();
                        if (v14_1 != -1) {
                            int v3_149;
                            if (v29_7.gravity >= 0) {
                                v3_149 = v29_7.gravity;
                            } else {
                                v3_149 = this.mGravity;
                            }
                            int v26_1 = ((((v3_149 & 112) >> 4) & -2) >> 1);
                            v33[v26_1] = Math.max(v33[v26_1], v14_1);
                            v34[v26_1] = Math.max(v34[v26_1], (v16_1 - v14_1));
                        }
                    }
                    v35_0 = Math.max(v35_0, v16_1);
                    if ((v10 == 0) || (v29_7.height != -1)) {
                        v10 = 0;
                    } else {
                        v10 = 1;
                    }
                    if (v29_7.weight <= 0) {
                        if (v32_1 == 0) {
                            v30_1 = v16_1;
                        }
                        v11 = Math.max(v11, v30_1);
                    } else {
                        if (v32_1 == 0) {
                            v30_1 = v16_1;
                        }
                        v43 = Math.max(v43, v30_1);
                    }
                    v5_3 += this.getChildrenSkipCount(v4_3, v5_3);
                } else {
                    v5_3 += this.getChildrenSkipCount(v4_3, v5_3);
                }
            } else {
                this.mTotalLength = (this.mTotalLength + this.measureNullChild(v5_3));
            }
            v5_3++;
        }
        if ((this.mTotalLength > 0) && (this.hasDividerBeforeChildAt(v20))) {
            this.mTotalLength = (this.mTotalLength + this.mDividerWidth);
        }
        if ((v33[1] != -1) || ((v33[0] != -1) || ((v33[2] != -1) || (v33[3] != -1)))) {
            v35_0 = Math.max(v35_0, (Math.max(v33[3], Math.max(v33[0], Math.max(v33[1], v33[2]))) + Math.max(v34[3], Math.max(v34[0], Math.max(v34[1], v34[2])))));
        }
        if ((v41) && ((v44 == -2147483648) || (v44 == 0))) {
            this.mTotalLength = 0;
            int v5_0 = 0;
            while (v5_0 < v20) {
                android.view.View v4_2 = this.getVirtualChildAt(v5_0);
                if (v4_2 != null) {
                    if (v4_2.getVisibility() != 8) {
                        androidx.appcompat.widget.LinearLayoutCompat$LayoutParams v29_5 = ((androidx.appcompat.widget.LinearLayoutCompat$LayoutParams) v4_2.getLayoutParams());
                        if (v27 == 0) {
                            int v39_1 = this.mTotalLength;
                            this.mTotalLength = Math.max(v39_1, ((((v39_1 + v28) + v29_5.leftMargin) + v29_5.rightMargin) + this.getNextLocationOffset(v4_2)));
                        } else {
                            this.mTotalLength = (this.mTotalLength + (((v29_5.leftMargin + v28) + v29_5.rightMargin) + this.getNextLocationOffset(v4_2)));
                        }
                    } else {
                        v5_0 += this.getChildrenSkipCount(v4_2, v5_0);
                    }
                } else {
                    this.mTotalLength = (this.mTotalLength + this.measureNullChild(v5_0));
                }
                v5_0++;
            }
        }
        this.mTotalLength = (this.mTotalLength + (this.getPaddingLeft() + this.getPaddingRight()));
        int v46 = android.view.View.resolveSizeAndState(Math.max(this.mTotalLength, this.getSuggestedMinimumWidth()), p48, 0);
        int v21 = ((v46 & 16777215) - this.mTotalLength);
        if ((v38 == 0) && ((v21 == 0) || (v40 <= 0))) {
            v11 = Math.max(v11, v43);
            if ((v41) && (v44 != 1073741824)) {
                int v5_1 = 0;
                while (v5_1 < v20) {
                    android.view.View v4_0 = this.getVirtualChildAt(v5_1);
                    if ((v4_0 != null) && ((v4_0.getVisibility() != 8) && (((androidx.appcompat.widget.LinearLayoutCompat$LayoutParams) v4_0.getLayoutParams()).weight > 0))) {
                        v4_0.measure(android.view.View$MeasureSpec.makeMeasureSpec(v28, 1073741824), android.view.View$MeasureSpec.makeMeasureSpec(v4_0.getMeasuredHeight(), 1073741824));
                    }
                    v5_1++;
                }
            }
        } else {
            float v42;
            if (this.mWeightSum <= 0) {
                v42 = v40;
            } else {
                v42 = this.mWeightSum;
            }
            v33[3] = -1;
            v33[2] = -1;
            v33[1] = -1;
            v33[0] = -1;
            v34[3] = -1;
            v34[2] = -1;
            v34[1] = -1;
            v34[0] = -1;
            v35_0 = -1;
            this.mTotalLength = 0;
            int v5_2 = 0;
            while (v5_2 < v20) {
                android.view.View v4_1 = this.getVirtualChildAt(v5_2);
                if ((v4_1 != null) && (v4_1.getVisibility() != 8)) {
                    androidx.appcompat.widget.LinearLayoutCompat$LayoutParams v29_3 = ((androidx.appcompat.widget.LinearLayoutCompat$LayoutParams) v4_1.getLayoutParams());
                    float v15_1 = v29_3.weight;
                    if (v15_1 > 0) {
                        int v37 = ((int) ((((float) v21) * v15_1) / v42));
                        v42 -= v15_1;
                        v21 -= v37;
                        int v17 = androidx.appcompat.widget.LinearLayoutCompat.getChildMeasureSpec(p49, (((this.getPaddingTop() + this.getPaddingBottom()) + v29_3.topMargin) + v29_3.bottomMargin), v29_3.height);
                        if ((v29_3.width == 0) && (v44 == 1073741824)) {
                            if (v37 <= 0) {
                                v37 = 0;
                            }
                            v4_1.measure(android.view.View$MeasureSpec.makeMeasureSpec(v37, 1073741824), v17);
                        } else {
                            int v19_0 = (v4_1.getMeasuredWidth() + v37);
                            if (v19_0 < 0) {
                                v19_0 = 0;
                            }
                            v4_1.measure(android.view.View$MeasureSpec.makeMeasureSpec(v19_0, 1073741824), v17);
                        }
                        v18 = android.view.View.combineMeasuredStates(v18, (v4_1.getMeasuredState() & -16777216));
                    }
                    if (v27 == 0) {
                        int v39_0 = this.mTotalLength;
                        this.mTotalLength = Math.max(v39_0, ((((v4_1.getMeasuredWidth() + v39_0) + v29_3.leftMargin) + v29_3.rightMargin) + this.getNextLocationOffset(v4_1)));
                    } else {
                        this.mTotalLength = (this.mTotalLength + (((v4_1.getMeasuredWidth() + v29_3.leftMargin) + v29_3.rightMargin) + this.getNextLocationOffset(v4_1)));
                    }
                    if ((v25 == 1073741824) || (v29_3.height != -1)) {
                        int v32_0 = 0;
                    } else {
                        v32_0 = 1;
                    }
                    int v30_0 = (v29_3.topMargin + v29_3.bottomMargin);
                    int v16_0 = (v4_1.getMeasuredHeight() + v30_0);
                    v35_0 = Math.max(v35_0, v16_0);
                    if (v32_0 == 0) {
                        v30_0 = v16_0;
                    }
                    v11 = Math.max(v11, v30_0);
                    if ((v10 == 0) || (v29_3.height != -1)) {
                        v10 = 0;
                    } else {
                        v10 = 1;
                    }
                    if (v13) {
                        int v14_0 = v4_1.getBaseline();
                        if (v14_0 != -1) {
                            int v3_91;
                            if (v29_3.gravity >= 0) {
                                v3_91 = v29_3.gravity;
                            } else {
                                v3_91 = this.mGravity;
                            }
                            int v26_0 = ((((v3_91 & 112) >> 4) & -2) >> 1);
                            v33[v26_0] = Math.max(v33[v26_0], v14_0);
                            v34[v26_0] = Math.max(v34[v26_0], (v16_0 - v14_0));
                        }
                    }
                }
                v5_2++;
            }
            this.mTotalLength = (this.mTotalLength + (this.getPaddingLeft() + this.getPaddingRight()));
            if ((v33[1] != -1) || ((v33[0] != -1) || ((v33[2] != -1) || (v33[3] != -1)))) {
                v35_0 = Math.max(v35_0, (Math.max(v33[3], Math.max(v33[0], Math.max(v33[1], v33[2]))) + Math.max(v34[3], Math.max(v34[0], Math.max(v34[1], v34[2])))));
            }
        }
        if ((v10 == 0) && (v25 != 1073741824)) {
            v35_0 = v11;
        }
        this.setMeasuredDimension(((-16777216 & v18) | v46), android.view.View.resolveSizeAndState(Math.max((v35_0 + (this.getPaddingTop() + this.getPaddingBottom())), this.getSuggestedMinimumHeight()), p49, (v18 << 16)));
        if (v31 != 0) {
            this.forceUniformHeight(v20, p48);
        }
        return;
    }

    int measureNullChild(int p2)
    {
        return 0;
    }

    void measureVertical(int p39, int p40)
    {
        this.mTotalLength = 0;
        int v27_0 = 0;
        int v15 = 0;
        int v11 = 0;
        int v36 = 0;
        int v10 = 1;
        float v33 = 0;
        int v17 = this.getVirtualChildCount();
        int v37 = android.view.View$MeasureSpec.getMode(p39);
        int v19 = android.view.View$MeasureSpec.getMode(p40);
        int v25 = 0;
        int v31 = 0;
        int v12 = this.mBaselineAlignedChildIndex;
        boolean v34 = this.mUseLargestChild;
        int v22 = 0;
        int v5_2 = 0;
        while (v5_2 < v17) {
            android.view.View v4_2 = this.getVirtualChildAt(v5_2);
            if (v4_2 != null) {
                if (v4_2.getVisibility() != 8) {
                    if (this.hasDividerBeforeChildAt(v5_2)) {
                        this.mTotalLength = (this.mTotalLength + this.mDividerHeight);
                    }
                    androidx.appcompat.widget.LinearLayoutCompat$LayoutParams v23_7 = ((androidx.appcompat.widget.LinearLayoutCompat$LayoutParams) v4_2.getLayoutParams());
                    v33 += v23_7.weight;
                    if ((v19 != 1073741824) || ((v23_7.height != 0) || (v23_7.weight <= 0))) {
                        int v29 = -2147483648;
                        if ((v23_7.height == 0) && (v23_7.weight > 0)) {
                            v29 = 0;
                            v23_7.height = -2;
                        }
                        int v9;
                        if (v33 != 0) {
                            v9 = 0;
                        } else {
                            v9 = this.mTotalLength;
                        }
                        this.measureChildBeforeLayout(v4_2, v5_2, p39, 0, p40, v9);
                        if (v29 != -2147483648) {
                            v23_7.height = v29;
                        }
                        int v14_1 = v4_2.getMeasuredHeight();
                        int v32_2 = this.mTotalLength;
                        this.mTotalLength = Math.max(v32_2, ((((v32_2 + v14_1) + v23_7.topMargin) + v23_7.bottomMargin) + this.getNextLocationOffset(v4_2)));
                        if (v34) {
                            v22 = Math.max(v14_1, v22);
                        }
                    } else {
                        int v32_3 = this.mTotalLength;
                        this.mTotalLength = Math.max(v32_3, ((v23_7.topMargin + v32_3) + v23_7.bottomMargin));
                        v31 = 1;
                    }
                    if ((v12 >= 0) && (v12 == (v5_2 + 1))) {
                        this.mBaselineChildTop = this.mTotalLength;
                    }
                    if ((v5_2 >= v12) || (v23_7.weight <= 0)) {
                        int v26_1 = 0;
                        if ((v37 != 1073741824) && (v23_7.width == -1)) {
                            v25 = 1;
                            v26_1 = 1;
                        }
                        int v24_1 = (v23_7.leftMargin + v23_7.rightMargin);
                        int v28_1 = (v4_2.getMeasuredWidth() + v24_1);
                        v27_0 = Math.max(v27_0, v28_1);
                        v15 = android.view.View.combineMeasuredStates(v15, v4_2.getMeasuredState());
                        if ((v10 == 0) || (v23_7.width != -1)) {
                            v10 = 0;
                        } else {
                            v10 = 1;
                        }
                        if (v23_7.weight <= 0) {
                            if (v26_1 == 0) {
                                v24_1 = v28_1;
                            }
                            v11 = Math.max(v11, v24_1);
                        } else {
                            if (v26_1 == 0) {
                                v24_1 = v28_1;
                            }
                            v36 = Math.max(v36, v24_1);
                        }
                        v5_2 += this.getChildrenSkipCount(v4_2, v5_2);
                    } else {
                        throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex.");
                    }
                } else {
                    v5_2 += this.getChildrenSkipCount(v4_2, v5_2);
                }
            } else {
                this.mTotalLength = (this.mTotalLength + this.measureNullChild(v5_2));
            }
            v5_2++;
        }
        if ((this.mTotalLength > 0) && (this.hasDividerBeforeChildAt(v17))) {
            this.mTotalLength = (this.mTotalLength + this.mDividerHeight);
        }
        if ((v34) && ((v19 == -2147483648) || (v19 == 0))) {
            this.mTotalLength = 0;
            int v5_3 = 0;
            while (v5_3 < v17) {
                android.view.View v4_1 = this.getVirtualChildAt(v5_3);
                if (v4_1 != null) {
                    if (v4_1.getVisibility() != 8) {
                        androidx.appcompat.widget.LinearLayoutCompat$LayoutParams v23_5 = ((androidx.appcompat.widget.LinearLayoutCompat$LayoutParams) v4_1.getLayoutParams());
                        int v32_1 = this.mTotalLength;
                        this.mTotalLength = Math.max(v32_1, ((((v32_1 + v22) + v23_5.topMargin) + v23_5.bottomMargin) + this.getNextLocationOffset(v4_1)));
                    } else {
                        v5_3 += this.getChildrenSkipCount(v4_1, v5_3);
                    }
                } else {
                    this.mTotalLength = (this.mTotalLength + this.measureNullChild(v5_3));
                }
                v5_3++;
            }
        }
        this.mTotalLength = (this.mTotalLength + (this.getPaddingTop() + this.getPaddingBottom()));
        int v21 = android.view.View.resolveSizeAndState(Math.max(this.mTotalLength, this.getSuggestedMinimumHeight()), p40, 0);
        int v18 = ((v21 & 16777215) - this.mTotalLength);
        if ((v31 == 0) && ((v18 == 0) || (v33 <= 0))) {
            v11 = Math.max(v11, v36);
            if ((v34) && (v19 != 1073741824)) {
                int v5_0 = 0;
                while (v5_0 < v17) {
                    android.view.View v4_3 = this.getVirtualChildAt(v5_0);
                    if ((v4_3 != null) && ((v4_3.getVisibility() != 8) && (((androidx.appcompat.widget.LinearLayoutCompat$LayoutParams) v4_3.getLayoutParams()).weight > 0))) {
                        v4_3.measure(android.view.View$MeasureSpec.makeMeasureSpec(v4_3.getMeasuredWidth(), 1073741824), android.view.View$MeasureSpec.makeMeasureSpec(v22, 1073741824));
                    }
                    v5_0++;
                }
            }
        } else {
            float v35;
            if (this.mWeightSum <= 0) {
                v35 = v33;
            } else {
                v35 = this.mWeightSum;
            }
            this.mTotalLength = 0;
            int v5_1 = 0;
            while (v5_1 < v17) {
                android.view.View v4_0 = this.getVirtualChildAt(v5_1);
                if (v4_0.getVisibility() != 8) {
                    androidx.appcompat.widget.LinearLayoutCompat$LayoutParams v23_3 = ((androidx.appcompat.widget.LinearLayoutCompat$LayoutParams) v4_0.getLayoutParams());
                    float v13_1 = v23_3.weight;
                    if (v13_1 > 0) {
                        int v30 = ((int) ((((float) v18) * v13_1) / v35));
                        v35 -= v13_1;
                        v18 -= v30;
                        int v16 = androidx.appcompat.widget.LinearLayoutCompat.getChildMeasureSpec(p39, (((this.getPaddingLeft() + this.getPaddingRight()) + v23_3.leftMargin) + v23_3.rightMargin), v23_3.width);
                        if ((v23_3.height == 0) && (v19 == 1073741824)) {
                            if (v30 <= 0) {
                                v30 = 0;
                            }
                            v4_0.measure(v16, android.view.View$MeasureSpec.makeMeasureSpec(v30, 1073741824));
                        } else {
                            int v14_0 = (v4_0.getMeasuredHeight() + v30);
                            if (v14_0 < 0) {
                                v14_0 = 0;
                            }
                            v4_0.measure(v16, android.view.View$MeasureSpec.makeMeasureSpec(v14_0, 1073741824));
                        }
                        v15 = android.view.View.combineMeasuredStates(v15, (v4_0.getMeasuredState() & -256));
                    }
                    int v26_0;
                    int v24_0 = (v23_3.leftMargin + v23_3.rightMargin);
                    int v28_0 = (v4_0.getMeasuredWidth() + v24_0);
                    v27_0 = Math.max(v27_0, v28_0);
                    if ((v37 == 1073741824) || (v23_3.width != -1)) {
                        v26_0 = 0;
                    } else {
                        v26_0 = 1;
                    }
                    if (v26_0 == 0) {
                        v24_0 = v28_0;
                    }
                    v11 = Math.max(v11, v24_0);
                    if ((v10 == 0) || (v23_3.width != -1)) {
                        v10 = 0;
                    } else {
                        v10 = 1;
                    }
                    int v32_0 = this.mTotalLength;
                    this.mTotalLength = Math.max(v32_0, ((((v4_0.getMeasuredHeight() + v32_0) + v23_3.topMargin) + v23_3.bottomMargin) + this.getNextLocationOffset(v4_0)));
                }
                v5_1++;
            }
            this.mTotalLength = (this.mTotalLength + (this.getPaddingTop() + this.getPaddingBottom()));
        }
        if ((v10 == 0) && (v37 != 1073741824)) {
            v27_0 = v11;
        }
        this.setMeasuredDimension(android.view.View.resolveSizeAndState(Math.max((v27_0 + (this.getPaddingLeft() + this.getPaddingRight())), this.getSuggestedMinimumWidth()), p39, v15), v21);
        if (v25 != 0) {
            this.forceUniformWidth(v17, p40);
        }
        return;
    }

    protected void onDraw(android.graphics.Canvas p3)
    {
        if (this.mDivider != null) {
            if (this.mOrientation != 1) {
                this.drawDividersHorizontal(p3);
            } else {
                this.drawDividersVertical(p3);
            }
        }
        return;
    }

    public void onInitializeAccessibilityEvent(android.view.accessibility.AccessibilityEvent p2)
    {
        super.onInitializeAccessibilityEvent(p2);
        p2.setClassName(androidx.appcompat.widget.LinearLayoutCompat.getName());
        return;
    }

    public void onInitializeAccessibilityNodeInfo(android.view.accessibility.AccessibilityNodeInfo p2)
    {
        super.onInitializeAccessibilityNodeInfo(p2);
        p2.setClassName(androidx.appcompat.widget.LinearLayoutCompat.getName());
        return;
    }

    protected void onLayout(boolean p3, int p4, int p5, int p6, int p7)
    {
        if (this.mOrientation != 1) {
            this.layoutHorizontal(p4, p5, p6, p7);
        } else {
            this.layoutVertical(p4, p5, p6, p7);
        }
        return;
    }

    protected void onMeasure(int p3, int p4)
    {
        if (this.mOrientation != 1) {
            this.measureHorizontal(p3, p4);
        } else {
            this.measureVertical(p3, p4);
        }
        return;
    }

    public void setBaselineAligned(boolean p1)
    {
        this.mBaselineAligned = p1;
        return;
    }

    public void setBaselineAlignedChildIndex(int p4)
    {
        if ((p4 >= 0) && (p4 < this.getChildCount())) {
            this.mBaselineAlignedChildIndex = p4;
            return;
        } else {
            throw new IllegalArgumentException(new StringBuilder().append("base aligned child index out of range (0, ").append(this.getChildCount()).append(")").toString());
        }
    }

    public void setDividerDrawable(android.graphics.drawable.Drawable p3)
    {
        int v0 = 0;
        if (p3 != this.mDivider) {
            this.mDivider = p3;
            if (p3 == null) {
                this.mDividerWidth = 0;
                this.mDividerHeight = 0;
            } else {
                this.mDividerWidth = p3.getIntrinsicWidth();
                this.mDividerHeight = p3.getIntrinsicHeight();
            }
            if (p3 == null) {
                v0 = 1;
            }
            this.setWillNotDraw(v0);
            this.requestLayout();
        }
        return;
    }

    public void setDividerPadding(int p1)
    {
        this.mDividerPadding = p1;
        return;
    }

    public void setGravity(int p2)
    {
        if (this.mGravity != p2) {
            if ((8388615 & p2) == 0) {
                p2 |= 8388611;
            }
            if ((p2 & 112) == 0) {
                p2 |= 48;
            }
            this.mGravity = p2;
            this.requestLayout();
        }
        return;
    }

    public void setHorizontalGravity(int p4)
    {
        int v0 = (p4 & 8388615);
        if ((this.mGravity & 8388615) != v0) {
            this.mGravity = ((this.mGravity & -8388616) | v0);
            this.requestLayout();
        }
        return;
    }

    public void setMeasureWithLargestChildEnabled(boolean p1)
    {
        this.mUseLargestChild = p1;
        return;
    }

    public void setOrientation(int p2)
    {
        if (this.mOrientation != p2) {
            this.mOrientation = p2;
            this.requestLayout();
        }
        return;
    }

    public void setShowDividers(int p2)
    {
        if (p2 != this.mShowDividers) {
            this.requestLayout();
        }
        this.mShowDividers = p2;
        return;
    }

    public void setVerticalGravity(int p3)
    {
        int v0 = (p3 & 112);
        if ((this.mGravity & 112) != v0) {
            this.mGravity = ((this.mGravity & -113) | v0);
            this.requestLayout();
        }
        return;
    }

    public void setWeightSum(float p2)
    {
        this.mWeightSum = Math.max(0, p2);
        return;
    }

    public boolean shouldDelayChildPressedState()
    {
        return 0;
    }
}
