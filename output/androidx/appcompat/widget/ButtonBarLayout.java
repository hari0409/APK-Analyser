package androidx.appcompat.widget;
public class ButtonBarLayout extends android.widget.LinearLayout {
    private static final int PEEK_BUTTON_DP = 16;
    private boolean mAllowStacking;
    private int mLastWidthSize;
    private int mMinimumHeight;

    public ButtonBarLayout(android.content.Context p4, android.util.AttributeSet p5)
    {
        super(p4, p5);
        super.mLastWidthSize = -1;
        super.mMinimumHeight = 0;
        android.content.res.TypedArray v0 = p4.obtainStyledAttributes(p5, androidx.appcompat.R$styleable.ButtonBarLayout);
        super.mAllowStacking = v0.getBoolean(androidx.appcompat.R$styleable.ButtonBarLayout_allowStacking, 1);
        v0.recycle();
        return;
    }

    private int getNextVisibleChildIndex(int p4)
    {
        int v1 = p4;
        int v0 = this.getChildCount();
        while (v1 < v0) {
            if (this.getChildAt(v1).getVisibility() != 0) {
                v1++;
            }
            return v1;
        }
        v1 = -1;
        return v1;
    }

    private boolean isStacked()
    {
        int v0 = 1;
        if (this.getOrientation() != 1) {
            v0 = 0;
        }
        return v0;
    }

    private void setStacked(boolean p5)
    {
        android.view.View v3_0;
        if (!p5) {
            v3_0 = 0;
        } else {
            v3_0 = 1;
        }
        android.view.View v3_3;
        this.setOrientation(v3_0);
        if (!p5) {
            v3_3 = 80;
        } else {
            v3_3 = 5;
        }
        this.setGravity(v3_3);
        android.view.View v2 = this.findViewById(androidx.appcompat.R$id.spacer);
        if (v2 != null) {
            android.view.View v3_1;
            if (!p5) {
                v3_1 = 4;
            } else {
                v3_1 = 8;
            }
            v2.setVisibility(v3_1);
        }
        int v1 = (this.getChildCount() - 2);
        while (v1 >= 0) {
            this.bringChildToFront(this.getChildAt(v1));
            v1--;
        }
        return;
    }

    public int getMinimumHeight()
    {
        return Math.max(this.mMinimumHeight, super.getMinimumHeight());
    }

    protected void onMeasure(int p16, int p17)
    {
        int v11 = android.view.View$MeasureSpec.getSize(p16);
        if (this.mAllowStacking) {
            if ((v11 > this.mLastWidthSize) && (this.isStacked())) {
                this.setStacked(0);
            }
            this.mLastWidthSize = v11;
        }
        int v4;
        int v8 = 0;
        if ((this.isStacked()) || (android.view.View$MeasureSpec.getMode(p16) != 1073741824)) {
            v4 = p16;
        } else {
            v4 = android.view.View$MeasureSpec.makeMeasureSpec(v11, -2147483648);
            v8 = 1;
        }
        super.onMeasure(v4, p17);
        if ((this.mAllowStacking) && (!this.isStacked())) {
            int v10;
            if ((this.getMeasuredWidthAndState() & -16777216) != 16777216) {
                v10 = 0;
            } else {
                v10 = 1;
            }
            if (v10 != 0) {
                this.setStacked(1);
                v8 = 1;
            }
        }
        if (v8 != 0) {
            this = super.onMeasure(p16, p17);
        }
        int v7 = 0;
        int v3 = this.getNextVisibleChildIndex(0);
        if (v3 >= 0) {
            android.view.View v1 = this.getChildAt(v3);
            android.widget.LinearLayout$LayoutParams v2_1 = ((android.widget.LinearLayout$LayoutParams) v1.getLayoutParams());
            v7 = (0 + (((this.getPaddingTop() + v1.getMeasuredHeight()) + v2_1.topMargin) + v2_1.bottomMargin));
            if (!this.isStacked()) {
                v7 += this.getPaddingBottom();
            } else {
                int v9 = this.getNextVisibleChildIndex((v3 + 1));
                if (v9 >= 0) {
                    v7 += (this.getChildAt(v9).getPaddingTop() + ((int) (1098907648 * this.getResources().getDisplayMetrics().density)));
                }
            }
        }
        if (androidx.core.view.ViewCompat.getMinimumHeight(this) != v7) {
            this.setMinimumHeight(v7);
        }
        return;
    }

    public void setAllowStacking(boolean p3)
    {
        if (this.mAllowStacking != p3) {
            this.mAllowStacking = p3;
            if ((!this.mAllowStacking) && (this.getOrientation() == 1)) {
                this.setStacked(0);
            }
            this.requestLayout();
        }
        return;
    }
}
