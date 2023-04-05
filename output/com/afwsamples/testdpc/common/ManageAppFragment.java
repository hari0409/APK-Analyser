package com.afwsamples.testdpc.common;
public abstract class ManageAppFragment extends com.afwsamples.testdpc.common.BaseManageComponentFragment {
    private static final java.util.Set ALLOWLISTED_APPS;

    static ManageAppFragment()
    {
        com.afwsamples.testdpc.common.ManageAppFragment.ALLOWLISTED_APPS = new java.util.HashSet();
        com.afwsamples.testdpc.common.ManageAppFragment.ALLOWLISTED_APPS.add("com.google.android.gms");
        return;
    }

    public ManageAppFragment()
    {
        return;
    }

    private java.util.List getInstalledOrLaunchableApps()
    {
        java.util.List v2 = this.mPackageManager.getInstalledApplications(0);
        java.util.ArrayList v1_1 = new java.util.ArrayList();
        java.util.Iterator v3_1 = v2.iterator();
        while (v3_1.hasNext()) {
            android.content.pm.ApplicationInfo v0_1 = ((android.content.pm.ApplicationInfo) v3_1.next());
            if (((this.mPackageManager.getLaunchIntentForPackage(v0_1.packageName) != null) || (((v0_1.flags & 1) == 0) || (com.afwsamples.testdpc.common.ManageAppFragment.ALLOWLISTED_APPS.contains(v0_1.packageName)))) && (this.filterApp(v0_1))) {
                v1_1.add(v0_1);
            }
        }
        return v1_1;
    }

    protected android.widget.SpinnerAdapter createSpinnerAdapter()
    {
        java.util.List v0 = this.getInstalledOrLaunchableApps();
        java.util.Collections.sort(v0, new android.content.pm.ApplicationInfo$DisplayNameComparator(this.mPackageManager));
        return new com.afwsamples.testdpc.common.AppInfoSpinnerAdapter(this.getActivity(), 2131427362, 2131296534, v0);
    }

    protected boolean filterApp(android.content.pm.ApplicationInfo p2)
    {
        return 1;
    }
}
