package androidx.appcompat.widget;
public class AlertDialogLayout extends androidx.appcompat.widget.LinearLayoutCompat {

    public AlertDialogLayout(android.content.Context p1)
    {
        super(p1);
        return;
    }

    public AlertDialogLayout(android.content.Context p1, android.util.AttributeSet p2)
    {
        super(p1, p2);
        return;
    }

    private void forceUniformWidth(int p10, int p11)
    {
        int v2 = android.view.View$MeasureSpec.makeMeasureSpec(this.getMeasuredWidth(), 1073741824);
        int v6 = 0;
        while (v6 < p10) {
            android.view.View v1 = this.getChildAt(v6);
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

    private static int resolveMinimumHeight(android.view.View p5)
    {
        int v0 = androidx.core.view.ViewCompat.getMinimumHeight(p5);
        if (v0 <= 0) {
            if ((!(p5 instanceof android.view.ViewGroup)) || (((android.view.ViewGroup) p5).getChildCount() != 1)) {
                v0 = 0;
            } else {
                v0 = androidx.appcompat.widget.AlertDialogLayout.resolveMinimumHeight(((android.view.ViewGroup) p5).getChildAt(0));
            }
        }
        return v0;
    }

    private void setChildFrame(android.view.View p3, int p4, int p5, int p6, int p7)
    {
        p3.layout(p4, p5, (p4 + p6), (p5 + p7));
        return;
    }

    private boolean tryOnMeasure(int p27, int p28)
    {
        android.view.View v20 = 0;
        android.view.View v4 = 0;
        android.view.View v18 = 0;
        int v9 = this.getChildCount();
        int v14_1 = 0;
        while (v14_1 < v9) {
            android.view.View v6_1 = this.getChildAt(v14_1);
            if (v6_1.getVisibility() != 8) {
                int v15 = v6_1.getId();
                if (v15 != androidx.appcompat.R$id.topPanel) {
                    if (v15 != androidx.appcompat.R$id.buttonPanel) {
                        if ((v15 != androidx.appcompat.R$id.contentPanel) && (v15 != androidx.appcompat.R$id.customPanel)) {
                            int v24_6 = 0;
                            return v24_6;
                        } else {
                            if (v18 == null) {
                                v18 = v6_1;
                            } else {
                                v24_6 = 0;
                                return v24_6;
                            }
                        }
                    } else {
                        v4 = v6_1;
                    }
                } else {
                    v20 = v6_1;
                }
            }
            v14_1++;
        }
        int v10 = android.view.View$MeasureSpec.getMode(p28);
        int v11 = android.view.View$MeasureSpec.getSize(p28);
        int v22 = android.view.View$MeasureSpec.getMode(p27);
        int v8 = 0;
        int v21_0 = (this.getPaddingTop() + this.getPaddingBottom());
        if (v20 != null) {
            v20.measure(p27, 0);
            v21_0 += v20.getMeasuredHeight();
            v8 = android.view.View.combineMeasuredStates(0, v20.getMeasuredState());
        }
        int v3 = 0;
        int v5 = 0;
        if (v4 != null) {
            v4.measure(p27, 0);
            v3 = androidx.appcompat.widget.AlertDialogLayout.resolveMinimumHeight(v4);
            v5 = (v4.getMeasuredHeight() - v3);
            v21_0 += v3;
            v8 = android.view.View.combineMeasuredStates(v8, v4.getMeasuredState());
        }
        int v17_1 = 0;
        if (v18 != null) {
            int v7_1;
            if (v10 != 0) {
                v7_1 = android.view.View$MeasureSpec.makeMeasureSpec(Math.max(0, (v11 - v21_0)), v10);
            } else {
                v7_1 = 0;
            }
            v18.measure(p27, v7_1);
            v17_1 = v18.getMeasuredHeight();
            v21_0 += v17_1;
            v8 = android.view.View.combineMeasuredStates(v8, v18.getMeasuredState());
        }
        int v19 = (v11 - v21_0);
        if (v4 != null) {
            int v21_1 = (v21_0 - v3);
            int v13_0 = Math.min(v19, v5);
            if (v13_0 > 0) {
                v19 -= v13_0;
                v3 += v13_0;
            }
            v4.measure(p27, android.view.View$MeasureSpec.makeMeasureSpec(v3, 1073741824));
            v21_0 = (v21_1 + v4.getMeasuredHeight());
            v8 = android.view.View.combineMeasuredStates(v8, v4.getMeasuredState());
        }
        if ((v18 != null) && (v19 > 0)) {
            int v21_2 = (v21_0 - v17_1);
            v18.measure(p27, android.view.View$MeasureSpec.makeMeasureSpec((v17_1 + v19), v10));
            v21_0 = (v21_2 + v18.getMeasuredHeight());
            v8 = android.view.View.combineMeasuredStates(v8, v18.getMeasuredState());
        }
        int v16_0 = 0;
        int v14_0 = 0;
        while (v14_0 < v9) {
            android.view.View v6_0 = this.getChildAt(v14_0);
            if (v6_0.getVisibility() != 8) {
                v16_0 = Math.max(v16_0, v6_0.getMeasuredWidth());
            }
            v14_0++;
        }
        this.setMeasuredDimension(android.view.View.resolveSizeAndState((v16_0 + (this.getPaddingLeft() + this.getPaddingRight())), p27, v8), android.view.View.resolveSizeAndState(v21_0, p28, 0));
        if (v22 != 1073741824) {
            this.forceUniformWidth(v9, p28);
        }
        v24_6 = 1;
        return v24_6;
    }

    protected void onLayout(boolean p25, int p26, int p27, int p28, int p29)
    {
        int v4_0;
        int v20 = this.getPaddingLeft();
        int v22 = (p28 - p26);
        int v8 = (v22 - this.getPaddingRight());
        int v9 = ((v22 - v20) - this.getPaddingRight());
        int v21 = this.getMeasuredHeight();
        int v10 = this.getChildCount();
        int v13 = this.getGravity();
        int v19 = (v13 & 8388615);
        switch ((v13 & 112)) {
            case 16:
                v4_0 = (this.getPaddingTop() + (((p29 - p27) - v21) / 2));
                break;
            case 80:
                v4_0 = (((this.getPaddingTop() + p29) - p27) - v21);
                break;
            default:
                v4_0 = this.getPaddingTop();
        }
        int v12;
        android.graphics.drawable.Drawable v11 = this.getDividerDrawable();
        if (v11 != null) {
            v12 = v11.getIntrinsicHeight();
        } else {
            v12 = 0;
        }
        int v14 = 0;
        while (v14 < v10) {
            android.view.View v2 = this.getChildAt(v14);
            if ((v2 != null) && (v2.getVisibility() != 8)) {
                int v5 = v2.getMeasuredWidth();
                int v6 = v2.getMeasuredHeight();
                androidx.appcompat.widget.LinearLayoutCompat$LayoutParams v17_1 = ((androidx.appcompat.widget.LinearLayoutCompat$LayoutParams) v2.getLayoutParams());
                int v16 = v17_1.gravity;
                if (v16 < 0) {
                    v16 = v19;
                }
                int v3;
                switch ((androidx.core.view.GravityCompat.getAbsoluteGravity(v16, androidx.core.view.ViewCompat.getLayoutDirection(this)) & 7)) {
                    case 1:
                        v3 = (((((v9 - v5) / 2) + v20) + v17_1.leftMargin) - v17_1.rightMargin);
                        break;
                    case 5:
                        v3 = ((v8 - v5) - v17_1.rightMargin);
                        break;
                    default:
                        v3 = (v20 + v17_1.leftMargin);
                }
                if (this.hasDividerBeforeChildAt(v14)) {
                    v4_0 += v12;
                }
                int v4_1 = (v4_0 + v17_1.topMargin);
                this.setChildFrame(v2, v3, v4_1, v5, v6);
                v4_0 = (v4_1 + (v17_1.bottomMargin + v6));
            }
            v14++;
        }
        return;
    }

    protected void onMeasure(int p2, int p3)
    {
        if (!this.tryOnMeasure(p2, p3)) {
            super.onMeasure(p2, p3);
        }
        return;
    }
}
