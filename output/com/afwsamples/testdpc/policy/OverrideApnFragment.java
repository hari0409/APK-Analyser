package com.afwsamples.testdpc.policy;
public class OverrideApnFragment extends com.afwsamples.testdpc.common.BaseSearchablePolicyPreferenceFragment implements androidx.preference.Preference$OnPreferenceClickListener, androidx.preference.Preference$OnPreferenceChangeListener {
    private static final String ENABLE_OVERRIDE_APN_KEY = "enable_override_apn";
    private static final String INSERT_OVERRIDE_APN_KEY = "insert_override_apn";
    private static String LOG_TAG = "";
    private static final String REMOVE_OVERRIDE_APN_KEY = "remove_override_apn";
    private android.content.ComponentName mAdminComponentName;
    private android.app.admin.DevicePolicyManager mDevicePolicyManager;
    private androidx.preference.SwitchPreference mEnableOverrideApnPreference;

    static OverrideApnFragment()
    {
        com.afwsamples.testdpc.policy.OverrideApnFragment.LOG_TAG = "OverrideApnFragment";
        return;
    }

    public OverrideApnFragment()
    {
        return;
    }

    private android.net.Uri UriFromString(String p2)
    {
        android.net.Uri v0_1;
        if (!android.text.TextUtils.isEmpty(p2)) {
            v0_1 = android.net.Uri.parse(p2);
        } else {
            v0_1 = 0;
        }
        return v0_1;
    }

    private java.net.InetAddress inetAddressFromString(String p5)
    {
        java.net.InetAddress v1 = 0;
        if (!android.text.TextUtils.isEmpty(p5)) {
            try {
                v1 = java.net.InetAddress.getByName(p5);
            } catch (java.net.UnknownHostException v0) {
                android.util.Log.e(com.afwsamples.testdpc.policy.OverrideApnFragment.LOG_TAG, "Can\'t parse InetAddress from string: unknown host.");
                Object[] v3_1 = new Object[0];
                this.showToast(2131689569, v3_1);
            }
        }
        return v1;
    }

    private android.telephony.data.ApnSetting makeApnSetting(String p3, String p4, String p5, java.net.InetAddress p6, int p7, android.net.Uri p8, java.net.InetAddress p9, int p10, String p11, String p12, int p13, int p14, int p15, int p16, boolean p17, int p18, int p19)
    {
        return new android.telephony.data.ApnSetting$Builder().setOperatorNumeric(p3).setEntryName(p4).setApnName(p5).setProxyAddress(p6).setProxyPort(p7).setMmsc(p8).setMmsProxyAddress(p9).setMmsProxyPort(p10).setUser(p11).setPassword(p12).setAuthType(p13).setApnTypeBitmask(p14).setProtocol(p15).setRoamingProtocol(p16).setCarrierEnabled(p17).setMvnoType(p19).setNetworkTypeBitmask(p18).build();
    }

    private void onRemoveOverrideApn()
    {
        java.util.Iterator v2_1 = this.mDevicePolicyManager.getOverrideApns(this.mAdminComponentName).iterator();
        while (v2_1.hasNext()) {
            this.mDevicePolicyManager.removeOverrideApn(this.mAdminComponentName, ((android.telephony.data.ApnSetting) v2_1.next()).getId());
        }
        return;
    }

    private int parseInt(String p2, int p3)
    {
        try {
            p3 = Integer.parseInt(p2);
        } catch (NumberFormatException v0) {
        }
        return p3;
    }

    private void reloadEnableOverrideApnUi()
    {
        boolean v0 = this.mDevicePolicyManager.isOverrideApnEnabled(this.mAdminComponentName);
        if (this.mEnableOverrideApnPreference.isEnabled()) {
            this.mEnableOverrideApnPreference.setChecked(v0);
        }
        return;
    }

    private varargs void showToast(int p3, Object[] p4)
    {
        this.showToast(this.getString(p3, p4), 0);
        return;
    }

    private void showToast(String p2)
    {
        this.showToast(p2, 0);
        return;
    }

