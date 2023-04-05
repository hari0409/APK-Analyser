package androidx.appcompat.widget;
public class ActionMenuView extends androidx.appcompat.widget.LinearLayoutCompat implements androidx.appcompat.view.menu.MenuBuilder$ItemInvoker, androidx.appcompat.view.menu.MenuView {
    static final int GENERATED_ITEM_PADDING = 4;
    static final int MIN_CELL_SIZE = 56;
    private static final String TAG = "ActionMenuView";
    private androidx.appcompat.view.menu.MenuPresenter$Callback mActionMenuPresenterCallback;
    private boolean mFormatItems;
    private int mFormatItemsWidth;
    private int mGeneratedItemPadding;
    private androidx.appcompat.view.menu.MenuBuilder mMenu;
    androidx.appcompat.view.menu.MenuBuilder$Callback mMenuBuilderCallback;
    private int mMinCellSize;
    androidx.appcompat.widget.ActionMenuView$OnMenuItemClickListener mOnMenuItemClickListener;
    private android.content.Context mPopupContext;
    private int mPopupTheme;
    private androidx.appcompat.widget.ActionMenuPresenter mPresenter;
    private boolean mReserveOverflow;

    public ActionMenuView(android.content.Context p2)
    {
        this(p2, 0);
        return;
    }

    public ActionMenuView(android.content.Context p4, android.util.AttributeSet p5)
    {
        super(p4, p5);
        super.setBaselineAligned(0);
        float v0 = p4.getResources().getDisplayMetrics().density;
        super.mMinCellSize = ((int) (1113587712 * v0));
        super.mGeneratedItemPadding = ((int) (1082130432 * v0));
        super.mPopupContext = p4;
        super.mPopupTheme = 0;
        return;
    }

    static int measureChildForCells(android.view.View p13, int p14, int p15, int p16, int p17)
    {
        int v7;
        androidx.appcompat.widget.ActionMenuView$LayoutParams v8_1 = ((androidx.appcompat.widget.ActionMenuView$LayoutParams) p13.getLayoutParams());
        int v3 = android.view.View$MeasureSpec.makeMeasureSpec((android.view.View$MeasureSpec.getSize(p16) - p17), android.view.View$MeasureSpec.getMode(p16));
        if (!(p13 instanceof androidx.appcompat.view.menu.ActionMenuItemView)) {
            v7 = 0;
        } else {
            v7 = ((androidx.appcompat.view.menu.ActionMenuItemView) p13);
        }
        if ((v7 == 0) || (!v7.hasText())) {
            int v6 = 0;
        } else {
            v6 = 1;
        }
        int v0 = 0;
        if ((p15 > 0) && ((v6 == 0) || (p15 >= 2))) {
            p13.measure(android.view.View$MeasureSpec.makeMeasureSpec((p14 * p15), -2147483648), v3);
            int v9 = p13.getMeasuredWidth();
            v0 = (v9 / p14);
            if ((v9 % p14) != 0) {
                v0++;
            }
            if ((v6 != 0) && (v0 < 2)) {
                v0 = 2;
            }
        }
        if ((v8_1.isOverflowButton) || (v6 == 0)) {
            int v5 = 0;
        } else {
            v5 = 1;
        }
        v8_1.expandable = v5;
        v8_1.cellsUsed = v0;
        p13.measure(android.view.View$MeasureSpec.makeMeasureSpec((v0 * p14), 1073741824), v3);
        return v0;
    }

