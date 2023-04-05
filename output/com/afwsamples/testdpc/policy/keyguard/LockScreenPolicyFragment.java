package com.afwsamples.testdpc.policy.keyguard;
public final class LockScreenPolicyFragment extends com.afwsamples.testdpc.common.ProfileOrParentFragment implements androidx.preference.Preference$OnPreferenceChangeListener, androidx.preference.Preference$OnPreferenceClickListener {
    private static final java.util.Map KEYGUARD_FEATURES;

    static LockScreenPolicyFragment()
    {
        com.afwsamples.testdpc.policy.keyguard.LockScreenPolicyFragment.KEYGUARD_FEATURES = new android.util.ArrayMap();
        com.afwsamples.testdpc.policy.keyguard.LockScreenPolicyFragment.KEYGUARD_FEATURES.put("keyguard_disable_secure_camera", Integer.valueOf(2));
        com.afwsamples.testdpc.policy.keyguard.LockScreenPolicyFragment.KEYGUARD_FEATURES.put("keyguard_disable_secure_notifications", Integer.valueOf(4));
        com.afwsamples.testdpc.policy.keyguard.LockScreenPolicyFragment.KEYGUARD_FEATURES.put("keyguard_disable_unredacted_notifications", Integer.valueOf(8));
        com.afwsamples.testdpc.policy.keyguard.LockScreenPolicyFragment.KEYGUARD_FEATURES.put("keyguard_disable_trust_agents", Integer.valueOf(16));
        com.afwsamples.testdpc.policy.keyguard.LockScreenPolicyFragment.KEYGUARD_FEATURES.put("keyguard_disable_face", Integer.valueOf(128));
        com.afwsamples.testdpc.policy.keyguard.LockScreenPolicyFragment.KEYGUARD_FEATURES.put("keyguard_disable_fingerprint", Integer.valueOf(32));
        com.afwsamples.testdpc.policy.keyguard.LockScreenPolicyFragment.KEYGUARD_FEATURES.put("keyguard_disable_iris", Integer.valueOf(256));
        com.afwsamples.testdpc.policy.keyguard.LockScreenPolicyFragment.KEYGUARD_FEATURES.put("keyguard_disable_remote_input", Integer.valueOf(64));
        return;
    }

    public LockScreenPolicyFragment()
    {
        return;
    }

    private void disableIncompatibleManagementOptionsInCurrentProfile()
    {
        if (com.afwsamples.testdpc.common.Util.SDK_INT < 23) {
            java.util.Iterator v2_1 = com.afwsamples.testdpc.policy.keyguard.LockScreenPolicyFragment.KEYGUARD_FEATURES.keySet().iterator();
            while (v2_1.hasNext()) {
                ((com.afwsamples.testdpc.common.preference.DpcPreferenceBase) this.findPreference(((String) v2_1.next()))).setAdminConstraint(2);
            }
        }
        return;
    }

    static final synthetic void lambda$setLockScreenMessage$200$LockScreenPolicyFragment(androidx.preference.Preference p0, String p1, Void p2)
    {
        p0.setSummary(p1);
        return;
    }

    private int parseInt(String p2)
    {
        int v0_1;
        if (p2.length() == 0) {
            v0_1 = 0;
        } else {
            v0_1 = Integer.parseInt(p2);
        }
        return v0_1;
    }

    private long parseLong(String p3)
    {
        long v0_1;
        if (p3.length() == 0) {
            v0_1 = 0;
        } else {
            v0_1 = Long.parseLong(p3);
        }
        return v0_1;
    }

    private void setLockScreenMessage(androidx.preference.Preference p4, String p5)
    {
        this.getDpmGateway().setDeviceOwnerLockScreenInfo(p5, new com.afwsamples.testdpc.policy.keyguard.LockScreenPolicyFragment$$Lambda$0(p4, p5), new com.afwsamples.testdpc.policy.keyguard.LockScreenPolicyFragment$$Lambda$1(this));
        return;
    }

