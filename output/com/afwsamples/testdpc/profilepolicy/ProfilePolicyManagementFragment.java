package com.afwsamples.testdpc.profilepolicy;
public class ProfilePolicyManagementFragment extends com.afwsamples.testdpc.common.BaseSearchablePolicyPreferenceFragment implements androidx.preference.Preference$OnPreferenceClickListener, androidx.preference.Preference$OnPreferenceChangeListener, com.afwsamples.testdpc.common.ColorPicker$OnColorSelectListener {
    private static final String ADD_CROSS_PROFILE_APP_WIDGETS_KEY = "add_cross_profile_app_widgets";
    private static final String ADD_CROSS_PROFILE_INTENT_FILTER_PREFERENCE_KEY = "add_cross_profile_intent_filter";
    private static final String CLEAR_CROSS_PROFILE_INTENT_FILTERS_PREFERENCE_KEY = "clear_cross_profile_intent_filters";
    private static final String DISABLE_BLUETOOTH_CONTACT_SHARING_KEY = "disable_bluetooth_contact_sharing";
    private static final String DISABLE_CROSS_PROFILE_CALLER_ID_KEY = "disable_cross_profile_caller_id";
    private static final String DISABLE_CROSS_PROFILE_CONTACTS_SEARCH_KEY = "disable_cross_profile_contacts_search";
    public static final String FRAGMENT_TAG = "ProfilePolicyManagementFragment";
    private static final String ORGANIZATION_COLOR_ID = "organizationColor";
    private static final String REMOVE_CROSS_PROFILE_APP_WIDGETS_KEY = "remove_cross_profile_app_widgets";
    private static final String REMOVE_PROFILE_KEY = "remove_profile";
    private static final String SET_ORGANIZATION_COLOR_KEY = "set_organization_color";
    private static final String SET_PROFILE_ORGANIZATION_NAME_KEY = "set_profile_organization_name";
    private androidx.preference.Preference mAddCrossProfileAppWidgetsPreference;
    private androidx.preference.Preference mAddCrossProfileIntentFilterPreference;
    private android.content.ComponentName mAdminComponentName;
    private androidx.preference.Preference mClearCrossProfileIntentFiltersPreference;
    private android.app.admin.DevicePolicyManager mDevicePolicyManager;
    private androidx.preference.SwitchPreference mDisableBluetoothContactSharingSwitchPreference;
    private androidx.preference.SwitchPreference mDisableCrossProfileCallerIdSwitchPreference;
    private androidx.preference.SwitchPreference mDisableCrossProfileContactsSearchSwitchPreference;
    private androidx.preference.Preference mRemoveCrossProfileAppWidgetsPreference;
    private androidx.preference.Preference mRemoveManagedProfilePreference;
    private androidx.preference.Preference mSetOrganizationColorPreference;
    private androidx.preference.Preference mSetOrganizationNamePreference;

    public ProfilePolicyManagementFragment()
    {
        return;
    }

    static synthetic android.content.ComponentName access$000(com.afwsamples.testdpc.profilepolicy.ProfilePolicyManagementFragment p1)
    {
        return p1.mAdminComponentName;
    }

    static synthetic android.app.admin.DevicePolicyManager access$100(com.afwsamples.testdpc.profilepolicy.ProfilePolicyManagementFragment p1)
    {
        return p1.mDevicePolicyManager;
    }

    static synthetic void access$200(com.afwsamples.testdpc.profilepolicy.ProfilePolicyManagementFragment p0, String p1)
    {
        p0.showToast(p1);
        return;
    }

    private void initSwitchPreferences()
    {
        this.mDisableBluetoothContactSharingSwitchPreference = ((androidx.preference.SwitchPreference) this.findPreference("disable_bluetooth_contact_sharing"));
        this.mDisableCrossProfileCallerIdSwitchPreference = ((androidx.preference.SwitchPreference) this.findPreference("disable_cross_profile_caller_id"));
        this.mDisableCrossProfileContactsSearchSwitchPreference = ((androidx.preference.SwitchPreference) this.findPreference("disable_cross_profile_contacts_search"));
        this.mDisableBluetoothContactSharingSwitchPreference.setOnPreferenceChangeListener(this);
        this.mDisableCrossProfileCallerIdSwitchPreference.setOnPreferenceChangeListener(this);
        this.mDisableCrossProfileContactsSearchSwitchPreference.setOnPreferenceChangeListener(this);
        this.reloadBluetoothContactSharing();
        this.reloadCrossProfileCallerIdDisableUi();
        return;
    }