    private void onMeasureExactFormat(int p43, int p44)
    {
        int v17 = android.view.View$MeasureSpec.getMode(p44);
        int v37_1 = android.view.View$MeasureSpec.getSize(p43);
        int v19 = android.view.View$MeasureSpec.getSize(p44);
        int v36 = (this.getPaddingLeft() + this.getPaddingRight());
        int v18 = (this.getPaddingTop() + this.getPaddingBottom());
        int v22 = androidx.appcompat.widget.ActionMenuView.getChildMeasureSpec(p44, v18, -2);
        int v37_0 = (v37_1 - v36);
        int v4 = (v37_0 / this.mMinCellSize);
        if (v4 != 0) {
            int v5 = (this.mMinCellSize + ((v37_0 % this.mMinCellSize) / v4));
            int v8 = v4;
            int v25 = 0;
            int v24 = 0;
            int v14 = 0;
            int v34 = 0;
            int v16 = 0;
            long v32 = 0;
            int v12 = this.getChildCount();
            int v20_4 = 0;
            while (v20_4 < v12) {
                android.view.View v11_3 = this.getChildAt(v20_4);
                if (v11_3.getVisibility() != 8) {
                    boolean v21 = (v11_3 instanceof androidx.appcompat.view.menu.ActionMenuItemView);
                    v34++;
                    if (v21) {
                        v11_3.setPadding(this.mGeneratedItemPadding, 0, this.mGeneratedItemPadding, 0);
                    }
                    int v38_80;
                    androidx.appcompat.widget.ActionMenuView$LayoutParams v23_11 = ((androidx.appcompat.widget.ActionMenuView$LayoutParams) v11_3.getLayoutParams());
                    v23_11.expanded = 0;
                    v23_11.extraPixels = 0;
                    v23_11.cellsUsed = 0;
                    v23_11.expandable = 0;
                    v23_11.leftMargin = 0;
                    v23_11.rightMargin = 0;
                    if ((!v21) || (!((androidx.appcompat.view.menu.ActionMenuItemView) v11_3).hasText())) {
                        v38_80 = 0;
                    } else {
                        v38_80 = 1;
                    }
                    int v7;
                    v23_11.preventEdgeOffset = v38_80;
                    if (!v23_11.isOverflowButton) {
                        v7 = v8;
                    } else {
                        v7 = 1;
                    }
                    int v9 = androidx.appcompat.widget.ActionMenuView.measureChildForCells(v11_3, v5, v7, v22, v18);
                    v24 = Math.max(v24, v9);
                    if (v23_11.expandable) {
                        v14++;
                    }
                    if (v23_11.isOverflowButton) {
                        v16 = 1;
                    }
                    v8 -= v9;
                    v25 = Math.max(v25, v11_3.getMeasuredHeight());
                    if (v9 == 1) {
                        v32 |= ((long) (1 << v20_4));
                    }
                }
                v20_4++;
            }
            if ((v16 == 0) || (v34 != 2)) {
                int v10 = 0;
            } else {
                v10 = 1;
            }
            int v30 = 0;
            while ((v14 > 0) && (v8 > 0)) {
                int v26_0 = 2147483647;
                long v28 = 0;
                int v27 = 0;
                int v20_3 = 0;
                while (v20_3 < v12) {
                    androidx.appcompat.widget.ActionMenuView$LayoutParams v23_9 = ((androidx.appcompat.widget.ActionMenuView$LayoutParams) this.getChildAt(v20_3).getLayoutParams());
                    if (v23_9.expandable) {
                        if (v23_9.cellsUsed >= v26_0) {
                            if (v23_9.cellsUsed == v26_0) {
                                v28 |= (1 << v20_3);
                                v27++;
                            }
                        } else {
                            v26_0 = v23_9.cellsUsed;
                            v28 = (1 << v20_3);
                            v27 = 1;
                        }
                    }
                    v20_3++;
                }
                v32 |= v28;
                if (v27 > v8) {
                    break;
                }
                int v26_1 = (v26_0 + 1);
                int v20_0 = 0;
                while (v20_0 < v12) {
                    android.view.View v11_4 = this.getChildAt(v20_0);
                    androidx.appcompat.widget.ActionMenuView$LayoutParams v23_13 = ((androidx.appcompat.widget.ActionMenuView$LayoutParams) v11_4.getLayoutParams());
                    if ((((long) (1 << v20_0)) & v28) != 0) {
                        if ((v10 != 0) && ((v23_13.preventEdgeOffset) && (v8 == 1))) {
                            v11_4.setPadding((this.mGeneratedItemPadding + v5), 0, this.mGeneratedItemPadding, 0);
                        }
                        v23_13.cellsUsed = (v23_13.cellsUsed + 1);
                        v23_13.expanded = 1;
                        v8--;
                    } else {
                        if (v23_13.cellsUsed == v26_1) {
                            v32 |= ((long) (1 << v20_0));
                        }
                    }
                    v20_0++;
                }
                v30 = 1;
            }
            if ((v16 != 0) || (v34 != 1)) {
                int v31 = 0;
            } else {
                v31 = 1;
            }
            if ((v8 > 0) && ((v32 != 0) && ((v8 < (v34 - 1)) || ((v31 != 0) || (v24 > 1))))) {
                float v13 = ((float) Long.bitCount(v32));
                if (v31 == 0) {
                    if (((1 & v32) != 0) && (!((androidx.appcompat.widget.ActionMenuView$LayoutParams) this.getChildAt(0).getLayoutParams()).preventEdgeOffset)) {
                        v13 -= 1056964608;
                    }
                    if (((((long) (1 << (v12 - 1))) & v32) != 0) && (!((androidx.appcompat.widget.ActionMenuView$LayoutParams) this.getChildAt((v12 - 1)).getLayoutParams()).preventEdgeOffset)) {
                        v13 -= 1056964608;
                    }
                }
                int v15;
                if (v13 <= 0) {
                    v15 = 0;
                } else {
                    v15 = ((int) (((float) (v8 * v5)) / v13));
                }
                int v20_1 = 0;
                while (v20_1 < v12) {
                    if ((((long) (1 << v20_1)) & v32) != 0) {
                        android.view.View v11_1 = this.getChildAt(v20_1);
                        androidx.appcompat.widget.ActionMenuView$LayoutParams v23_7 = ((androidx.appcompat.widget.ActionMenuView$LayoutParams) v11_1.getLayoutParams());
                        if (!(v11_1 instanceof androidx.appcompat.view.menu.ActionMenuItemView)) {
                            if (!v23_7.isOverflowButton) {
                                if (v20_1 != 0) {
                                    v23_7.leftMargin = (v15 / 2);
                                }
                                if (v20_1 != (v12 - 1)) {
                                    v23_7.rightMargin = (v15 / 2);
                                }
                            } else {
                                v23_7.extraPixels = v15;
                                v23_7.expanded = 1;
                                v23_7.rightMargin = ((- v15) / 2);
                                v30 = 1;
                            }
                        } else {
                            v23_7.extraPixels = v15;
                            v23_7.expanded = 1;
                            if ((v20_1 == 0) && (!v23_7.preventEdgeOffset)) {
                                v23_7.leftMargin = ((- v15) / 2);
                            }
                            v30 = 1;
                        }
                    }
                    v20_1++;
                }
            }
            if (v30 != 0) {
                int v20_2 = 0;
                while (v20_2 < v12) {
                    android.view.View v11_0 = this.getChildAt(v20_2);
                    androidx.appcompat.widget.ActionMenuView$LayoutParams v23_5 = ((androidx.appcompat.widget.ActionMenuView$LayoutParams) v11_0.getLayoutParams());
                    if (v23_5.expanded) {
                        v11_0.measure(android.view.View$MeasureSpec.makeMeasureSpec(((v23_5.cellsUsed * v5) + v23_5.extraPixels), 1073741824), v22);
                    }
                    v20_2++;
                }
            }
            if (v17 != 1073741824) {
                v19 = v25;
            }
            this.setMeasuredDimension(v37_0, v19);
        } else {
            this.setMeasuredDimension(v37_0, 0);
        }
        return;
    }

