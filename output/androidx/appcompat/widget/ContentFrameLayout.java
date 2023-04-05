package androidx.appcompat.widget;
public class ContentFrameLayout extends android.widget.FrameLayout {
    private androidx.appcompat.widget.ContentFrameLayout$OnAttachListener mAttachListener;
    private final android.graphics.Rect mDecorPadding;
    private android.util.TypedValue mFixedHeightMajor;
    private android.util.TypedValue mFixedHeightMinor;
    private android.util.TypedValue mFixedWidthMajor;
    private android.util.TypedValue mFixedWidthMinor;
    private android.util.TypedValue mMinWidthMajor;
    private android.util.TypedValue mMinWidthMinor;

    public ContentFrameLayout(android.content.Context p2)
    {
        this(p2, 0);
        return;
    }

    public ContentFrameLayout(android.content.Context p2, android.util.AttributeSet p3)
    {
        this(p2, p3, 0);
        return;
    }

    public ContentFrameLayout(android.content.Context p2, android.util.AttributeSet p3, int p4)
    {
        super(p2, p3, p4);
        super.mDecorPadding = new android.graphics.Rect();
        return;
    }

    public void dispatchFitSystemWindows(android.graphics.Rect p1)
    {
        this.fitSystemWindows(p1);
        return;
    }

    public android.util.TypedValue getFixedHeightMajor()
    {
        if (this.mFixedHeightMajor == null) {
            this.mFixedHeightMajor = new android.util.TypedValue();
        }
        return this.mFixedHeightMajor;
    }

    public android.util.TypedValue getFixedHeightMinor()
    {
        if (this.mFixedHeightMinor == null) {
            this.mFixedHeightMinor = new android.util.TypedValue();
        }
        return this.mFixedHeightMinor;
    }

    public android.util.TypedValue getFixedWidthMajor()
    {
        if (this.mFixedWidthMajor == null) {
            this.mFixedWidthMajor = new android.util.TypedValue();
        }
        return this.mFixedWidthMajor;
    }

    public android.util.TypedValue getFixedWidthMinor()
    {
        if (this.mFixedWidthMinor == null) {
            this.mFixedWidthMinor = new android.util.TypedValue();
        }
        return this.mFixedWidthMinor;
    }

    public android.util.TypedValue getMinWidthMajor()
    {
        if (this.mMinWidthMajor == null) {
            this.mMinWidthMajor = new android.util.TypedValue();
        }
        return this.mMinWidthMajor;
    }

    public android.util.TypedValue getMinWidthMinor()
    {
        if (this.mMinWidthMinor == null) {
            this.mMinWidthMinor = new android.util.TypedValue();
        }
        return this.mMinWidthMinor;
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        if (this.mAttachListener != null) {
            this.mAttachListener.onAttachedFromWindow();
        }
        return;
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        if (this.mAttachListener != null) {
            this.mAttachListener.onDetachedFromWindow();
        }
        return;
    }

    protected void onMeasure(int p20, int p21)
    {
        int v6;
        android.util.DisplayMetrics v8 = this.getContext().getResources().getDisplayMetrics();
        if (v8.widthPixels >= v8.heightPixels) {
            v6 = 0;
        } else {
            v6 = 1;
        }
        int v15 = android.view.View$MeasureSpec.getMode(p20);
        int v4 = android.view.View$MeasureSpec.getMode(p21);
        int v2 = 0;
        if (v15 == -2147483648) {
            android.util.TypedValue v12;
            if (v6 == 0) {
                v12 = this.mFixedWidthMajor;
            } else {
                v12 = this.mFixedWidthMinor;
            }
            if ((v12 != null) && (v12.type != 0)) {
                int v13_0 = 0;
                if (v12.type != 5) {
                    if (v12.type == 6) {
                        v13_0 = ((int) v12.getFraction(((float) v8.widthPixels), ((float) v8.widthPixels)));
                    }
                } else {
                    v13_0 = ((int) v12.getDimension(v8));
                }
                if (v13_0 > 0) {
                    p20 = android.view.View$MeasureSpec.makeMeasureSpec(Math.min((v13_0 - (this.mDecorPadding.left + this.mDecorPadding.right)), android.view.View$MeasureSpec.getSize(p20)), 1073741824);
                    v2 = 1;
                }
            }
        }
        if (v4 == -2147483648) {
            android.util.TypedValue v11;
            if (v6 == 0) {
                v11 = this.mFixedHeightMinor;
            } else {
                v11 = this.mFixedHeightMajor;
            }
            if ((v11 != null) && (v11.type != 0)) {
                int v3_0 = 0;
                if (v11.type != 5) {
                    if (v11.type == 6) {
                        v3_0 = ((int) v11.getFraction(((float) v8.heightPixels), ((float) v8.heightPixels)));
                    }
                } else {
                    v3_0 = ((int) v11.getDimension(v8));
                }
                if (v3_0 > 0) {
                    p21 = android.view.View$MeasureSpec.makeMeasureSpec(Math.min((v3_0 - (this.mDecorPadding.top + this.mDecorPadding.bottom)), android.view.View$MeasureSpec.getSize(p21)), 1073741824);
                }
            }
        }
        void v19_1 = super.onMeasure(p20, p21);
        int v14 = v19_1.getMeasuredWidth();
        int v7 = 0;
        int v20_1 = android.view.View$MeasureSpec.makeMeasureSpec(v14, 1073741824);
        if ((v2 == 0) && (v15 == -2147483648)) {
            android.util.TypedValue v10;
            if (v6 == 0) {
                v10 = v19_1.mMinWidthMajor;
            } else {
                v10 = v19_1.mMinWidthMinor;
            }
            if ((v10 != null) && (v10.type != 0)) {
                int v9 = 0;
                if (v10.type != 5) {
                    if (v10.type == 6) {
                        v9 = ((int) v10.getFraction(((float) v8.widthPixels), ((float) v8.widthPixels)));
                    }
                } else {
                    v9 = ((int) v10.getDimension(v8));
                }
                if (v9 > 0) {
                    v9 -= (v19_1.mDecorPadding.left + v19_1.mDecorPadding.right);
                }
                if (v14 < v9) {
                    v20_1 = android.view.View$MeasureSpec.makeMeasureSpec(v9, 1073741824);
                    v7 = 1;
                }
            }
        }
        if (v7 != 0) {
            super.onMeasure(v20_1, p21);
        }
        return;
    }

    public void setAttachListener(androidx.appcompat.widget.ContentFrameLayout$OnAttachListener p1)
    {
        this.mAttachListener = p1;
        return;
    }

    public void setDecorPadding(int p2, int p3, int p4, int p5)
    {
        this.mDecorPadding.set(p2, p3, p4, p5);
        if (androidx.core.view.ViewCompat.isLaidOut(this)) {
            this.requestLayout();
        }
        return;
    }
}