    private void setup(String p6, Object p7)
    {
        androidx.preference.Preference v1 = this.findPreference(p6);
        com.afwsamples.testdpc.common.preference.DpcPreferenceBase v0_1 = ((com.afwsamples.testdpc.common.preference.DpcPreferenceBase) v1);
        v0_1.setCustomConstraint(new com.afwsamples.testdpc.policy.keyguard.LockScreenPolicyFragment$$Lambda$4(this, p6));
        if ((com.afwsamples.testdpc.common.Util.SDK_INT >= 24) || (!p6.equals("key_set_trust_agent_config"))) {
            if (!(v1 instanceof androidx.preference.EditTextPreference)) {
                if ((v1 instanceof androidx.preference.TwoStatePreference)) {
                    ((androidx.preference.TwoStatePreference) v1).setChecked(((Boolean) p7).booleanValue());
                }
            } else {
                int v2;
                if (p7 == null) {
                    v2 = 0;
                } else {
                    v2 = p7.toString();
                }
                if (((p7 instanceof Number)) && ("0".equals(v2))) {
                    v2 = 0;
                }
                ((androidx.preference.EditTextPreference) v1).setText(v2);
                v1.setSummary(v2);
            }
            v1.setOnPreferenceChangeListener(this);
            v1.setOnPreferenceClickListener(this);
        } else {
            v0_1.setAdminConstraint(2);
        }
        return;
    }

    private void setupAll()
    {
        String v1_1;
        Long v2_0 = 0;
        if ((com.afwsamples.testdpc.common.Util.SDK_INT < 24) || (!this.isDeviceOwner())) {
            v1_1 = 0;
        } else {
            v1_1 = this.getDpmGateway().getDeviceOwnerLockScreenInfo();
        }
        this.setup("key_lock_screen_message", v1_1);
        this.setup("key_max_fails_before_wipe", Integer.valueOf(this.getDpm().getMaximumFailedPasswordsForWipe(this.getAdmin())));
        this.setup("key_max_time_screen_lock", Long.valueOf(java.util.concurrent.TimeUnit.MILLISECONDS.toSeconds(this.getDpm().getMaximumTimeToLock(this.getAdmin()))));
        this.setup("key_set_trust_agent_config", 0);
        if (this.findPreference("key_strong_auth_timeout").isEnabled()) {
            v2_0 = Long.valueOf(java.util.concurrent.TimeUnit.MILLISECONDS.toSeconds(this.getDpm().getRequiredStrongAuthTimeout(this.getAdmin())));
        }
        this.setup("key_strong_auth_timeout", v2_0);
        return;
    }

    private void showSetTrustAgentFragment()
    {
        int v2;
        if (!this.isParentProfileInstance()) {
            v2 = 1;
        } else {
            v2 = 0;
        }
        com.afwsamples.testdpc.policy.keyguard.SetTrustAgentConfigFragment v1 = com.afwsamples.testdpc.policy.keyguard.SetTrustAgentConfigFragment.newInstance(v2);
        com.afwsamples.testdpc.policy.keyguard.LockScreenPolicyFragment v0 = this.getParentFragment();
        if (v0 == null) {
            v0 = this;
        }
        v0.getFragmentManager().beginTransaction().addToBackStack(com.afwsamples.testdpc.policy.keyguard.SetTrustAgentConfigFragment.getName()).hide(v0).add(2131296376, v1).commit();
        return;
    }

    private void showToast(int p3)
    {
        android.widget.Toast.makeText(this.getActivity(), p3, 0).show();
        return;
    }

