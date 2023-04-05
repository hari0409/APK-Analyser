package androidx.appcompat.view.menu;
public class ActionMenuItem implements androidx.core.internal.view.SupportMenuItem {
    private static final int CHECKABLE = 1;
    private static final int CHECKED = 2;
    private static final int ENABLED = 16;
    private static final int EXCLUSIVE = 4;
    private static final int HIDDEN = 8;
    private static final int NO_ICON;
    private final int mCategoryOrder;
    private android.view.MenuItem$OnMenuItemClickListener mClickListener;
    private CharSequence mContentDescription;
    private android.content.Context mContext;
    private int mFlags;
    private final int mGroup;
    private boolean mHasIconTint;
    private boolean mHasIconTintMode;
    private android.graphics.drawable.Drawable mIconDrawable;
    private int mIconResId;
    private android.content.res.ColorStateList mIconTintList;
    private android.graphics.PorterDuff$Mode mIconTintMode;
    private final int mId;
    private android.content.Intent mIntent;
    private final int mOrdering;
    private char mShortcutAlphabeticChar;
    private int mShortcutAlphabeticModifiers;
    private char mShortcutNumericChar;
    private int mShortcutNumericModifiers;
    private CharSequence mTitle;
    private CharSequence mTitleCondensed;
    private CharSequence mTooltipText;

    public ActionMenuItem(android.content.Context p4, int p5, int p6, int p7, int p8, CharSequence p9)
    {
        this.mShortcutNumericModifiers = 4096;
        this.mShortcutAlphabeticModifiers = 4096;
        this.mIconResId = 0;
        this.mIconTintList = 0;
        this.mIconTintMode = 0;
        this.mHasIconTint = 0;
        this.mHasIconTintMode = 0;
        this.mFlags = 16;
        this.mContext = p4;
        this.mId = p6;
        this.mGroup = p5;
        this.mCategoryOrder = p7;
        this.mOrdering = p8;
        this.mTitle = p9;
        return;
    }

    private void applyIconTint()
    {
        if ((this.mIconDrawable != null) && ((this.mHasIconTint) || (this.mHasIconTintMode))) {
            this.mIconDrawable = androidx.core.graphics.drawable.DrawableCompat.wrap(this.mIconDrawable);
            this.mIconDrawable = this.mIconDrawable.mutate();
            if (this.mHasIconTint) {
                androidx.core.graphics.drawable.DrawableCompat.setTintList(this.mIconDrawable, this.mIconTintList);
            }
            if (this.mHasIconTintMode) {
                androidx.core.graphics.drawable.DrawableCompat.setTintMode(this.mIconDrawable, this.mIconTintMode);
            }
        }
        return;
    }

    public boolean collapseActionView()
    {
        return 0;
    }

    public boolean expandActionView()
    {
        return 0;
    }

    public android.view.ActionProvider getActionProvider()
    {
        throw new UnsupportedOperationException();
    }

    public android.view.View getActionView()
    {
        return 0;
    }

    public int getAlphabeticModifiers()
    {
        return this.mShortcutAlphabeticModifiers;
    }

    public char getAlphabeticShortcut()
    {
        return this.mShortcutAlphabeticChar;
    }

    public CharSequence getContentDescription()
    {
        return this.mContentDescription;
    }

    public int getGroupId()
    {
        return this.mGroup;
    }

    public android.graphics.drawable.Drawable getIcon()
    {
        return this.mIconDrawable;
    }

    public android.content.res.ColorStateList getIconTintList()
    {
        return this.mIconTintList;
    }

    public android.graphics.PorterDuff$Mode getIconTintMode()
    {
        return this.mIconTintMode;
    }

    public android.content.Intent getIntent()
    {
        return this.mIntent;
    }

    public int getItemId()
    {
        return this.mId;
    }

    public android.view.ContextMenu$ContextMenuInfo getMenuInfo()
    {
        return 0;
    }

    public int getNumericModifiers()
    {
        return this.mShortcutNumericModifiers;
    }

    public char getNumericShortcut()
    {
        return this.mShortcutNumericChar;
    }

