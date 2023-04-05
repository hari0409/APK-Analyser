package com.afwsamples.testdpc.policy.blockuninstallation;
public class BlockUninstallationInfoArrayAdapter extends com.afwsamples.testdpc.common.ToggleComponentsArrayAdapter {
    private final android.content.ComponentName mAdminComponent;

    public BlockUninstallationInfoArrayAdapter(android.content.Context p2, int p3, java.util.List p4, android.content.ComponentName p5)
    {
        super(p2, p3, p4);
        super.mAdminComponent = p5;
        super.setIsComponentEnabledList(super.createIsComponentEnabledList());
        return;
    }

    static synthetic java.util.List access$000(com.afwsamples.testdpc.policy.blockuninstallation.BlockUninstallationInfoArrayAdapter p1)
    {
        return p1.mIsComponentCheckedList;
    }

    static synthetic android.content.ComponentName access$100(com.afwsamples.testdpc.policy.blockuninstallation.BlockUninstallationInfoArrayAdapter p1)
    {
        return p1.mAdminComponent;
    }

    static synthetic android.app.admin.DevicePolicyManager access$200(com.afwsamples.testdpc.policy.blockuninstallation.BlockUninstallationInfoArrayAdapter p1)
    {
        return p1.mDevicePolicyManager;
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

    protected android.content.pm.ApplicationInfo getApplicationInfo(int p5)
    {
        try {
            int v1_0 = this.mPackageManager.getApplicationInfo(((android.content.pm.ResolveInfo) this.getItem(p5)).resolvePackageName, 0);
        } catch (android.content.pm.PackageManager$NameNotFoundException v0) {
            android.util.Log.e(com.afwsamples.testdpc.policy.blockuninstallation.BlockUninstallationInfoArrayAdapter.TAG, "getApplicationInfo: ", v0);
            v1_0 = 0;
        }
        return v1_0;
    }

    public CharSequence getDisplayName(int p3)
    {
        return this.mPackageManager.getApplicationLabel(this.getApplicationInfo(p3));
    }

    public android.view.View getView(int p4, android.view.View p5, android.view.ViewGroup p6)
    {
        android.view.View v0 = super.getView(p4, p5, p6);
        v0.findViewById(2131296424).setOnClickListener(new com.afwsamples.testdpc.policy.blockuninstallation.BlockUninstallationInfoArrayAdapter$1(this, p4));
        return v0;
    }

    public boolean isComponentEnabled(android.content.pm.ResolveInfo p4)
    {
        return this.mDevicePolicyManager.isUninstallBlocked(this.mAdminComponent, p4.resolvePackageName);
    }
}
