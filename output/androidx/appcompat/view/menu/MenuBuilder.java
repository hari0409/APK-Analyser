package androidx.appcompat.view.menu;
public class MenuBuilder implements androidx.core.internal.view.SupportMenu {
    private static final String ACTION_VIEW_STATES_KEY = "android:menu:actionviewstates";
    private static final String EXPANDED_ACTION_VIEW_ID = "android:menu:expandedactionview";
    private static final String PRESENTER_KEY = "android:menu:presenters";
    private static final String TAG = "MenuBuilder";
    private static final int[] sCategoryToOrder;
    private java.util.ArrayList mActionItems;
    private androidx.appcompat.view.menu.MenuBuilder$Callback mCallback;
    private final android.content.Context mContext;
    private android.view.ContextMenu$ContextMenuInfo mCurrentMenuInfo;
    private int mDefaultShowAsAction;
    private androidx.appcompat.view.menu.MenuItemImpl mExpandedItem;
    private android.util.SparseArray mFrozenViewStates;
    private boolean mGroupDividerEnabled;
    android.graphics.drawable.Drawable mHeaderIcon;
    CharSequence mHeaderTitle;
    android.view.View mHeaderView;
    private boolean mIsActionItemsStale;
    private boolean mIsClosing;
    private boolean mIsVisibleItemsStale;
    private java.util.ArrayList mItems;
    private boolean mItemsChangedWhileDispatchPrevented;
    private java.util.ArrayList mNonActionItems;
    private boolean mOptionalIconsVisible;
    private boolean mOverrideVisibleItems;
    private java.util.concurrent.CopyOnWriteArrayList mPresenters;
    private boolean mPreventDispatchingItemsChanged;
    private boolean mQwertyMode;
    private final android.content.res.Resources mResources;
    private boolean mShortcutsVisible;
    private boolean mStructureChangedWhileDispatchPrevented;
    private java.util.ArrayList mTempShortcutItemList;
    private java.util.ArrayList mVisibleItems;

    static MenuBuilder()
    {
        int[] v0_1 = new int[6];
        v0_1 = {1, 4, 5, 3, 2, 0};
        androidx.appcompat.view.menu.MenuBuilder.sCategoryToOrder = v0_1;
        return;
    }

    public MenuBuilder(android.content.Context p4)
    {
        this.mDefaultShowAsAction = 0;
        this.mPreventDispatchingItemsChanged = 0;
        this.mItemsChangedWhileDispatchPrevented = 0;
        this.mStructureChangedWhileDispatchPrevented = 0;
        this.mOptionalIconsVisible = 0;
        this.mIsClosing = 0;
        this.mTempShortcutItemList = new java.util.ArrayList();
        this.mPresenters = new java.util.concurrent.CopyOnWriteArrayList();
        this.mGroupDividerEnabled = 0;
        this.mContext = p4;
        this.mResources = p4.getResources();
        this.mItems = new java.util.ArrayList();
        this.mVisibleItems = new java.util.ArrayList();
        this.mIsVisibleItemsStale = 1;
        this.mActionItems = new java.util.ArrayList();
        this.mNonActionItems = new java.util.ArrayList();
        this.mIsActionItemsStale = 1;
        this.setShortcutsVisibleInner(1);
        return;
    }

    private androidx.appcompat.view.menu.MenuItemImpl createNewMenuItem(int p9, int p10, int p11, int p12, CharSequence p13, int p14)
    {
        return new androidx.appcompat.view.menu.MenuItemImpl(this, p9, p10, p11, p12, p13, p14);
    }

    private void dispatchPresenterUpdate(boolean p5)
    {
        if (!this.mPresenters.isEmpty()) {
            this.stopDispatchingItemsChanged();
            java.util.Iterator v2_3 = this.mPresenters.iterator();
            while (v2_3.hasNext()) {
                ref.WeakReference v1_1 = ((ref.WeakReference) v2_3.next());
                androidx.appcompat.view.menu.MenuPresenter v0_1 = ((androidx.appcompat.view.menu.MenuPresenter) v1_1.get());
                if (v0_1 != null) {
                    v0_1.updateMenuView(p5);
                } else {
                    this.mPresenters.remove(v1_1);
                }
            }
            this.startDispatchingItemsChanged();
        }
        return;
    }

    private void dispatchRestoreInstanceState(android.os.Bundle p8)
    {
        android.util.SparseArray v3 = p8.getSparseParcelableArray("android:menu:presenters");
        if ((v3 != null) && (!this.mPresenters.isEmpty())) {
            java.util.Iterator v5_1 = this.mPresenters.iterator();
            while (v5_1.hasNext()) {
                ref.WeakReference v4_1 = ((ref.WeakReference) v5_1.next());
                androidx.appcompat.view.menu.MenuPresenter v2_1 = ((androidx.appcompat.view.menu.MenuPresenter) v4_1.get());
                if (v2_1 != null) {
                    int v0 = v2_1.getId();
                    if (v0 > 0) {
                        android.os.Parcelable v1_1 = ((android.os.Parcelable) v3.get(v0));
                        if (v1_1 != null) {
                            v2_1.onRestoreInstanceState(v1_1);
                        }
                    }
                } else {
                    this.mPresenters.remove(v4_1);
                }
            }
        }
        return;
    }