    protected boolean checkLayoutParams(android.view.ViewGroup$LayoutParams p2)
    {
        if ((p2 == null) || (!(p2 instanceof androidx.appcompat.widget.ActionMenuView$LayoutParams))) {
            int v0_1 = 0;
        } else {
            v0_1 = 1;
        }
        return v0_1;
    }

    public void dismissPopupMenus()
    {
        if (this.mPresenter != null) {
            this.mPresenter.dismissPopupMenus();
        }
        return;
    }

    public boolean dispatchPopulateAccessibilityEvent(android.view.accessibility.AccessibilityEvent p2)
    {
        return 0;
    }

    protected bridge synthetic android.view.ViewGroup$LayoutParams generateDefaultLayoutParams()
    {
        return this.generateDefaultLayoutParams();
    }

    protected androidx.appcompat.widget.ActionMenuView$LayoutParams generateDefaultLayoutParams()
    {
        androidx.appcompat.widget.ActionMenuView$LayoutParams v0_1 = new androidx.appcompat.widget.ActionMenuView$LayoutParams(-2, -2);
        v0_1.gravity = 16;
        return v0_1;
    }

    protected bridge synthetic androidx.appcompat.widget.LinearLayoutCompat$LayoutParams generateDefaultLayoutParams()
    {
        return this.generateDefaultLayoutParams();
    }

