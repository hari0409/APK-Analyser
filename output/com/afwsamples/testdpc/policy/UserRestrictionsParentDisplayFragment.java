package com.afwsamples.testdpc.policy;
public class UserRestrictionsParentDisplayFragment extends com.afwsamples.testdpc.common.BaseSearchablePolicyPreferenceFragment implements androidx.preference.Preference$OnPreferenceChangeListener {
    private static final String TAG = "UserRestrictionsParent";
    private com.afwsamples.testdpc.DevicePolicyManagerGateway mDevicePolicyManagerGateway;

    public UserRestrictionsParentDisplayFragment()
    {
        return;
    }

    private void constrainPreferences()
    {
        String[] v3 = com.afwsamples.testdpc.policy.UserRestriction.PROFILE_OWNER_ORG_OWNED_RESTRICTIONS;
        int v4 = v3.length;
        int v2 = 0;
        while (v2 < v4) {
            ((com.afwsamples.testdpc.common.preference.DpcPreferenceBase) this.findPreference(v3[v2])).setMinSdkVersion(30);
            v2++;
        }
        return;
    }

    private void updateAllUserRestrictions()
    {
        com.afwsamples.testdpc.policy.UserRestriction[] v2 = com.afwsamples.testdpc.policy.UserRestriction.PROFILE_OWNER_ORG_DEVICE_RESTRICTIONS;
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
        ((com.afwsamples.testdpc.common.preference.DpcSwitchPreference) this.findPreference(p4)).setChecked(this.mDevicePolicyManagerGateway.getUserRestrictions().contains(p4));
        return;
    }

    public boolean isAvailable(android.content.Context p2)
    {
        return 1;
    }

    public void onCreate(android.os.Bundle p3)
    {
        this.mDevicePolicyManagerGateway = com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl.forParentProfile(this.getActivity());
        super.onCreate(p3);
        this.getActivity().getActionBar().setTitle(2131690361);
        return;
    }

    public void onCreatePreferences(android.os.Bundle p9, String p10)
    {
        androidx.preference.PreferenceScreen v2 = this.getPreferenceManager().createPreferenceScreen(this.getPreferenceManager().getContext());
        this.setPreferenceScreen(v2);
        android.content.Context v1 = this.getPreferenceManager().getContext();
        com.afwsamples.testdpc.policy.UserRestriction[] v5_0 = com.afwsamples.testdpc.policy.UserRestriction.PROFILE_OWNER_ORG_DEVICE_RESTRICTIONS;
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

    public boolean onPreferenceChange(androidx.preference.Preference p8, Object p9)
    {
        int v3_0 = 1;
        String v2 = p8.getKey();
        try {
            this.mDevicePolicyManagerGateway.setUserRestriction(v2, p9.equals(Boolean.valueOf(1)));
            this.updateUserRestriction(v2);
        } catch (SecurityException v0) {
            android.widget.Toast.makeText(this.getActivity(), 2131690360, 0).show();
            android.util.Log.e("UserRestrictionsParent", new StringBuilder().append("Error occurred while updating user restriction: ").append(v2).toString(), v0);
            v3_0 = 0;
        }
        return v3_0;
    }

    public void onResume()
    {
        super.onResume();
        this.updateAllUserRestrictions();
        return;
    }
}
