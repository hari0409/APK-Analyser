package androidx.appcompat.view.menu;
 class MenuWrapperICS extends androidx.appcompat.view.menu.BaseMenuWrapper implements android.view.Menu {

    MenuWrapperICS(android.content.Context p1, androidx.core.internal.view.SupportMenu p2)
    {
        super(p1, p2);
        return;
    }

    public android.view.MenuItem add(int p2)
    {
        return this.getMenuItemWrapper(((androidx.core.internal.view.SupportMenu) this.mWrappedObject).add(p2));
    }

    public android.view.MenuItem add(int p2, int p3, int p4, int p5)
    {
        return this.getMenuItemWrapper(((androidx.core.internal.view.SupportMenu) this.mWrappedObject).add(p2, p3, p4, p5));
    }

    public android.view.MenuItem add(int p2, int p3, int p4, CharSequence p5)
    {
        return this.getMenuItemWrapper(((androidx.core.internal.view.SupportMenu) this.mWrappedObject).add(p2, p3, p4, p5));
    }

    public android.view.MenuItem add(CharSequence p2)
    {
        return this.getMenuItemWrapper(((androidx.core.internal.view.SupportMenu) this.mWrappedObject).add(p2));
    }

    public int addIntentOptions(int p14, int p15, int p16, android.content.ComponentName p17, android.content.Intent[] p18, android.content.Intent p19, int p20, android.view.MenuItem[] p21)
    {
        android.view.MenuItem[] v9 = 0;
        if (p21 != null) {
            v9 = new android.view.MenuItem[p21.length];
        }
        int v11 = ((androidx.core.internal.view.SupportMenu) this.mWrappedObject).addIntentOptions(p14, p15, p16, p17, p18, p19, p20, v9);
        if (v9 != null) {
            int v10 = 0;
            int v12 = v9.length;
            while (v10 < v12) {
                p21[v10] = this.getMenuItemWrapper(v9[v10]);
                v10++;
            }
        }
        return v11;
    }

    public android.view.SubMenu addSubMenu(int p2)
    {
        return this.getSubMenuWrapper(((androidx.core.internal.view.SupportMenu) this.mWrappedObject).addSubMenu(p2));
    }

    public android.view.SubMenu addSubMenu(int p2, int p3, int p4, int p5)
    {
        return this.getSubMenuWrapper(((androidx.core.internal.view.SupportMenu) this.mWrappedObject).addSubMenu(p2, p3, p4, p5));
    }

    public android.view.SubMenu addSubMenu(int p2, int p3, int p4, CharSequence p5)
    {
        return this.getSubMenuWrapper(((androidx.core.internal.view.SupportMenu) this.mWrappedObject).addSubMenu(p2, p3, p4, p5));
    }

    public android.view.SubMenu addSubMenu(CharSequence p2)
    {
        return this.getSubMenuWrapper(((androidx.core.internal.view.SupportMenu) this.mWrappedObject).addSubMenu(p2));
    }

    public void clear()
    {
        this.internalClear();
        ((androidx.core.internal.view.SupportMenu) this.mWrappedObject).clear();
        return;
    }

    public void close()
    {
        ((androidx.core.internal.view.SupportMenu) this.mWrappedObject).close();
        return;
    }

    public android.view.MenuItem findItem(int p2)
    {
        return this.getMenuItemWrapper(((androidx.core.internal.view.SupportMenu) this.mWrappedObject).findItem(p2));
    }

    public android.view.MenuItem getItem(int p2)
    {
        return this.getMenuItemWrapper(((androidx.core.internal.view.SupportMenu) this.mWrappedObject).getItem(p2));
    }

    public boolean hasVisibleItems()
    {
        return ((androidx.core.internal.view.SupportMenu) this.mWrappedObject).hasVisibleItems();
    }

    public boolean isShortcutKey(int p2, android.view.KeyEvent p3)
    {
        return ((androidx.core.internal.view.SupportMenu) this.mWrappedObject).isShortcutKey(p2, p3);
    }

    public boolean performIdentifierAction(int p2, int p3)
    {
        return ((androidx.core.internal.view.SupportMenu) this.mWrappedObject).performIdentifierAction(p2, p3);
    }

    public boolean performShortcut(int p2, android.view.KeyEvent p3, int p4)
    {
        return ((androidx.core.internal.view.SupportMenu) this.mWrappedObject).performShortcut(p2, p3, p4);
    }

    public void removeGroup(int p2)
    {
        this.internalRemoveGroup(p2);
        ((androidx.core.internal.view.SupportMenu) this.mWrappedObject).removeGroup(p2);
        return;
    }

    public void removeItem(int p2)
    {
        this.internalRemoveItem(p2);
        ((androidx.core.internal.view.SupportMenu) this.mWrappedObject).removeItem(p2);
        return;
    }

    public void setGroupCheckable(int p2, boolean p3, boolean p4)
    {
        ((androidx.core.internal.view.SupportMenu) this.mWrappedObject).setGroupCheckable(p2, p3, p4);
        return;
    }

    public void setGroupEnabled(int p2, boolean p3)
    {
        ((androidx.core.internal.view.SupportMenu) this.mWrappedObject).setGroupEnabled(p2, p3);
        return;
    }

    public void setGroupVisible(int p2, boolean p3)
    {
        ((androidx.core.internal.view.SupportMenu) this.mWrappedObject).setGroupVisible(p2, p3);
        return;
    }

    public void setQwertyMode(boolean p2)
    {
        ((androidx.core.internal.view.SupportMenu) this.mWrappedObject).setQwertyMode(p2);
        return;
    }

    public int size()
    {
        return ((androidx.core.internal.view.SupportMenu) this.mWrappedObject).size();
    }
}