    private void dispatchSaveInstanceState(android.os.Bundle p8)
    {
        if (!this.mPresenters.isEmpty()) {
            android.util.SparseArray v2_1 = new android.util.SparseArray();
            String v5_4 = this.mPresenters.iterator();
            while (v5_4.hasNext()) {
                ref.WeakReference v3_1 = ((ref.WeakReference) v5_4.next());
                androidx.appcompat.view.menu.MenuPresenter v1_1 = ((androidx.appcompat.view.menu.MenuPresenter) v3_1.get());
                if (v1_1 != null) {
                    int v0 = v1_1.getId();
                    if (v0 > 0) {
                        android.os.Parcelable v4 = v1_1.onSaveInstanceState();
                        if (v4 != null) {
                            v2_1.put(v0, v4);
                        }
                    }
                } else {
                    this.mPresenters.remove(v3_1);
                }
            }
            p8.putSparseParcelableArray("android:menu:presenters", v2_1);
        }
        return;
    }

    private boolean dispatchSubMenuSelected(androidx.appcompat.view.menu.SubMenuBuilder p6, androidx.appcompat.view.menu.MenuPresenter p7)
    {
        boolean v2;
        if (!this.mPresenters.isEmpty()) {
            v2 = 0;
            if (p7 != null) {
                v2 = p7.onSubMenuSelected(p6);
            }
            java.util.Iterator v3_1 = this.mPresenters.iterator();
            while (v3_1.hasNext()) {
                ref.WeakReference v1_1 = ((ref.WeakReference) v3_1.next());
                androidx.appcompat.view.menu.MenuPresenter v0_1 = ((androidx.appcompat.view.menu.MenuPresenter) v1_1.get());
                if (v0_1 != null) {
                    if (!v2) {
                        v2 = v0_1.onSubMenuSelected(p6);
                    }
                } else {
                    this.mPresenters.remove(v1_1);
                }
            }
        } else {
            v2 = 0;
        }
        return v2;
    }

    private static int findInsertIndex(java.util.ArrayList p3, int p4)
    {
        int v0 = (p3.size() - 1);
        while (v0 >= 0) {
            if (((androidx.appcompat.view.menu.MenuItemImpl) p3.get(v0)).getOrdering() > p4) {
                v0--;
            } else {
                int v2_1 = (v0 + 1);
            }
            return v2_1;
        }
        v2_1 = 0;
        return v2_1;
    }

    private static int getOrdering(int p3)
    {
        int v0 = ((-65536 & p3) >> 16);
        if ((v0 >= 0) && (v0 < androidx.appcompat.view.menu.MenuBuilder.sCategoryToOrder.length)) {
            return ((androidx.appcompat.view.menu.MenuBuilder.sCategoryToOrder[v0] << 16) | (65535 & p3));
        } else {
            throw new IllegalArgumentException("order does not contain a valid category.");
        }
    }

    private void removeItemAtInt(int p2, boolean p3)
    {
        if ((p2 >= 0) && (p2 < this.mItems.size())) {
            this.mItems.remove(p2);
            if (p3) {
                this.onItemsChanged(1);
            }
        }
        return;
    }

    private void setHeaderInternal(int p4, CharSequence p5, int p6, android.graphics.drawable.Drawable p7, android.view.View p8)
    {
        android.content.res.Resources v0 = this.getResources();
        if (p8 == null) {
            if (p4 <= 0) {
                if (p5 != null) {
                    this.mHeaderTitle = p5;
                }
            } else {
                this.mHeaderTitle = v0.getText(p4);
            }
            if (p6 <= 0) {
                if (p7 != null) {
                    this.mHeaderIcon = p7;
                }
            } else {
                this.mHeaderIcon = androidx.core.content.ContextCompat.getDrawable(this.getContext(), p6);
            }
            this.mHeaderView = 0;
        } else {
            this.mHeaderView = p8;
            this.mHeaderTitle = 0;
            this.mHeaderIcon = 0;
        }
        this.onItemsChanged(0);
        return;
    }

    private void setShortcutsVisibleInner(boolean p4)
    {
        int v0 = 1;
        if ((!p4) || ((this.mResources.getConfiguration().keyboard == 1) || (!androidx.core.view.ViewConfigurationCompat.shouldShowMenuShortcutsWhenKeyboardPresent(android.view.ViewConfiguration.get(this.mContext), this.mContext)))) {
            v0 = 0;
        }
        this.mShortcutsVisible = v0;
        return;
    }

    public android.view.MenuItem add(int p3)
    {
        return this.addInternal(0, 0, 0, this.mResources.getString(p3));
    }

    public android.view.MenuItem add(int p2, int p3, int p4, int p5)
    {
        return this.addInternal(p2, p3, p4, this.mResources.getString(p5));
    }

