package com.afwsamples.testdpc.policy.keymanagement;
public class GenerateKeyAndCertificateTask extends android.os.AsyncTask {
    public static final String TAG = "PolicyManagement";
    private final android.app.Activity mActivity;
    private final android.content.ComponentName mAdminComponentName;
    final String mAlias;
    private final byte[] mAttestationChallenge;
    private final android.app.admin.DevicePolicyManager mDevicePolicyManager;
    private final boolean mGenerateEcKey;
    private final int mIdAttestationFlags;
    final boolean mIsUserSelectable;
    private final boolean mUseStrongBox;

    public GenerateKeyAndCertificateTask(com.afwsamples.testdpc.policy.keymanagement.KeyGenerationParameters p2, android.app.Activity p3, android.content.ComponentName p4)
    {
        this.mAlias = p2.alias;
        this.mIsUserSelectable = p2.isUserSelectable;
        this.mAttestationChallenge = p2.attestationChallenge;
        this.mIdAttestationFlags = p2.idAttestationFlags;
        this.mUseStrongBox = p2.useStrongBox;
        this.mGenerateEcKey = p2.generateEcKey;
        this.mActivity = p3;
        this.mAdminComponentName = p4;
        this.mDevicePolicyManager = ((android.app.admin.DevicePolicyManager) p3.getSystemService("device_policy"));
        return;
    }

    private void showKeyGenerationResult(android.security.AttestedKeyPair p15)
    {
        if ((this.mActivity != null) && ((!this.mActivity.isFinishing()) && (p15 != null))) {
            android.view.View v5 = this.mActivity.getLayoutInflater().inflate(2131427389, 0);
            java.util.List v0 = p15.getAttestationRecord();
            android.widget.TextView v2_1 = ((android.widget.TextView) v5.findViewById(2131296334));
            if ((v0 == null) || (v0.size() <= 0)) {
                v2_1.setText("<none>");
            } else {
                try {
                    StringBuilder v1_1 = new StringBuilder();
                    com.afwsamples.testdpc.policy.utils.Attestation v3_1 = new com.afwsamples.testdpc.policy.utils.Attestation(((java.security.cert.X509Certificate) p15.getAttestationRecord().get(0)));
                    v1_1.append(new StringBuilder().append(this.mActivity.getText(2131689581)).append("\n").toString());
                    v1_1.append(new StringBuilder().append(new String(v3_1.getAttestationChallenge())).append("\n").toString());
                    com.afwsamples.testdpc.policy.utils.AuthorizationList v7 = v3_1.getTeeEnforced();
                } catch (java.security.cert.CertificateParsingException v4) {
                    android.util.Log.e("PolicyManagement", "Failed parsing attestation record", v4);
                    v2_1.setText("<INVALID>");
                }
                if (v7 != null) {
                    v1_1.append(new StringBuilder().append(this.mActivity.getText(2131689701)).append("\n").toString());
                    v1_1.append(new StringBuilder().append(v7.getSerialNumber()).append("\n").toString());
                    v1_1.append(new StringBuilder().append(this.mActivity.getText(2131689696)).append("\n").toString());
                    v1_1.append(new StringBuilder().append(v7.getImei()).append("\n").toString());
                    v1_1.append(new StringBuilder().append(this.mActivity.getText(2131689697)).append("\n").toString());
                    v1_1.append(new StringBuilder().append(v7.getMeid()).append("\n").toString());
                    v1_1.append("Individual Attestation:\n");
                    v1_1.append(new StringBuilder().append(v7.isIndividualAttestation()).append("\n").toString());
                }
                java.security.cert.X509Certificate v6_1 = ((java.security.cert.Certificate) v0.get((v0.size() - 1)));
                Object[] v9_12 = new Object[2];
                v9_12[0] = this.mActivity.getText(2131689580);
                v9_12[1] = Integer.valueOf(p15.getAttestationRecord().size());
                v1_1.append(String.format("%s: %d\n", v9_12));
                Object[] v9_14 = new Object[2];
                v9_14[0] = this.mActivity.getText(2131689583);
                v9_14[1] = ((java.security.cert.X509Certificate) v6_1).getSubjectX500Principal().getName();
                v1_1.append(String.format("%s\n%s\n", v9_14));
                v2_1.setText(v1_1);
            }
            new android.app.AlertDialog$Builder(this.mActivity).setTitle(2131689883).setView(v5).setPositiveButton(17039370, 0).show();
        }
        return;
    }

