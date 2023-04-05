package com.afwsamples.testdpc.comp;
public class BindDeviceAdminFragment extends com.afwsamples.testdpc.common.BaseSearchablePolicyPreferenceFragment implements androidx.preference.Preference$OnPreferenceChangeListener {
    private static final int INSTALL_CA_CERTIFICATE_REQUEST_CODE = 0;
    private static final String KEY_HIDE_PO_LAUNCHER_ICON = "hide_po_launcher_icon";
    private static final String KEY_INSTALL_CA_CERTIFICATE = "install_ca_cert";
    private static final String KEY_PO_USER_STATUS = "po_user_status";
    private static final String TAG = "BindDeviceAdminFragment";
    private com.afwsamples.testdpc.comp.BindDeviceAdminServiceHelper mBindDeviceAdminServiceHelper;
    private com.afwsamples.testdpc.common.preference.DpcSwitchPreference mHideLauncherIconPreference;
    private com.afwsamples.testdpc.common.preference.DpcPreference mInstallCaCertificatePreference;
    private android.os.UserHandle mProfileOwnerUser;
    private android.os.UserManager mUserManager;

    public BindDeviceAdminFragment()
    {
        return;
    }

    private com.afwsamples.testdpc.common.preference.CustomConstraint getCustomConstraint(int p2)
    {
        return new com.afwsamples.testdpc.comp.BindDeviceAdminFragment$$Lambda$1(this, p2);
    }

    private boolean isManagedProfileOwner()
    {
        if ((this.mProfileOwnerUser == null) || (!this.mUserManager.getUserProfiles().contains(this.mProfileOwnerUser))) {
            int v0_1 = 0;
        } else {
            v0_1 = 1;
        }
        return v0_1;
    }