    public android.view.MenuItem add(int p2, int p3, int p4, CharSequence p5)
    {
        return this.addInternal(p2, p3, p4, p5);
    }

    public android.view.MenuItem add(CharSequence p2)
    {
        return this.addInternal(0, 0, 0, p2);
    }

    public int addIntentOptions(int p14, int p15, int p16, android.content.ComponentName p17, android.content.Intent[] p18, android.content.Intent p19, int p20, android.view.MenuItem[] p21)
    {
        int v3;
        android.content.pm.PackageManager v7 = this.mContext.getPackageManager();
        java.util.List v6 = v7.queryIntentActivityOptions(p17, p18, p19, 0);
        if (v6 == null) {
            v3 = 0;
        } else {
            v3 = v6.size();
        }
        if ((p20 & 1) == 0) {
            this.removeGroup(p14);
        }
        int v4 = 0;
        while (v4 < v3) {
            int v10_4;
            android.content.pm.ResolveInfo v8_1 = ((android.content.pm.ResolveInfo) v6.get(v4));
            if (v8_1.specificIndex >= 0) {
                v10_4 = p18[v8_1.specificIndex];
            } else {
                v10_4 = p19;
            }
            android.content.Intent v9_1 = new android.content.Intent(v10_4);
            v9_1.setComponent(new android.content.ComponentName(v8_1.activityInfo.applicationInfo.packageName, v8_1.activityInfo.name));
            android.view.MenuItem v5 = this.add(p14, p15, p16, v8_1.loadLabel(v7)).setIcon(v8_1.loadIcon(v7)).setIntent(v9_1);
            if ((p21 != null) && (v8_1.specificIndex >= 0)) {
                p21[v8_1.specificIndex] = v5;
            }
            v4++;
        }
        return v3;
    }

    protected android.view.MenuItem addInternal(int p9, int p10, int p11, CharSequence p12)
    {
        int v4 = androidx.appcompat.view.menu.MenuBuilder.getOrdering(p11);
        androidx.appcompat.view.menu.MenuItemImpl v7 = this.createNewMenuItem(p9, p10, p11, v4, p12, this.mDefaultShowAsAction);
        if (this.mCurrentMenuInfo != null) {
            v7.setMenuInfo(this.mCurrentMenuInfo);
        }
        this.mItems.add(androidx.appcompat.view.menu.MenuBuilder.findInsertIndex(this.mItems, v4), v7);
        this.onItemsChanged(1);
        return v7;
    }

    public void addMenuPresenter(androidx.appcompat.view.menu.MenuPresenter p2)
    {
        this.addMenuPresenter(p2, this.mContext);
        return;
    }

    public void addMenuPresenter(androidx.appcompat.view.menu.MenuPresenter p3, android.content.Context p4)
    {
        this.mPresenters.add(new ref.WeakReference(p3));
        p3.initForMenu(p4, this);
        this.mIsActionItemsStale = 1;
        return;
    }

    public android.view.SubMenu addSubMenu(int p3)
    {
        return this.addSubMenu(0, 0, 0, this.mResources.getString(p3));
    }

    public android.view.SubMenu addSubMenu(int p2, int p3, int p4, int p5)
    {
        return this.addSubMenu(p2, p3, p4, this.mResources.getString(p5));
    }

    public android.view.SubMenu addSubMenu(int p4, int p5, int p6, CharSequence p7)
    {
        androidx.appcompat.view.menu.MenuItemImpl v0_1 = ((androidx.appcompat.view.menu.MenuItemImpl) this.addInternal(p4, p5, p6, p7));
        androidx.appcompat.view.menu.SubMenuBuilder v1_1 = new androidx.appcompat.view.menu.SubMenuBuilder(this.mContext, this, v0_1);
        v0_1.setSubMenu(v1_1);
        return v1_1;
    }

    public android.view.SubMenu addSubMenu(CharSequence p2)
    {
        return this.addSubMenu(0, 0, 0, p2);
    }

    public void changeMenuMode()
    {
        if (this.mCallback != null) {
            this.mCallback.onMenuModeChange(this);
        }
        return;
    }

    public void clear()
    {
        if (this.mExpandedItem != null) {
            this.collapseItemActionView(this.mExpandedItem);
        }
        this.mItems.clear();
        this.onItemsChanged(1);
        return;
    }

    public void clearAll()
    {
        this.mPreventDispatchingItemsChanged = 1;
        this.clear();
        this.clearHeader();
        this.mPresenters.clear();
        this.mPreventDispatchingItemsChanged = 0;
        this.mItemsChangedWhileDispatchPrevented = 0;
        this.mStructureChangedWhileDispatchPrevented = 0;
        this.onItemsChanged(1);
        return;
    }

    public void clearHeader()
    {
        this.mHeaderIcon = 0;
        this.mHeaderTitle = 0;
        this.mHeaderView = 0;
        this.onItemsChanged(0);
        return;
    }

    public void close()
    {
        this.close(1);
        return;
    }

