package com.afwsamples.testdpc.policy.wifimanagement;
public class WifiEapTlsCreateDialogFragment extends android.app.DialogFragment {
    private static final String ARG_CONFIG = "config";
    private static final int REQUEST_CA_CERT = 1;
    private static final int REQUEST_USER_CERT = 2;
    private static final String TAG = "wifi_eap_tls";
    private android.widget.TextView mCaCertTextView;
    private android.net.Uri mCaCertUri;
    private android.widget.EditText mCertPasswordEditText;
    private android.app.admin.DevicePolicyManager mDpm;
    private android.widget.EditText mIdentityEditText;
    private android.widget.EditText mSsidEditText;
    private String mUserCertAlias;
    private android.widget.TextView mUserCertTextView;
    private android.net.Uri mUserCertUri;
    private android.net.wifi.WifiConfiguration mWifiConfiguration;

    public WifiEapTlsCreateDialogFragment()
    {
        return;
    }

    static synthetic boolean access$000(com.afwsamples.testdpc.policy.wifimanagement.WifiEapTlsCreateDialogFragment p1)
    {
        return p1.extractInputDataAndSave();
    }

    private android.net.wifi.WifiEnterpriseConfig extractEnterpriseConfig()
    {
        String v1_1 = new android.net.wifi.WifiEnterpriseConfig();
        v1_1.setEapMethod(1);
        String v3 = this.mIdentityEditText.getText().toString();
        if (!android.text.TextUtils.isEmpty(v3)) {
            v1_1.setIdentity(v3);
        }
        if (this.mCaCertUri != null) {
            v1_1.setCaCertificate(this.parseX509Certificate(this.mCaCertUri));
            if (this.mUserCertUri == null) {
                if (this.mUserCertAlias == null) {
                    this.showToast(2131689807);
                    v1_1 = 0;
                } else {
                    if (this.mDpm.grantKeyPairToWifiAuth(this.mUserCertAlias)) {
                        v1_1.setClientKeyPairAlias(this.mUserCertAlias);
                    } else {
                        this.showToast(2131689805);
                        v1_1 = 0;
                    }
                }
            } else {
                try {
                    com.afwsamples.testdpc.common.CertificateUtil$PKCS12ParseInfo v4 = com.afwsamples.testdpc.common.CertificateUtil.parsePKCS12Certificate(this.getActivity().getContentResolver(), this.mUserCertUri, this.mCertPasswordEditText.getText().toString());
                } catch (java.security.UnrecoverableKeyException v2) {
                    android.util.Log.e("wifi_eap_tls", "Fail to parse the input certificate: ", v2);
                } catch (java.security.UnrecoverableKeyException v2) {
                } catch (java.security.UnrecoverableKeyException v2) {
                } catch (java.security.UnrecoverableKeyException v2) {
                } catch (java.security.UnrecoverableKeyException v2) {
                }
                if (v4 != null) {
                    v1_1.setClientKeyEntry(v4.privateKey, v4.certificate);
                } else {
                    this.showToast(2131689807);
                    v1_1 = 0;
                }
            }
        } else {
            this.showToast(2131689806);
            v1_1 = 0;
        }
        return v1_1;
    }

    private boolean extractInputDataAndSave()
    {
        int v2_0 = 0;
        String v0 = this.mSsidEditText.getText().toString();
        if (!android.text.TextUtils.isEmpty(v0)) {
            this.mSsidEditText.setError(0);
            this.mWifiConfiguration.SSID = v0;
            this.mWifiConfiguration.allowedKeyManagement.set(2);
            this.mWifiConfiguration.allowedKeyManagement.set(3);
            this.mWifiConfiguration.enterpriseConfig = this.extractEnterpriseConfig();
            if (this.mWifiConfiguration.enterpriseConfig != null) {
                if (!com.afwsamples.testdpc.policy.wifimanagement.WifiConfigUtil.saveWifiConfiguration(this.getActivity(), this.mWifiConfiguration)) {
                    this.showToast(2131690378);
                } else {
                    this.showToast(2131690380);
                    v2_0 = 1;
                }
            }
        } else {
            this.mSsidEditText.setError(this.getString(2131689808));
        }
        return v2_0;
    }