    private void initializeOrganizationInfoPreferences()
    {
        this.mSetOrganizationColorPreference = this.findPreference("set_organization_color");
        this.mSetOrganizationNamePreference = this.findPreference("set_profile_organization_name");
        if (this.mSetOrganizationColorPreference.isEnabled()) {
            this.mSetOrganizationColorPreference.setOnPreferenceClickListener(this);
            androidx.preference.Preference v3_4 = this.mSetOrganizationColorPreference;
            Object[] v5_1 = new Object[1];
            v5_1[0] = Integer.valueOf(this.mDevicePolicyManager.getOrganizationColor(this.mAdminComponentName));
            v3_4.setSummary(String.format("#%08x", v5_1));
        }
        if (this.mSetOrganizationNamePreference.isEnabled()) {
            int v1;
            this.mSetOrganizationNamePreference.setOnPreferenceChangeListener(this);
            CharSequence v2 = this.mDevicePolicyManager.getOrganizationName(this.mAdminComponentName);
            if (v2 == null) {
                v1 = 0;
            } else {
                v1 = v2.toString();
            }
            this.mSetOrganizationNamePreference.setSummary(v1);
        }
        return;
    }

    private void reloadBluetoothContactSharing()
    {
        if (this.mDisableBluetoothContactSharingSwitchPreference.isEnabled()) {
            this.mDisableBluetoothContactSharingSwitchPreference.setChecked(this.mDevicePolicyManager.getBluetoothContactSharingDisabled(this.mAdminComponentName));
        }
        return;
    }

    private void reloadCrossProfileCallerIdDisableUi()
    {
        if (this.mDisableCrossProfileCallerIdSwitchPreference.isEnabled()) {
            this.mDisableCrossProfileCallerIdSwitchPreference.setChecked(this.mDevicePolicyManager.getCrossProfileCallerIdDisabled(this.mAdminComponentName));
        }
        return;
    }

    private void reloadCrossProfileContactsSearchDisableUi()
    {
        if (this.mDisableCrossProfileContactsSearchSwitchPreference.isEnabled()) {
            this.mDisableCrossProfileContactsSearchSwitchPreference.setChecked(this.mDevicePolicyManager.getCrossProfileContactsSearchDisabled(this.mAdminComponentName));
        }
        return;
    }

    private void showAddCrossProfileIntentFilterFragment()
    {
        this.getFragmentManager().beginTransaction().addToBackStack(com.afwsamples.testdpc.profilepolicy.ProfilePolicyManagementFragment.getName()).replace(2131296376, new com.afwsamples.testdpc.profilepolicy.crossprofileintentfilter.AddCrossProfileIntentFilterFragment()).commit();
        return;
    }

    private void showDisabledAppWidgetList()
    {
        if ((this.getActivity() != null) && (!this.getActivity().isFinishing())) {
            java.util.List v2 = com.afwsamples.testdpc.profilepolicy.crossprofilewidgetprovider.ManageCrossProfileWidgetProviderUtil.getInstance(this.getActivity()).getDisabledCrossProfileWidgetProvidersList();
            if (!v2.isEmpty()) {
                com.afwsamples.testdpc.common.AppInfoArrayAdapter v0_1 = new com.afwsamples.testdpc.common.AppInfoArrayAdapter(this.getActivity(), 2131427362, v2);
                android.app.AlertDialog$Builder v1_1 = new android.app.AlertDialog$Builder(this.getActivity());
                v1_1.setTitle(this.getString(2131689528));
                v1_1.setAdapter(v0_1, new com.afwsamples.testdpc.profilepolicy.ProfilePolicyManagementFragment$1(this, v2));
                v1_1.show();
            } else {
                this.showToast(2131689539);
            }
        }
        return;
    }

