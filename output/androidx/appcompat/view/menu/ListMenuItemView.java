package androidx.appcompat.view.menu;
public class ListMenuItemView extends android.widget.LinearLayout implements androidx.appcompat.view.menu.MenuView$ItemView, android.widget.AbsListView$SelectionBoundsAdjuster {
    private static final String TAG = "ListMenuItemView";
    private android.graphics.drawable.Drawable mBackground;
    private android.widget.CheckBox mCheckBox;
    private android.widget.LinearLayout mContent;
    private boolean mForceShowIcon;
    private android.widget.ImageView mGroupDivider;
    private boolean mHasListDivider;
    private android.widget.ImageView mIconView;
    private android.view.LayoutInflater mInflater;
    private androidx.appcompat.view.menu.MenuItemImpl mItemData;
    private int mMenuType;
    private boolean mPreserveIconSpacing;
    private android.widget.RadioButton mRadioButton;
    private android.widget.TextView mShortcutView;
    private android.graphics.drawable.Drawable mSubMenuArrow;
    private android.widget.ImageView mSubMenuArrowView;
    private int mTextAppearance;
    private android.content.Context mTextAppearanceContext;
    private android.widget.TextView mTitleView;

    public ListMenuItemView(android.content.Context p2, android.util.AttributeSet p3)
    {
        this(p2, p3, androidx.appcompat.R$attr.listMenuViewStyle);
        return;
    }

    public ListMenuItemView(android.content.Context p8, android.util.AttributeSet p9, int p10)
    {
        super(p8, p9);
        androidx.appcompat.widget.TintTypedArray v0 = androidx.appcompat.widget.TintTypedArray.obtainStyledAttributes(super.getContext(), p9, androidx.appcompat.R$styleable.MenuView, p10, 0);
        super.mBackground = v0.getDrawable(androidx.appcompat.R$styleable.MenuView_android_itemBackground);
        super.mTextAppearance = v0.getResourceId(androidx.appcompat.R$styleable.MenuView_android_itemTextAppearance, -1);
        super.mPreserveIconSpacing = v0.getBoolean(androidx.appcompat.R$styleable.MenuView_preserveIconSpacing, 0);
        super.mTextAppearanceContext = p8;
        super.mSubMenuArrow = v0.getDrawable(androidx.appcompat.R$styleable.MenuView_subMenuArrow);
        boolean v2_6 = p8.getTheme();
        int[] v4_1 = new int[1];
        v4_1[0] = 16843049;
        android.content.res.TypedArray v1 = v2_6.obtainStyledAttributes(0, v4_1, androidx.appcompat.R$attr.dropDownListViewStyle, 0);
        super.mHasListDivider = v1.hasValue(0);
        v0.recycle();
        v1.recycle();
        return;
    }

    private void addContentView(android.view.View p2)
    {
        this.addContentView(p2, -1);
        return;
    }

    private void addContentView(android.view.View p2, int p3)
    {
        if (this.mContent == null) {
            this.addView(p2, p3);
        } else {
            this.mContent.addView(p2, p3);
        }
        return;
    }

    private android.view.LayoutInflater getInflater()
    {
        if (this.mInflater == null) {
            this.mInflater = android.view.LayoutInflater.from(this.getContext());
        }
        return this.mInflater;
    }

    private void insertCheckBox()
    {
        this.mCheckBox = ((android.widget.CheckBox) this.getInflater().inflate(androidx.appcompat.R$layout.abc_list_menu_item_checkbox, this, 0));
        this.addContentView(this.mCheckBox);
        return;
    }

    private void insertIconView()
    {
        this.mIconView = ((android.widget.ImageView) this.getInflater().inflate(androidx.appcompat.R$layout.abc_list_menu_item_icon, this, 0));
        this.addContentView(this.mIconView, 0);
        return;
    }

    private void insertRadioButton()
    {
        this.mRadioButton = ((android.widget.RadioButton) this.getInflater().inflate(androidx.appcompat.R$layout.abc_list_menu_item_radio, this, 0));
        this.addContentView(this.mRadioButton);
        return;
    }

    private void setSubMenuArrowVisible(boolean p3)
    {
        if (this.mSubMenuArrowView != null) {
            int v0_1;
            if (!p3) {
                v0_1 = 8;
            } else {
                v0_1 = 0;
            }
            this.mSubMenuArrowView.setVisibility(v0_1);
        }
        return;
    }

    public void adjustListItemSelectionBounds(android.graphics.Rect p5)
    {
        if ((this.mGroupDivider != null) && (this.mGroupDivider.getVisibility() == 0)) {
            android.widget.LinearLayout$LayoutParams v0_1 = ((android.widget.LinearLayout$LayoutParams) this.mGroupDivider.getLayoutParams());
            p5.top = (p5.top + ((this.mGroupDivider.getHeight() + v0_1.topMargin) + v0_1.bottomMargin));
        }
        return;
    }

    public androidx.appcompat.view.menu.MenuItemImpl getItemData()
    {
        return this.mItemData;
    }

    public void initialize(androidx.appcompat.view.menu.MenuItemImpl p3, int p4)
    {
        CharSequence v0_7;
        this.mItemData = p3;
        this.mMenuType = p4;
        if (!p3.isVisible()) {
            v0_7 = 8;
        } else {
            v0_7 = 0;
        }
        this.setVisibility(v0_7);
        this.setTitle(p3.getTitleForItemView(this));
        this.setCheckable(p3.isCheckable());
        this.setShortcut(p3.shouldShowShortcut(), p3.getShortcut());
        this.setIcon(p3.getIcon());
        this.setEnabled(p3.isEnabled());
        this.setSubMenuArrowVisible(p3.hasSubMenu());
        this.setContentDescription(p3.getContentDescription());
        return;
    }