    public bridge synthetic android.view.ViewGroup$LayoutParams generateLayoutParams(android.util.AttributeSet p2)
    {
        return this.generateLayoutParams(p2);
    }

    protected bridge synthetic android.view.ViewGroup$LayoutParams generateLayoutParams(android.view.ViewGroup$LayoutParams p2)
    {
        return this.generateLayoutParams(p2);
    }

    public androidx.appcompat.widget.ActionMenuView$LayoutParams generateLayoutParams(android.util.AttributeSet p3)
    {
        return new androidx.appcompat.widget.ActionMenuView$LayoutParams(this.getContext(), p3);
    }

    protected androidx.appcompat.widget.ActionMenuView$LayoutParams generateLayoutParams(android.view.ViewGroup$LayoutParams p3)
    {
        androidx.appcompat.widget.ActionMenuView$LayoutParams v0_0;
        if (p3 == null) {
            v0_0 = this.generateDefaultLayoutParams();
        } else {
            if (!(p3 instanceof androidx.appcompat.widget.ActionMenuView$LayoutParams)) {
                v0_0 = new androidx.appcompat.widget.ActionMenuView$LayoutParams(p3);
            } else {
                v0_0 = new androidx.appcompat.widget.ActionMenuView$LayoutParams(((androidx.appcompat.widget.ActionMenuView$LayoutParams) p3));
            }
            if (v0_0.gravity <= 0) {
                v0_0.gravity = 16;
            }
        }
        return v0_0;
    }

    public bridge synthetic androidx.appcompat.widget.LinearLayoutCompat$LayoutParams generateLayoutParams(android.util.AttributeSet p2)
    {
        return this.generateLayoutParams(p2);
    }

    protected bridge synthetic androidx.appcompat.widget.LinearLayoutCompat$LayoutParams generateLayoutParams(android.view.ViewGroup$LayoutParams p2)
    {
        return this.generateLayoutParams(p2);
    }

    public androidx.appcompat.widget.ActionMenuView$LayoutParams generateOverflowButtonLayoutParams()
    {
        androidx.appcompat.widget.ActionMenuView$LayoutParams v0 = this.generateDefaultLayoutParams();
        v0.isOverflowButton = 1;
        return v0;
    }