    private void updateAggregates()
    {
        androidx.preference.Preference v1_0;
        String v4_0 = 0;
        int v0 = this.getDpm().getMaximumFailedPasswordsForWipe(0);
        long v5_1 = this.findPreference("key_max_fails_before_wipe_aggregate");
        if (v0 == 0) {
            v1_0 = 0;
        } else {
            v1_0 = Integer.toString(v0);
        }
        v5_1.setSummary(v1_0);
        long v2 = this.getDpm().getMaximumTimeToLock(0);
        androidx.preference.Preference v1_3 = this.findPreference("key_max_time_screen_lock_aggregate");
        if (v2 != 0) {
            v4_0 = Long.toString(java.util.concurrent.TimeUnit.MILLISECONDS.toSeconds(v2));
        }
        v1_3.setSummary(v4_0);
        return;
    }

    private boolean updateKeyguardFeatures(int p6, boolean p7)
    {
        int v0_1;
        int v0_0 = this.getDpmGateway().getKeyguardDisabledFeatures();
        if (!p7) {
            v0_1 = (v0_0 & (p6 ^ -1));
        } else {
            v0_1 = (v0_0 | p6);
        }
        int v2_2;
        this.getDpmGateway().setKeyguardDisabledFeatures(v0_1, new com.afwsamples.testdpc.policy.keyguard.LockScreenPolicyFragment$$Lambda$2(this), new com.afwsamples.testdpc.policy.keyguard.LockScreenPolicyFragment$$Lambda$3(this));
        if (v0_1 != this.getDpmGateway().getKeyguardDisabledFeatures()) {
            v2_2 = 0;
        } else {
            v2_2 = 1;
        }
        return v2_2;
    }

    public boolean isAvailable(android.content.Context p2)
    {
        return 1;
    }

    final synthetic void lambda$setLockScreenMessage$201$LockScreenPolicyFragment(Exception p2)
    {
        this.onErrorLog("setDeviceOwnerLockScreenInfo", p2);
        return;
    }

    final synthetic int lambda$setup$204$LockScreenPolicyFragment(String p2)
    {
        if ((!com.afwsamples.testdpc.policy.keyguard.LockScreenPolicyFragment$Keys.NOT_APPLICABLE_TO_PARENT.contains(p2)) || (!this.isParentProfileInstance())) {
            int v0_3 = 0;
        } else {
            v0_3 = 2131689993;
        }
        return v0_3;
    }

    final synthetic void lambda$updateKeyguardFeatures$202$LockScreenPolicyFragment(Void p2)
    {
        this.onSuccessLog("setKeyguardDisabledFeatures");
        return;
    }

    final synthetic void lambda$updateKeyguardFeatures$203$LockScreenPolicyFragment(Exception p2)
    {
        this.onErrorLog("setKeyguardDisabledFeatures", p2);
        return;
    }

    public void onCreate(android.os.Bundle p3)
    {
        this.getActivity().getActionBar().setTitle(2131689907);
        super.onCreate(p3);
        return;
    }

    public void onCreatePreferences(android.os.Bundle p6, String p7)
    {
        this.addPreferencesFromResource(2131886085);
        this.setupAll();
        this.disableIncompatibleManagementOptionsInCurrentProfile();
        int v0 = this.getDpmGateway().getKeyguardDisabledFeatures();
        java.util.Iterator v4 = com.afwsamples.testdpc.policy.keyguard.LockScreenPolicyFragment.KEYGUARD_FEATURES.entrySet().iterator();
        while (v4.hasNext()) {
            Boolean v3_4;
            java.util.Map$Entry v1_1 = ((java.util.Map$Entry) v4.next());
            if ((((Integer) v1_1.getValue()).intValue() & v0) == 0) {
                v3_4 = 0;
            } else {
                v3_4 = 1;
            }
            this.setup(((String) v1_1.getKey()), Boolean.valueOf(v3_4));
        }
        return;
    }

