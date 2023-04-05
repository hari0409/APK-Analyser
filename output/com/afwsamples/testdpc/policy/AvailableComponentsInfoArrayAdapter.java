package com.afwsamples.testdpc.policy;
public class AvailableComponentsInfoArrayAdapter extends com.afwsamples.testdpc.common.ToggleComponentsArrayAdapter {
    private java.util.List mPermittedPackageNames;

    public AvailableComponentsInfoArrayAdapter(android.content.Context p2, java.util.List p3, java.util.List p4)
    {
        super(p2, 2131296534, p3);
        super.mPermittedPackageNames = 0;
        super.mPermittedPackageNames = p4;
        super.setIsComponentEnabledList(super.createIsComponentEnabledList());
        return;
    }

    private java.util.List createIsComponentEnabledList()
    {
        java.util.ArrayList v1_1 = new java.util.ArrayList();
        int v2 = this.getCount();
        int v0 = 0;
        while (v0 < v2) {
            v1_1.add(Boolean.valueOf(this.isComponentEnabled(((android.content.pm.ResolveInfo) this.getItem(v0)))));
            v0++;
        }
        return v1_1;
    }

    protected boolean canModifyComponent(int p2)
    {
        int v0_2;
        if (this.isSystemApp(this.getApplicationInfo(p2))) {
            v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    protected android.graphics.drawable.Drawable getApplicationIcon(android.content.pm.ApplicationInfo p3)
    {
        android.graphics.drawable.Drawable v0_2;
        if (com.afwsamples.testdpc.common.Util.SDK_INT > 21) {
            v0_2 = p3.loadUnbadgedIcon(this.mPackageManager);
        } else {
            v0_2 = this.mPackageManager.getApplicationIcon(p3);
        }
        return v0_2;
    }

    protected android.content.pm.ApplicationInfo getApplicationInfo(int p2)
    {
        return ((android.content.pm.ResolveInfo) this.getItem(p2)).serviceInfo.applicationInfo;
    }

    public CharSequence getDisplayName(int p3)
    {
        return ((android.content.pm.ResolveInfo) this.getItem(p3)).loadLabel(this.mPackageManager);
    }

    public java.util.ArrayList getSelectedComponents()
    {
        java.util.ArrayList v1_1 = new java.util.ArrayList();
        int v2 = this.getCount();
        int v0 = 0;
        while (v0 < v2) {
            if (((Boolean) this.mIsComponentCheckedList.get(v0)).booleanValue()) {
                v1_1.add(((android.content.pm.ResolveInfo) this.getItem(v0)).serviceInfo.packageName);
            }
            v0++;
        }
        return v1_1;
    }

    public boolean isComponentEnabled(android.content.pm.ResolveInfo p3)
    {
        if ((p3 == null) || ((p3.serviceInfo == null) || (android.text.TextUtils.isEmpty(p3.serviceInfo.packageName)))) {
            boolean v0_5 = 0;
        } else {
            if ((this.mPermittedPackageNames != null) && (!this.isSystemApp(p3.serviceInfo.applicationInfo))) {
                v0_5 = this.mPermittedPackageNames.contains(p3.serviceInfo.packageName);
            } else {
                v0_5 = 1;
            }
        }
        return v0_5;
    }
}