    public int getOrder()
    {
        return this.mOrdering;
    }

    public android.view.SubMenu getSubMenu()
    {
        return 0;
    }

    public androidx.core.view.ActionProvider getSupportActionProvider()
    {
        return 0;
    }

    public CharSequence getTitle()
    {
        return this.mTitle;
    }

    public CharSequence getTitleCondensed()
    {
        CharSequence v0_1;
        if (this.mTitleCondensed == null) {
            v0_1 = this.mTitle;
        } else {
            v0_1 = this.mTitleCondensed;
        }
        return v0_1;
    }

    public CharSequence getTooltipText()
    {
        return this.mTooltipText;
    }

    public boolean hasSubMenu()
    {
        return 0;
    }

    public boolean invoke()
    {
        int v0 = 1;
        if ((this.mClickListener == null) || (!this.mClickListener.onMenuItemClick(this))) {
            if (this.mIntent == null) {
                v0 = 0;
            } else {
                this.mContext.startActivity(this.mIntent);
            }
        }
        return v0;
    }

    public boolean isActionViewExpanded()
    {
        return 0;
    }

    public boolean isCheckable()
    {
        int v0_2;
        if ((this.mFlags & 1) == 0) {
            v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    public boolean isChecked()
    {
        int v0_2;
        if ((this.mFlags & 2) == 0) {
            v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    public boolean isEnabled()
    {
        int v0_2;
        if ((this.mFlags & 16) == 0) {
            v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    public boolean isVisible()
    {
        int v0_2;
        if ((this.mFlags & 8) != 0) {
            v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    public android.view.MenuItem setActionProvider(android.view.ActionProvider p2)
    {
        throw new UnsupportedOperationException();
    }

    public bridge synthetic android.view.MenuItem setActionView(int p2)
    {
        return this.setActionView(p2);
    }

    public bridge synthetic android.view.MenuItem setActionView(android.view.View p2)
    {
        return this.setActionView(p2);
    }

    public androidx.core.internal.view.SupportMenuItem setActionView(int p2)
    {
        throw new UnsupportedOperationException();
    }

    public androidx.core.internal.view.SupportMenuItem setActionView(android.view.View p2)
    {
        throw new UnsupportedOperationException();
    }

    public android.view.MenuItem setAlphabeticShortcut(char p2)
    {
        this.mShortcutAlphabeticChar = Character.toLowerCase(p2);
        return this;
    }

    public android.view.MenuItem setAlphabeticShortcut(char p2, int p3)
    {
        this.mShortcutAlphabeticChar = Character.toLowerCase(p2);
        this.mShortcutAlphabeticModifiers = android.view.KeyEvent.normalizeMetaState(p3);
        return this;
    }

    public android.view.MenuItem setCheckable(boolean p3)
    {
        int v0_1;
        if (!p3) {
            v0_1 = 0;
        } else {
            v0_1 = 1;
        }
        this.mFlags = (v0_1 | (this.mFlags & -2));
        return this;
    }

    public android.view.MenuItem setChecked(boolean p3)
    {
        int v0_1;
        if (!p3) {
            v0_1 = 0;
        } else {
            v0_1 = 2;
        }
        this.mFlags = (v0_1 | (this.mFlags & -3));
        return this;
    }

    public bridge synthetic android.view.MenuItem setContentDescription(CharSequence p2)
    {
        return this.setContentDescription(p2);
    }

    public androidx.core.internal.view.SupportMenuItem setContentDescription(CharSequence p1)
    {
        this.mContentDescription = p1;
        return this;
    }

    public android.view.MenuItem setEnabled(boolean p3)
    {
        int v0_1;
        if (!p3) {
            v0_1 = 0;
        } else {
            v0_1 = 16;
        }
        this.mFlags = (v0_1 | (this.mFlags & -17));
        return this;
    }

    public androidx.appcompat.view.menu.ActionMenuItem setExclusiveCheckable(boolean p3)
    {
        int v0_1;
        if (!p3) {
            v0_1 = 0;
        } else {
            v0_1 = 4;
        }
        this.mFlags = (v0_1 | (this.mFlags & -5));
        return this;
    }

    public android.view.MenuItem setIcon(int p2)
    {
        this.mIconResId = p2;
        this.mIconDrawable = androidx.core.content.ContextCompat.getDrawable(this.mContext, p2);
        this.applyIconTint();
        return this;
    }

    public android.view.MenuItem setIcon(android.graphics.drawable.Drawable p2)
    {
        this.mIconDrawable = p2;
        this.mIconResId = 0;
        this.applyIconTint();
        return this;
    }

    public android.view.MenuItem setIconTintList(android.content.res.ColorStateList p2)
    {
        this.mIconTintList = p2;
        this.mHasIconTint = 1;
        this.applyIconTint();
        return this;
    }

    public android.view.MenuItem setIconTintMode(android.graphics.PorterDuff$Mode p2)
    {
        this.mIconTintMode = p2;
        this.mHasIconTintMode = 1;
        this.applyIconTint();
        return this;
    }

    public android.view.MenuItem setIntent(android.content.Intent p1)
    {
        this.mIntent = p1;
        return this;
    }

    public android.view.MenuItem setNumericShortcut(char p1)
    {
        this.mShortcutNumericChar = p1;
        return this;
    }

    public android.view.MenuItem setNumericShortcut(char p2, int p3)
    {
        this.mShortcutNumericChar = p2;
        this.mShortcutNumericModifiers = android.view.KeyEvent.normalizeMetaState(p3);
        return this;
    }

    public android.view.MenuItem setOnActionExpandListener(android.view.MenuItem$OnActionExpandListener p2)
    {
        throw new UnsupportedOperationException();
    }

    public android.view.MenuItem setOnMenuItemClickListener(android.view.MenuItem$OnMenuItemClickListener p1)
    {
        this.mClickListener = p1;
        return this;
    }

    public android.view.MenuItem setShortcut(char p2, char p3)
    {
        this.mShortcutNumericChar = p2;
        this.mShortcutAlphabeticChar = Character.toLowerCase(p3);
        return this;
    }

    public android.view.MenuItem setShortcut(char p2, char p3, int p4, int p5)
    {
        this.mShortcutNumericChar = p2;
        this.mShortcutNumericModifiers = android.view.KeyEvent.normalizeMetaState(p4);
        this.mShortcutAlphabeticChar = Character.toLowerCase(p3);
        this.mShortcutAlphabeticModifiers = android.view.KeyEvent.normalizeMetaState(p5);
        return this;
    }

    public void setShowAsAction(int p1)
    {
        return;
    }

    public bridge synthetic android.view.MenuItem setShowAsActionFlags(int p2)
    {
        return this.setShowAsActionFlags(p2);
    }

    public androidx.core.internal.view.SupportMenuItem setShowAsActionFlags(int p1)
    {
        this.setShowAsAction(p1);
        return this;
    }

    public androidx.core.internal.view.SupportMenuItem setSupportActionProvider(androidx.core.view.ActionProvider p2)
    {
        throw new UnsupportedOperationException();
    }

    public android.view.MenuItem setTitle(int p2)
    {
        this.mTitle = this.mContext.getResources().getString(p2);
        return this;
    }

    public android.view.MenuItem setTitle(CharSequence p1)
    {
        this.mTitle = p1;
        return this;
    }

    public android.view.MenuItem setTitleCondensed(CharSequence p1)
    {
        this.mTitleCondensed = p1;
        return this;
    }

    public bridge synthetic android.view.MenuItem setTooltipText(CharSequence p2)
    {
        return this.setTooltipText(p2);
    }

    public androidx.core.internal.view.SupportMenuItem setTooltipText(CharSequence p1)
    {
        this.mTooltipText = p1;
        return this;
    }

    public android.view.MenuItem setVisible(boolean p3)
    {
        int v0_1;
        if (!p3) {
            v0_1 = 8;
        } else {
            v0_1 = 0;
        }
        this.mFlags = (v0_1 | (this.mFlags & 8));
        return this;
    }
}
