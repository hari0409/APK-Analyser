package com.afwsamples.testdpc.policy.wifimanagement;
public class WifiConfigCreationDialog extends android.app.DialogFragment implements android.widget.AdapterView$OnItemSelectedListener, android.view.View$OnClickListener, android.text.TextWatcher {
    public static final int SECURITY_TYPE_NONE = 0;
    public static final int SECURITY_TYPE_WEP = 1;
    public static final int SECURITY_TYPE_WPA = 2;
    private android.app.AlertDialog mAlertDialog;
    private com.afwsamples.testdpc.policy.wifimanagement.WifiConfigCreationDialog$Listener mListener;
    private android.net.wifi.WifiConfiguration mOldConfig;
    private boolean mPasswordDirty;
    private android.widget.EditText mPasswordText;
    private android.view.View mPasswordView;
    private android.widget.Button mSaveButton;
    private android.widget.Spinner mSecurityChoicesSpinner;
    private int mSecurityType;
    private android.widget.EditText mSsidText;

    public WifiConfigCreationDialog()
    {
        return;
    }

    private void enableSaveButtonIfAppropriate()
    {
        int v0_1;
        if (this.mSsidText.length() == 0) {
            v0_1 = 0;
        } else {
            v0_1 = 1;
        }
        if ((v0_1 == 0) || ((this.mSecurityType == 2) && ((this.mPasswordText.length() < 8) && ((this.mPasswordDirty) || (this.mOldConfig == null))))) {
            int v0_0 = 0;
        } else {
            v0_0 = 1;
        }
        if (this.mSaveButton != null) {
            this.mSaveButton.setEnabled(v0_0);
        }
        return;
    }

    private String getQuotedString(String p3)
    {
        return new StringBuilder().append("\"").append(p3).append("\"").toString();
    }

    private void initialize()
    {
        if (this.mOldConfig == null) {
            this.mSsidText.setText("");
            this.mPasswordText.setText("");
            this.mSecurityType = 0;
        } else {
            this.mSsidText.setText(this.mOldConfig.SSID.replace("\"", ""));
            this.mPasswordText.setText("");
            if (!this.mOldConfig.allowedKeyManagement.get(1)) {
                if (!this.mOldConfig.allowedAuthAlgorithms.get(1)) {
                    this.mSecurityType = 0;
                } else {
                    this.mSecurityType = 1;
                }
            } else {
                this.mSecurityType = 2;
            }
        }
        this.mSecurityChoicesSpinner.setSelection(this.mSecurityType);
        return;
    }

    public static com.afwsamples.testdpc.policy.wifimanagement.WifiConfigCreationDialog newInstance()
    {
        com.afwsamples.testdpc.policy.wifimanagement.WifiConfigCreationDialog v0_1 = new com.afwsamples.testdpc.policy.wifimanagement.WifiConfigCreationDialog();
        v0_1.mPasswordDirty = 1;
        return v0_1;
    }

    public static com.afwsamples.testdpc.policy.wifimanagement.WifiConfigCreationDialog newInstance(android.net.wifi.WifiConfiguration p3, com.afwsamples.testdpc.policy.wifimanagement.WifiConfigCreationDialog$Listener p4)
    {
        int v1 = 1;
        com.afwsamples.testdpc.policy.wifimanagement.WifiConfigCreationDialog v0_1 = new com.afwsamples.testdpc.policy.wifimanagement.WifiConfigCreationDialog();
        v0_1.mOldConfig = p3;
        v0_1.mListener = p4;
        if ((p3.allowedKeyManagement.get(1)) || (p3.allowedAuthAlgorithms.get(1))) {
            v1 = 0;
        }
        v0_1.mPasswordDirty = v1;
        return v0_1;
    }

    private void showToast(int p3)
    {
        android.widget.Toast.makeText(this.getActivity(), p3, 0).show();
        return;
    }

    private void updateConfigurationSecurity(android.net.wifi.WifiConfiguration p6)
    {
        switch (this.mSecurityType) {
            case 0:
                p6.allowedKeyManagement.set(0);
                break;
            case 1:
                p6.allowedKeyManagement.set(0);
                p6.allowedAuthAlgorithms.set(0);
                p6.allowedAuthAlgorithms.set(1);
                int v0_0 = this.mPasswordText.length();
                if (v0_0 == 0) {
                } else {
                    String v1_1 = this.mPasswordText.getText().toString();
                    if (((v0_0 != 10) && ((v0_0 != 26) && (v0_0 != 58))) || (!v1_1.matches("[0-9A-Fa-f]*"))) {
                        p6.wepKeys[0] = this.getQuotedString(v1_1);
                    } else {
                        p6.wepKeys[0] = v1_1;
                    }
                    p6.wepTxKeyIndex = 0;
                }
                break;
            case 2:
                p6.allowedKeyManagement.set(1);
                if (this.mPasswordText.length() == 0) {
                } else {
                    String v1_0 = this.mPasswordText.getText().toString();
                    if (!v1_0.matches("[0-9A-Fa-f]{64}")) {
                        p6.preSharedKey = this.getQuotedString(v1_0);
                    } else {
                        p6.preSharedKey = v1_0;
                    }
                }
                break;
        }
        return;
    }

