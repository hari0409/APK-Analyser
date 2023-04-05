package com.afwsamples.testdpc.policy;
public class MeteredDataRestrictionInfoAdapter extends com.afwsamples.testdpc.common.ToggleComponentsArrayAdapter implements android.content.DialogInterface$OnClickListener {
    private static final String TAG;
    private final android.content.Context mContext;
    private final java.util.List mRestrictedPkgs;

    static MeteredDataRestrictionInfoAdapter()
    {
        com.afwsamples.testdpc.policy.MeteredDataRestrictionInfoAdapter.TAG = com.afwsamples.testdpc.policy.MeteredDataRestrictionInfoAdapter.getSimpleName();
        return;
    }

    public MeteredDataRestrictionInfoAdapter(android.content.Context p2, java.util.List p3, java.util.List p4)
    {
        super(p2, 2131296534, p3);
        super.mContext = p2;
        super.mRestrictedPkgs = p4;
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

    private void setMeteredDataRestrictedPkgs(java.util.List p8)
    {
        java.util.List v0 = this.mDevicePolicyManager.setMeteredDataDisabledPackages(com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this.mContext), p8);
        if (!v0.isEmpty()) {
            android.widget.Toast v1_1 = this.mContext;
            String v2_0 = this.mContext;
            Object[] v4 = new Object[1];
            v4[0] = v0;
            android.widget.Toast.makeText(v1_1, v2_0.getString(2131689944, v4), 1).show();
        }
        return;
    }

    protected boolean canModifyComponent(int p2)
    {
        return 1;
    }

    protected android.content.pm.ApplicationInfo getApplicationInfo(int p5)
    {
        try {
            int v1_0 = this.mPackageManager.getApplicationInfo(((android.content.pm.ResolveInfo) this.getItem(p5)).resolvePackageName, 0);
        } catch (android.content.pm.PackageManager$NameNotFoundException v0) {
            android.util.Log.e(com.afwsamples.testdpc.policy.MeteredDataRestrictionInfoAdapter.TAG, "getApplicationInfo: ", v0);
            v1_0 = 0;
        }
        return v1_0;
    }

    public CharSequence getDisplayName(int p3)
    {
        return this.mPackageManager.getApplicationLabel(this.getApplicationInfo(p3));
    }

    public boolean isComponentEnabled(android.content.pm.ResolveInfo p3)
    {
        return this.mRestrictedPkgs.contains(p3.resolvePackageName);
    }

    public void onClick(android.content.DialogInterface p5, int p6)
    {
        if (p6 == -1) {
            java.util.ArrayList v1_1 = new java.util.ArrayList();
            int v2 = this.mIsComponentCheckedList.size();
            int v0 = 0;
            while (v0 < v2) {
                if (((Boolean) this.mIsComponentCheckedList.get(v0)).booleanValue()) {
                    v1_1.add(((android.content.pm.ResolveInfo) this.getItem(v0)).resolvePackageName);
                }
                v0++;
            }
            this.setMeteredDataRestrictedPkgs(v1_1);
        }
        return;
    }
}
