package androidx.appcompat.view.menu;
public class ActionMenuItemView extends androidx.appcompat.widget.AppCompatTextView implements androidx.appcompat.view.menu.MenuView$ItemView, android.view.View$OnClickListener, androidx.appcompat.widget.ActionMenuView$ActionMenuChildView {
    private static final int MAX_ICON_SIZE = 32;
    private static final String TAG = "ActionMenuItemView";
    private boolean mAllowTextWithIcon;
    private boolean mExpandedFormat;
    private androidx.appcompat.widget.ForwardingListener mForwardingListener;
    private android.graphics.drawable.Drawable mIcon;
    androidx.appcompat.view.menu.MenuItemImpl mItemData;
    androidx.appcompat.view.menu.MenuBuilder$ItemInvoker mItemInvoker;
    private int mMaxIconSize;
    private int mMinWidth;
    androidx.appcompat.view.menu.ActionMenuItemView$PopupCallback mPopupCallback;
    private int mSavedPaddingLeft;
    private CharSequence mTitle;

    public ActionMenuItemView(android.content.Context p2)
    {
        this(p2, 0);
        return;
    }

    public ActionMenuItemView(android.content.Context p2, android.util.AttributeSet p3)
    {
        this(p2, p3, 0);
        return;
    }

    public ActionMenuItemView(android.content.Context p7, android.util.AttributeSet p8, int p9)
    {
        super(p7, p8, p9);
        android.content.res.Resources v2 = p7.getResources();
        super.mAllowTextWithIcon = super.shouldAllowTextWithIcon();
        android.content.res.TypedArray v0 = p7.obtainStyledAttributes(p8, androidx.appcompat.R$styleable.ActionMenuItemView, p9, 0);
        super.mMinWidth = v0.getDimensionPixelSize(androidx.appcompat.R$styleable.ActionMenuItemView_android_minWidth, 0);
        v0.recycle();
        super.mMaxIconSize = ((int) ((1107296256 * v2.getDisplayMetrics().density) + 1056964608));
        super.setOnClickListener(super);
        super.mSavedPaddingLeft = -1;
        super.setSaveEnabled(0);
        return;
    }

    private boolean shouldAllowTextWithIcon()
    {
        int v3_2;
        android.content.res.Configuration v0 = this.getContext().getResources().getConfiguration();
        int v2 = v0.screenWidthDp;
        if (((v2 < 480) && ((v2 < 640) || (v0.screenHeightDp < 480))) && (v0.orientation != 2)) {
            v3_2 = 0;
        } else {
            v3_2 = 1;
        }
        return v3_2;
    }

    private void updateTextButtonVisibility()
    {
        int v2_1;
        int v4 = 0;
        CharSequence v5 = 0;
        if (android.text.TextUtils.isEmpty(this.mTitle)) {
            v2_1 = 0;
        } else {
            v2_1 = 1;
        }
        if ((this.mIcon == null) || ((this.mItemData.showsTextAsAction()) && ((this.mAllowTextWithIcon) || (this.mExpandedFormat)))) {
            v4 = 1;
        }
        androidx.appcompat.view.menu.MenuItemImpl v3_1;
        int v2_0 = (v2_1 & v4);
        if (v2_0 == 0) {
            v3_1 = 0;
        } else {
            v3_1 = this.mTitle;
        }
        this.setText(v3_1);
        CharSequence v0 = this.mItemData.getContentDescription();
        if (!android.text.TextUtils.isEmpty(v0)) {
            this.setContentDescription(v0);
        } else {
            androidx.appcompat.view.menu.MenuItemImpl v3_5;
            if (v2_0 == 0) {
                v3_5 = this.mItemData.getTitle();
            } else {
                v3_5 = 0;
            }
            this.setContentDescription(v3_5);
        }
        CharSequence v1 = this.mItemData.getTooltipText();
        if (!android.text.TextUtils.isEmpty(v1)) {
            androidx.appcompat.widget.TooltipCompat.setTooltipText(this, v1);
        } else {
            if (v2_0 == 0) {
                v5 = this.mItemData.getTitle();
            }
            androidx.appcompat.widget.TooltipCompat.setTooltipText(this, v5);
        }
        return;
    }

    public androidx.appcompat.view.menu.MenuItemImpl getItemData()
    {
        return this.mItemData;
    }