    public static com.afwsamples.testdpc.policy.wifimanagement.WifiEapTlsCreateDialogFragment newInstance(android.net.wifi.WifiConfiguration p3)
    {
        android.os.Bundle v0_1 = new android.os.Bundle();
        v0_1.putParcelable("config", p3);
        com.afwsamples.testdpc.policy.wifimanagement.WifiEapTlsCreateDialogFragment v1_1 = new com.afwsamples.testdpc.policy.wifimanagement.WifiEapTlsCreateDialogFragment();
        v1_1.setArguments(v0_1);
        return v1_1;
    }

    private void onSelectClientCertClicked(android.view.View p7)
    {
        android.security.KeyChain.choosePrivateKeyAlias(this.getActivity(), new com.afwsamples.testdpc.policy.wifimanagement.WifiEapTlsCreateDialogFragment$$Lambda$1(this), 0, 0, 0, 0);
        return;
    }

    private java.security.cert.X509Certificate parseX509Certificate(android.net.Uri p6)
    {
        try {
            int v3_2 = ((java.security.cert.X509Certificate) java.security.cert.CertificateFactory.getInstance("X.509").generateCertificate(this.getActivity().getContentResolver().openInputStream(p6)));
        } catch (java.security.cert.CertificateException v0) {
            android.util.Log.e("wifi_eap_tls", "parseX509Certificate: ", v0);
            v3_2 = 0;
        } catch (java.security.cert.CertificateException v0) {
        }
        return v3_2;
    }

    private void populateUi()
    {
        if (this.mWifiConfiguration != null) {
            if (!android.text.TextUtils.isEmpty(this.mWifiConfiguration.SSID)) {
                this.mSsidEditText.setText(this.mWifiConfiguration.SSID.replace("\"", ""));
            }
            this.mIdentityEditText.setText(this.mWifiConfiguration.enterpriseConfig.getIdentity());
            this.updateSelectedCert(this.mCaCertTextView, 0, 0);
            this.updateSelectedCert(this.mUserCertTextView, 0, 0);
        }
        return;
    }

    private void showToast(int p3)
    {
        android.widget.Toast.makeText(this.getActivity(), p3, 1).show();
        return;
    }

    private void updateSelectedCert(android.widget.TextView p12, android.net.Uri p13, String p14)
    {
        String v8;
        int v3 = 0;
        if (p13 == null) {
            if (p14 == null) {
                v8 = this.getString(2131690177);
            } else {
                Throwable v1_3 = new Object[1];
                v1_3[0] = p14;
                v8 = this.getString(2131690178, v1_3);
            }
        } else {
            String v7 = 0;
            String[] v2 = new String[1];
            v2[0] = "_display_name";
            android.database.Cursor v6 = this.getActivity().getContentResolver().query(p13, v2, 0, 0, 0);
            try {
                if ((v6 != null) && (v6.moveToFirst())) {
                    v7 = v6.getString(0);
                }
            } catch (Throwable v0_5) {
                Throwable v1_1 = v0_5;
                if (v6 == null) {
                    throw v1_1;
                } else {
                    if (v3 == 0) {
                        v6.close();
                    } else {
                        try {
                            v6.close();
                        } catch (Throwable v0_6) {
                            v3.addSuppressed(v0_6);
                        }
                    }
                }
            } catch (Throwable v0_4) {
                try {
                    throw v0_4;
                } catch (Throwable v1_1) {
                    v3 = v0_4;
                }
            }
            if (v6 != null) {
                if (0 == 0) {
                    v6.close();
                } else {
                    try {
                        v6.close();
                    } catch (Throwable v0_9) {
                        0.addSuppressed(v0_9);
                    }
                }
            }
            if (android.text.TextUtils.isEmpty(v7)) {
                v7 = this.getString(2131690395);
            }
            Throwable v1_2 = new Object[1];
            v1_2[0] = v7;
            v8 = this.getString(2131690176, v1_2);
        }
        p12.setText(v8);
        return;
    }

