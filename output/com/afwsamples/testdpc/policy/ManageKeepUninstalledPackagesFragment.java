package com.afwsamples.testdpc.policy;
public class ManageKeepUninstalledPackagesFragment extends com.afwsamples.testdpc.policy.BaseStringItemsFragment {
    private android.content.ComponentName mAdminComponent;
    private android.app.admin.DevicePolicyManager mDevicePolicyManager;

    public ManageKeepUninstalledPackagesFragment()
    {
        super(2131689878, 2131689800, 2131690020);
        return;
    }

    protected java.util.Collection loadItems()
    {
        java.util.List v0 = this.mDevicePolicyManager.getKeepUninstalledPackages(this.mAdminComponent);
        if (v0 == null) {
            v0 = java.util.Collections.emptyList();
        }
        return v0;
    }

    public void onCreate(android.os.Bundle p3)
    {
        super.onCreate(p3);
        this.mDevicePolicyManager = ((android.app.admin.DevicePolicyManager) this.getActivity().getSystemService("device_policy"));
        this.mAdminComponent = com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this.getActivity());
        return;
    }

    protected void saveItems(java.util.List p3)
    {
        this.mDevicePolicyManager.setKeepUninstalledPackages(this.mAdminComponent, p3);
        return;
    }
}
