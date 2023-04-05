package com.afwsamples.testdpc.policy.locktask;
public class SetLockTaskFeaturesFragment extends com.afwsamples.testdpc.common.BaseSearchablePolicyPreferenceFragment implements androidx.preference.Preference$OnPreferenceChangeListener {
    private static final android.util.ArrayMap FEATURE_FLAGS = None;
    private static final String KEY_GLOBAL_ACTIONS = "lock_task_feature_global_actions";
    private static final String KEY_HOME = "lock_task_feature_home";
    private static final String KEY_KEYGUARD = "lock_task_feature_keyguard";
    private static final String KEY_NOTIFICATIONS = "lock_task_feature_notifications";
    private static final String KEY_OVERVIEW = "lock_task_feature_overview";
    private static final String KEY_SYSTEM_INFO = "lock_task_feature_system_info";
    private static final String TAG = "SetLockTaskFeatures";
    private com.afwsamples.testdpc.DevicePolicyManagerGateway mDpmGateway;

    static SetLockTaskFeaturesFragment()
    {
        com.afwsamples.testdpc.policy.locktask.SetLockTaskFeaturesFragment.FEATURE_FLAGS = new android.util.ArrayMap();
        com.afwsamples.testdpc.policy.locktask.SetLockTaskFeaturesFragment.FEATURE_FLAGS.put("lock_task_feature_system_info", Integer.valueOf(1));
        com.afwsamples.testdpc.policy.locktask.SetLockTaskFeaturesFragment.FEATURE_FLAGS.put("lock_task_feature_notifications", Integer.valueOf(2));
        com.afwsamples.testdpc.policy.locktask.SetLockTaskFeaturesFragment.FEATURE_FLAGS.put("lock_task_feature_home", Integer.valueOf(4));
        com.afwsamples.testdpc.policy.locktask.SetLockTaskFeaturesFragment.FEATURE_FLAGS.put("lock_task_feature_overview", Integer.valueOf(8));
        com.afwsamples.testdpc.policy.locktask.SetLockTaskFeaturesFragment.FEATURE_FLAGS.put("lock_task_feature_global_actions", Integer.valueOf(16));
        com.afwsamples.testdpc.policy.locktask.SetLockTaskFeaturesFragment.FEATURE_FLAGS.put("lock_task_feature_keyguard", Integer.valueOf(32));
        return;
    }

    public SetLockTaskFeaturesFragment()
    {
        return;
    }

    private void enforceEnablingRestrictions(int p3)
    {
        int v0;
        if ((p3 & 4) == 0) {
            v0 = 0;
        } else {
            v0 = 1;
        }
        this.setPrefEnabledState(((com.afwsamples.testdpc.common.preference.DpcSwitchPreference) this.findPreference("lock_task_feature_overview")), v0);
        this.setPrefEnabledState(((com.afwsamples.testdpc.common.preference.DpcSwitchPreference) this.findPreference("lock_task_feature_notifications")), v0);
        return;
    }

    private int getLockTaskFeatures()
    {
        return this.mDpmGateway.getLockTaskFeatures();
    }

    static final synthetic void lambda$setLockTaskFeatures$198$SetLockTaskFeaturesFragment(Void p3)
    {
        Object[] v2_1 = new Object[0];
        com.afwsamples.testdpc.common.Util.onSuccessLog("SetLockTaskFeatures", "setLockTaskFeatures()", v2_1);
        return;
    }

    static final synthetic void lambda$setLockTaskFeatures$199$SetLockTaskFeaturesFragment(Exception p3)
    {
        Object[] v2_1 = new Object[0];
        com.afwsamples.testdpc.common.Util.onErrorLog("SetLockTaskFeatures", p3, "setLockTaskFeatures()", v2_1);
        return;
    }

    private void setLockTaskFeatures(int p4)
    {
        this.mDpmGateway.setLockTaskFeatures(p4, com.afwsamples.testdpc.policy.locktask.SetLockTaskFeaturesFragment$$Lambda$0.$instance, com.afwsamples.testdpc.policy.locktask.SetLockTaskFeaturesFragment$$Lambda$1.$instance);
        return;
    }

