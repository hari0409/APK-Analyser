package com.afwsamples.testdpc.policy.networking;
public class AlwaysOnVpnFragment extends com.afwsamples.testdpc.common.SelectAppFragment {
    private static final String TAG = "AlwaysOnVpnFragment";
    private static final android.content.Intent VPN_INTENT;
    private android.app.admin.DevicePolicyManager mDpm;
    private android.widget.EditText mExemptedPackages;
    private android.widget.CheckBox mLockdown;
    private android.content.ComponentName mWho;

    static AlwaysOnVpnFragment()
    {
        com.afwsamples.testdpc.policy.networking.AlwaysOnVpnFragment.VPN_INTENT = new android.content.Intent("android.net.VpnService");
        return;
    }

    public AlwaysOnVpnFragment()
    {
        return;
    }

    static final synthetic boolean lambda$setAlwaysOnVpnPackageQPlus$193$AlwaysOnVpnFragment(String p1)
    {
        int v0_1;
        if (p1.isEmpty()) {
            v0_1 = 0;
        } else {
            v0_1 = 1;
        }
        return v0_1;
    }

    private void setAlwaysOnVpnPackageQPlus(String p5)
    {
        int v1;
        boolean v0 = this.mLockdown.isChecked();
        if (!v0) {
            v1 = 0;
        } else {
            v1 = ((java.util.Set) java.util.Arrays.stream(this.mExemptedPackages.getText().toString().split(",")).map(com.afwsamples.testdpc.policy.networking.AlwaysOnVpnFragment$$Lambda$1.$instance).filter(com.afwsamples.testdpc.policy.networking.AlwaysOnVpnFragment$$Lambda$2.$instance).collect(java.util.stream.Collectors.toSet()));
        }
        this.mDpm.setAlwaysOnVpnPackage(this.mWho, p5, v0, v1);
        return;
    }

    private void updateLockdown()
    {
        String v1_1;
        this.mLockdown.setChecked(this.mDpm.isAlwaysOnVpnLockdownEnabled(this.mWho));
        java.util.Set v0 = this.mDpm.getAlwaysOnVpnLockdownWhitelist(this.mWho);
        android.widget.EditText v2_1 = this.mExemptedPackages;
        if (v0 == null) {
            v1_1 = "";
        } else {
            v1_1 = String.join(",", v0);
        }
        v2_1.setText(v1_1);
        return;
    }

    protected void clearSelectedPackage()
    {
        this.setSelectedPackage(0);
        return;
    }

    protected java.util.List createAppList()
    {
        java.util.HashSet v0_1 = new java.util.HashSet();
        java.util.ArrayList v4_0 = this.getActivity().getPackageManager().queryIntentServices(com.afwsamples.testdpc.policy.networking.AlwaysOnVpnFragment.VPN_INTENT, 0).iterator();
        while (v4_0.hasNext()) {
            android.content.pm.ResolveInfo v2_1 = ((android.content.pm.ResolveInfo) v4_0.next());
            if (v2_1.serviceInfo != null) {
                v0_1.add(v2_1.serviceInfo.packageName);
            }
        }
        return new java.util.ArrayList(v0_1);
    }

    protected String getSelectedPackage()
    {
        return this.mDpm.getAlwaysOnVpnPackage(com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this.getActivity()));
    }

    final synthetic void lambda$onCreateView$192$AlwaysOnVpnFragment(android.widget.CompoundButton p2, boolean p3)
    {
        this.mExemptedPackages.setEnabled(p3);
        return;
    }

    public void onCreate(android.os.Bundle p3)
    {
        super.onCreate(p3);
        this.mDpm = ((android.app.admin.DevicePolicyManager) this.getContext().getSystemService("device_policy"));
        this.mWho = com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this.getActivity());
        return;
    }

    public android.view.View onCreateView(android.view.LayoutInflater p5, android.view.ViewGroup p6, android.os.Bundle p7)
    {
        android.view.View v1 = super.onCreateView(p5, p6, p7);
        if (com.afwsamples.testdpc.common.Util.SDK_INT >= 29) {
            android.view.ViewGroup v0 = this.getExtensionLayout(v1);
            v0.setVisibility(0);
            p5.inflate(2131427392, v0);
            this.mLockdown = ((android.widget.CheckBox) v1.findViewById(2131296425));
            this.mExemptedPackages = ((android.widget.EditText) v1.findViewById(2131296432));
            this.mLockdown.setOnCheckedChangeListener(new com.afwsamples.testdpc.policy.networking.AlwaysOnVpnFragment$$Lambda$0(this));
        }
        return v1;
    }

    public void onResume()
    {
        super.onResume();
        this.getActivity().getActionBar().setTitle(2131690192);
        return;
    }

    protected void reloadSelectedPackage()
    {
        super.reloadSelectedPackage();
        if (com.afwsamples.testdpc.common.Util.SDK_INT >= 29) {
            this.updateLockdown();
        }
        return;
    }

    protected void setSelectedPackage(String p7)
    {
        try {
            if (com.afwsamples.testdpc.common.Util.SDK_INT < 29) {
                this.mDpm.setAlwaysOnVpnPackage(this.mWho, p7, 1);
            } else {
                this.setAlwaysOnVpnPackageQPlus(p7);
            }
        } catch (UnsupportedOperationException v0_1) {
            android.widget.Toast.makeText(this.getActivity(), new StringBuilder().append("Package not found: ").append(v0_1.getMessage()).toString(), 0).show();
            android.util.Log.e("AlwaysOnVpnFragment", "setAlwaysOnVpnPackage:", v0_1);
        } catch (UnsupportedOperationException v0_0) {
            android.widget.Toast.makeText(this.getActivity(), "App doesn\'t support always-on VPN", 0).show();
            android.util.Log.e("AlwaysOnVpnFragment", "setAlwaysOnVpnPackage:", v0_0);
        }
        return;
    }
}
