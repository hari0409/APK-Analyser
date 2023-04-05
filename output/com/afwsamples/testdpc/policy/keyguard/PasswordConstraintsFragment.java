package com.afwsamples.testdpc.policy.keyguard;
public final class PasswordConstraintsFragment extends com.afwsamples.testdpc.common.ProfileOrParentFragment implements androidx.preference.Preference$OnPreferenceChangeListener {
    private static final java.util.TreeMap PASSWORD_QUALITIES;
    private com.afwsamples.testdpc.common.preference.DpcPreferenceBase mMinLength;
    private com.afwsamples.testdpc.common.preference.DpcPreferenceBase mMinLetters;
    private com.afwsamples.testdpc.common.preference.DpcPreferenceBase mMinLower;
    private com.afwsamples.testdpc.common.preference.DpcPreferenceBase mMinNonLetter;
    private com.afwsamples.testdpc.common.preference.DpcPreferenceBase mMinNumeric;
    private com.afwsamples.testdpc.common.preference.DpcPreferenceBase mMinSymbols;
    private com.afwsamples.testdpc.common.preference.DpcPreferenceBase mMinUpper;

    static PasswordConstraintsFragment()
    {
        com.afwsamples.testdpc.policy.keyguard.PasswordConstraintsFragment.PASSWORD_QUALITIES = new java.util.TreeMap();
        int[] v1 = new int[7];
        v1 = {0, 65536, 131072, 196608, 262144, 327680, 393216};
        int[] v2 = new int[7];
        v2 = {2131690056, 2131690055, 2131690053, 2131690054, 2131690050, 2131690051, 2131690052};
        if (v1.length == v2.length) {
            int v0 = 0;
            while (v0 < v1.length) {
                com.afwsamples.testdpc.policy.keyguard.PasswordConstraintsFragment.PASSWORD_QUALITIES.put(Integer.valueOf(v1[v0]), Integer.valueOf(v2[v0]));
                v0++;
            }
            return;
        } else {
            throw new AssertionError("Number of items in policyIds and policyNames do not match");
        }
    }

    public PasswordConstraintsFragment()
    {
        return;
    }

    private void refreshPreferences()
    {
        this.mMinLength.refreshEnabledState();
        this.mMinLetters.refreshEnabledState();
        this.mMinNumeric.refreshEnabledState();
        this.mMinLower.refreshEnabledState();
        this.mMinUpper.refreshEnabledState();
        this.mMinSymbols.refreshEnabledState();
        this.mMinNonLetter.refreshEnabledState();
        return;
    }

    private void setPreferencesConstraint()
    {
        this.mMinLength.setCustomConstraint(new com.afwsamples.testdpc.policy.keyguard.PasswordConstraintsFragment$$Lambda$2(this));
        com.afwsamples.testdpc.policy.keyguard.PasswordConstraintsFragment$$Lambda$3 v0_1 = new com.afwsamples.testdpc.policy.keyguard.PasswordConstraintsFragment$$Lambda$3(this);
        this.mMinLetters.setCustomConstraint(v0_1);
        this.mMinNumeric.setCustomConstraint(v0_1);
        this.mMinLower.setCustomConstraint(v0_1);
        this.mMinUpper.setCustomConstraint(v0_1);
        this.mMinSymbols.setCustomConstraint(v0_1);
        this.mMinNonLetter.setCustomConstraint(v0_1);
        return;
    }

    private void setup(String p6, Object p7)
    {
        androidx.preference.Preference v0 = this.findPreference(p6);
        v0.setOnPreferenceChangeListener(this);
        if (p7 != null) {
            String v2 = p7.toString();
            CharSequence v3 = v2;
            if (!(v0 instanceof androidx.preference.EditTextPreference)) {
                if ((v0 instanceof androidx.preference.ListPreference)) {
                    androidx.preference.ListPreference v1_1 = ((androidx.preference.ListPreference) v0);
                    v1_1.setValue(v2);
                    v3 = v1_1.getEntry();
                }
            } else {
                ((androidx.preference.EditTextPreference) v0).setText(v2);
            }
            v0.setSummary(v3);
        }
        return;
    }

    private void updateExpirationTimes()
    {
        androidx.preference.Preference v0 = this.findPreference("password_expiration_time");
        androidx.preference.Preference v1 = this.findPreference("password_expiration_aggregate");
        v0.setSummary(com.afwsamples.testdpc.common.Util.formatTimestamp(this.getDpm().getPasswordExpiration(this.getAdmin())));
        v1.setSummary(com.afwsamples.testdpc.common.Util.formatTimestamp(this.getDpm().getPasswordExpiration(0)));
        return;
    }