    public final void close(boolean p5)
    {
        if (!this.mIsClosing) {
            this.mIsClosing = 1;
            int v2_4 = this.mPresenters.iterator();
            while (v2_4.hasNext()) {
                ref.WeakReference v1_1 = ((ref.WeakReference) v2_4.next());
                androidx.appcompat.view.menu.MenuPresenter v0_1 = ((androidx.appcompat.view.menu.MenuPresenter) v1_1.get());
                if (v0_1 != null) {
                    v0_1.onCloseMenu(this, p5);
                } else {
                    this.mPresenters.remove(v1_1);
                }
            }
            this.mIsClosing = 0;
        }
        return;
    }

    public boolean collapseItemActionView(androidx.appcompat.view.menu.MenuItemImpl p6)
    {
        if ((!this.mPresenters.isEmpty()) && (this.mExpandedItem == p6)) {
            boolean v0 = 0;
            this.stopDispatchingItemsChanged();
            int v3_1 = this.mPresenters.iterator();
            while (v3_1.hasNext()) {
                ref.WeakReference v2_1 = ((ref.WeakReference) v3_1.next());
                androidx.appcompat.view.menu.MenuPresenter v1_1 = ((androidx.appcompat.view.menu.MenuPresenter) v2_1.get());
                if (v1_1 != null) {
                    v0 = v1_1.collapseItemActionView(this, p6);
                    if (v0) {
                        break;
                    }
                } else {
                    this.mPresenters.remove(v2_1);
                }
            }
            this.startDispatchingItemsChanged();
            if (v0) {
                this.mExpandedItem = 0;
            }
        } else {
            v0 = 0;
        }
        return v0;
    }