    private boolean isManagedProfileRunning()
    {
        if ((!this.isManagedProfileOwner()) || (!this.mUserManager.isUserRunning(this.mProfileOwnerUser))) {
            int v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }

    private boolean isManagedProfileUnlocked()
    {
        if ((!this.isManagedProfileOwner()) || (!this.mUserManager.isUserUnlocked(this.mProfileOwnerUser))) {
            int v0_3 = 0;
        } else {
            v0_3 = 1;
        }
        return v0_3;
    }

    static final synthetic void lambda$onPreferenceChange$215$BindDeviceAdminFragment(Object p1, com.afwsamples.testdpc.comp.IProfileOwnerService p2)
    {
        p2.setLauncherIconHidden(((Boolean) p1).booleanValue());
        return;
    }

    private void refresh()
    {
        java.util.List v0 = com.afwsamples.testdpc.common.Util.getBindDeviceAdminTargetUsers(this.getActivity());
        if (v0.size() != 1) {
            this.mProfileOwnerUser = 0;
            android.util.Log.w("BindDeviceAdminFragment", new StringBuilder().append("Expecting to be able to bind to exactly one profile owner, but got ").append(v0).toString());
        } else {
            this.mProfileOwnerUser = ((android.os.UserHandle) com.afwsamples.testdpc.common.Util.getBindDeviceAdminTargetUsers(this.getActivity()).get(0));
        }
        this.mBindDeviceAdminServiceHelper = new com.afwsamples.testdpc.comp.BindDeviceAdminServiceHelper(this.getActivity(), com.afwsamples.testdpc.comp.ProfileOwnerService, com.afwsamples.testdpc.comp.BindDeviceAdminFragment$$Lambda$2.$instance, this.mProfileOwnerUser);
        this.refreshUserStatePreference();
        this.mHideLauncherIconPreference.refreshEnabledState();
        if (this.mHideLauncherIconPreference.isEnabled()) {
            this.mBindDeviceAdminServiceHelper.crossUserCall(new com.afwsamples.testdpc.comp.BindDeviceAdminFragment$$Lambda$3(this));
        }
        this.mInstallCaCertificatePreference.refreshEnabledState();
        return;
    }

    private void refreshUserStatePreference()
    {
        int v0;
        if (this.mProfileOwnerUser != null) {
            if (this.isManagedProfileOwner()) {
                if (!this.isManagedProfileUnlocked()) {
                    if (!this.isManagedProfileRunning()) {
                        v0 = 2131689929;
                    } else {
                        v0 = 2131689931;
                    }
                } else {
                    v0 = 2131689934;
                }
            } else {
                v0 = 2131690073;
            }
        } else {
            v0 = 2131690129;
        }
        this.findPreference("po_user_status").setSummary(this.getString(v0));
        return;
    }

    public boolean isAvailable(android.content.Context p4)
    {
        int v1 = 1;
        if ((!((android.app.admin.DevicePolicyManager) p4.getSystemService("device_policy")).isDeviceOwnerApp(p4.getPackageName())) || (com.afwsamples.testdpc.common.Util.getBindDeviceAdminTargetUsers(p4).size() != 1)) {
            v1 = 0;
        }
        return v1;
    }

    final synthetic int lambda$getCustomConstraint$213$BindDeviceAdminFragment(int p2)
    {
        if (this.mProfileOwnerUser != null) {
            if (this.isManagedProfileOwner()) {
                if ((this.isManagedProfileRunning()) && (this.isManagedProfileUnlocked())) {
                    p2 = 0;
                } else {
                    p2 = 2131689930;
                }
            }
        } else {
            p2 = 2131690129;
        }
        return p2;
    }

    final synthetic void lambda$null$216$BindDeviceAdminFragment(String p3)
    {
        android.widget.Toast.makeText(this.getActivity(), p3, 0).show();
        return;
    }

    final synthetic void lambda$onActivityResult$217$BindDeviceAdminFragment(android.content.res.AssetFileDescriptor p5, com.afwsamples.testdpc.comp.IProfileOwnerService p6)
    {
        String v1;
        if (!p6.installCaCertificate(p5)) {
            v1 = this.getString(2131689857);
        } else {
            v1 = this.getString(2131689858);
        }
        this.getActivity().runOnUiThread(new com.afwsamples.testdpc.comp.BindDeviceAdminFragment$$Lambda$6(this, v1));
        android.widget.Toast.makeText(this.getActivity(), v1, 0).show();
        return;
    }

    final synthetic boolean lambda$onCreatePreferences$212$BindDeviceAdminFragment(androidx.preference.Preference p2)
    {
        com.afwsamples.testdpc.common.Util.showFileViewer(this, 0);
        return 1;
    }

    final synthetic void lambda$refresh$214$BindDeviceAdminFragment(com.afwsamples.testdpc.comp.IProfileOwnerService p3)
    {
        this.mHideLauncherIconPreference.setChecked(p3.isLauncherIconHidden());
        return;
    }

    public void onActivityResult(int p9, int p10, android.content.Intent p11)
    {
        super.onActivityResult(p9, p10, p11);
        if ((p10 == -1) && ((p9 == 0) && (p11 != null))) {
            android.net.Uri v4 = p11.getData();
            try {
                if ((v4 != null) && (!this.mBindDeviceAdminServiceHelper.crossUserCall(new com.afwsamples.testdpc.comp.BindDeviceAdminFragment$$Lambda$5(this, this.getActivity().getContentResolver().openAssetFileDescriptor(v4, "r"))))) {
                    android.widget.Toast.makeText(this.getActivity(), 2131689587, 1).show();
                }
            } catch (java.io.FileNotFoundException v3) {
                android.util.Log.e("BindDeviceAdminFragment", "Could not find certificate file", v3);
            }
        }
        return;
    }

    public void onCreatePreferences(android.os.Bundle p3, String p4)
    {
        this.addPreferencesFromResource(2131886080);
        this.mUserManager = ((android.os.UserManager) this.getActivity().getSystemService("user"));
        this.mHideLauncherIconPreference = ((com.afwsamples.testdpc.common.preference.DpcSwitchPreference) this.findPreference("hide_po_launcher_icon"));
        this.mHideLauncherIconPreference.setOnPreferenceChangeListener(this);
        this.mInstallCaCertificatePreference = ((com.afwsamples.testdpc.common.preference.DpcPreference) this.findPreference("install_ca_cert"));
        this.mInstallCaCertificatePreference.setOnPreferenceClickListener(new com.afwsamples.testdpc.comp.BindDeviceAdminFragment$$Lambda$0(this));
        this.mHideLauncherIconPreference.setCustomConstraint(this.getCustomConstraint(2131690073));
        this.mInstallCaCertificatePreference.setCustomConstraint(this.getCustomConstraint(0));
        return;
    }

    public boolean onPreferenceChange(androidx.preference.Preference p6, Object p7)
    {
        int v0 = 1;
        boolean v3_1 = p6.getKey();
        int v2_0 = -1;
        switch (v3_1.hashCode()) {
            case 676466901:
                if (!v3_1.equals("hide_po_launcher_icon")) {
                } else {
                    v2_0 = 0;
                }
                break;
        }
        switch (v2_0) {
            case 0:
                if (this.mBindDeviceAdminServiceHelper.crossUserCall(new com.afwsamples.testdpc.comp.BindDeviceAdminFragment$$Lambda$4(p7))) {
                } else {
                    android.widget.Toast.makeText(this.getActivity(), 2131689587, 1).show();
                }
                break;
            default:
                v0 = 0;
        }
        return v0;
    }

    public void onResume()
    {
        super.onResume();
        this.refresh();
        return;
    }
}
