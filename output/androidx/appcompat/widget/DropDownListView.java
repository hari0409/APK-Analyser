package androidx.appcompat.widget;
 class DropDownListView extends android.widget.ListView {
    public static final int INVALID_POSITION = 255;
    public static final int NO_POSITION = 255;
    private androidx.core.view.ViewPropertyAnimatorCompat mClickAnimation;
    private boolean mDrawsInPressedState;
    private boolean mHijackFocus;
    private reflect.Field mIsChildViewEnabled;
    private boolean mListSelectionHidden;
    private int mMotionPosition;
    androidx.appcompat.widget.DropDownListView$ResolveHoverRunnable mResolveHoverRunnable;
    private androidx.core.widget.ListViewAutoScrollHelper mScrollHelper;
    private int mSelectionBottomPadding;
    private int mSelectionLeftPadding;
    private int mSelectionRightPadding;
    private int mSelectionTopPadding;
    private androidx.appcompat.widget.DropDownListView$GateKeeperDrawable mSelector;
    private final android.graphics.Rect mSelectorRect;

    DropDownListView(android.content.Context p5, boolean p6)
    {
        super(p5, 0, androidx.appcompat.R$attr.dropDownListViewStyle);
        super.mSelectorRect = new android.graphics.Rect();
        super.mSelectionLeftPadding = 0;
        super.mSelectionTopPadding = 0;
        super.mSelectionRightPadding = 0;
        super.mSelectionBottomPadding = 0;
        super.mHijackFocus = p6;
        super.setCacheColorHint(0);
        try {
            super.mIsChildViewEnabled = android.widget.AbsListView.getDeclaredField("mIsChildViewEnabled");
            super.mIsChildViewEnabled.setAccessible(1);
        } catch (NoSuchFieldException v0) {
            v0.printStackTrace();
        }
        return;
    }

    private void clearPressedItem()
    {
        this.mDrawsInPressedState = 0;
        this.setPressed(0);
        this.drawableStateChanged();
        android.view.View v0 = this.getChildAt((this.mMotionPosition - this.getFirstVisiblePosition()));
        if (v0 != null) {
            v0.setPressed(0);
        }
        if (this.mClickAnimation != null) {
            this.mClickAnimation.cancel();
            this.mClickAnimation = 0;
        }
        return;
    }

    private void clickPressedItem(android.view.View p3, int p4)
    {
        this.performItemClick(p3, p4, this.getItemIdAtPosition(p4));
        return;
    }

    private void drawSelectorCompat(android.graphics.Canvas p3)
    {
        if (!this.mSelectorRect.isEmpty()) {
            android.graphics.drawable.Drawable v0 = this.getSelector();
            if (v0 != null) {
                v0.setBounds(this.mSelectorRect);
                v0.draw(p3);
            }
        }
        return;
    }

    private void positionSelectorCompat(int p8, android.view.View p9)
    {
        android.graphics.Rect v2 = this.mSelectorRect;
        v2.set(p9.getLeft(), p9.getTop(), p9.getRight(), p9.getBottom());
        v2.left = (v2.left - this.mSelectionLeftPadding);
        v2.top = (v2.top - this.mSelectionTopPadding);
        v2.right = (v2.right + this.mSelectionRightPadding);
        v2.bottom = (v2.bottom + this.mSelectionBottomPadding);
        try {
            boolean v1 = this.mIsChildViewEnabled.getBoolean(this);
        } catch (IllegalAccessException v0) {
            v0.printStackTrace();
            return;
        }
        if (p9.isEnabled() == v1) {
            return;
        } else {
            int v3_11;
            if (v1) {
                v3_11 = 0;
            } else {
                v3_11 = 1;
            }
            this.mIsChildViewEnabled.set(this, Boolean.valueOf(v3_11));
            if (p8 == -1) {
                return;
            } else {
                this.refreshDrawableState();
                return;
            }
        }
    }

    private void positionSelectorLikeFocusCompat(int p9, android.view.View p10)
    {
        int v1;
        int v5 = 1;
        android.graphics.drawable.Drawable v2 = this.getSelector();
        if ((v2 == null) || (p9 == -1)) {
            v1 = 0;
        } else {
            v1 = 1;
        }
        if (v1 != 0) {
            v2.setVisible(0, 0);
        }
        this.positionSelectorCompat(p9, p10);
        if (v1 != 0) {
            android.graphics.Rect v0 = this.mSelectorRect;
            float v3 = v0.exactCenterX();
            float v4 = v0.exactCenterY();
            if (this.getVisibility() != 0) {
                v5 = 0;
            }
            v2.setVisible(v5, 0);
            androidx.core.graphics.drawable.DrawableCompat.setHotspot(v2, v3, v4);
        }
        return;
    }

    private void positionSelectorLikeTouchCompat(int p3, android.view.View p4, float p5, float p6)
    {
        this.positionSelectorLikeFocusCompat(p3, p4);
        android.graphics.drawable.Drawable v0 = this.getSelector();
        if ((v0 != null) && (p3 != -1)) {
            androidx.core.graphics.drawable.DrawableCompat.setHotspot(v0, p5, p6);
        }
        return;
    }

    private void setPressedItem(android.view.View p9, int p10, float p11, float p12)
    {
        this.mDrawsInPressedState = 1;
        if (android.os.Build$VERSION.SDK_INT >= 21) {
            this.drawableHotspotChanged(p11, p12);
        }
        if (!this.isPressed()) {
            this.setPressed(1);
        }
        this.layoutChildren();
        if (this.mMotionPosition != -1) {
            android.view.View v2 = this.getChildAt((this.mMotionPosition - this.getFirstVisiblePosition()));
            if ((v2 != null) && ((v2 != p9) && (v2.isPressed()))) {
                v2.setPressed(0);
            }
        }
        this.mMotionPosition = p10;
        float v0 = (p11 - ((float) p9.getLeft()));
        boolean v3_6 = p9.getTop();
        if (android.os.Build$VERSION.SDK_INT >= 21) {
            p9.drawableHotspotChanged(v0, (p12 - ((float) v3_6)));
        }
        if (!p9.isPressed()) {
            p9.setPressed(1);
        }
        this.positionSelectorLikeTouchCompat(p10, p9, p11, p12);
        this.setSelectorEnabled(0);
        this.refreshDrawableState();
        return;
    }

    private void setSelectorEnabled(boolean p2)
    {
        if (this.mSelector != null) {
            this.mSelector.setEnabled(p2);
        }
        return;
    }

    private boolean touchModeDrawsInPressedStateCompat()
    {
        return this.mDrawsInPressedState;
    }

    private void updateSelectorStateCompat()
    {
        android.graphics.drawable.Drawable v0 = this.getSelector();
        if ((v0 != null) && ((this.touchModeDrawsInPressedStateCompat()) && (this.isPressed()))) {
            v0.setState(this.getDrawableState());
        }
        return;
    }

    protected void dispatchDraw(android.graphics.Canvas p2)
    {
        this.drawSelectorCompat(p2);
        super.dispatchDraw(p2);
        return;
    }

    protected void drawableStateChanged()
    {
        if (this.mResolveHoverRunnable == null) {
            super.drawableStateChanged();
            this.setSelectorEnabled(1);
            this.updateSelectorStateCompat();
        }
        return;
    }

    public boolean hasFocus()
    {
        if ((!this.mHijackFocus) && (!super.hasFocus())) {
            int v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    public boolean hasWindowFocus()
    {
        if ((!this.mHijackFocus) && (!super.hasWindowFocus())) {
            int v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    public boolean isFocused()
    {
        if ((!this.mHijackFocus) && (!super.isFocused())) {
            int v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    public boolean isInTouchMode()
    {
        if (((!this.mHijackFocus) || (!this.mListSelectionHidden)) && (!super.isInTouchMode())) {
            int v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }

    public int lookForSelectablePosition(int p6, boolean p7)
    {
        int v3 = -1;
        android.widget.ListAdapter v0 = this.getAdapter();
        if ((v0 != null) && (!this.isInTouchMode())) {
            int v1 = v0.getCount();
            if (this.getAdapter().areAllItemsEnabled()) {
                if ((p6 >= 0) && (p6 < v1)) {
                    v3 = p6;
                }
            } else {
                int v6_1;
                if (!p7) {
                    v6_1 = Math.min(p6, (v1 - 1));
                    while ((v6_1 >= 0) && (!v0.isEnabled(v6_1))) {
                        v6_1--;
                    }
                } else {
                    v6_1 = Math.max(0, p6);
                    while ((v6_1 < v1) && (!v0.isEnabled(v6_1))) {
                        v6_1++;
                    }
                }
                if ((v6_1 >= 0) && (v6_1 < v1)) {
                    v3 = v6_1;
                }
            }
        }
        return v3;
    }

    public int measureHeightOfChildrenCompat(int p22, int p23, int p24, int p25, int p26)
    {
        int v15;
        int v14 = this.getListPaddingTop();
        int v11 = this.getListPaddingBottom();
        this.getListPaddingLeft();
        this.getListPaddingRight();
        int v16 = this.getDividerHeight();
        android.graphics.drawable.Drawable v6 = this.getDivider();
        android.widget.ListAdapter v2 = this.getAdapter();
        if (v2 != null) {
            int v7;
            int v17 = (v14 + v11);
            if ((v16 <= 0) || (v6 == null)) {
                v7 = 0;
            } else {
                v7 = v16;
            }
            v15 = 0;
            android.view.View v3 = 0;
            int v18 = 0;
            int v5 = v2.getCount();
            int v9 = 0;
            while (v9 < v5) {
                int v10 = v2.getItemViewType(v9);
                if (v10 != v18) {
                    v3 = 0;
                    v18 = v10;
                }
                v3 = v2.getView(v9, v3, this);
                android.view.ViewGroup$LayoutParams v4 = v3.getLayoutParams();
                if (v4 == null) {
                    v4 = this.generateDefaultLayoutParams();
                    v3.setLayoutParams(v4);
                }
                int v8;
                if (v4.height <= 0) {
                    v8 = android.view.View$MeasureSpec.makeMeasureSpec(0, 0);
                } else {
                    v8 = android.view.View$MeasureSpec.makeMeasureSpec(v4.height, 1073741824);
                }
                v3.measure(p22, v8);
                v3.forceLayout();
                if (v9 > 0) {
                    v17 += v7;
                }
                v17 += v3.getMeasuredHeight();
                if (v17 < p25) {
                    if ((p26 >= 0) && (v9 >= p26)) {
                        v15 = v17;
                    }
                    v9++;
                } else {
                    if ((p26 < 0) || ((v9 <= p26) || ((v15 <= 0) || (v17 == p25)))) {
                        v15 = p25;
                    }
                }
            }
            v15 = v17;
        } else {
            v15 = (v14 + v11);
        }
        return v15;
    }

    protected void onDetachedFromWindow()
    {
        this.mResolveHoverRunnable = 0;
        super.onDetachedFromWindow();
        return;
    }

    public boolean onForwardedEvent(android.view.MotionEvent p12, int p13)
    {
        int v4 = 1;
        int v3 = 0;
        int v0 = p12.getActionMasked();
        switch (v0) {
            case 1:
                v4 = 0;
            case 2:
                int v1 = p12.findPointerIndex(p13);
                if (v1 >= 0) {
                    int v6 = ((int) p12.getX(v1));
                    int v7 = ((int) p12.getY(v1));
                    int v5 = this.pointToPosition(v6, v7);
                    if (v5 != -1) {
                        android.view.View v2 = this.getChildAt((v5 - this.getFirstVisiblePosition()));
                        this.setPressedItem(v2, v5, ((float) v6), ((float) v7));
                        v4 = 1;
                        if (v0 != 1) {
                        } else {
                            this.clickPressedItem(v2, v5);
                        }
                    } else {
                        v3 = 1;
                    }
                } else {
                    v4 = 0;
                }
                break;
            case 3:
                v4 = 0;
                break;
            default:
                if (v4 == 0) {
                    this.clearPressedItem();
                    if (v4 == 0) {
                        if (this.mScrollHelper != null) {
                            this.mScrollHelper.setEnabled(0);
                        }
                    } else {
                        if (this.mScrollHelper == null) {
                            this.mScrollHelper = new androidx.core.widget.ListViewAutoScrollHelper(this);
                        }
                        this.mScrollHelper.setEnabled(1);
                        this.mScrollHelper.onTouch(this, p12);
                    }
                    return v4;
                } else {
                    if (v3 == 0) {
                    } else {
                    }
                }
        }
        if ((v4 == 0) || (v3 != 0)) {
        }
    }

    public boolean onHoverEvent(android.view.MotionEvent p8)
    {
        boolean v1;
        if (android.os.Build$VERSION.SDK_INT >= 26) {
            int v0 = p8.getActionMasked();
            if ((v0 == 10) && (this.mResolveHoverRunnable == null)) {
                this.mResolveHoverRunnable = new androidx.appcompat.widget.DropDownListView$ResolveHoverRunnable(this);
                this.mResolveHoverRunnable.post();
            }
            v1 = super.onHoverEvent(p8);
            if ((v0 != 9) && (v0 != 7)) {
                this.setSelection(-1);
            } else {
                int v3 = this.pointToPosition(((int) p8.getX()), ((int) p8.getY()));
                if ((v3 != -1) && (v3 != this.getSelectedItemPosition())) {
                    android.view.View v2 = this.getChildAt((v3 - this.getFirstVisiblePosition()));
                    if (v2.isEnabled()) {
                        this.setSelectionFromTop(v3, (v2.getTop() - this.getTop()));
                    }
                    this.updateSelectorStateCompat();
                }
            }
        } else {
            v1 = super.onHoverEvent(p8);
        }
        return v1;
    }

    public boolean onTouchEvent(android.view.MotionEvent p3)
    {
        switch (p3.getAction()) {
            case 0:
                this.mMotionPosition = this.pointToPosition(((int) p3.getX()), ((int) p3.getY()));
                break;
        }
        if (this.mResolveHoverRunnable != null) {
            this.mResolveHoverRunnable.cancel();
        }
        return super.onTouchEvent(p3);
    }

    void setListSelectionHidden(boolean p1)
    {
        this.mListSelectionHidden = p1;
        return;
    }

    public void setSelector(android.graphics.drawable.Drawable p3)
    {
        int v1_0;
        if (p3 == null) {
            v1_0 = 0;
        } else {
            v1_0 = new androidx.appcompat.widget.DropDownListView$GateKeeperDrawable(p3);
        }
        this.mSelector = v1_0;
        super.setSelector(this.mSelector);
        android.graphics.Rect v0_1 = new android.graphics.Rect();
        if (p3 != null) {
            p3.getPadding(v0_1);
        }
        this.mSelectionLeftPadding = v0_1.left;
        this.mSelectionTopPadding = v0_1.top;
        this.mSelectionRightPadding = v0_1.right;
        this.mSelectionBottomPadding = v0_1.bottom;
        return;
    }
}