    private void setPrefEnabledState(com.afwsamples.testdpc.common.preference.DpcSwitchPreference p2, boolean p3)
    {
        p2.setEnabled(p3);
        if ((!p2.isEnabled()) && (p2.isChecked())) {
            p2.setChecked(0);
        }
        return;
    }

    public boolean isAvailable(android.content.Context p2)
    {
        return 1;
    }

    public void onCreate(android.os.Bundle p3)
    {
        this.mDpmGateway = new com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl(this.getActivity());
        this.getActivity().getActionBar().setTitle(2131690210);
        super.onCreate(p3);
        return;
    }

    public void onCreatePreferences(android.os.Bundle p4, String p5)
    {
        this.addPreferencesFromResource(2131886086);
        java.util.Iterator v1_3 = com.afwsamples.testdpc.policy.locktask.SetLockTaskFeaturesFragment.FEATURE_FLAGS.keySet().iterator();
        while (v1_3.hasNext()) {
            this.findPreference(((String) v1_3.next())).setOnPreferenceChangeListener(this);
        }
        return;
    }

    public boolean onPreferenceChange(androidx.preference.Preference p9, Object p10)
    {
        android.widget.Toast v4_14;
        String v3 = p9.getKey();
        if (com.afwsamples.testdpc.policy.locktask.SetLockTaskFeaturesFragment.FEATURE_FLAGS.containsKey(v3)) {
            int v1;
            int v2 = this.getLockTaskFeatures();
            if (!((Boolean) p10).booleanValue()) {
                v1 = (v2 & (((Integer) com.afwsamples.testdpc.policy.locktask.SetLockTaskFeaturesFragment.FEATURE_FLAGS.get(v3)).intValue() ^ -1));
            } else {
                v1 = (v2 | ((Integer) com.afwsamples.testdpc.policy.locktask.SetLockTaskFeaturesFragment.FEATURE_FLAGS.get(v3)).intValue());
            }
            if ((v1 & 4) == 0) {
                v1 &= -11;
            }
            if (v1 != v2) {
                android.util.Log.i("SetLockTaskFeatures", new StringBuilder().append("LockTask feature flags changing from 0x").append(Integer.toHexString(v2)).append(" to 0x").append(Integer.toHexString(v1)).toString());
                try {
                    this.setLockTaskFeatures(v1);
                    this.enforceEnablingRestrictions(v1);
                    v4_14 = 1;
                } catch (SecurityException v0) {
                    android.util.Log.e("SetLockTaskFeatures", "setLockTaskFeatures() can only be called by DO and affiliated PO");
                    android.widget.Toast.makeText(this.getActivity(), "Requires device owner or affiliated profile owner", 0).show();
                }
                return v4_14;
            }
            v4_14 = 0;
        } else {
            android.util.Log.e("SetLockTaskFeatures", new StringBuilder().append("Undefined preference key: ").append(v3).toString());
            v4_14 = 0;
        }
        return v4_14;
    }

    public void onResume()
    {
        super.onResume();
        int v0 = this.getLockTaskFeatures();
        java.util.Iterator v4 = com.afwsamples.testdpc.policy.locktask.SetLockTaskFeaturesFragment.FEATURE_FLAGS.entrySet().iterator();
        while (v4.hasNext()) {
            int v3_6;
            java.util.Map$Entry v1_1 = ((java.util.Map$Entry) v4.next());
            if ((((Integer) v1_1.getValue()).intValue() & v0) == 0) {
                v3_6 = 0;
            } else {
                v3_6 = 1;
            }
            ((com.afwsamples.testdpc.common.preference.DpcSwitchPreference) this.findPreference(((CharSequence) v1_1.getKey()))).setChecked(v3_6);
        }
        this.enforceEnablingRestrictions(v0);
        return;
    }
}