    public boolean onPreferenceChange(androidx.preference.Preference p14, Object p15)
    {
        String v6_0 = 0;
        String v4_0 = 1;
        if (!com.afwsamples.testdpc.policy.keyguard.LockScreenPolicyFragment.KEYGUARD_FEATURES.containsKey(p14.getKey())) {
            long v8_0 = p14.getKey();
            int v7_0 = -1;
            switch (v8_0.hashCode()) {
                case -1970352408:
                    if (!v8_0.equals("key_lock_screen_message")) {
                    } else {
                        v7_0 = 0;
                    }
                    break;
                case -1537396510:
                    if (!v8_0.equals("key_max_fails_before_wipe")) {
                    } else {
                        v7_0 = 1;
                    }
                    break;
                case -1415432697:
                    if (!v8_0.equals("key_max_time_screen_lock")) {
                    } else {
                        v7_0 = 3;
                    }
                    break;
                case 1336709266:
                    if (!v8_0.equals("key_strong_auth_timeout")) {
                    } else {
                        v7_0 = 2;
                    }
                    break;
            }
            switch (v7_0) {
                case 0:
                    this.setLockScreenMessage(p14, ((String) p15));
                    break;
                case 1:
                    try {
                        long v2_2 = this.parseInt(((String) p15));
                        this.getDpm().setMaximumFailedPasswordsForWipe(this.getAdmin(), v2_2);
                    } catch (NumberFormatException v0) {
                        this.showToast(2131689996);
                        v4_0 = 0;
                    }
                    if (v2_2 != 0) {
                        v6_0 = Integer.toString(v2_2);
                    }
                    p14.setSummary(v6_0);
                    break;
                case 2:
                    try {
                        this.getDpm().setRequiredStrongAuthTimeout(this.getAdmin(), java.util.concurrent.TimeUnit.SECONDS.toMillis(this.parseLong(((String) p15))));
                        p14.setSummary(Long.toString(java.util.concurrent.TimeUnit.MILLISECONDS.toSeconds(this.getDpm().getRequiredStrongAuthTimeout(this.getAdmin()))));
                    } catch (NumberFormatException v0) {
                        this.showToast(2131689996);
                        v4_0 = 0;
                    }
                    break;
                case 3:
                    try {
                        long v2_0 = this.parseLong(((String) p15));
                        this.getDpm().setMaximumTimeToLock(this.getAdmin(), java.util.concurrent.TimeUnit.SECONDS.toMillis(v2_0));
                    } catch (NumberFormatException v0) {
                        this.showToast(2131689996);
                        v4_0 = 0;
                    }
                    if (v2_0 != 0) {
                        v6_0 = Long.toString(v2_0);
                    }
                    p14.setSummary(v6_0);
                    break;
                default:
                    v4_0 = 0;
            }
            this.updateAggregates();
        } else {
            v4_0 = this.updateKeyguardFeatures(((Integer) com.afwsamples.testdpc.policy.keyguard.LockScreenPolicyFragment.KEYGUARD_FEATURES.get(p14.getKey())).intValue(), ((Boolean) p15).booleanValue());
        }
        return v4_0;
    }

    public boolean onPreferenceClick(androidx.preference.Preference p5)
    {
        int v0 = 0;
        boolean v2_0 = p5.getKey();
        int v1 = -1;
        switch (v2_0.hashCode()) {
            case -645293792:
                if (!v2_0.equals("key_set_trust_agent_config")) {
                } else {
                    v1 = 0;
                }
                break;
        }
        switch (v1) {
            case 0:
                this.showSetTrustAgentFragment();
                v0 = 1;
                break;
        }
        return v0;
    }

    public void onResume()
    {
        super.onResume();
        this.updateAggregates();
        androidx.preference.Preference v0 = this.findPreference("key_strong_auth_timeout");
        if (v0.isEnabled()) {
            v0.setSummary(Long.toString(java.util.concurrent.TimeUnit.MILLISECONDS.toSeconds(this.getDpm().getRequiredStrongAuthTimeout(this.getAdmin()))));
        }
        return;
    }
}