    private void showEnabledAppWidgetList()
    {
        if ((this.getActivity() != null) && (!this.getActivity().isFinishing())) {
            java.util.List v2 = this.mDevicePolicyManager.getCrossProfileWidgetProviders(this.mAdminComponentName);
            if (!v2.isEmpty()) {
                com.afwsamples.testdpc.common.AppInfoArrayAdapter v0_1 = new com.afwsamples.testdpc.common.AppInfoArrayAdapter(this.getActivity(), 2131427362, v2);
                android.app.AlertDialog$Builder v1_1 = new android.app.AlertDialog$Builder(this.getActivity());
                v1_1.setTitle(this.getString(2131690107));
                v1_1.setAdapter(v0_1, new com.afwsamples.testdpc.profilepolicy.ProfilePolicyManagementFragment$2(this, v2));
                v1_1.show();
            } else {
                this.showToast(2131689538);
            }
        }
        return;
    }

    private void showToast(int p3)
    {
        android.app.Activity v0 = this.getActivity();
        if ((v0 != null) && (!v0.isFinishing())) {
            android.widget.Toast.makeText(v0, p3, 0).show();
        }
        return;
    }

    private void showToast(String p3)
    {
        android.app.Activity v0 = this.getActivity();
        if ((v0 != null) && (!v0.isFinishing())) {
            android.widget.Toast.makeText(v0, p3, 0).show();
        }
        return;
    }

    public boolean isAvailable(android.content.Context p2)
    {
        return com.afwsamples.testdpc.common.Util.isManagedProfileOwner(p2);
    }

    public void onColorSelected(int p6, String p7)
    {
        if ("organizationColor".equals(p7)) {
            this.mDevicePolicyManager.setOrganizationColor(this.mAdminComponentName, p6);
            androidx.preference.Preference v0_3 = this.mSetOrganizationColorPreference;
            Object[] v2_0 = new Object[1];
            v2_0[0] = Integer.valueOf(p6);
            v0_3.setSummary(String.format("#%08x", v2_0));
        }
        return;
    }

