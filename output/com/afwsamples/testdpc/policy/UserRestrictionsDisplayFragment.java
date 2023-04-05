package com.afwsamples.testdpc.policy;
public class UserRestrictionsDisplayFragment extends com.afwsamples.testdpc.common.BaseSearchablePolicyPreferenceFragment implements androidx.preference.Preference$OnPreferenceChangeListener {
    private static final String TAG = "UserRestrictions";
    private com.afwsamples.testdpc.DevicePolicyManagerGateway mDevicePolicyManagerGateway;

    public UserRestrictionsDisplayFragment()
    {
        return;
    }

    private void constrainPreferences()
    {
        int v2 = 0;
        int v4_0 = com.afwsamples.testdpc.policy.UserRestriction.MNC_PLUS_RESTRICTIONS;
        int v5_3 = v4_0.length;
        String[] v3_2 = 0;
        while (v3_2 < v5_3) {
            ((com.afwsamples.testdpc.common.preference.DpcPreferenceBase) this.findPreference(v4_0[v3_2])).setMinSdkVersion(23);
            v3_2++;
        }
        int v4_8 = com.afwsamples.testdpc.policy.UserRestriction.NYC_PLUS_RESTRICTIONS;
        int v5_9 = v4_8.length;
        String[] v3_0 = 0;
        while (v3_0 < v5_9) {
            ((com.afwsamples.testdpc.common.preference.DpcPreferenceBase) this.findPreference(v4_8[v3_0])).setMinSdkVersion(24);
            v3_0++;
        }
        int v4_9 = com.afwsamples.testdpc.policy.UserRestriction.OC_PLUS_RESTRICTIONS;
        int v5_0 = v4_9.length;
        String[] v3_1 = 0;
        while (v3_1 < v5_0) {
            ((com.afwsamples.testdpc.common.preference.DpcPreferenceBase) this.findPreference(v4_9[v3_1])).setMinSdkVersion(26);
            v3_1++;
        }
        int v4_1 = com.afwsamples.testdpc.policy.UserRestriction.PIC_PLUS_RESTRICTIONS;
        int v5_1 = v4_1.length;
        String[] v3_3 = 0;
        while (v3_3 < v5_1) {
            ((com.afwsamples.testdpc.common.preference.DpcPreferenceBase) this.findPreference(v4_1[v3_3])).setMinSdkVersion(28);
            v3_3++;
        }
        int v4_2 = com.afwsamples.testdpc.policy.UserRestriction.QT_PLUS_RESTRICTIONS;
        int v5_2 = v4_2.length;
        String[] v3_4 = 0;
        while (v3_4 < v5_2) {
            ((com.afwsamples.testdpc.common.preference.DpcPreferenceBase) this.findPreference(v4_2[v3_4])).setMinSdkVersion(29);
            v3_4++;
        }
        int v4_3 = com.afwsamples.testdpc.policy.UserRestriction.SC_PLUS_RESTRICTIONS;
        int v5_4 = v4_3.length;
        String[] v3_5 = 0;
        while (v3_5 < v5_4) {
            ((com.afwsamples.testdpc.common.preference.DpcPreferenceBase) this.findPreference(v4_3[v3_5])).setMinSdkVersion(31);
            v3_5++;
        }
        int v4_4 = com.afwsamples.testdpc.policy.UserRestriction.PRIMARY_USER_ONLY_RESTRICTIONS;
        int v5_5 = v4_4.length;
        String[] v3_6 = 0;
        while (v3_6 < v5_5) {
            ((com.afwsamples.testdpc.common.preference.DpcPreferenceBase) this.findPreference(v4_4[v3_6])).setUserConstraint(1);
            v3_6++;
        }
        int v4_5 = com.afwsamples.testdpc.policy.UserRestriction.DEVICE_OWNER_ONLY_RESTRICTIONS;
        int v5_6 = v4_5.length;
        String[] v3_7 = 0;
        while (v3_7 < v5_6) {
            ((com.afwsamples.testdpc.common.preference.DpcPreferenceBase) this.findPreference(v4_5[v3_7])).setAdminConstraint(2);
            v3_7++;
        }
        int v4_6 = com.afwsamples.testdpc.policy.UserRestriction.MANAGED_PROFILE_ONLY_RESTRICTIONS;
        int v5_7 = v4_6.length;
        String[] v3_8 = 0;
        while (v3_8 < v5_7) {
            ((com.afwsamples.testdpc.common.preference.DpcPreferenceBase) this.findPreference(v4_6[v3_8])).setUserConstraint(4);
            v3_8++;
        }
        String[] v3_9 = com.afwsamples.testdpc.policy.UserRestriction.NON_MANAGED_PROFILE_RESTRICTIONS;
        int v4_7 = v3_9.length;
        while (v2 < v4_7) {
            ((com.afwsamples.testdpc.common.preference.DpcPreferenceBase) this.findPreference(v3_9[v2])).setUserConstraint(3);
            v2++;
        }
        return;
    }

