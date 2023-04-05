package androidx.appcompat.view;
 class SupportMenuInflater$MenuState {
    private static final int defaultGroupId = 0;
    private static final int defaultItemCategory = 0;
    private static final int defaultItemCheckable = 0;
    private static final boolean defaultItemChecked = False;
    private static final boolean defaultItemEnabled = True;
    private static final int defaultItemId = 0;
    private static final int defaultItemOrder = 0;
    private static final boolean defaultItemVisible = True;
    private int groupCategory;
    private int groupCheckable;
    private boolean groupEnabled;
    private int groupId;
    private int groupOrder;
    private boolean groupVisible;
    androidx.core.view.ActionProvider itemActionProvider;
    private String itemActionProviderClassName;
    private String itemActionViewClassName;
    private int itemActionViewLayout;
    private boolean itemAdded;
    private int itemAlphabeticModifiers;
    private char itemAlphabeticShortcut;
    private int itemCategoryOrder;
    private int itemCheckable;
    private boolean itemChecked;
    private CharSequence itemContentDescription;
    private boolean itemEnabled;
    private int itemIconResId;
    private android.content.res.ColorStateList itemIconTintList;
    private android.graphics.PorterDuff$Mode itemIconTintMode;
    private int itemId;
    private String itemListenerMethodName;
    private int itemNumericModifiers;
    private char itemNumericShortcut;
    private int itemShowAsAction;
    private CharSequence itemTitle;
    private CharSequence itemTitleCondensed;
    private CharSequence itemTooltipText;
    private boolean itemVisible;
    private android.view.Menu menu;
    final synthetic androidx.appcompat.view.SupportMenuInflater this$0;

    public SupportMenuInflater$MenuState(androidx.appcompat.view.SupportMenuInflater p2, android.view.Menu p3)
    {
        this.this$0 = p2;
        this.itemIconTintList = 0;
        this.itemIconTintMode = 0;
        this.menu = p3;
        this.resetGroup();
        return;
    }

    private char getShortcut(String p2)
    {
        char v0 = 0;
        if (p2 != null) {
            v0 = p2.charAt(0);
        }
        return v0;
    }

    private Object newInstance(String p7, Class[] p8, Object[] p9)
    {
        try {
            reflect.Constructor v1 = this.this$0.mContext.getClassLoader().loadClass(p7).getConstructor(p8);
            v1.setAccessible(1);
            int v3_2 = v1.newInstance(p9);
        } catch (Exception v2) {
            android.util.Log.w("SupportMenuInflater", new StringBuilder().append("Cannot instantiate class: ").append(p7).toString(), v2);
            v3_2 = 0;
        }
        return v3_2;
    }

    private void setItem(android.view.MenuItem p8)
    {
        android.content.res.ColorStateList v3_4;
        android.view.MenuItem vtmp3 = p8.setChecked(this.itemChecked).setVisible(this.itemVisible).setEnabled(this.itemEnabled);
        if (this.itemCheckable < 1) {
            v3_4 = 0;
        } else {
            v3_4 = 1;
        }
        vtmp3.setCheckable(v3_4).setTitleCondensed(this.itemTitleCondensed).setIcon(this.itemIconResId);
        if (this.itemShowAsAction >= 0) {
            p8.setShowAsAction(this.itemShowAsAction);
        }
        if (this.itemListenerMethodName != null) {
            if (!this.this$0.mContext.isRestricted()) {
                p8.setOnMenuItemClickListener(new androidx.appcompat.view.SupportMenuInflater$InflatedOnMenuItemClickListener(this.this$0.getRealOwner(), this.itemListenerMethodName));
            } else {
                throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
            }
        }
        // Both branches of the condition point to the same code.
        // if (!(p8 instanceof androidx.appcompat.view.menu.MenuItemImpl)) {
            if (this.itemCheckable >= 2) {
                if (!(p8 instanceof androidx.appcompat.view.menu.MenuItemImpl)) {
                    if ((p8 instanceof androidx.appcompat.view.menu.MenuItemWrapperICS)) {
                        ((androidx.appcompat.view.menu.MenuItemWrapperICS) p8).setExclusiveCheckable(1);
                    }
                } else {
                    ((androidx.appcompat.view.menu.MenuItemImpl) p8).setExclusiveCheckable(1);
                }
            }
            int v1 = 0;
            if (this.itemActionViewClassName != null) {
                p8.setActionView(((android.view.View) this.newInstance(this.itemActionViewClassName, androidx.appcompat.view.SupportMenuInflater.ACTION_VIEW_CONSTRUCTOR_SIGNATURE, this.this$0.mActionViewConstructorArguments)));
                v1 = 1;
            }
            if (this.itemActionViewLayout > 0) {
                if (v1 != 0) {
                    android.util.Log.w("SupportMenuInflater", "Ignoring attribute \'itemActionViewLayout\'. Action view already specified.");
                } else {
                    p8.setActionView(this.itemActionViewLayout);
                }
            }
            if (this.itemActionProvider != null) {
                androidx.core.view.MenuItemCompat.setActionProvider(p8, this.itemActionProvider);
            }
            androidx.core.view.MenuItemCompat.setContentDescription(p8, this.itemContentDescription);
            androidx.core.view.MenuItemCompat.setTooltipText(p8, this.itemTooltipText);
            androidx.core.view.MenuItemCompat.setAlphabeticShortcut(p8, this.itemAlphabeticShortcut, this.itemAlphabeticModifiers);
            androidx.core.view.MenuItemCompat.setNumericShortcut(p8, this.itemNumericShortcut, this.itemNumericModifiers);
            if (this.itemIconTintMode != null) {
                androidx.core.view.MenuItemCompat.setIconTintMode(p8, this.itemIconTintMode);
            }
            if (this.itemIconTintList != null) {
                androidx.core.view.MenuItemCompat.setIconTintList(p8, this.itemIconTintList);
            }
            return;
        // }
    }

    public void addItem()
    {
        this.itemAdded = 1;
        this.setItem(this.menu.add(this.groupId, this.itemId, this.itemCategoryOrder, this.itemTitle));
        return;
    }

    public android.view.SubMenu addSubMenuItem()
    {
        this.itemAdded = 1;
        android.view.SubMenu v0 = this.menu.addSubMenu(this.groupId, this.itemId, this.itemCategoryOrder, this.itemTitle);
        this.setItem(v0.getItem());
        return v0;
    }

    public boolean hasAddedItem()
    {
        return this.itemAdded;
    }

    public void readGroup(android.util.AttributeSet p6)
    {
        android.content.res.TypedArray v0 = this.this$0.mContext.obtainStyledAttributes(p6, androidx.appcompat.R$styleable.MenuGroup);
        this.groupId = v0.getResourceId(androidx.appcompat.R$styleable.MenuGroup_android_id, 0);
        this.groupCategory = v0.getInt(androidx.appcompat.R$styleable.MenuGroup_android_menuCategory, 0);
        this.groupOrder = v0.getInt(androidx.appcompat.R$styleable.MenuGroup_android_orderInCategory, 0);
        this.groupCheckable = v0.getInt(androidx.appcompat.R$styleable.MenuGroup_android_checkableBehavior, 0);
        this.groupVisible = v0.getBoolean(androidx.appcompat.R$styleable.MenuGroup_android_visible, 1);
        this.groupEnabled = v0.getBoolean(androidx.appcompat.R$styleable.MenuGroup_android_enabled, 1);
        v0.recycle();
        return;
    }

    public void readItem(android.util.AttributeSet p12)
    {
        android.content.res.TypedArray v0 = this.this$0.mContext.obtainStyledAttributes(p12, androidx.appcompat.R$styleable.MenuItem);
        this.itemId = v0.getResourceId(androidx.appcompat.R$styleable.MenuItem_android_id, 0);
        this.itemCategoryOrder = ((-65536 & v0.getInt(androidx.appcompat.R$styleable.MenuItem_android_menuCategory, this.groupCategory)) | (65535 & v0.getInt(androidx.appcompat.R$styleable.MenuItem_android_orderInCategory, this.groupOrder)));
        this.itemTitle = v0.getText(androidx.appcompat.R$styleable.MenuItem_android_title);
        this.itemTitleCondensed = v0.getText(androidx.appcompat.R$styleable.MenuItem_android_titleCondensed);
        this.itemIconResId = v0.getResourceId(androidx.appcompat.R$styleable.MenuItem_android_icon, 0);
        this.itemAlphabeticShortcut = this.getShortcut(v0.getString(androidx.appcompat.R$styleable.MenuItem_android_alphabeticShortcut));
        this.itemAlphabeticModifiers = v0.getInt(androidx.appcompat.R$styleable.MenuItem_alphabeticModifiers, 4096);
        this.itemNumericShortcut = this.getShortcut(v0.getString(androidx.appcompat.R$styleable.MenuItem_android_numericShortcut));
        this.itemNumericModifiers = v0.getInt(androidx.appcompat.R$styleable.MenuItem_numericModifiers, 4096);
        if (!v0.hasValue(androidx.appcompat.R$styleable.MenuItem_android_checkable)) {
            this.itemCheckable = this.groupCheckable;
        } else {
            android.content.res.ColorStateList v4_53;
            if (!v0.getBoolean(androidx.appcompat.R$styleable.MenuItem_android_checkable, 0)) {
                v4_53 = 0;
            } else {
                v4_53 = 1;
            }
            this.itemCheckable = v4_53;
        }
        int v2;
        this.itemChecked = v0.getBoolean(androidx.appcompat.R$styleable.MenuItem_android_checked, 0);
        this.itemVisible = v0.getBoolean(androidx.appcompat.R$styleable.MenuItem_android_visible, this.groupVisible);
        this.itemEnabled = v0.getBoolean(androidx.appcompat.R$styleable.MenuItem_android_enabled, this.groupEnabled);
        this.itemShowAsAction = v0.getInt(androidx.appcompat.R$styleable.MenuItem_showAsAction, -1);
        this.itemListenerMethodName = v0.getString(androidx.appcompat.R$styleable.MenuItem_android_onClick);
        this.itemActionViewLayout = v0.getResourceId(androidx.appcompat.R$styleable.MenuItem_actionLayout, 0);
        this.itemActionViewClassName = v0.getString(androidx.appcompat.R$styleable.MenuItem_actionViewClass);
        this.itemActionProviderClassName = v0.getString(androidx.appcompat.R$styleable.MenuItem_actionProviderClass);
        if (this.itemActionProviderClassName == null) {
            v2 = 0;
        } else {
            v2 = 1;
        }
        if ((v2 == 0) || ((this.itemActionViewLayout != 0) || (this.itemActionViewClassName != null))) {
            if (v2 != 0) {
                android.util.Log.w("SupportMenuInflater", "Ignoring attribute \'actionProviderClass\'. Action view already specified.");
            }
            this.itemActionProvider = 0;
        } else {
            this.itemActionProvider = ((androidx.core.view.ActionProvider) this.newInstance(this.itemActionProviderClassName, androidx.appcompat.view.SupportMenuInflater.ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE, this.this$0.mActionProviderConstructorArguments));
        }
        this.itemContentDescription = v0.getText(androidx.appcompat.R$styleable.MenuItem_contentDescription);
        this.itemTooltipText = v0.getText(androidx.appcompat.R$styleable.MenuItem_tooltipText);
        if (!v0.hasValue(androidx.appcompat.R$styleable.MenuItem_iconTintMode)) {
            this.itemIconTintMode = 0;
        } else {
            this.itemIconTintMode = androidx.appcompat.widget.DrawableUtils.parseTintMode(v0.getInt(androidx.appcompat.R$styleable.MenuItem_iconTintMode, -1), this.itemIconTintMode);
        }
        if (!v0.hasValue(androidx.appcompat.R$styleable.MenuItem_iconTint)) {
            this.itemIconTintList = 0;
        } else {
            this.itemIconTintList = v0.getColorStateList(androidx.appcompat.R$styleable.MenuItem_iconTint);
        }
        v0.recycle();
        this.itemAdded = 0;
        return;
    }

    public void resetGroup()
    {
        this.groupId = 0;
        this.groupCategory = 0;
        this.groupOrder = 0;
        this.groupCheckable = 0;
        this.groupVisible = 1;
        this.groupEnabled = 1;
        return;
    }
}
