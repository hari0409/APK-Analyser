package com.afwsamples.testdpc.profilepolicy.apprestrictions;
public class AppRestrictionsManagingPackageFragment extends com.afwsamples.testdpc.common.SelectAppFragment {
    private android.app.admin.DevicePolicyManager mDpm;

    public AppRestrictionsManagingPackageFragment()
    {
        return;
    }

    private String getApplicationRestrictionsManagingPackage()
    {
        return this.mDpm.getApplicationRestrictionsManagingPackage(com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this.getActivity()));
    }

    private String getApplicationRestrictionsManagingPackageWithProxy()
    {
        return com.afwsamples.testdpc.profilepolicy.apprestrictions.AppRestrictionsProxyHandler.getApplicationRestrictionsManagingPackage(this.getActivity());
    }

    private void setApplicationRestrictionsManagingPackage(String p4)
    {
        try {
            this.mDpm.setApplicationRestrictionsManagingPackage(com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this.getActivity()), p4);
            return;
        } catch (android.content.pm.PackageManager$NameNotFoundException v0) {
            throw new IllegalArgumentException(v0);
        }
    }

    private void setApplicationRestrictionsManagingPackageWithProxy(String p2)
    {
        com.afwsamples.testdpc.profilepolicy.apprestrictions.AppRestrictionsProxyHandler.setApplicationRestrictionsManagingPackage(this.getActivity(), p2);
        return;
    }

    protected void clearSelectedPackage()
    {
        this.setSelectedPackage(0);
        return;
    }

    protected String getSelectedPackage()
    {
        String v0_1;
        if (com.afwsamples.testdpc.common.Util.SDK_INT < 24) {
            v0_1 = this.getApplicationRestrictionsManagingPackageWithProxy();
        } else {
            v0_1 = this.getApplicationRestrictionsManagingPackage();
        }
        return v0_1;
    }

    public void onCreate(android.os.Bundle p3)
    {
        super.onCreate(p3);
        this.mDpm = ((android.app.admin.DevicePolicyManager) this.getActivity().getSystemService("device_policy"));
        return;
    }

    public void onResume()
    {
        super.onResume();
        this.getActivity().getActionBar().setTitle(2131689577);
        return;
    }

    protected void setSelectedPackage(String p3)
    {
        if (android.text.TextUtils.isEmpty(p3)) {
            p3 = 0;
        }
        if (com.afwsamples.testdpc.common.Util.SDK_INT < 24) {
            this.setApplicationRestrictionsManagingPackageWithProxy(p3);
        } else {
            this.setApplicationRestrictionsManagingPackage(p3);
        }
        return;
    }
}
