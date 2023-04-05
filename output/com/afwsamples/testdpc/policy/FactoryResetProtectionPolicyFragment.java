package com.afwsamples.testdpc.policy;
public class FactoryResetProtectionPolicyFragment extends android.app.Fragment implements android.widget.AdapterView$OnItemSelectedListener, android.view.View$OnClickListener {
    private static final int DISABLED = 0;
    private static final int ENABLED = 1;
    private java.util.List mAccounts;
    private com.afwsamples.testdpc.policy.FactoryResetProtectionPolicyFragment$FrpAccountsAdapter mAccountsAdapter;
    private android.content.ComponentName mAdminComponentName;
    private android.app.admin.DevicePolicyManager mDevicePolicyManager;
    private boolean mEnabled;
    private android.widget.Spinner mFrpEnabledSpinner;

    public FactoryResetProtectionPolicyFragment()
    {
        this.mAccounts = new java.util.ArrayList();
        return;
    }

    static synthetic java.util.List access$000(com.afwsamples.testdpc.policy.FactoryResetProtectionPolicyFragment p1)
    {
        return p1.mAccounts;
    }

    private void refreshUi()
    {
        int v1 = 0;
        this.mAccountsAdapter.clear();
        this.mFrpEnabledSpinner.setSelection(0);
        android.app.admin.FactoryResetProtectionPolicy v0 = this.mDevicePolicyManager.getFactoryResetProtectionPolicy(this.mAdminComponentName);
        if (v0 != null) {
            this.mAccountsAdapter.addAll(v0.getFactoryResetProtectionAccounts());
            if (v0.isFactoryResetProtectionEnabled()) {
                v1 = 1;
            }
            this.mFrpEnabledSpinner.setSelection(v1);
        }
        return;
    }

    private void showToast(int p3)
    {
        android.widget.Toast.makeText(this.getActivity(), p3, 1).show();
        return;
    }

    public void createAddAccountDialog()
    {
        android.view.View v2 = android.view.LayoutInflater.from(this.getActivity()).inflate(2131427446, 0);
        android.widget.EditText v1_1 = ((android.widget.EditText) v2.findViewById(2131296472));
        android.app.AlertDialog v0 = new android.app.AlertDialog$Builder(this.getActivity()).setTitle(2131689520).setView(v2).setPositiveButton(17039370, 0).setNegativeButton(17039360, 0).create();
        v0.setOnShowListener(new com.afwsamples.testdpc.policy.FactoryResetProtectionPolicyFragment$$Lambda$0(this, v0, v1_1));
        v0.show();
        return;
    }

    final synthetic void lambda$createAddAccountDialog$191$FactoryResetProtectionPolicyFragment(android.app.AlertDialog p3, android.widget.EditText p4, android.content.DialogInterface p5)
    {
        p3.getButton(-1).setOnClickListener(new com.afwsamples.testdpc.policy.FactoryResetProtectionPolicyFragment$$Lambda$1(this, p4, p3));
        return;
    }

    final synthetic void lambda$null$190$FactoryResetProtectionPolicyFragment(android.widget.EditText p3, android.app.AlertDialog p4, android.view.View p5)
    {
        String v0 = p3.getText().toString();
        if (!android.text.TextUtils.isEmpty(v0)) {
            this.mAccountsAdapter.add(v0);
            p4.dismiss();
        } else {
            this.showToast(2131689819);
        }
        return;
    }

    public void onClick(android.view.View p5)
    {
        switch (p5.getId()) {
            case 2131296300:
                this.createAddAccountDialog();
                break;
            case 2131296365:
                this.mDevicePolicyManager.setFactoryResetProtectionPolicy(this.mAdminComponentName, 0);
                this.refreshUi();
                this.showToast(2131689629);
                break;
            case 2131296578:
                this.mDevicePolicyManager.setFactoryResetProtectionPolicy(this.mAdminComponentName, new android.app.admin.FactoryResetProtectionPolicy$Builder().setFactoryResetProtectionAccounts(this.mAccounts).setFactoryResetProtectionEnabled(this.mEnabled).build());
                this.showToast(2131690167);
                break;
        }
        return;
    }

    public void onCreate(android.os.Bundle p3)
    {
        this.mDevicePolicyManager = ((android.app.admin.DevicePolicyManager) this.getActivity().getSystemService("device_policy"));
        this.mAdminComponentName = com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this.getActivity());
        super.onCreate(p3);
        this.getActivity().getActionBar().setTitle(2131689816);
        return;
    }

    public android.view.View onCreateView(android.view.LayoutInflater p10, android.view.ViewGroup p11, android.os.Bundle p12)
    {
        super.onCreateView(p10, p11, p12);
        android.view.View v5 = p10.inflate(2131427381, p11, 0);
        android.widget.ListView v3_1 = ((android.widget.ListView) v5.findViewById(2131296444));
        this.mAccountsAdapter = new com.afwsamples.testdpc.policy.FactoryResetProtectionPolicyFragment$FrpAccountsAdapter(this);
        v3_1.setAdapter(this.mAccountsAdapter);
        ((android.widget.Button) v5.findViewById(2131296300)).setOnClickListener(this);
        ((android.widget.Button) v5.findViewById(2131296365)).setOnClickListener(this);
        ((android.widget.Button) v5.findViewById(2131296578)).setOnClickListener(this);
        this.mFrpEnabledSpinner = ((android.widget.Spinner) v5.findViewById(2131296445));
        this.mFrpEnabledSpinner.setOnItemSelectedListener(this);
        android.widget.ArrayAdapter v2 = android.widget.ArrayAdapter.createFromResource(this.getActivity(), 2130903044, 17367048);
        v2.setDropDownViewResource(17367049);
        this.mFrpEnabledSpinner.setAdapter(v2);
        this.refreshUi();
        return v5;
    }

    public void onItemSelected(android.widget.AdapterView p3, android.view.View p4, int p5, long p6)
    {
        if (p3.getId() == 2131296445) {
            switch (p5) {
                case 0:
                    this.mEnabled = 0;
                    break;
                case 1:
                    this.mEnabled = 1;
                    break;
            }
        }
        return;
    }

    public void onNothingSelected(android.widget.AdapterView p1)
    {
        return;
    }
}