    public boolean hasText()
    {
        int v0_2;
        if (android.text.TextUtils.isEmpty(this.getText())) {
            v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    public void initialize(androidx.appcompat.view.menu.MenuItemImpl p2, int p3)
    {
        androidx.appcompat.view.menu.ActionMenuItemView$ActionMenuItemForwardingListener v0_1;
        this.mItemData = p2;
        this.setIcon(p2.getIcon());
        this.setTitle(p2.getTitleForItemView(this));
        this.setId(p2.getItemId());
        if (!p2.isVisible()) {
            v0_1 = 8;
        } else {
            v0_1 = 0;
        }
        this.setVisibility(v0_1);
        this.setEnabled(p2.isEnabled());
        if ((p2.hasSubMenu()) && (this.mForwardingListener == null)) {
            this.mForwardingListener = new androidx.appcompat.view.menu.ActionMenuItemView$ActionMenuItemForwardingListener(this);
        }
        return;
    }

    public boolean needsDividerAfter()
    {
        return this.hasText();
    }

    public boolean needsDividerBefore()
    {
        if ((!this.hasText()) || (this.mItemData.getIcon() != null)) {
            int v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }

    public void onClick(android.view.View p3)
    {
        if (this.mItemInvoker != null) {
            this.mItemInvoker.invokeItem(this.mItemData);
        }
        return;
    }

    public void onConfigurationChanged(android.content.res.Configuration p2)
    {
        super.onConfigurationChanged(p2);
        this.mAllowTextWithIcon = this.shouldAllowTextWithIcon();
        this.updateTextButtonVisibility();
        return;
    }

    protected void onMeasure(int p13, int p14)
    {
        boolean v3 = this.hasText();
        if ((v3) && (this.mSavedPaddingLeft >= 0)) {
            super.setPadding(this.mSavedPaddingLeft, this.getPaddingTop(), this.getPaddingRight(), this.getPaddingBottom());
        }
        int v2;
        super.onMeasure(p13, p14);
        int v5 = android.view.View$MeasureSpec.getMode(p13);
        int v6 = android.view.View$MeasureSpec.getSize(p13);
        int v1 = this.getMeasuredWidth();
        if (v5 != -2147483648) {
            v2 = this.mMinWidth;
        } else {
            v2 = Math.min(v6, this.mMinWidth);
        }
        if ((v5 != 1073741824) && ((this.mMinWidth > 0) && (v1 < v2))) {
            super.onMeasure(android.view.View$MeasureSpec.makeMeasureSpec(v2, 1073741824), p14);
        }
        if ((!v3) && (this.mIcon != null)) {
            super.setPadding(((this.getMeasuredWidth() - this.mIcon.getBounds().width()) / 2), this.getPaddingTop(), this.getPaddingRight(), this.getPaddingBottom());
        }
        return;
    }

    public void onRestoreInstanceState(android.os.Parcelable p2)
    {
        super.onRestoreInstanceState(0);
        return;
    }

    public boolean onTouchEvent(android.view.MotionEvent p2)
    {
        if ((!this.mItemData.hasSubMenu()) || ((this.mForwardingListener == null) || (!this.mForwardingListener.onTouch(this, p2)))) {
            int v0_1 = super.onTouchEvent(p2);
        } else {
            v0_1 = 1;
        }
        return v0_1;
    }

    public boolean prefersCondensedTitle()
    {
        return 1;
    }

    public void setCheckable(boolean p1)
    {
        return;
    }

    public void setChecked(boolean p1)
    {
        return;
    }

    public void setExpandedFormat(boolean p2)
    {
        if (this.mExpandedFormat != p2) {
            this.mExpandedFormat = p2;
            if (this.mItemData != null) {
                this.mItemData.actionFormatChanged();
            }
        }
        return;
    }

    public void setIcon(android.graphics.drawable.Drawable p8)
    {
        this.mIcon = p8;
        if (p8 != null) {
            int v2 = p8.getIntrinsicWidth();
            int v0 = p8.getIntrinsicHeight();
            if (v2 > this.mMaxIconSize) {
                float v1_0 = (((float) this.mMaxIconSize) / ((float) v2));
                v2 = this.mMaxIconSize;
                v0 = ((int) (((float) v0) * v1_0));
            }
            if (v0 > this.mMaxIconSize) {
                float v1_1 = (((float) this.mMaxIconSize) / ((float) v0));
                v0 = this.mMaxIconSize;
                v2 = ((int) (((float) v2) * v1_1));
            }
            p8.setBounds(0, 0, v2, v0);
        }
        this.setCompoundDrawables(p8, 0, 0, 0);
        this.updateTextButtonVisibility();
        return;
    }

    public void setItemInvoker(androidx.appcompat.view.menu.MenuBuilder$ItemInvoker p1)
    {
        this.mItemInvoker = p1;
        return;
    }

    public void setPadding(int p1, int p2, int p3, int p4)
    {
        this.mSavedPaddingLeft = p1;
        super.setPadding(p1, p2, p3, p4);
        return;
    }

    public void setPopupCallback(androidx.appcompat.view.menu.ActionMenuItemView$PopupCallback p1)
    {
        this.mPopupCallback = p1;
        return;
    }

    public void setShortcut(boolean p1, char p2)
    {
        return;
    }

    public void setTitle(CharSequence p1)
    {
        this.mTitle = p1;
        this.updateTextButtonVisibility();
        return;
    }

    public boolean showsIcon()
    {
        return 1;
    }
}