    public static com.afwsamples.testdpc.policy.UserRestrictionsDisplayFragment newInstance()
    {
        return new com.afwsamples.testdpc.policy.UserRestrictionsDisplayFragment();
    }

    private void updateAllUserRestrictions()
    {
        com.afwsamples.testdpc.policy.UserRestriction[] v2 = com.afwsamples.testdpc.policy.UserRestriction.ALL_USER_RESTRICTIONS;
        int v3 = v2.length;
        int v1 = 0;
        while (v1 < v3) {
            this.updateUserRestriction(v2[v1].key);
            v1++;
        }
        return;
    }

    private void updateUserRestriction(String p4)
    {
        ((com.afwsamples.testdpc.common.preference.DpcSwitchPreference) this.findPreference(p4)).setChecked(this.mDevicePolicyManagerGateway.hasUserRestriction(p4));
        return;
    }

    public boolean isAvailable(android.content.Context p2)
    {
        return 1;
    }

    public void onCreate(android.os.Bundle p3)
    {
        this.mDevicePolicyManagerGateway = new com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl(this.getActivity());
        super.onCreate(p3);
        this.getActivity().getActionBar().setTitle(2131690361);
        return;
    }

    public void onCreatePreferences(android.os.Bundle p9, String p10)
    {
        androidx.preference.PreferenceScreen v2 = this.getPreferenceManager().createPreferenceScreen(this.getPreferenceManager().getContext());
        this.setPreferenceScreen(v2);
        android.content.Context v1 = this.getPreferenceManager().getContext();
        com.afwsamples.testdpc.policy.UserRestriction[] v5_0 = com.afwsamples.testdpc.policy.UserRestriction.ALL_USER_RESTRICTIONS;
        int v6 = v5_0.length;
        int v4_2 = 0;
        while (v4_2 < v6) {
            com.afwsamples.testdpc.policy.UserRestriction v3 = v5_0[v4_2];
            com.afwsamples.testdpc.common.preference.DpcSwitchPreference v0_1 = new com.afwsamples.testdpc.common.preference.DpcSwitchPreference(v1);
            v0_1.setTitle(v3.titleResId);
            v0_1.setKey(v3.key);
            v0_1.setOnPreferenceChangeListener(this);
            v2.addPreference(v0_1);
            v4_2++;
        }
        this.updateAllUserRestrictions();
        this.constrainPreferences();
        return;
    }

    public boolean onPreferenceChange(androidx.preference.Preference p9, Object p10)
    {
        int v3_0 = 1;
        String v2 = p9.getKey();
        boolean v1 = p10.equals(Boolean.valueOf(1));
        try {
            this.mDevicePolicyManagerGateway.setUserRestriction(v2, v1);
        } catch (SecurityException v0) {
            android.widget.Toast.makeText(this.getActivity(), 2131690360, 0).show();
            android.util.Log.e("UserRestrictions", new StringBuilder().append("Error occurred while updating user restriction: ").append(v2).toString(), v0);
            v3_0 = 0;
            return v3_0;
        }
        if ((!v1) && (("no_install_unknown_sources".equals(v2)) || ("no_install_unknown_sources_globally".equals(v2)))) {
            new android.app.AlertDialog$Builder(this.getActivity()).setMessage(2131689618).setPositiveButton(2131689619, 0).show();
        }
        this.updateUserRestriction(v2);
        if (!"no_unified_password".equals(v2)) {
            return v3_0;
        } else {
            com.afwsamples.testdpc.DeviceAdminReceiver.sendPasswordRequirementsChanged(this.getActivity());
            return v3_0;
        }
    }

    public void onResume()
    {
        super.onResume();
        this.updateAllUserRestrictions();
        return;
    }
}