    private void showToast(String p3, int p4)
    {
        android.app.Activity v0 = this.getActivity();
        if ((v0 != null) && (!v0.isFinishing())) {
            android.widget.Toast.makeText(v0, p3, p4).show();
        }
        return;
    }

    public boolean isAvailable(android.content.Context p2)
    {
        return 1;
    }

    final synthetic void lambda$showInsertOverrideApnDialog$179$OverrideApnFragment(android.widget.EditText p23, android.widget.EditText p24, android.widget.EditText p25, android.widget.EditText p26, android.widget.EditText p27, android.widget.EditText p28, android.widget.EditText p29, android.widget.EditText p30, android.widget.EditText p31, android.widget.EditText p32, android.widget.EditText p33, android.view.View p34, android.widget.EditText p35, android.content.DialogInterface p36, int p37)
    {
        String v4 = p23.getText().toString();
        if (!v4.isEmpty()) {
            String v5 = p24.getText().toString();
            if (!v5.isEmpty()) {
                int v14 = this.parseInt(p25.getText().toString(), 0);
                if (v14 != 0) {
                    int v17_1;
                    String v3_11 = p26.getText().toString();
                    java.net.InetAddress v6 = this.inetAddressFromString(p27.getText().toString());
                    int v7_1 = this.parseInt(p28.getText().toString(), -1);
                    android.net.Uri v8 = this.UriFromString(p29.getText().toString());
                    java.net.InetAddress v9 = this.inetAddressFromString(p30.getText().toString());
                    int v10_1 = this.parseInt(p31.getText().toString(), -1);
                    String v11 = p32.getText().toString();
                    String v12 = p33.getText().toString();
                    int v13 = (((android.widget.Spinner) p34.findViewById(2131296313)).getSelectedItemPosition() - 1);
                    int v15 = (((android.widget.Spinner) p34.findViewById(2131296324)).getSelectedItemPosition() - 1);
                    int v16 = (((android.widget.Spinner) p34.findViewById(2131296326)).getSelectedItemPosition() - 1);
                    if (((android.widget.Spinner) p34.findViewById(2131296314)).getSelectedItemPosition() != 1) {
                        v17_1 = 0;
                    } else {
                        v17_1 = 1;
                    }
                    int v21 = this.mDevicePolicyManager.addOverrideApn(this.mAdminComponentName, this.makeApnSetting(v3_11, v4, v5, v6, v7_1, v8, v9, v10_1, v11, v12, v13, v14, v15, v16, v17_1, this.parseInt(p35.getText().toString(), 0), (((android.widget.Spinner) p34.findViewById(2131296319)).getSelectedItemPosition() - 1)));
                    if (v21 != -1) {
                        this.showToast(new StringBuilder().append("Inserted APN id: ").append(v21).toString());
                    } else {
                        String v3_3 = new Object[0];
                        this.showToast(2131689853, v3_3);
                    }
                } else {
                    String v3_5 = new Object[0];
                    this.showToast(2131689567, v3_5);
                }
            } else {
                String v3_7 = new Object[0];
                this.showToast(2131689557, v3_7);
            }
        } else {
            String v3_9 = new Object[0];
            this.showToast(2131689552, v3_9);
        }
        return;
    }

