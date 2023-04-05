package androidx.appcompat.widget;
 class AppCompatSpinner$DropdownPopup extends androidx.appcompat.widget.ListPopupWindow {
    android.widget.ListAdapter mAdapter;
    private CharSequence mHintText;
    private final android.graphics.Rect mVisibleRect;
    final synthetic androidx.appcompat.widget.AppCompatSpinner this$0;

    public AppCompatSpinner$DropdownPopup(androidx.appcompat.widget.AppCompatSpinner p2, android.content.Context p3, android.util.AttributeSet p4, int p5)
    {
        this.this$0 = p2;
        super(p3, p4, p5);
        super.mVisibleRect = new android.graphics.Rect();
        super.setAnchorView(p2);
        super.setModal(1);
        super.setPromptPosition(0);
        super.setOnItemClickListener(new androidx.appcompat.widget.AppCompatSpinner$DropdownPopup$1(super, p2));
        return;
    }

    static synthetic void access$001(androidx.appcompat.widget.AppCompatSpinner$DropdownPopup p0)
    {
        super.show();
        return;
    }

    void computeContentWidth()
    {
        android.graphics.drawable.Drawable v0 = this.getBackground();
        int v3_0 = 0;
        if (v0 == null) {
            int v7_22 = this.this$0.mTempRect;
            this.this$0.mTempRect.right = 0;
            v7_22.left = 0;
        } else {
            v0.getPadding(this.this$0.mTempRect);
            if (!androidx.appcompat.widget.ViewUtils.isLayoutRtl(this.this$0)) {
                v3_0 = (- this.this$0.mTempRect.left);
            } else {
                v3_0 = this.this$0.mTempRect.right;
            }
        }
        int v4 = this.this$0.getPaddingLeft();
        int v5 = this.this$0.getPaddingRight();
        int v6 = this.this$0.getWidth();
        if (this.this$0.mDropDownWidth != -2) {
            if (this.this$0.mDropDownWidth != -1) {
                this.setContentWidth(this.this$0.mDropDownWidth);
            } else {
                this.setContentWidth(((v6 - v4) - v5));
            }
        } else {
            int v1 = this.this$0.compatMeasureContentWidth(((android.widget.SpinnerAdapter) this.mAdapter), this.getBackground());
            int v2 = ((this.this$0.getContext().getResources().getDisplayMetrics().widthPixels - this.this$0.mTempRect.left) - this.this$0.mTempRect.right);
            if (v1 > v2) {
                v1 = v2;
            }
            this.setContentWidth(Math.max(v1, ((v6 - v4) - v5)));
        }
        int v3_1;
        if (!androidx.appcompat.widget.ViewUtils.isLayoutRtl(this.this$0)) {
            v3_1 = (v3_0 + v4);
        } else {
            v3_1 = (v3_0 + ((v6 - v5) - this.getWidth()));
        }
        this.setHorizontalOffset(v3_1);
        return;
    }

    public CharSequence getHintText()
    {
        return this.mHintText;
    }

    boolean isVisibleToUser(android.view.View p2)
    {
        if ((!androidx.core.view.ViewCompat.isAttachedToWindow(p2)) || (!p2.getGlobalVisibleRect(this.mVisibleRect))) {
            int v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }

    public void setAdapter(android.widget.ListAdapter p1)
    {
        super.setAdapter(p1);
        this.mAdapter = p1;
        return;
    }

    public void setPromptText(CharSequence p1)
    {
        this.mHintText = p1;
        return;
    }

    public void show()
    {
        boolean v3 = this.isShowing();
        this.computeContentWidth();
        this.setInputMethodMode(2);
        super.show();
        this.getListView().setChoiceMode(1);
        this.setSelection(this.this$0.getSelectedItemPosition());
        if (!v3) {
            android.view.ViewTreeObserver v2 = this.this$0.getViewTreeObserver();
            if (v2 != null) {
                androidx.appcompat.widget.AppCompatSpinner$DropdownPopup$2 v0_1 = new androidx.appcompat.widget.AppCompatSpinner$DropdownPopup$2(this);
                v2.addOnGlobalLayoutListener(v0_1);
                this.setOnDismissListener(new androidx.appcompat.widget.AppCompatSpinner$DropdownPopup$3(this, v0_1));
            }
        }
        return;
    }
}