    private void showToast(int p4, String p5)
    {
        if (!this.mActivity.isFinishing()) {
            android.widget.Toast.makeText(this.mActivity, new StringBuilder().append(this.mActivity.getResources().getString(p4)).append(" ").append(p5).toString(), 0).show();
        }
        return;
    }

    protected varargs android.security.AttestedKeyPair doInBackground(Void[] p15)
    {
        try {
            String v10_9 = new android.security.keystore.KeyGenParameterSpec$Builder(this.mAlias, 12);
            String v11_8 = new String[1];
            v11_8[0] = "SHA-256";
            android.security.keystore.KeyGenParameterSpec$Builder v7 = v10_9.setDigests(v11_8).setIsStrongBoxBacked(this.mUseStrongBox);
        } catch (SecurityException v3_0) {
            android.util.Log.e("PolicyManagement", "Failed to create certificate", v3_0);
            int v5 = 0;
            return v5;
        } catch (SecurityException v3_0) {
        } catch (SecurityException v3_2) {
            android.util.Log.e("PolicyManagement", "StrongBox unavailable", v3_2);
        } catch (SecurityException v3_1) {
            android.util.Log.e("PolicyManagement", "Not permitted to generate key", v3_1);
        }
        if (this.mAttestationChallenge != null) {
            v7.setAttestationChallenge(this.mAttestationChallenge);
        }
        if (!this.mGenerateEcKey) {
            String v10_7 = new String[2];
            v10_7[0] = "PSS";
            v10_7[1] = "PKCS1";
            v7.setSignaturePaddings(v10_7).setKeySize(2048);
        } else {
            v7.setKeySize(256);
        }
        String v4;
        if (!this.mGenerateEcKey) {
            v4 = "RSA";
        } else {
            v4 = "EC";
        }
        v5 = this.mDevicePolicyManager.generateKeyPair(this.mAdminComponentName, v4, v7.build(), this.mIdAttestationFlags);
        if (v5 != 0) {
            java.util.List v0 = v5.getAttestationRecord();
            if (v0 != null) {
                android.util.Log.i("PolicyManagement", "Attestation record:");
                String v10_14 = v0.iterator();
                while (v10_14.hasNext()) {
                    android.util.Log.i("PolicyManagement", android.util.Base64.encodeToString(((java.security.cert.Certificate) v10_14.next()).getEncoded(), 2));
                }
                android.util.Log.i("PolicyManagement", "End of attestation record.");
            }
            java.security.cert.X509Certificate v8 = com.afwsamples.testdpc.policy.utils.CertificateUtils.createCertificate(v5.getKeyPair(), new javax.security.auth.x500.X500Principal("CN=TestDPC, O=Android, C=US"), new javax.security.auth.x500.X500Principal("CN=TestDPC, O=Android, C=US"));
            java.util.ArrayList v2_1 = new java.util.ArrayList();
            v2_1.add(v8);
            if (this.mDevicePolicyManager.setKeyPairCertificate(this.mAdminComponentName, this.mAlias, v2_1, this.mIsUserSelectable)) {
                return v5;
            } else {
                v5 = 0;
                return v5;
            }
        } else {
            v5 = 0;
            return v5;
        }
    }

    protected bridge synthetic Object doInBackground(Object[] p2)
    {
        return this.doInBackground(((Void[]) p2));
    }

    protected void onPostExecute(android.security.AttestedKeyPair p3)
    {
        if (p3 == null) {
            this.showToast(2131689882, this.mAlias);
        } else {
            this.showToast(2131689883, this.mAlias);
            this.showKeyGenerationResult(p3);
        }
        return;
    }

    protected bridge synthetic void onPostExecute(Object p1)
    {
        this.onPostExecute(((android.security.AttestedKeyPair) p1));
        return;
    }
}
