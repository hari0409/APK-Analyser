package androidx.appcompat.view;
public class SupportActionModeWrapper$CallbackWrapper implements androidx.appcompat.view.ActionMode$Callback {
    final java.util.ArrayList mActionModes;
    final android.content.Context mContext;
    final androidx.collection.SimpleArrayMap mMenus;
    final android.view.ActionMode$Callback mWrappedCallback;

    public SupportActionModeWrapper$CallbackWrapper(android.content.Context p2, android.view.ActionMode$Callback p3)
    {
        this.mContext = p2;
        this.mWrappedCallback = p3;
        this.mActionModes = new java.util.ArrayList();
        this.mMenus = new androidx.collection.SimpleArrayMap();
        return;
    }

    private android.view.Menu getMenuWrapper(android.view.Menu p4)
    {
        android.view.Menu v0_1 = ((android.view.Menu) this.mMenus.get(p4));
        if (v0_1 == null) {
            v0_1 = androidx.appcompat.view.menu.MenuWrapperFactory.wrapSupportMenu(this.mContext, ((androidx.core.internal.view.SupportMenu) p4));
            this.mMenus.put(p4, v0_1);
        }
        return v0_1;
    }

    public android.view.ActionMode getActionModeWrapper(androidx.appcompat.view.ActionMode p5)
    {
        int v1 = 0;
        int v0 = this.mActionModes.size();
        while (v1 < v0) {
            androidx.appcompat.view.SupportActionModeWrapper v2_1 = ((androidx.appcompat.view.SupportActionModeWrapper) this.mActionModes.get(v1));
            if ((v2_1 == null) || (v2_1.mWrappedObject != p5)) {
                v1++;
            }
            return v2_1;
        }
        v2_1 = new androidx.appcompat.view.SupportActionModeWrapper(this.mContext, p5);
        this.mActionModes.add(v2_1);
        return v2_1;
    }

    public boolean onActionItemClicked(androidx.appcompat.view.ActionMode p4, android.view.MenuItem p5)
    {
        return this.mWrappedCallback.onActionItemClicked(this.getActionModeWrapper(p4), androidx.appcompat.view.menu.MenuWrapperFactory.wrapSupportMenuItem(this.mContext, ((androidx.core.internal.view.SupportMenuItem) p5)));
    }

    public boolean onCreateActionMode(androidx.appcompat.view.ActionMode p4, android.view.Menu p5)
    {
        return this.mWrappedCallback.onCreateActionMode(this.getActionModeWrapper(p4), this.getMenuWrapper(p5));
    }

    public void onDestroyActionMode(androidx.appcompat.view.ActionMode p3)
    {
        this.mWrappedCallback.onDestroyActionMode(this.getActionModeWrapper(p3));
        return;
    }

    public boolean onPrepareActionMode(androidx.appcompat.view.ActionMode p4, android.view.Menu p5)
    {
        return this.mWrappedCallback.onPrepareActionMode(this.getActionModeWrapper(p4), this.getMenuWrapper(p5));
    }
}