    boolean dispatchMenuItemSelected(androidx.appcompat.view.menu.MenuBuilder p2, android.view.MenuItem p3)
    {
        if ((this.mCallback == null) || (!this.mCallback.onMenuItemSelected(p2, p3))) {
            int v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }

    public boolean expandItemActionView(androidx.appcompat.view.menu.MenuItemImpl p6)
    {
        boolean v0;
        if (!this.mPresenters.isEmpty()) {
            v0 = 0;
            this.stopDispatchingItemsChanged();
            java.util.Iterator v3_3 = this.mPresenters.iterator();
            while (v3_3.hasNext()) {
                ref.WeakReference v2_1 = ((ref.WeakReference) v3_3.next());
                androidx.appcompat.view.menu.MenuPresenter v1_1 = ((androidx.appcompat.view.menu.MenuPresenter) v2_1.get());
                if (v1_1 != null) {
                    v0 = v1_1.expandItemActionView(this, p6);
                    if (v0) {
                        break;
                    }
                } else {
                    this.mPresenters.remove(v2_1);
                }
            }
            this.startDispatchingItemsChanged();
            if (v0) {
                this.mExpandedItem = p6;
            }
        } else {
            v0 = 0;
        }
        return v0;
    }

    public int findGroupIndex(int p2)
    {
        return this.findGroupIndex(p2, 0);
    }

    public int findGroupIndex(int p5, int p6)
    {
        int v2 = this.size();
        if (p6 < 0) {
            p6 = 0;
        }
        int v0 = p6;
        while (v0 < v2) {
            if (((androidx.appcompat.view.menu.MenuItemImpl) this.mItems.get(v0)).getGroupId() != p5) {
                v0++;
            }
            return v0;
        }
        v0 = -1;
        return v0;
    }

    public android.view.MenuItem findItem(int p6)
    {
        int v3 = this.size();
        int v0 = 0;
        while (v0 < v3) {
            android.view.MenuItem v1_0 = ((androidx.appcompat.view.menu.MenuItemImpl) this.mItems.get(v0));
            if (v1_0.getItemId() != p6) {
                if (v1_0.hasSubMenu()) {
                    android.view.MenuItem v2 = v1_0.getSubMenu().findItem(p6);
                    if (v2 != null) {
                        v1_0 = v2;
                        return v1_0;
                    }
                }
                v0++;
            }
            return v1_0;
        }
        v1_0 = 0;
        return v1_0;
    }

    public int findItemIndex(int p5)
    {
        int v2 = this.size();
        int v0 = 0;
        while (v0 < v2) {
            if (((androidx.appcompat.view.menu.MenuItemImpl) this.mItems.get(v0)).getItemId() != p5) {
                v0++;
            }
            return v0;
        }
        v0 = -1;
        return v0;
    }

    androidx.appcompat.view.menu.MenuItemImpl findItemWithShortcutForKey(int p13, android.view.KeyEvent p14)
    {
        androidx.appcompat.view.menu.MenuItemImpl v8_0 = 0;
        java.util.ArrayList v2 = this.mTempShortcutItemList;
        v2.clear();
        this.findItemsWithShortcutForKey(v2, p13, p14);
        if (!v2.isEmpty()) {
            int v3 = p14.getMetaState();
            android.view.KeyCharacterMap$KeyData v4_1 = new android.view.KeyCharacterMap$KeyData();
            p14.getKeyData(v4_1);
            int v7 = v2.size();
            if (v7 != 1) {
                boolean v5 = this.isQwertyMode();
                int v0 = 0;
                while (v0 < v7) {
                    char v6;
                    androidx.appcompat.view.menu.MenuItemImpl v1_1 = ((androidx.appcompat.view.menu.MenuItemImpl) v2.get(v0));
                    if (!v5) {
                        v6 = v1_1.getNumericShortcut();
                    } else {
                        v6 = v1_1.getAlphabeticShortcut();
                    }
                    if (((v6 != v4_1.meta[0]) || ((v3 & 2) != 0)) && (((v6 != v4_1.meta[2]) || ((v3 & 2) == 0)) && ((!v5) || ((v6 != 8) || (p13 != 67))))) {
                        v0++;
                    } else {
                        v8_0 = v1_1;
                        break;
                    }
                }
            } else {
                v8_0 = ((androidx.appcompat.view.menu.MenuItemImpl) v2.get(0));
            }
        }
        return v8_0;
    }

    void findItemsWithShortcutForKey(java.util.List p13, int p14, android.view.KeyEvent p15)
    {
        boolean v7 = this.isQwertyMode();
        int v5 = p15.getModifiers();
        android.view.KeyCharacterMap$KeyData v6_1 = new android.view.KeyCharacterMap$KeyData();
        if ((p15.getKeyData(v6_1)) || (p14 == 67)) {
            int v0 = this.mItems.size();
            int v1 = 0;
            while (v1 < v0) {
                androidx.appcompat.view.menu.MenuItemImpl v4_1 = ((androidx.appcompat.view.menu.MenuItemImpl) this.mItems.get(v1));
                if (v4_1.hasSubMenu()) {
                    ((androidx.appcompat.view.menu.MenuBuilder) v4_1.getSubMenu()).findItemsWithShortcutForKey(p13, p14, p15);
                }
                char v8;
                if (!v7) {
                    v8 = v4_1.getNumericShortcut();
                } else {
                    v8 = v4_1.getAlphabeticShortcut();
                }
                int v9;
                if (!v7) {
                    v9 = v4_1.getNumericModifiers();
                } else {
                    v9 = v4_1.getAlphabeticModifiers();
                }
                int v3;
                if ((69647 & v5) != (69647 & v9)) {
                    v3 = 0;
                } else {
                    v3 = 1;
                }
                if (((v3 != 0) && ((v8 != 0) && ((v8 == v6_1.meta[0]) || ((v8 == v6_1.meta[2]) || ((v7) && ((v8 == 8) && (p14 == 67))))))) && (v4_1.isEnabled())) {
                    p13.add(v4_1);
                }
                v1++;
            }
        }
        return;
    }

    public void flagActionItems()
    {
        java.util.ArrayList v6 = this.getVisibleItems();
        if (this.mIsActionItemsStale) {
            int v0 = 0;
            java.util.ArrayList v7_11 = this.mPresenters.iterator();
            while (v7_11.hasNext()) {
                ref.WeakReference v5_1 = ((ref.WeakReference) v7_11.next());
                androidx.appcompat.view.menu.MenuPresenter v4_1 = ((androidx.appcompat.view.menu.MenuPresenter) v5_1.get());
                if (v4_1 != null) {
                    v0 |= v4_1.flagActionItems();
                } else {
                    this.mPresenters.remove(v5_1);
                }
            }
            if (v0 == 0) {
                this.mActionItems.clear();
                this.mNonActionItems.clear();
                this.mNonActionItems.addAll(this.getVisibleItems());
            } else {
                this.mActionItems.clear();
                this.mNonActionItems.clear();
                int v3 = v6.size();
                int v1 = 0;
                while (v1 < v3) {
                    androidx.appcompat.view.menu.MenuItemImpl v2_1 = ((androidx.appcompat.view.menu.MenuItemImpl) v6.get(v1));
                    if (!v2_1.isActionButton()) {
                        this.mNonActionItems.add(v2_1);
                    } else {
                        this.mActionItems.add(v2_1);
                    }
                    v1++;
                }
            }
            this.mIsActionItemsStale = 0;
        }
        return;
    }

    public java.util.ArrayList getActionItems()
    {
        this.flagActionItems();
        return this.mActionItems;
    }

    protected String getActionViewStatesKey()
    {
        return "android:menu:actionviewstates";
    }

    public android.content.Context getContext()
    {
        return this.mContext;
    }

    public androidx.appcompat.view.menu.MenuItemImpl getExpandedItem()
    {
        return this.mExpandedItem;
    }

    public android.graphics.drawable.Drawable getHeaderIcon()
    {
        return this.mHeaderIcon;
    }

    public CharSequence getHeaderTitle()
    {
        return this.mHeaderTitle;
    }

    public android.view.View getHeaderView()
    {
        return this.mHeaderView;
    }

    public android.view.MenuItem getItem(int p2)
    {
        return ((android.view.MenuItem) this.mItems.get(p2));
    }

    public java.util.ArrayList getNonActionItems()
    {
        this.flagActionItems();
        return this.mNonActionItems;
    }

    boolean getOptionalIconsVisible()
    {
        return this.mOptionalIconsVisible;
    }

    android.content.res.Resources getResources()
    {
        return this.mResources;
    }

    public androidx.appcompat.view.menu.MenuBuilder getRootMenu()
    {
        return this;
    }

    public java.util.ArrayList getVisibleItems()
    {
        java.util.ArrayList v3_2;
        if (this.mIsVisibleItemsStale) {
            this.mVisibleItems.clear();
            int v2 = this.mItems.size();
            int v0 = 0;
            while (v0 < v2) {
                androidx.appcompat.view.menu.MenuItemImpl v1_1 = ((androidx.appcompat.view.menu.MenuItemImpl) this.mItems.get(v0));
                if (v1_1.isVisible()) {
                    this.mVisibleItems.add(v1_1);
                }
                v0++;
            }
            this.mIsVisibleItemsStale = 0;
            this.mIsActionItemsStale = 1;
            v3_2 = this.mVisibleItems;
        } else {
            v3_2 = this.mVisibleItems;
        }
        return v3_2;
    }

    public boolean hasVisibleItems()
    {
        int v3 = 1;
        if (!this.mOverrideVisibleItems) {
            int v2 = this.size();
            int v0 = 0;
            while (v0 < v2) {
                if (!((androidx.appcompat.view.menu.MenuItemImpl) this.mItems.get(v0)).isVisible()) {
                    v0++;
                }
            }
            v3 = 0;
        }
        return v3;
    }

    public boolean isGroupDividerEnabled()
    {
        return this.mGroupDividerEnabled;
    }

    boolean isQwertyMode()
    {
        return this.mQwertyMode;
    }

    public boolean isShortcutKey(int p2, android.view.KeyEvent p3)
    {
        int v0_1;
        if (this.findItemWithShortcutForKey(p2, p3) == null) {
            v0_1 = 0;
        } else {
            v0_1 = 1;
        }
        return v0_1;
    }

    public boolean isShortcutsVisible()
    {
        return this.mShortcutsVisible;
    }

    void onItemActionRequestChanged(androidx.appcompat.view.menu.MenuItemImpl p2)
    {
        this.mIsActionItemsStale = 1;
        this.onItemsChanged(1);
        return;
    }

    void onItemVisibleChanged(androidx.appcompat.view.menu.MenuItemImpl p2)
    {
        this.mIsVisibleItemsStale = 1;
        this.onItemsChanged(1);
        return;
    }

    public void onItemsChanged(boolean p3)
    {
        if (this.mPreventDispatchingItemsChanged) {
            this.mItemsChangedWhileDispatchPrevented = 1;
            if (p3) {
                this.mStructureChangedWhileDispatchPrevented = 1;
            }
        } else {
            if (p3) {
                this.mIsVisibleItemsStale = 1;
                this.mIsActionItemsStale = 1;
            }
            this.dispatchPresenterUpdate(p3);
        }
        return;
    }

    public boolean performIdentifierAction(int p2, int p3)
    {
        return this.performItemAction(this.findItem(p2), p3);
    }

    public boolean performItemAction(android.view.MenuItem p2, int p3)
    {
        return this.performItemAction(p2, 0, p3);
    }

    public boolean performItemAction(android.view.MenuItem p9, androidx.appcompat.view.menu.MenuPresenter p10, int p11)
    {
        int v0;
        androidx.appcompat.view.menu.MenuItemImpl v1_1 = ((androidx.appcompat.view.menu.MenuItemImpl) p9);
        if ((((androidx.appcompat.view.menu.MenuItemImpl) p9) != null) && (((androidx.appcompat.view.menu.MenuItemImpl) p9).isEnabled())) {
            int v3;
            v0 = ((androidx.appcompat.view.menu.MenuItemImpl) p9).invoke();
            androidx.core.view.ActionProvider v2 = ((androidx.appcompat.view.menu.MenuItemImpl) p9).getSupportActionProvider();
            if ((v2 == null) || (!v2.hasSubMenu())) {
                v3 = 0;
            } else {
                v3 = 1;
            }
            if (!((androidx.appcompat.view.menu.MenuItemImpl) p9).hasCollapsibleActionView()) {
                if ((!((androidx.appcompat.view.menu.MenuItemImpl) p9).hasSubMenu()) && (v3 == 0)) {
                    if ((p11 & 1) == 0) {
                        this.close(1);
                    }
                } else {
                    if ((p11 & 4) == 0) {
                        this.close(0);
                    }
                    if (!((androidx.appcompat.view.menu.MenuItemImpl) p9).hasSubMenu()) {
                        v1_1.setSubMenu(new androidx.appcompat.view.menu.SubMenuBuilder(this.getContext(), this, v1_1));
                    }
                    androidx.appcompat.view.menu.SubMenuBuilder v4_1 = ((androidx.appcompat.view.menu.SubMenuBuilder) ((androidx.appcompat.view.menu.MenuItemImpl) p9).getSubMenu());
                    if (v3 != 0) {
                        v2.onPrepareSubMenu(v4_1);
                    }
                    v0 |= this.dispatchSubMenuSelected(v4_1, p10);
                    if (v0 == 0) {
                        this.close(1);
                    }
                }
            } else {
                v0 |= ((androidx.appcompat.view.menu.MenuItemImpl) p9).expandActionView();
                if (v0 != 0) {
                    this.close(1);
                }
            }
        } else {
            v0 = 0;
        }
        return v0;
    }

    public boolean performShortcut(int p4, android.view.KeyEvent p5, int p6)
    {
        androidx.appcompat.view.menu.MenuItemImpl v1 = this.findItemWithShortcutForKey(p4, p5);
        boolean v0 = 0;
        if (v1 != null) {
            v0 = this.performItemAction(v1, p6);
        }
        if ((p6 & 2) != 0) {
            this.close(1);
        }
        return v0;
    }

    public void removeGroup(int p6)
    {
        int v0 = this.findGroupIndex(p6);
        if (v0 >= 0) {
            int v1 = (this.mItems.size() - v0);
            int v3 = 0;
            while(true) {
                int v2_1 = (v3 + 1);
                if ((v3 >= v1) || (((androidx.appcompat.view.menu.MenuItemImpl) this.mItems.get(v0)).getGroupId() != p6)) {
                    break;
                }
                this.removeItemAtInt(v0, 0);
                v3 = v2_1;
            }
            this.onItemsChanged(1);
        }
        return;
    }

    public void removeItem(int p3)
    {
        this.removeItemAtInt(this.findItemIndex(p3), 1);
        return;
    }

    public void removeItemAt(int p2)
    {
        this.removeItemAtInt(p2, 1);
        return;
    }

    public void removeMenuPresenter(androidx.appcompat.view.menu.MenuPresenter p5)
    {
        java.util.Iterator v2_1 = this.mPresenters.iterator();
        while (v2_1.hasNext()) {
            ref.WeakReference v1_1 = ((ref.WeakReference) v2_1.next());
            androidx.appcompat.view.menu.MenuPresenter v0_1 = ((androidx.appcompat.view.menu.MenuPresenter) v1_1.get());
            if ((v0_1 == null) || (v0_1 == p5)) {
                this.mPresenters.remove(v1_1);
            }
        }
        return;
    }

    public void restoreActionViewStates(android.os.Bundle p11)
    {
        if (p11 != null) {
            android.util.SparseArray v7 = p11.getSparseParcelableArray(this.getActionViewStatesKey());
            int v3 = this.size();
            int v1 = 0;
            while (v1 < v3) {
                android.view.MenuItem v2 = this.getItem(v1);
                android.view.View v6 = v2.getActionView();
                if ((v6 != null) && (v6.getId() != -1)) {
                    v6.restoreHierarchyState(v7);
                }
                if (v2.hasSubMenu()) {
                    ((androidx.appcompat.view.menu.SubMenuBuilder) v2.getSubMenu()).restoreActionViewStates(p11);
                }
                v1++;
            }
            int v0 = p11.getInt("android:menu:expandedactionview");
            if (v0 > 0) {
                android.view.MenuItem v4 = this.findItem(v0);
                if (v4 != null) {
                    v4.expandActionView();
                }
            }
        }
        return;
    }

    public void restorePresenterStates(android.os.Bundle p1)
    {
        this.dispatchRestoreInstanceState(p1);
        return;
    }

    public void saveActionViewStates(android.os.Bundle p9)
    {
        android.util.SparseArray v5_0 = 0;
        int v2 = this.size();
        int v0 = 0;
        while (v0 < v2) {
            android.view.MenuItem v1 = this.getItem(v0);
            android.view.View v4 = v1.getActionView();
            if ((v4 != null) && (v4.getId() != -1)) {
                if (v5_0 == null) {
                    v5_0 = new android.util.SparseArray();
                }
                v4.saveHierarchyState(v5_0);
                if (v1.isActionViewExpanded()) {
                    p9.putInt("android:menu:expandedactionview", v1.getItemId());
                }
            }
            if (v1.hasSubMenu()) {
                ((androidx.appcompat.view.menu.SubMenuBuilder) v1.getSubMenu()).saveActionViewStates(p9);
            }
            v0++;
        }
        if (v5_0 != null) {
            p9.putSparseParcelableArray(this.getActionViewStatesKey(), v5_0);
        }
        return;
    }

    public void savePresenterStates(android.os.Bundle p1)
    {
        this.dispatchSaveInstanceState(p1);
        return;
    }

    public void setCallback(androidx.appcompat.view.menu.MenuBuilder$Callback p1)
    {
        this.mCallback = p1;
        return;
    }

    public void setCurrentMenuInfo(android.view.ContextMenu$ContextMenuInfo p1)
    {
        this.mCurrentMenuInfo = p1;
        return;
    }

    public androidx.appcompat.view.menu.MenuBuilder setDefaultShowAsAction(int p1)
    {
        this.mDefaultShowAsAction = p1;
        return this;
    }

    void setExclusiveItemChecked(android.view.MenuItem p6)
    {
        int v2 = p6.getGroupId();
        int v0 = this.mItems.size();
        this.stopDispatchingItemsChanged();
        int v3 = 0;
        while (v3 < v0) {
            androidx.appcompat.view.menu.MenuItemImpl v1_1 = ((androidx.appcompat.view.menu.MenuItemImpl) this.mItems.get(v3));
            if ((v1_1.getGroupId() == v2) && ((v1_1.isExclusiveCheckable()) && (v1_1.isCheckable()))) {
                int v4_5;
                if (v1_1 != p6) {
                    v4_5 = 0;
                } else {
                    v4_5 = 1;
                }
                v1_1.setCheckedInt(v4_5);
            }
            v3++;
        }
        this.startDispatchingItemsChanged();
        return;
    }

    public void setGroupCheckable(int p5, boolean p6, boolean p7)
    {
        int v0 = this.mItems.size();
        int v1 = 0;
        while (v1 < v0) {
            androidx.appcompat.view.menu.MenuItemImpl v2_1 = ((androidx.appcompat.view.menu.MenuItemImpl) this.mItems.get(v1));
            if (v2_1.getGroupId() == p5) {
                v2_1.setExclusiveCheckable(p7);
                v2_1.setCheckable(p6);
            }
            v1++;
        }
        return;
    }

    public void setGroupDividerEnabled(boolean p1)
    {
        this.mGroupDividerEnabled = p1;
        return;
    }

    public void setGroupEnabled(int p5, boolean p6)
    {
        int v0 = this.mItems.size();
        int v1 = 0;
        while (v1 < v0) {
            androidx.appcompat.view.menu.MenuItemImpl v2_1 = ((androidx.appcompat.view.menu.MenuItemImpl) this.mItems.get(v1));
            if (v2_1.getGroupId() == p5) {
                v2_1.setEnabled(p6);
            }
            v1++;
        }
        return;
    }

    public void setGroupVisible(int p6, boolean p7)
    {
        int v0 = this.mItems.size();
        int v1 = 0;
        int v2 = 0;
        while (v2 < v0) {
            androidx.appcompat.view.menu.MenuItemImpl v3_1 = ((androidx.appcompat.view.menu.MenuItemImpl) this.mItems.get(v2));
            if ((v3_1.getGroupId() == p6) && (v3_1.setVisibleInt(p7))) {
                v1 = 1;
            }
            v2++;
        }
        if (v1 != 0) {
            this.onItemsChanged(1);
        }
        return;
    }

    protected androidx.appcompat.view.menu.MenuBuilder setHeaderIconInt(int p7)
    {
        this.setHeaderInternal(0, 0, p7, 0, 0);
        return this;
    }

    protected androidx.appcompat.view.menu.MenuBuilder setHeaderIconInt(android.graphics.drawable.Drawable p7)
    {
        this.setHeaderInternal(0, 0, 0, p7, 0);
        return this;
    }

    protected androidx.appcompat.view.menu.MenuBuilder setHeaderTitleInt(int p7)
    {
        this.setHeaderInternal(p7, 0, 0, 0, 0);
        return this;
    }

    protected androidx.appcompat.view.menu.MenuBuilder setHeaderTitleInt(CharSequence p7)
    {
        this.setHeaderInternal(0, p7, 0, 0, 0);
        return this;
    }

    protected androidx.appcompat.view.menu.MenuBuilder setHeaderViewInt(android.view.View p7)
    {
        this.setHeaderInternal(0, 0, 0, 0, p7);
        return this;
    }

    public void setOptionalIconsVisible(boolean p1)
    {
        this.mOptionalIconsVisible = p1;
        return;
    }

    public void setOverrideVisibleItems(boolean p1)
    {
        this.mOverrideVisibleItems = p1;
        return;
    }

    public void setQwertyMode(boolean p2)
    {
        this.mQwertyMode = p2;
        this.onItemsChanged(0);
        return;
    }

    public void setShortcutsVisible(boolean p2)
    {
        if (this.mShortcutsVisible != p2) {
            this.setShortcutsVisibleInner(p2);
            this.onItemsChanged(0);
        }
        return;
    }

    public int size()
    {
        return this.mItems.size();
    }

    public void startDispatchingItemsChanged()
    {
        this.mPreventDispatchingItemsChanged = 0;
        if (this.mItemsChangedWhileDispatchPrevented) {
            this.mItemsChangedWhileDispatchPrevented = 0;
            this.onItemsChanged(this.mStructureChangedWhileDispatchPrevented);
        }
        return;
    }

    public void stopDispatchingItemsChanged()
    {
        if (!this.mPreventDispatchingItemsChanged) {
            this.mPreventDispatchingItemsChanged = 1;
            this.mItemsChangedWhileDispatchPrevented = 0;
            this.mStructureChangedWhileDispatchPrevented = 0;
        }
        return;
    }
}
