package com.afwsamples.testdpc.policy;
public class CrossProfileCalendarFragment extends com.afwsamples.testdpc.common.BaseSearchablePolicyPreferenceFragment implements androidx.preference.Preference$OnPreferenceClickListener, androidx.preference.Preference$OnPreferenceChangeListener {
    private static final String CROSS_PROFILE_CALENDAR_ALLOW_ALL_PACKAGES_KEY = "cross_profile_calendar_allow_all_packages";
    private static final String CROSS_PROFILE_CALENDAR_SET_ALLOWED_PACKAGES_KEY = "cross_profile_calendar_set_allowed_packages";
    private android.content.ComponentName mAdminComponentName;
    private com.afwsamples.testdpc.common.preference.DpcSwitchPreference mAllowAllPackagesPreference;
    private android.app.admin.DevicePolicyManager mDevicePolicyManager;
    private com.afwsamples.testdpc.common.preference.DpcPreference mSetAllowedPackagesPreference;

    public CrossProfileCalendarFragment()
    {
        return;
    }

    private void reloadAllowAllPackagesUi()
    {
        com.afwsamples.testdpc.common.preference.DpcPreference v1_2;
        int v2 = 1;
        if (this.mDevicePolicyManager.getCrossProfileCalendarPackages(this.mAdminComponentName) != null) {
            v1_2 = 0;
        } else {
            v1_2 = 1;
        }
        this.mAllowAllPackagesPreference.setChecked(v1_2);
        if (this.mAllowAllPackagesPreference.isChecked()) {
            v2 = 0;
        }
        this.mSetAllowedPackagesPreference.setEnabled(v2);
        return;
    }

    private void showSetPackagesDialog()
    {
        if ((this.getActivity() != null) && (!this.getActivity().isFinishing())) {
            android.view.View v0 = this.getActivity().getLayoutInflater().inflate(2131427446, 0);
            android.widget.EditText v1_1 = ((android.widget.EditText) v0.findViewById(2131296472));
            v1_1.setText(String.join(",", this.mDevicePolicyManager.getCrossProfileCalendarPackages(this.mAdminComponentName)));
            new android.app.AlertDialog$Builder(this.getActivity()).setTitle(2131689658).setView(v0).setPositiveButton(17039370, new com.afwsamples.testdpc.policy.CrossProfileCalendarFragment$$Lambda$0(this, v1_1)).setNegativeButton(17039360, 0).show();
        }
        return;
    }

    public boolean isAvailable(android.content.Context p2)
    {
        return 1;
    }

    final synthetic void lambda$showSetPackagesDialog$188$CrossProfileCalendarFragment(android.widget.EditText p5, android.content.DialogInterface p6, int p7)
    {
        android.util.ArraySet v0_0;
        String v1 = p5.getText().toString();
        if (!v1.isEmpty()) {
            v0_0 = new android.util.ArraySet(java.util.Arrays.asList(v1.replace(" ", "").split(",")));
        } else {
            v0_0 = java.util.Collections.emptySet();
        }
        this.mDevicePolicyManager.setCrossProfileCalendarPackages(this.mAdminComponentName, v0_0);
        return;
    }

    public void onCreate(android.os.Bundle p3)
    {
        this.mDevicePolicyManager = ((android.app.admin.DevicePolicyManager) this.getActivity().getSystemService(android.app.admin.DevicePolicyManager));
        this.mAdminComponentName = com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this.getActivity());
        this.getActivity().getActionBar().setTitle(2131689655);
        super.onCreate(p3);
        return;
    }

    public void onCreatePreferences(android.os.Bundle p2, String p3)
    {
        this.addPreferencesFromResource(2131886081);
        this.mSetAllowedPackagesPreference = ((com.afwsamples.testdpc.common.preference.DpcPreference) this.findPreference("cross_profile_calendar_set_allowed_packages"));
        this.mSetAllowedPackagesPreference.setOnPreferenceClickListener(this);
        this.mAllowAllPackagesPreference = ((com.afwsamples.testdpc.common.preference.DpcSwitchPreference) this.findPreference("cross_profile_calendar_allow_all_packages"));
        this.mAllowAllPackagesPreference.setOnPreferenceChangeListener(this);
        this.reloadAllowAllPackagesUi();
        return;
    }

    public boolean onPreferenceChange(androidx.preference.Preference p6, Object p7)
    {
        String v0 = p6.getKey();
        java.util.Set v1_0 = -1;
        switch (v0.hashCode()) {
            case 1871564685:
                if (!v0.equals("cross_profile_calendar_allow_all_packages")) {
                } else {
                    v1_0 = 0;
                }
                break;
        }
        switch (v1_0) {
            case 0:
                java.util.Set v1_4;
                android.app.admin.DevicePolicyManager v3_0 = this.mDevicePolicyManager;
                android.content.ComponentName v4 = this.mAdminComponentName;
                if (!p7.equals(Boolean.valueOf(1))) {
                    v1_4 = java.util.Collections.emptySet();
                } else {
                    v1_4 = 0;
                }
                v3_0.setCrossProfileCalendarPackages(v4, v1_4);
                this.reloadAllowAllPackagesUi();
                break;
        }
        return 0;
    }

    public boolean onPreferenceClick(androidx.preference.Preference p5)
    {
        int v1 = 0;
        String v0 = p5.getKey();
        int v2 = -1;
        switch (v0.hashCode()) {
            case -1547502227:
                if (!v0.equals("cross_profile_calendar_set_allowed_packages")) {
                } else {
                    v2 = 0;
                }
                break;
        }
        switch (v2) {
            case 0:
                this.showSetPackagesDialog();
                v1 = 1;
                break;
        }
        return v1;
    }
}