    public boolean isAvailable(android.content.Context p2)
    {
        return 1;
    }

    final synthetic void lambda$onPreferenceChange$205$PasswordConstraintsFragment(Void p2)
    {
        this.onSuccessLog("setPasswordQuality");
        return;
    }

    final synthetic void lambda$onPreferenceChange$206$PasswordConstraintsFragment(Exception p2)
    {
        this.onErrorLog("setPasswordQuality", p2);
        return;
    }

    final synthetic int lambda$setPreferencesConstraint$207$PasswordConstraintsFragment()
    {
        int v0_2;
        if (this.getDpmGateway().getPasswordQuality() < 131072) {
            v0_2 = 2131689994;
        } else {
            v0_2 = 0;
        }
        return v0_2;
    }

    final synthetic int lambda$setPreferencesConstraint$208$PasswordConstraintsFragment()
    {
        int v0_2;
        if (this.getDpmGateway().getPasswordQuality() != 393216) {
            v0_2 = 2131689994;
        } else {
            v0_2 = 0;
        }
        return v0_2;
    }

    public void onCreate(android.os.Bundle p3)
    {
        this.getActivity().getActionBar().setTitle(2131690033);
        super.onCreate(p3);
        return;
    }

    public void onCreatePreferences(android.os.Bundle p8, String p9)
    {
        this.addPreferencesFromResource(2131886088);
        this.mMinLength = ((com.afwsamples.testdpc.common.preference.DpcPreferenceBase) this.findPreference("password_min_length"));
        this.mMinLetters = ((com.afwsamples.testdpc.common.preference.DpcPreferenceBase) this.findPreference("password_min_letters"));
        this.mMinNumeric = ((com.afwsamples.testdpc.common.preference.DpcPreferenceBase) this.findPreference("password_min_numeric"));
        this.mMinLower = ((com.afwsamples.testdpc.common.preference.DpcPreferenceBase) this.findPreference("password_min_lowercase"));
        this.mMinUpper = ((com.afwsamples.testdpc.common.preference.DpcPreferenceBase) this.findPreference("password_min_uppercase"));
        this.mMinSymbols = ((com.afwsamples.testdpc.common.preference.DpcPreferenceBase) this.findPreference("password_min_symbols"));
        this.mMinNonLetter = ((com.afwsamples.testdpc.common.preference.DpcPreferenceBase) this.findPreference("password_min_nonletter"));
        java.util.ArrayList v0_1 = new java.util.ArrayList();
        java.util.ArrayList v3_1 = new java.util.ArrayList();
        Integer v5_18 = com.afwsamples.testdpc.policy.keyguard.PasswordConstraintsFragment.PASSWORD_QUALITIES.entrySet().iterator();
        while (v5_18.hasNext()) {
            java.util.Map$Entry v1_1 = ((java.util.Map$Entry) v5_18.next());
            v3_1.add(Integer.toString(((Integer) v1_1.getKey()).intValue()));
            v0_1.add(this.getString(((Integer) v1_1.getValue()).intValue()));
        }
        androidx.preference.ListPreference v2_1 = ((androidx.preference.ListPreference) this.findPreference("minimum_password_quality"));
        String v4_37 = new CharSequence[0];
        v2_1.setEntries(((CharSequence[]) v0_1.toArray(v4_37)));
        String v4_40 = new CharSequence[0];
        v2_1.setEntryValues(((CharSequence[]) v3_1.toArray(v4_40)));
        this.setup("password_expiration_time", 0);
        this.setup("password_history_length", Integer.valueOf(this.getDpm().getPasswordHistoryLength(this.getAdmin())));
        this.setup("minimum_password_quality", com.afwsamples.testdpc.policy.keyguard.PasswordConstraintsFragment.PASSWORD_QUALITIES.floorKey(Integer.valueOf(this.getDpmGateway().getPasswordQuality())));
        this.setup("password_min_length", Integer.valueOf(this.getDpm().getPasswordMinimumLength(this.getAdmin())));
        this.setup("password_min_letters", Integer.valueOf(this.getDpm().getPasswordMinimumLetters(this.getAdmin())));
        this.setup("password_min_numeric", Integer.valueOf(this.getDpm().getPasswordMinimumNumeric(this.getAdmin())));
        this.setup("password_min_lowercase", Integer.valueOf(this.getDpm().getPasswordMinimumLowerCase(this.getAdmin())));
        this.setup("password_min_uppercase", Integer.valueOf(this.getDpm().getPasswordMinimumUpperCase(this.getAdmin())));
        this.setup("password_min_symbols", Integer.valueOf(this.getDpm().getPasswordMinimumSymbols(this.getAdmin())));
        this.setup("password_min_nonletter", Integer.valueOf(this.getDpm().getPasswordMinimumNonLetter(this.getAdmin())));
        this.setPreferencesConstraint();
        return;
    }