    public android.view.Menu getMenu()
    {
        if (this.mMenu == null) {
            androidx.appcompat.widget.ActionMenuPresenter v1_6;
            android.content.Context v0 = this.getContext();
            this.mMenu = new androidx.appcompat.view.menu.MenuBuilder(v0);
            this.mMenu.setCallback(new androidx.appcompat.widget.ActionMenuView$MenuBuilderCallback(this));
            this.mPresenter = new androidx.appcompat.widget.ActionMenuPresenter(v0);
            this.mPresenter.setReserveOverflow(1);
            androidx.appcompat.widget.ActionMenuPresenter v2_1 = this.mPresenter;
            if (this.mActionMenuPresenterCallback == null) {
                v1_6 = new androidx.appcompat.widget.ActionMenuView$ActionMenuPresenterCallback();
            } else {
                v1_6 = this.mActionMenuPresenterCallback;
            }
            v2_1.setCallback(v1_6);
            this.mMenu.addMenuPresenter(this.mPresenter, this.mPopupContext);
            this.mPresenter.setMenuView(this);
        }
        return this.mMenu;
    }

    public android.graphics.drawable.Drawable getOverflowIcon()
    {
        this.getMenu();
        return this.mPresenter.getOverflowIcon();
    }

    public int getPopupTheme()
    {
        return this.mPopupTheme;
    }

    public int getWindowAnimations()
    {
        return 0;
    }

    protected boolean hasSupportDividerBeforeChildAt(int p5)
    {
        int v2;
        if (p5 != 0) {
            androidx.appcompat.widget.ActionMenuView$ActionMenuChildView v1_1 = this.getChildAt((p5 - 1));
            androidx.appcompat.widget.ActionMenuView$ActionMenuChildView v0_1 = this.getChildAt(p5);
            v2 = 0;
            if ((p5 < this.getChildCount()) && ((v1_1 instanceof androidx.appcompat.widget.ActionMenuView$ActionMenuChildView))) {
                v2 = (0 | ((androidx.appcompat.widget.ActionMenuView$ActionMenuChildView) v1_1).needsDividerAfter());
            }
            if ((p5 > 0) && ((v0_1 instanceof androidx.appcompat.widget.ActionMenuView$ActionMenuChildView))) {
                v2 |= ((androidx.appcompat.widget.ActionMenuView$ActionMenuChildView) v0_1).needsDividerBefore();
            }
        } else {
            v2 = 0;
        }
        return v2;
    }