    protected void onFinishInflate()
    {
        super.onFinishInflate();
        androidx.core.view.ViewCompat.setBackground(this, this.mBackground);
        this.mTitleView = ((android.widget.TextView) this.findViewById(androidx.appcompat.R$id.title));
        if (this.mTextAppearance != -1) {
            this.mTitleView.setTextAppearance(this.mTextAppearanceContext, this.mTextAppearance);
        }
        this.mShortcutView = ((android.widget.TextView) this.findViewById(androidx.appcompat.R$id.shortcut));
        this.mSubMenuArrowView = ((android.widget.ImageView) this.findViewById(androidx.appcompat.R$id.submenuarrow));
        if (this.mSubMenuArrowView != null) {
            this.mSubMenuArrowView.setImageDrawable(this.mSubMenuArrow);
        }
        this.mGroupDivider = ((android.widget.ImageView) this.findViewById(androidx.appcompat.R$id.group_divider));
        this.mContent = ((android.widget.LinearLayout) this.findViewById(androidx.appcompat.R$id.content));
        return;
    }

    protected void onMeasure(int p4, int p5)
    {
        if ((this.mIconView != null) && (this.mPreserveIconSpacing)) {
            android.view.ViewGroup$LayoutParams v1 = this.getLayoutParams();
            android.widget.LinearLayout$LayoutParams v0_1 = ((android.widget.LinearLayout$LayoutParams) this.mIconView.getLayoutParams());
            if ((v1.height > 0) && (v0_1.width <= 0)) {
                v0_1.width = v1.height;
            }
        }
        super.onMeasure(p4, p5);
        return;
    }

    public boolean prefersCondensedTitle()
    {
        return 0;
    }

    public void setCheckable(boolean p5)
    {
        if ((p5) || ((this.mRadioButton != null) || (this.mCheckBox != null))) {
            android.widget.RadioButton v1;
            android.widget.CheckBox v0;
            if (!this.mItemData.isExclusiveCheckable()) {
                if (this.mCheckBox == null) {
                    this.insertCheckBox();
                }
                v0 = this.mCheckBox;
                v1 = this.mRadioButton;
            } else {
                if (this.mRadioButton == null) {
                    this.insertRadioButton();
                }
                v0 = this.mRadioButton;
                v1 = this.mCheckBox;
            }
            if (!p5) {
                if (this.mCheckBox != null) {
                    this.mCheckBox.setVisibility(8);
                }
                if (this.mRadioButton != null) {
                    this.mRadioButton.setVisibility(8);
                }
            } else {
                v0.setChecked(this.mItemData.isChecked());
                if (v0.getVisibility() != 0) {
                    v0.setVisibility(0);
                }
                if ((v1 != null) && (v1.getVisibility() != 8)) {
                    v1.setVisibility(8);
                }
            }
        }
        return;
    }

    public void setChecked(boolean p3)
    {
        android.widget.CheckBox v0;
        if (!this.mItemData.isExclusiveCheckable()) {
            if (this.mCheckBox == null) {
                this.insertCheckBox();
            }
            v0 = this.mCheckBox;
        } else {
            if (this.mRadioButton == null) {
                this.insertRadioButton();
            }
            v0 = this.mRadioButton;
        }
        v0.setChecked(p3);
        return;
    }

    public void setForceShowIcon(boolean p1)
    {
        this.mForceShowIcon = p1;
        this.mPreserveIconSpacing = p1;
        return;
    }

    public void setGroupDividerEnabled(boolean p3)
    {
        if (this.mGroupDivider != null) {
            if ((this.mHasListDivider) || (!p3)) {
                int v0_2 = 8;
            } else {
                v0_2 = 0;
            }
            this.mGroupDivider.setVisibility(v0_2);
        }
        return;
    }

    public void setIcon(android.graphics.drawable.Drawable p4)
    {
        if ((!this.mItemData.shouldShowIcon()) && (!this.mForceShowIcon)) {
            int v0 = 0;
        } else {
            v0 = 1;
        }
        if (((v0 != 0) || (this.mPreserveIconSpacing)) && ((this.mIconView != null) || ((p4 != 0) || (this.mPreserveIconSpacing)))) {
            if (this.mIconView == null) {
                this.insertIconView();
            }
            if ((p4 == 0) && (!this.mPreserveIconSpacing)) {
                this.mIconView.setVisibility(8);
            } else {
                if (v0 == 0) {
                    p4 = 0;
                }
                this.mIconView.setImageDrawable(p4);
                if (this.mIconView.getVisibility() != 0) {
                    this.mIconView.setVisibility(0);
                }
            }
        }
        return;
    }

    public void setShortcut(boolean p4, char p5)
    {
        if ((!p4) || (!this.mItemData.shouldShowShortcut())) {
            int v0 = 8;
        } else {
            v0 = 0;
        }
        if (v0 == 0) {
            this.mShortcutView.setText(this.mItemData.getShortcutLabel());
        }
        if (this.mShortcutView.getVisibility() != v0) {
            this.mShortcutView.setVisibility(v0);
        }
        return;
    }

    public void setTitle(CharSequence p3)
    {
        if (p3 == null) {
            if (this.mTitleView.getVisibility() != 8) {
                this.mTitleView.setVisibility(8);
            }
        } else {
            this.mTitleView.setText(p3);
            if (this.mTitleView.getVisibility() != 0) {
                this.mTitleView.setVisibility(0);
            }
        }
        return;
    }

    public boolean showsIcon()
    {
        return this.mForceShowIcon;
    }
}
