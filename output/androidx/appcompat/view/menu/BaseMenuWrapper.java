package androidx.appcompat.view.menu;
abstract class BaseMenuWrapper extends androidx.appcompat.view.menu.BaseWrapper {
    final android.content.Context mContext;
    private java.util.Map mMenuItems;
    private java.util.Map mSubMenus;

    BaseMenuWrapper(android.content.Context p1, Object p2)
    {
        super(p2);
        super.mContext = p1;
        return;
    }

    final android.view.MenuItem getMenuItemWrapper(android.view.MenuItem p4)
    {
        android.view.MenuItem v1_1;
        if (!(p4 instanceof androidx.core.internal.view.SupportMenuItem)) {
            v1_1 = p4;
        } else {
            if (this.mMenuItems == null) {
                this.mMenuItems = new androidx.collection.ArrayMap();
            }
            v1_1 = ((android.view.MenuItem) this.mMenuItems.get(p4));
            if (v1_1 == null) {
                v1_1 = androidx.appcompat.view.menu.MenuWrapperFactory.wrapSupportMenuItem(this.mContext, ((androidx.core.internal.view.SupportMenuItem) p4));
                this.mMenuItems.put(((androidx.core.internal.view.SupportMenuItem) p4), v1_1);
            }
        }
        return v1_1;
    }

    final android.view.SubMenu getSubMenuWrapper(android.view.SubMenu p4)
    {
        android.view.SubMenu v1_1;
        if (!(p4 instanceof androidx.core.internal.view.SupportSubMenu)) {
            v1_1 = p4;
        } else {
            if (this.mSubMenus == null) {
                this.mSubMenus = new androidx.collection.ArrayMap();
            }
            v1_1 = ((android.view.SubMenu) this.mSubMenus.get(((androidx.core.internal.view.SupportSubMenu) p4)));
            if (v1_1 == null) {
                v1_1 = androidx.appcompat.view.menu.MenuWrapperFactory.wrapSupportSubMenu(this.mContext, ((androidx.core.internal.view.SupportSubMenu) p4));
                this.mSubMenus.put(((androidx.core.internal.view.SupportSubMenu) p4), v1_1);
            }
        }
        return v1_1;
    }

    final void internalClear()
    {
        if (this.mMenuItems != null) {
            this.mMenuItems.clear();
        }
        if (this.mSubMenus != null) {
            this.mSubMenus.clear();
        }
        return;
    }

    final void internalRemoveGroup(int p4)
    {
        if (this.mMenuItems != null) {
            java.util.Iterator v0 = this.mMenuItems.keySet().iterator();
            while (v0.hasNext()) {
                if (p4 == ((android.view.MenuItem) v0.next()).getGroupId()) {
                    v0.remove();
                }
            }
        }
        return;
    }

    final void internalRemoveItem(int p4)
    {
        if (this.mMenuItems != null) {
            java.util.Iterator v0 = this.mMenuItems.keySet().iterator();
            while (v0.hasNext()) {
                if (p4 == ((android.view.MenuItem) v0.next()).getItemId()) {
                    v0.remove();
                    break;
                }
            }
        }
        return;
    }
}
