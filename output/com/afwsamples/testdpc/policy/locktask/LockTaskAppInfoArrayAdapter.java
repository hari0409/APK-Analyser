package com.afwsamples.testdpc.policy.locktask;
public class LockTaskAppInfoArrayAdapter extends com.afwsamples.testdpc.common.ToggleComponentsArrayAdapter {

    public LockTaskAppInfoArrayAdapter(android.content.Context p2, int p3, java.util.List p4)
    {
        super(p2, p3, p4);
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
        return 1;
    }

    protected android.content.pm.ApplicationInfo getApplicationInfo(int p2)
    {
        return ((android.content.pm.ResolveInfo) this.getItem(p2)).activityInfo.applicationInfo;
    }

    public CharSequence getDisplayName(int p3)
    {
        return ((android.content.pm.ResolveInfo) this.getItem(p3)).loadLabel(this.mPackageManager);
    }

    public String[] getLockTaskList()
    {
        java.util.LinkedHashSet v1_1 = new java.util.LinkedHashSet();
        int v2 = this.getCount();
        int v0 = 0;
        while (v0 < v2) {
            if (((Boolean) this.mIsComponentCheckedList.get(v0)).booleanValue()) {
                v1_1.add(((android.content.pm.ResolveInfo) this.getItem(v0)).activityInfo.packageName);
            }
            v0++;
        }
        String v3_10 = new String[0];
        return ((String[]) v1_1.toArray(v3_10));
    }

    public boolean isComponentEnabled(android.content.pm.ResolveInfo p3)
    {
        if ((p3 == null) || ((p3.activityInfo == null) || (android.text.TextUtils.isEmpty(p3.activityInfo.packageName)))) {
            boolean v0_1 = 0;
        } else {
            v0_1 = this.mDevicePolicyManagerGateway.isLockTaskPermitted(p3.activityInfo.packageName);
        }
        return v0_1;
    }
}
