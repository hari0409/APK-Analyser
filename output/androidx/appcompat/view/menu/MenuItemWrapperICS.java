package androidx.appcompat.view.menu;
public class MenuItemWrapperICS extends androidx.appcompat.view.menu.BaseMenuWrapper implements android.view.MenuItem {
    static final String LOG_TAG = "MenuItemWrapper";
    private reflect.Method mSetExclusiveCheckableMethod;

    MenuItemWrapperICS(android.content.Context p1, androidx.core.internal.view.SupportMenuItem p2)
    {
        super(p1, p2);
        return;
    }

    public boolean collapseActionView()
    {
        return ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).collapseActionView();
    }

    androidx.appcompat.view.menu.MenuItemWrapperICS$ActionProviderWrapper createActionProviderWrapper(android.view.ActionProvider p3)
    {
        return new androidx.appcompat.view.menu.MenuItemWrapperICS$ActionProviderWrapper(this, this.mContext, p3);
    }

    public boolean expandActionView()
    {
        return ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).expandActionView();
    }

    public android.view.ActionProvider getActionProvider()
    {
        int v1_3;
        androidx.appcompat.view.menu.MenuItemWrapperICS$ActionProviderWrapper v0_0 = ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).getSupportActionProvider();
        if (!(v0_0 instanceof androidx.appcompat.view.menu.MenuItemWrapperICS$ActionProviderWrapper)) {
            v1_3 = 0;
        } else {
            v1_3 = ((androidx.appcompat.view.menu.MenuItemWrapperICS$ActionProviderWrapper) v0_0).mInner;
        }
        return v1_3;
    }

    public android.view.View getActionView()
    {
        android.view.View v0_0 = ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).getActionView();
        if ((v0_0 instanceof androidx.appcompat.view.menu.MenuItemWrapperICS$CollapsibleActionViewWrapper)) {
            v0_0 = ((androidx.appcompat.view.menu.MenuItemWrapperICS$CollapsibleActionViewWrapper) v0_0).getWrappedView();
        }
        return v0_0;
    }

    public int getAlphabeticModifiers()
    {
        return ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).getAlphabeticModifiers();
    }

    public char getAlphabeticShortcut()
    {
        return ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).getAlphabeticShortcut();
    }

    public CharSequence getContentDescription()
    {
        return ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).getContentDescription();
    }

    public int getGroupId()
    {
        return ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).getGroupId();
    }

    public android.graphics.drawable.Drawable getIcon()
    {
        return ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).getIcon();
    }

    public android.content.res.ColorStateList getIconTintList()
    {
        return ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).getIconTintList();
    }

    public android.graphics.PorterDuff$Mode getIconTintMode()
    {
        return ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).getIconTintMode();
    }

    public android.content.Intent getIntent()
    {
        return ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).getIntent();
    }

    public int getItemId()
    {
        return ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).getItemId();
    }

    public android.view.ContextMenu$ContextMenuInfo getMenuInfo()
    {
        return ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).getMenuInfo();
    }

    public int getNumericModifiers()
    {
        return ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).getNumericModifiers();
    }

    public char getNumericShortcut()
    {
        return ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).getNumericShortcut();
    }

    public int getOrder()
    {
        return ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).getOrder();
    }

    public android.view.SubMenu getSubMenu()
    {
        return this.getSubMenuWrapper(((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).getSubMenu());
    }

    public CharSequence getTitle()
    {
        return ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).getTitle();
    }

    public CharSequence getTitleCondensed()
    {
        return ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).getTitleCondensed();
    }

    public CharSequence getTooltipText()
    {
        return ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).getTooltipText();
    }

    public boolean hasSubMenu()
    {
        return ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).hasSubMenu();
    }

    public boolean isActionViewExpanded()
    {
        return ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).isActionViewExpanded();
    }

    public boolean isCheckable()
    {
        return ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).isCheckable();
    }

    public boolean isChecked()
    {
        return ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).isChecked();
    }

    public boolean isEnabled()
    {
        return ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).isEnabled();
    }

    public boolean isVisible()
    {
        return ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).isVisible();
    }

    public android.view.MenuItem setActionProvider(android.view.ActionProvider p3)
    {
        int v1;
        androidx.core.internal.view.SupportMenuItem v0_1 = ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject);
        if (p3 == null) {
            v1 = 0;
        } else {
            v1 = this.createActionProviderWrapper(p3);
        }
        v0_1.setSupportActionProvider(v1);
        return this;
    }

    public android.view.MenuItem setActionView(int p4)
    {
        ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).setActionView(p4);
        android.view.View v0 = ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).getActionView();
        if ((v0 instanceof android.view.CollapsibleActionView)) {
            ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).setActionView(new androidx.appcompat.view.menu.MenuItemWrapperICS$CollapsibleActionViewWrapper(v0));
        }
        return this;
    }

    public android.view.MenuItem setActionView(android.view.View p3)
    {
        if ((p3 instanceof android.view.CollapsibleActionView)) {
            p3 = new androidx.appcompat.view.menu.MenuItemWrapperICS$CollapsibleActionViewWrapper(p3);
        }
        ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).setActionView(p3);
        return this;
    }

    public android.view.MenuItem setAlphabeticShortcut(char p2)
    {
        ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).setAlphabeticShortcut(p2);
        return this;
    }

    public android.view.MenuItem setAlphabeticShortcut(char p2, int p3)
    {
        ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).setAlphabeticShortcut(p2, p3);
        return this;
    }

    public android.view.MenuItem setCheckable(boolean p2)
    {
        ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).setCheckable(p2);
        return this;
    }

    public android.view.MenuItem setChecked(boolean p2)
    {
        ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).setChecked(p2);
        return this;
    }

    public android.view.MenuItem setContentDescription(CharSequence p2)
    {
        ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).setContentDescription(p2);
        return this;
    }

    public android.view.MenuItem setEnabled(boolean p2)
    {
        ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).setEnabled(p2);
        return this;
    }

    public void setExclusiveCheckable(boolean p7)
    {
        try {
            if (this.mSetExclusiveCheckableMethod != null) {
                reflect.Method v1_2 = this.mSetExclusiveCheckableMethod;
                Object v2_0 = this.mWrappedObject;
                Object[] v3_1 = new Object[1];
                v3_1[0] = Boolean.valueOf(p7);
                v1_2.invoke(v2_0, v3_1);
            } else {
                reflect.Method v1_6 = ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).getClass();
                Object[] v3_3 = new Class[1];
                v3_3[0] = Boolean.TYPE;
                this.mSetExclusiveCheckableMethod = v1_6.getDeclaredMethod("setExclusiveCheckable", v3_3);
            }
        } catch (Exception v0) {
            android.util.Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", v0);
        }
        return;
    }

    public android.view.MenuItem setIcon(int p2)
    {
        ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).setIcon(p2);
        return this;
    }

    public android.view.MenuItem setIcon(android.graphics.drawable.Drawable p2)
    {
        ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).setIcon(p2);
        return this;
    }

    public android.view.MenuItem setIconTintList(android.content.res.ColorStateList p2)
    {
        ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).setIconTintList(p2);
        return this;
    }

    public android.view.MenuItem setIconTintMode(android.graphics.PorterDuff$Mode p2)
    {
        ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).setIconTintMode(p2);
        return this;
    }

    public android.view.MenuItem setIntent(android.content.Intent p2)
    {
        ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).setIntent(p2);
        return this;
    }

    public android.view.MenuItem setNumericShortcut(char p2)
    {
        ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).setNumericShortcut(p2);
        return this;
    }

    public android.view.MenuItem setNumericShortcut(char p2, int p3)
    {
        ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).setNumericShortcut(p2, p3);
        return this;
    }

    public android.view.MenuItem setOnActionExpandListener(android.view.MenuItem$OnActionExpandListener p3)
    {
        int v1_0;
        androidx.core.internal.view.SupportMenuItem v0_1 = ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject);
        if (p3 == null) {
            v1_0 = 0;
        } else {
            v1_0 = new androidx.appcompat.view.menu.MenuItemWrapperICS$OnActionExpandListenerWrapper(this, p3);
        }
        v0_1.setOnActionExpandListener(v1_0);
        return this;
    }

    public android.view.MenuItem setOnMenuItemClickListener(android.view.MenuItem$OnMenuItemClickListener p3)
    {
        int v1_0;
        androidx.core.internal.view.SupportMenuItem v0_1 = ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject);
        if (p3 == null) {
            v1_0 = 0;
        } else {
            v1_0 = new androidx.appcompat.view.menu.MenuItemWrapperICS$OnMenuItemClickListenerWrapper(this, p3);
        }
        v0_1.setOnMenuItemClickListener(v1_0);
        return this;
    }

    public android.view.MenuItem setShortcut(char p2, char p3)
    {
        ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).setShortcut(p2, p3);
        return this;
    }

    public android.view.MenuItem setShortcut(char p2, char p3, int p4, int p5)
    {
        ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).setShortcut(p2, p3, p4, p5);
        return this;
    }

    public void setShowAsAction(int p2)
    {
        ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).setShowAsAction(p2);
        return;
    }

    public android.view.MenuItem setShowAsActionFlags(int p2)
    {
        ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).setShowAsActionFlags(p2);
        return this;
    }

    public android.view.MenuItem setTitle(int p2)
    {
        ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).setTitle(p2);
        return this;
    }

    public android.view.MenuItem setTitle(CharSequence p2)
    {
        ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).setTitle(p2);
        return this;
    }

    public android.view.MenuItem setTitleCondensed(CharSequence p2)
    {
        ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).setTitleCondensed(p2);
        return this;
    }

    public android.view.MenuItem setTooltipText(CharSequence p2)
    {
        ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).setTooltipText(p2);
        return this;
    }

    public android.view.MenuItem setVisible(boolean p2)
    {
        return ((androidx.core.internal.view.SupportMenuItem) this.mWrappedObject).setVisible(p2);
    }
}