    public void afterTextChanged(android.text.Editable p2)
    {
        if (this.mPasswordText.getEditableText() == p2) {
            int v0_3;
            if (p2.length() <= 0) {
                v0_3 = 0;
            } else {
                v0_3 = 1;
            }
            this.mPasswordDirty = v0_3;
        }
        this.enableSaveButtonIfAppropriate();
        return;
    }

    public void beforeTextChanged(CharSequence p1, int p2, int p3, int p4)
    {
        return;
    }

    public void onCancel(android.content.DialogInterface p2)
    {
        if (this.mListener != null) {
            this.mListener.onCancel();
        }
        return;
    }

    public void onClick(android.view.View p4)
    {
        if (p4 == this.mSaveButton) {
            android.net.wifi.WifiConfiguration v0_1 = new android.net.wifi.WifiConfiguration();
            v0_1.SSID = this.getQuotedString(this.mSsidText.getText().toString());
            this.updateConfigurationSecurity(v0_1);
            if (this.mOldConfig != null) {
                v0_1.networkId = this.mOldConfig.networkId;
            }
            int v2_6;
            if (!com.afwsamples.testdpc.policy.wifimanagement.WifiConfigUtil.saveWifiConfiguration(this.getActivity(), v0_1)) {
                v2_6 = 2131690378;
            } else {
                v2_6 = 2131690379;
            }
            this.showToast(v2_6);
        }
        this.dismiss();
        return;
    }

    public android.app.Dialog onCreateDialog(android.os.Bundle p9)
    {
        android.view.View v2 = this.getActivity().getLayoutInflater().inflate(2131427514, 0);
        this.mPasswordView = v2.findViewById(2131296526);
        this.mSsidText = ((android.widget.EditText) v2.findViewById(2131296635));
        this.mSsidText.addTextChangedListener(this);
        this.mPasswordText = ((android.widget.EditText) v2.findViewById(2131296524));
        this.mPasswordText.addTextChangedListener(this);
        this.mSecurityChoicesSpinner = ((android.widget.Spinner) v2.findViewById(2131296595));
        this.mSecurityChoicesSpinner.setOnItemSelectedListener(this);
        android.widget.ArrayAdapter v0 = android.widget.ArrayAdapter.createFromResource(this.getActivity(), 2130903046, 17367048);
        v0.setDropDownViewResource(17367049);
        this.mSecurityChoicesSpinner.setAdapter(v0);
        this.initialize();
        return new android.app.AlertDialog$Builder(this.getActivity()).setTitle(2131689533).setView(v2).setPositiveButton(2131690389, 0).setNegativeButton(2131690376, 0).create();
    }

    public void onDismiss(android.content.DialogInterface p2)
    {
        if (this.mListener != null) {
            this.mListener.onDismiss();
        }
        return;
    }

    public void onItemSelected(android.widget.AdapterView p3, android.view.View p4, int p5, long p6)
    {
        if (p3.getId() == 2131296595) {
            this.mSecurityType = p5;
            switch (this.mSecurityType) {
                case 0:
                    this.mPasswordView.setVisibility(8);
                    break;
                case 1:
                    this.mPasswordView.setVisibility(0);
                    this.mPasswordText.requestFocus();
                    break;
                case 2:
                    int v0_1;
                    if (this.mOldConfig != null) {
                        v0_1 = 2131690394;
                    } else {
                        v0_1 = 2131689946;
                    }
                    this.mPasswordText.setHint(v0_1);
                    break;
            }
        }
        this.enableSaveButtonIfAppropriate();
        return;
    }

    public void onNothingSelected(android.widget.AdapterView p1)
    {
        return;
    }

    public void onStart()
    {
        super.onStart();
        this.mAlertDialog = ((android.app.AlertDialog) this.getDialog());
        this.mSaveButton = this.mAlertDialog.getButton(-1);
        this.mSaveButton.setOnClickListener(this);
        this.mSaveButton.setEnabled(0);
        this.mAlertDialog.getButton(-2).setOnClickListener(this);
        this.mAlertDialog.getWindow().setSoftInputMode(4);
        return;
    }

    public void onTextChanged(CharSequence p1, int p2, int p3, int p4)
    {
        return;
    }
}
