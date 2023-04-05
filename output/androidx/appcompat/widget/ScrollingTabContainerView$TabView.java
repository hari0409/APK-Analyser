package androidx.appcompat.widget;
 class ScrollingTabContainerView$TabView extends android.widget.LinearLayout {
    private final int[] BG_ATTRS;
    private android.view.View mCustomView;
    private android.widget.ImageView mIconView;
    private androidx.appcompat.app.ActionBar$Tab mTab;
    private android.widget.TextView mTextView;
    final synthetic androidx.appcompat.widget.ScrollingTabContainerView this$0;

    public ScrollingTabContainerView$TabView(androidx.appcompat.widget.ScrollingTabContainerView p6, android.content.Context p7, androidx.appcompat.app.ActionBar$Tab p8, boolean p9)
    {
        this.this$0 = p6;
        super(p7, 0, androidx.appcompat.R$attr.actionBarTabStyle);
        int v1_6 = new int[1];
        v1_6[0] = 16842964;
        super.BG_ATTRS = v1_6;
        super.mTab = p8;
        androidx.appcompat.widget.TintTypedArray v0 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(p7, 0, super.BG_ATTRS, androidx.appcompat.R$attr.actionBarTabStyle, 0);
        if (v0.hasValue(0)) {
            super.setBackgroundDrawable(v0.getDrawable(0));
        }
        v0.recycle();
        if (p9) {
            super.setGravity(8388627);
        }
        super.update();
        return;
    }

    public void bindTab(androidx.appcompat.app.ActionBar$Tab p1)
    {
        this.mTab = p1;
        this.update();
        return;
    }

    public androidx.appcompat.app.ActionBar$Tab getTab()
    {
        return this.mTab;
    }

    public void onInitializeAccessibilityEvent(android.view.accessibility.AccessibilityEvent p2)
    {
        super.onInitializeAccessibilityEvent(p2);
        p2.setClassName(androidx.appcompat.app.ActionBar$Tab.getName());
        return;
    }

    public void onInitializeAccessibilityNodeInfo(android.view.accessibility.AccessibilityNodeInfo p2)
    {
        super.onInitializeAccessibilityNodeInfo(p2);
        p2.setClassName(androidx.appcompat.app.ActionBar$Tab.getName());
        return;
    }

    public void onMeasure(int p3, int p4)
    {
        super.onMeasure(p3, p4);
        if ((this.this$0.mMaxTabWidth > 0) && (this.getMeasuredWidth() > this.this$0.mMaxTabWidth)) {
            super.onMeasure(android.view.View$MeasureSpec.makeMeasureSpec(this.this$0.mMaxTabWidth, 1073741824), p4);
        }
        return;
    }

    public void setSelected(boolean p3)
    {
        int v0;
        if (this.isSelected() == p3) {
            v0 = 0;
        } else {
            v0 = 1;
        }
        super.setSelected(p3);
        if ((v0 != 0) && (p3)) {
            this.sendAccessibilityEvent(4);
        }
        return;
    }

    public void update()
    {
        CharSequence v9 = 0;
        androidx.appcompat.app.ActionBar$Tab v6 = this.mTab;
        android.view.View v0 = v6.getCustomView();
        if (v0 == null) {
            if (this.mCustomView != null) {
                this.removeView(this.mCustomView);
                this.mCustomView = 0;
            }
            android.graphics.drawable.Drawable v3 = v6.getIcon();
            CharSequence v7 = v6.getText();
            if (v3 == null) {
                if (this.mIconView != null) {
                    this.mIconView.setVisibility(8);
                    this.mIconView.setImageDrawable(0);
                }
            } else {
                if (this.mIconView == null) {
                    androidx.appcompat.widget.AppCompatImageView v4_1 = new androidx.appcompat.widget.AppCompatImageView(this.getContext());
                    android.widget.LinearLayout$LayoutParams v5_1 = new android.widget.LinearLayout$LayoutParams(-2, -2);
                    v5_1.gravity = 16;
                    v4_1.setLayoutParams(v5_1);
                    this.addView(v4_1, 0);
                    this.mIconView = v4_1;
                }
                this.mIconView.setImageDrawable(v3);
                this.mIconView.setVisibility(0);
            }
            android.widget.ImageView v2;
            if (android.text.TextUtils.isEmpty(v7)) {
                v2 = 0;
            } else {
                v2 = 1;
            }
            if (v2 == null) {
                if (this.mTextView != null) {
                    this.mTextView.setVisibility(8);
                    this.mTextView.setText(0);
                }
            } else {
                if (this.mTextView == null) {
                    androidx.appcompat.widget.AppCompatTextView v8_1 = new androidx.appcompat.widget.AppCompatTextView(this.getContext(), 0, androidx.appcompat.R$attr.actionBarTabTextStyle);
                    v8_1.setEllipsize(android.text.TextUtils$TruncateAt.END);
                    android.widget.LinearLayout$LayoutParams v5_3 = new android.widget.LinearLayout$LayoutParams(-2, -2);
                    v5_3.gravity = 16;
                    v8_1.setLayoutParams(v5_3);
                    this.addView(v8_1);
                    this.mTextView = v8_1;
                }
                this.mTextView.setText(v7);
                this.mTextView.setVisibility(0);
            }
            if (this.mIconView != null) {
                this.mIconView.setContentDescription(v6.getContentDescription());
            }
            if (v2 == null) {
                v9 = v6.getContentDescription();
            }
            androidx.appcompat.widget.TooltipCompat.setTooltipText(this, v9);
        } else {
            android.view.ViewGroup v1_0 = v0.getParent();
            if (v1_0 != this) {
                if (v1_0 != null) {
                    ((android.view.ViewGroup) v1_0).removeView(v0);
                }
                this.addView(v0);
            }
            this.mCustomView = v0;
            if (this.mTextView != null) {
                this.mTextView.setVisibility(8);
            }
            if (this.mIconView != null) {
                this.mIconView.setVisibility(8);
                this.mIconView.setImageDrawable(0);
            }
        }
        return;
    }
}
