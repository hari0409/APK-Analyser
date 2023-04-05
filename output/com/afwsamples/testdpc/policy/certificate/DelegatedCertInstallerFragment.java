package com.afwsamples.testdpc.policy.certificate;
public class DelegatedCertInstallerFragment extends com.afwsamples.testdpc.common.SelectAppFragment {
    private android.app.admin.DevicePolicyManager mDpm;

    public DelegatedCertInstallerFragment()
    {
        return;
    }

    protected void clearSelectedPackage()
    {
        this.mDpm.setCertInstallerPackage(com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this.getActivity()), 0);
        return;
    }

    protected String getSelectedPackage()
    {
        return this.mDpm.getCertInstallerPackage(com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this.getActivity()));
    }

    public void onCreate(android.os.Bundle p3)
    {
        super.onCreate(p3);
        this.mDpm = ((android.app.admin.DevicePolicyManager) this.getContext().getSystemService("device_policy"));
        return;
    }

    public void onResume()
    {
        super.onResume();
        this.getActivity().getActionBar().setTitle(2131689921);
        return;
    }

    protected void setSelectedPackage(String p3)
    {
        this.mDpm.setCertInstallerPackage(com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this.getActivity()), p3);
        return;
    }
}