    public boolean onPreferenceChange(androidx.preference.Preference p13, Object p14)
    {
        if ((!(p14 instanceof String)) || (((String) p14).length() == 0)) {
            int v5 = 0;
            CharSequence v4 = p14.toString();
            com.afwsamples.testdpc.policy.keyguard.PasswordConstraintsFragment$$Lambda$1 v9_3 = p13.getKey();
            int v6_12 = -1;
            switch (v9_3.hashCode()) {
                case -1673593220:
                    if (!v9_3.equals("password_min_numeric")) {
                    } else {
                        v6_12 = 5;
                    }
                    break;
                case -1416617654:
                    if (!v9_3.equals("password_min_symbols")) {
                    } else {
                        v6_12 = 8;
                    }
                    break;
                case -736000148:
                    if (!v9_3.equals("minimum_password_quality")) {
                    } else {
                        v6_12 = 2;
                    }
                    break;
                case 27591008:
                    if (!v9_3.equals("password_min_lowercase")) {
                    } else {
                        v6_12 = 6;
                    }
                    break;
                case 151104919:
                    if (!v9_3.equals("password_min_length")) {
                    } else {
                        v6_12 = 3;
                    }
                    break;
                case 395199612:
                    if (!v9_3.equals("password_min_letters")) {
                    } else {
                        v6_12 = 4;
                    }
                    break;
                case 765621889:
                    if (!v9_3.equals("password_min_uppercase")) {
                    } else {
                        v6_12 = 7;
                    }
                    break;
                case 998936761:
                    if (!v9_3.equals("password_expiration_time")) {
                    } else {
                        v6_12 = 0;
                    }
                    break;
                case 1221365525:
                    if (!v9_3.equals("password_history_length")) {
                    } else {
                        v6_12 = 1;
                    }
                    break;
                case 1498973410:
                    if (!v9_3.equals("password_min_nonletter")) {
                    } else {
                        v6_12 = 9;
                    }
                    break;
            }
            int v6_7;
            switch (v6_12) {
                case 0:
                    this.getDpm().setPasswordExpirationTimeout(this.getAdmin(), java.util.concurrent.TimeUnit.SECONDS.toMillis(((long) v5)));
                    this.updateExpirationTimes();
                    v6_7 = 1;
                    break;
                case 1:
                    this.getDpm().setPasswordHistoryLength(this.getAdmin(), v5);
                    break;
                case 2:
                    ((androidx.preference.ListPreference) p13).setValue(((String) p14));
                    v4 = ((androidx.preference.ListPreference) p13).getEntry();
                    this.getDpmGateway().setPasswordQuality(v5, new com.afwsamples.testdpc.policy.keyguard.PasswordConstraintsFragment$$Lambda$0(this), new com.afwsamples.testdpc.policy.keyguard.PasswordConstraintsFragment$$Lambda$1(this));
                    this.refreshPreferences();
                    break;
                case 3:
                    this.getDpm().setPasswordMinimumLength(this.getAdmin(), v5);
                    break;
                case 4:
                    this.getDpm().setPasswordMinimumLetters(this.getAdmin(), v5);
                    break;
                case 5:
                    this.getDpm().setPasswordMinimumNumeric(this.getAdmin(), v5);
                    break;
                case 6:
                    this.getDpm().setPasswordMinimumLowerCase(this.getAdmin(), v5);
                    break;
                case 7:
                    this.getDpm().setPasswordMinimumUpperCase(this.getAdmin(), v5);
                    break;
                case 8:
                    this.getDpm().setPasswordMinimumSymbols(this.getAdmin(), v5);
                    break;
                case 9:
                    this.getDpm().setPasswordMinimumNonLetter(this.getAdmin(), v5);
                    break;
                default:
                    v6_7 = 0;
            }
            p13.setSummary(v4);
            com.afwsamples.testdpc.DeviceAdminReceiver.sendPasswordRequirementsChanged(this.getActivity());
            v6_7 = 1;
        } else {
            try {
                v5 = Integer.parseInt(((String) p14));
            } catch (NumberFormatException v2) {
                android.widget.Toast.makeText(this.getActivity(), 2131689996, 0).show();
                v6_7 = 0;
            }
        }
        return v6_7;
    }

    public void onResume()
    {
        super.onResume();
        this.updateExpirationTimes();
        return;
    }
}