    final bridge synthetic void bridge$lambda$0$WifiEapTlsCreateDialogFragment(android.view.View p1)
    {
        this.onSelectClientCertClicked(p1);
        return;
    }

    final synthetic void lambda$null$175$WifiEapTlsCreateDialogFragment(String p3)
    {
        this.updateSelectedCert(this.mUserCertTextView, 0, p3);
        return;
    }

    final synthetic void lambda$onSelectClientCertClicked$176$WifiEapTlsCreateDialogFragment(String p3)
    {
        if (p3 != null) {
            this.mUserCertAlias = p3;
            this.mUserCertUri = 0;
            this.getActivity().runOnUiThread(new com.afwsamples.testdpc.policy.wifimanagement.WifiEapTlsCreateDialogFragment$$Lambda$2(this, p3));
        }
        return;
    }

    public void onActivityResult(int p4, int p5, android.content.Intent p6)
    {
        if (p5 == -1) {
            switch (p4) {
                case 1:
                    this.mCaCertUri = p6.getData();
                    this.updateSelectedCert(this.mCaCertTextView, this.mCaCertUri, 0);
                    break;
                case 2:
                    this.mUserCertUri = p6.getData();
                    this.mUserCertAlias = 0;
                    this.updateSelectedCert(this.mUserCertTextView, this.mUserCertUri, 0);
                    break;
            }
        }
        return;
    }

    public void onCreate(android.os.Bundle p3)
    {
        super.onCreate(p3);
        this.mDpm = ((android.app.admin.DevicePolicyManager) this.getActivity().getSystemService(android.app.admin.DevicePolicyManager));
        this.mWifiConfiguration = ((android.net.wifi.WifiConfiguration) this.getArguments().getParcelable("config"));
        if (this.mWifiConfiguration == null) {
            this.mWifiConfiguration = new android.net.wifi.WifiConfiguration();
        }
        return;
    }

    public android.app.Dialog onCreateDialog(android.os.Bundle p10)
    {
        android.view.View v2 = android.view.LayoutInflater.from(this.getActivity()).inflate(2131427376, 0);
        v2.findViewById(2131296463).setOnClickListener(new com.afwsamples.testdpc.policy.wifimanagement.WifiEapTlsCreateDialogFragment$ImportButtonOnClickListener(this, 1, "application/x-x509-ca-cert"));
        v2.findViewById(2131296464).setOnClickListener(new com.afwsamples.testdpc.policy.wifimanagement.WifiEapTlsCreateDialogFragment$ImportButtonOnClickListener(this, 2, "application/x-pkcs12"));
        android.widget.Button v3_1 = ((android.widget.Button) v2.findViewById(2131296601));
        if (com.afwsamples.testdpc.common.Util.SDK_INT < 31) {
            v3_1.setVisibility(8);
        } else {
            v3_1.setOnClickListener(new com.afwsamples.testdpc.policy.wifimanagement.WifiEapTlsCreateDialogFragment$$Lambda$0(this));
        }
        this.mCaCertTextView = ((android.widget.TextView) v2.findViewById(2131296602));
        this.mUserCertTextView = ((android.widget.TextView) v2.findViewById(2131296610));
        this.mSsidEditText = ((android.widget.EditText) v2.findViewById(2131296635));
        this.mCertPasswordEditText = ((android.widget.EditText) v2.findViewById(2131296731));
        this.mIdentityEditText = ((android.widget.EditText) v2.findViewById(2131296732));
        this.populateUi();
        android.app.AlertDialog v0 = new android.app.AlertDialog$Builder(this.getActivity()).setTitle(2131689641).setView(v2).setPositiveButton(2131690389, 0).setNegativeButton(2131690376, 0).create();
        v0.setOnShowListener(new com.afwsamples.testdpc.policy.wifimanagement.WifiEapTlsCreateDialogFragment$1(this, v0));
        return v0;
    }
}