    public boolean hideOverflowMenu()
    {
        if ((this.mPresenter == null) || (!this.mPresenter.hideOverflowMenu())) {
            int v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }

    public void initialize(androidx.appcompat.view.menu.MenuBuilder p1)
    {
        this.mMenu = p1;
        return;
    }

    public boolean invokeItem(androidx.appcompat.view.menu.MenuItemImpl p3)
    {
        return this.mMenu.performItemAction(p3, 0);
    }

    public boolean isOverflowMenuShowPending()
    {
        if ((this.mPresenter == null) || (!this.mPresenter.isOverflowMenuShowPending())) {
            int v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }

    public boolean isOverflowMenuShowing()
    {
        if ((this.mPresenter == null) || (!this.mPresenter.isOverflowMenuShowing())) {
            int v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }

    public boolean isOverflowReserved()
    {
        return this.mReserveOverflow;
    }

    public void onConfigurationChanged(android.content.res.Configuration p3)
    {
        super.onConfigurationChanged(p3);
        if (this.mPresenter != null) {
            this.mPresenter.updateMenuView(0);
            if (this.mPresenter.isOverflowMenuShowing()) {
                this.mPresenter.hideOverflowMenu();
                this.mPresenter.showOverflowMenu();
            }
        }
        return;
    }

    public void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        this.dismissPopupMenus();
        return;
    }

    protected void onLayout(boolean p33, int p34, int p35, int p36, int p37)
    {
        if (this.mFormatItems) {
            int v6 = this.getChildCount();
            int v15 = ((p37 - p35) / 2);
            int v7 = this.getDividerWidth();
            int v17 = 0;
            int v16 = 0;
            int v29 = (((p36 - p34) - this.getPaddingRight()) - this.getPaddingLeft());
            int v8 = 0;
            boolean v11 = androidx.appcompat.widget.ViewUtils.isLayoutRtl(this);
            int v10_1 = 0;
            while (v10_1 < v6) {
                android.view.View v27_1 = this.getChildAt(v10_1);
                if (v27_1.getVisibility() != 8) {
                    androidx.appcompat.widget.ActionMenuView$LayoutParams v19_1 = ((androidx.appcompat.widget.ActionMenuView$LayoutParams) v27_1.getLayoutParams());
                    if (!v19_1.isOverflowButton) {
                        int v21 = ((v27_1.getMeasuredWidth() + v19_1.leftMargin) + v19_1.rightMargin);
                        v17 += v21;
                        v29 -= v21;
                        if (this.hasSupportDividerBeforeChildAt(v10_1)) {
                            v17 += v7;
                        }
                        v16++;
                    } else {
                        int v18 = v27_1.getMeasuredWidth();
                        if (this.hasSupportDividerBeforeChildAt(v10_1)) {
                            v18 += v7;
                        }
                        int v12_1;
                        int v20;
                        int v9_2 = v27_1.getMeasuredHeight();
                        if (!v11) {
                            v20 = ((this.getWidth() - this.getPaddingRight()) - v19_1.rightMargin);
                            v12_1 = (v20 - v18);
                        } else {
                            v12_1 = (this.getPaddingLeft() + v19_1.leftMargin);
                            v20 = (v12_1 + v18);
                        }
                        int v26_2 = (v15 - (v9_2 / 2));
                        v27_1.layout(v12_1, v26_2, v20, (v26_2 + v9_2));
                        v29 -= v18;
                        v8 = 1;
                    }
                }
                v10_1++;
            }
            if ((v6 != 1) || (v8 != 0)) {
                int v30_26;
                if (v8 == 0) {
                    v30_26 = 1;
                } else {
                    v30_26 = 0;
                }
                int v30_27;
                int v22 = (v16 - v30_26);
                if (v22 <= 0) {
                    v30_27 = 0;
                } else {
                    v30_27 = (v29 / v22);
                }
                int v23 = Math.max(0, v30_27);
                if (!v11) {
                    int v24_0 = this.getPaddingLeft();
                    int v10_2 = 0;
                    while (v10_2 < v6) {
                        android.view.View v27_2 = this.getChildAt(v10_2);
                        androidx.appcompat.widget.ActionMenuView$LayoutParams v13_1 = ((androidx.appcompat.widget.ActionMenuView$LayoutParams) v27_2.getLayoutParams());
                        if ((v27_2.getVisibility() != 8) && (!v13_1.isOverflowButton)) {
                            int v24_1 = (v24_0 + v13_1.leftMargin);
                            int v28_2 = v27_2.getMeasuredWidth();
                            int v9_3 = v27_2.getMeasuredHeight();
                            int v26_3 = (v15 - (v9_3 / 2));
                            v27_2.layout(v24_1, v26_3, (v24_1 + v28_2), (v26_3 + v9_3));
                            v24_0 = (v24_1 + ((v13_1.rightMargin + v28_2) + v23));
                        }
                        v10_2++;
                    }
                } else {
                    int v25_1 = (this.getWidth() - this.getPaddingRight());
                    int v10_0 = 0;
                    while (v10_0 < v6) {
                        android.view.View v27_3 = this.getChildAt(v10_0);
                        androidx.appcompat.widget.ActionMenuView$LayoutParams v13_3 = ((androidx.appcompat.widget.ActionMenuView$LayoutParams) v27_3.getLayoutParams());
                        if ((v27_3.getVisibility() != 8) && (!v13_3.isOverflowButton)) {
                            int v25_0 = (v25_1 - v13_3.rightMargin);
                            int v28_0 = v27_3.getMeasuredWidth();
                            int v9_0 = v27_3.getMeasuredHeight();
                            int v26_0 = (v15 - (v9_0 / 2));
                            v27_3.layout((v25_0 - v28_0), v26_0, v25_0, (v26_0 + v9_0));
                            v25_1 = (v25_0 - ((v13_3.leftMargin + v28_0) + v23));
                        }
                        v10_0++;
                    }
                }
            } else {
                android.view.View v27_0 = this.getChildAt(0);
                int v28_1 = v27_0.getMeasuredWidth();
                int v9_1 = v27_0.getMeasuredHeight();
                int v12_0 = (((p36 - p34) / 2) - (v28_1 / 2));
                int v26_1 = (v15 - (v9_1 / 2));
                v27_0.layout(v12_0, v26_1, (v12_0 + v28_1), (v26_1 + v9_1));
            }
        } else {
            super.onLayout(p33, p34, p35, p36, p37);
        }
        return;
    }

    protected void onMeasure(int p11, int p12)
    {
        androidx.appcompat.view.menu.MenuBuilder v6_7;
        boolean v4 = this.mFormatItems;
        if (android.view.View$MeasureSpec.getMode(p11) != 1073741824) {
            v6_7 = 0;
        } else {
            v6_7 = 1;
        }
        this.mFormatItems = v6_7;
        if (v4 != this.mFormatItems) {
            this.mFormatItemsWidth = 0;
        }
        int v5 = android.view.View$MeasureSpec.getSize(p11);
        if ((this.mFormatItems) && ((this.mMenu != null) && (v5 != this.mFormatItemsWidth))) {
            this.mFormatItemsWidth = v5;
            this.mMenu.onItemsChanged(1);
        }
        int v1 = this.getChildCount();
        if ((!this.mFormatItems) || (v1 <= 0)) {
            int v2 = 0;
            while (v2 < v1) {
                androidx.appcompat.widget.ActionMenuView$LayoutParams v3_1 = ((androidx.appcompat.widget.ActionMenuView$LayoutParams) this.getChildAt(v2).getLayoutParams());
                v3_1.rightMargin = 0;
                v3_1.leftMargin = 0;
                v2++;
            }
            super.onMeasure(p11, p12);
        } else {
            this.onMeasureExactFormat(p11, p12);
        }
        return;
    }

    public androidx.appcompat.view.menu.MenuBuilder peekMenu()
    {
        return this.mMenu;
    }

    public void setExpandedActionViewsExclusive(boolean p2)
    {
        this.mPresenter.setExpandedActionViewsExclusive(p2);
        return;
    }

    public void setMenuCallbacks(androidx.appcompat.view.menu.MenuPresenter$Callback p1, androidx.appcompat.view.menu.MenuBuilder$Callback p2)
    {
        this.mActionMenuPresenterCallback = p1;
        this.mMenuBuilderCallback = p2;
        return;
    }

    public void setOnMenuItemClickListener(androidx.appcompat.widget.ActionMenuView$OnMenuItemClickListener p1)
    {
        this.mOnMenuItemClickListener = p1;
        return;
    }

    public void setOverflowIcon(android.graphics.drawable.Drawable p2)
    {
        this.getMenu();
        this.mPresenter.setOverflowIcon(p2);
        return;
    }

    public void setOverflowReserved(boolean p1)
    {
        this.mReserveOverflow = p1;
        return;
    }

    public void setPopupTheme(int p3)
    {
        if (this.mPopupTheme != p3) {
            this.mPopupTheme = p3;
            if (p3 != 0) {
                this.mPopupContext = new android.view.ContextThemeWrapper(this.getContext(), p3);
            } else {
                this.mPopupContext = this.getContext();
            }
        }
        return;
    }

    public void setPresenter(androidx.appcompat.widget.ActionMenuPresenter p2)
    {
        this.mPresenter = p2;
        this.mPresenter.setMenuView(this);
        return;
    }

    public boolean showOverflowMenu()
    {
        if ((this.mPresenter == null) || (!this.mPresenter.showOverflowMenu())) {
            int v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }
}