    public void onCreate(android.os.Bundle p3)
    {
        this.mDevicePolicyManager = ((android.app.admin.DevicePolicyManager) this.getActivity().getSystemService("device_policy"));
        this.mAdminComponentName = com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this.getActivity());
        this.getActivity().getActionBar().setTitle(2131690017);
        super.onCreate(p3);
        return;
    }

    public void onCreatePreferences(android.os.Bundle p2, String p3)
    {
        this.addPreferencesFromResource(2131886087);
        this.findPreference("insert_override_apn").setOnPreferenceClickListener(this);
        this.findPreference("remove_override_apn").setOnPreferenceClickListener(this);
        this.mEnableOverrideApnPreference = ((androidx.preference.SwitchPreference) this.findPreference("enable_override_apn"));
        this.mEnableOverrideApnPreference.setOnPreferenceChangeListener(this);
        return;
    }

    public boolean onPreferenceChange(androidx.preference.Preference p6, Object p7)
    {
        int v2_0 = 0;
        String v1 = p6.getKey();
        int v3_0 = -1;
        switch (v1.hashCode()) {
            case 281383016:
                if (!v1.equals("enable_override_apn")) {
                } else {
                    v3_0 = 0;
                }
                break;
        }
        switch (v3_0) {
            case 0:
                this.mDevicePolicyManager.setOverrideApnsEnabled(this.mAdminComponentName, ((Boolean) p7).booleanValue());
                this.reloadEnableOverrideApnUi();
                v2_0 = 1;
                break;
        }
        return v2_0;
    }

    public boolean onPreferenceClick(androidx.preference.Preference p6)
    {
        int v1 = 1;
        String v0 = p6.getKey();
        int v3 = -1;
        switch (v0.hashCode()) {
            case -281437454:
                if (!v0.equals("insert_override_apn")) {
                } else {
                    v3 = 0;
                }
                break;
            case 1480353543:
                if (!v0.equals("remove_override_apn")) {
                } else {
                    v3 = 1;
                }
                break;
        }
        switch (v3) {
            case 0:
                this.showInsertOverrideApnDialog();
                break;
            case 1:
                this.onRemoveOverrideApn();
                break;
            default:
                v1 = 0;
        }
        return v1;
    }

    void setUpAllSpinners(android.view.View p4)
    {
        this.setUpSpinner(p4, 2131296313, 2130903040);
        this.setUpSpinner(p4, 2131296324, 2130903043);
        this.setUpSpinner(p4, 2131296326, 2130903043);
        this.setUpSpinner(p4, 2131296319, 2130903042);
        this.setUpSpinner(p4, 2131296314, 2130903041);
        return;
    }

    void setUpSpinner(android.view.View p5, int p6, int p7)
    {
        android.widget.Spinner v1_1 = ((android.widget.Spinner) p5.findViewById(p6));
        android.widget.ArrayAdapter v0 = android.widget.ArrayAdapter.createFromResource(this.getActivity(), p7, 17367048);
        v0.setDropDownViewResource(17367049);
        v1_1.setAdapter(v0);
        return;
    }

    void showInsertOverrideApnDialog()
    {
        if ((this.getActivity() != null) && (!this.getActivity().isFinishing())) {
            android.view.View v15 = this.getActivity().getLayoutInflater().inflate(2131427386, 0);
            android.widget.EditText v4_1 = ((android.widget.EditText) v15.findViewById(2131296315));
            android.widget.EditText v5_1 = ((android.widget.EditText) v15.findViewById(2131296312));
            android.widget.EditText v8_1 = ((android.widget.EditText) v15.findViewById(2131296325));
            android.widget.EditText v9_1 = ((android.widget.EditText) v15.findViewById(2131296323));
            android.widget.EditText v10_1 = ((android.widget.EditText) v15.findViewById(2131296316));
            android.widget.EditText v11_1 = ((android.widget.EditText) v15.findViewById(2131296318));
            android.widget.EditText v12_1 = ((android.widget.EditText) v15.findViewById(2131296317));
            android.widget.EditText v13_1 = ((android.widget.EditText) v15.findViewById(2131296328));
            android.widget.EditText v14_1 = ((android.widget.EditText) v15.findViewById(2131296322));
            android.widget.EditText v6_1 = ((android.widget.EditText) v15.findViewById(2131296327));
            android.widget.EditText v7_1 = ((android.widget.EditText) v15.findViewById(2131296321));
            android.widget.EditText v16_1 = ((android.widget.EditText) v15.findViewById(2131296320));
            this.setUpAllSpinners(v15);
            v4_1.setHint(2131689552);
            v5_1.setHint(2131689557);
            v6_1.setHint(2131689567);
            v7_1.setHint(2131689560);
            new android.app.AlertDialog$Builder(this.getActivity()).setTitle(2131689852).setView(v15).setPositiveButton(17039370, new com.afwsamples.testdpc.policy.OverrideApnFragment$$Lambda$0(this, v4_1, v5_1, v6_1, v7_1, v8_1, v9_1, v10_1, v11_1, v12_1, v13_1, v14_1, v15, v16_1)).setNegativeButton(17039360, 0).show();
        }
        return;
    }
}