    public void onCreate(android.os.Bundle p3)
    {
        this.mAdminComponentName = com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this.getActivity());
        this.mDevicePolicyManager = ((android.app.admin.DevicePolicyManager) this.getActivity().getSystemService("device_policy"));
        super.onCreate(p3);
        return;
    }

    public void onCreatePreferences(android.os.Bundle p2, String p3)
    {
        this.addPreferencesFromResource(2131886089);
        this.mAddCrossProfileIntentFilterPreference = this.findPreference("add_cross_profile_intent_filter");
        this.mAddCrossProfileIntentFilterPreference.setOnPreferenceClickListener(this);
        this.mClearCrossProfileIntentFiltersPreference = this.findPreference("clear_cross_profile_intent_filters");
        this.mClearCrossProfileIntentFiltersPreference.setOnPreferenceClickListener(this);
        this.mRemoveManagedProfilePreference = this.findPreference("remove_profile");
        this.mRemoveManagedProfilePreference.setOnPreferenceClickListener(this);
        this.mAddCrossProfileAppWidgetsPreference = this.findPreference("add_cross_profile_app_widgets");
        this.mAddCrossProfileAppWidgetsPreference.setOnPreferenceClickListener(this);
        this.mRemoveCrossProfileAppWidgetsPreference = this.findPreference("remove_cross_profile_app_widgets");
        this.mRemoveCrossProfileAppWidgetsPreference.setOnPreferenceClickListener(this);
        this.initSwitchPreferences();
        this.initializeOrganizationInfoPreferences();
        return;
    }

    public boolean onPreferenceChange(androidx.preference.Preference p9, Object p10)
    {
        int v4_0 = 0;
        String v3 = p9.getKey();
        int v6_0 = -1;
        switch (v3.hashCode()) {
            case -755677340:
                if (!v3.equals("set_profile_organization_name")) {
                } else {
                    v6_0 = 3;
                }
                break;
            case -461160043:
                if (!v3.equals("disable_bluetooth_contact_sharing")) {
                } else {
                    v6_0 = 0;
                }
                break;
            case 42729635:
                if (!v3.equals("disable_cross_profile_caller_id")) {
                } else {
                    v6_0 = 1;
                }
                break;
            case 1658562152:
                if (!v3.equals("disable_cross_profile_contacts_search")) {
                } else {
                    v6_0 = 2;
                }
                break;
        }
        switch (v6_0) {
            case 0:
                this.mDevicePolicyManager.setBluetoothContactSharingDisabled(this.mAdminComponentName, ((Boolean) p10).booleanValue());
                this.reloadBluetoothContactSharing();
                v4_0 = 1;
                break;
            case 1:
                this.mDevicePolicyManager.setCrossProfileCallerIdDisabled(this.mAdminComponentName, ((Boolean) p10).booleanValue());
                this.reloadCrossProfileCallerIdDisableUi();
                v4_0 = 1;
                break;
            case 2:
                this.mDevicePolicyManager.setCrossProfileContactsSearchDisabled(this.mAdminComponentName, ((Boolean) p10).booleanValue());
                this.reloadCrossProfileContactsSearchDisableUi();
                v4_0 = 1;
                break;
            case 3:
                this.mDevicePolicyManager.setOrganizationName(this.mAdminComponentName, ((String) p10));
                this.mSetOrganizationNamePreference.setSummary(((String) p10));
                v4_0 = 1;
                break;
        }
        return v4_0;
    }

    public boolean onPreferenceClick(androidx.preference.Preference p8)
    {
        IllegalArgumentException v3_0 = 1;
        String v1 = p8.getKey();
        android.app.FragmentManager v5_0 = -1;
        switch (v1.hashCode()) {
            case -2017744812:
                if (!v1.equals("set_organization_color")) {
                } else {
                    v5_0 = 5;
                }
                break;
            case -694718370:
                if (!v1.equals("add_cross_profile_app_widgets")) {
                } else {
                    v5_0 = 3;
                }
                break;
            case 389702894:
                if (!v1.equals("remove_profile")) {
                } else {
                    v5_0 = 2;
                }
                break;
            case 918748424:
                if (!v1.equals("add_cross_profile_intent_filter")) {
                } else {
                    v5_0 = 0;
                }
                break;
            case 1197528639:
                if (!v1.equals("clear_cross_profile_intent_filters")) {
                } else {
                    v5_0 = 1;
                }
                break;
            case 1876036225:
                if (!v1.equals("remove_cross_profile_app_widgets")) {
                } else {
                    v5_0 = 4;
                }
                break;
        }
        switch (v5_0) {
            case 0:
                this.showAddCrossProfileIntentFilterFragment();
                break;
            case 1:
                this.mDevicePolicyManager.clearCrossProfileIntentFilters(this.mAdminComponentName);
                this.showToast(2131689659);
                break;
            case 2:
                this.mRemoveManagedProfilePreference.setEnabled(0);
                this.mDevicePolicyManager.wipeData(0);
                this.showToast(2131690118);
                this.getActivity().finish();
            case 3:
                this.showDisabledAppWidgetList();
                break;
            case 4:
                this.showEnabledAppWidgetList();
                break;
            case 5:
                int v0 = this.getActivity().getResources().getColor(2131099766);
                CharSequence v2 = this.mSetOrganizationColorPreference.getSummary();
                if (v2 != null) {
                    try {
                        v0 = android.graphics.Color.parseColor(v2.toString());
                    } catch (IllegalArgumentException v3) {
                    }
                }
                com.afwsamples.testdpc.common.ColorPicker.newInstance(v0, "ProfilePolicyManagementFragment", "organizationColor").show(this.getFragmentManager(), "colorPicker");
                v3_0 = 0;
                break;
            default:
        }
        return v3_0;
    }

    public void onResume()
    {
        super.onResume();
        this.getActivity().getActionBar().setTitle(2131690085);
        if (!this.isAvailable(this.getActivity())) {
            this.showToast(2131690254);
            this.getActivity().finish();
        }
        return;
    }
}
