package com.afwsamples.testdpc.policy.keymanagement;
public class SignAndVerifyTask extends android.os.AsyncTask {
    public static final String TAG = "PolicyManagement";
    private com.afwsamples.testdpc.policy.keymanagement.ShowToastCallback mCallback;
    private android.content.Context mContext;

    public SignAndVerifyTask(android.content.Context p1, com.afwsamples.testdpc.policy.keymanagement.ShowToastCallback p2)
    {
        this.mContext = p1;
        this.mCallback = p2;
        return;
    }

    protected bridge synthetic Object doInBackground(Object[] p2)
    {
        return this.doInBackground(((String[]) p2));
    }

    protected varargs String doInBackground(String[] p13)
    {
        String v1 = p13[0];
        try {
            String v10_8;
            String v0;
            java.security.PrivateKey v5 = android.security.KeyChain.getPrivateKey(this.mContext, v1);
        } catch (java.security.InvalidKeyException v4_4) {
            android.util.Log.e("PolicyManagement", "Error getting key", v4_4);
            v10_8 = 0;
            return v10_8;
        } catch (java.security.InvalidKeyException v4_3) {
            android.util.Log.e("PolicyManagement", "Interrupted while getting the key", v4_3);
        } catch (java.security.InvalidKeyException v4_2) {
            android.util.Log.e("PolicyManagement", "Algorithm not supported", v4_2);
        } catch (java.security.InvalidKeyException v4_1) {
            android.util.Log.e("PolicyManagement", "Failed signing with key", v4_1);
        } catch (java.security.InvalidKeyException v4_0) {
            android.util.Log.e("PolicyManagement", "Provided alias resolves to an invalid key", v4_0);
        }
        if (!v5.getAlgorithm().equals("RSA")) {
            v0 = "SHA256withECDSA";
        } else {
            v0 = "SHA256withRSA";
        }
        byte[] v3 = new String("hello").getBytes();
        java.security.Signature v8 = java.security.Signature.getInstance(v0);
        v8.initSign(v5);
        v8.update(v3);
        byte[] v7 = v8.sign();
        java.security.cert.X509Certificate v2 = android.security.KeyChain.getCertificateChain(this.mContext, v1)[0];
        java.security.PublicKey v6 = v2.getPublicKey();
        java.security.Signature v9 = java.security.Signature.getInstance(v0);
        v9.initVerify(v6);
        v9.update(v3);
        if (!v9.verify(v7)) {
        } else {
            v10_8 = v2.getSubjectX500Principal().getName();
            return v10_8;
        }
    }

    protected bridge synthetic void onPostExecute(Object p1)
    {
        this.onPostExecute(((String) p1));
        return;
    }

    protected void onPostExecute(String p5)
    {
        if (p5 == null) {
            Object[] v2_0 = new Object[0];
            this.mCallback.showToast(2131689886, v2_0);
        } else {
            com.afwsamples.testdpc.policy.keymanagement.ShowToastCallback v0_1 = this.mCallback;
            Object[] v2_2 = new Object[1];
            v2_2[0] = p5;
            v0_1.showToast(2131689887, v2_2);
        }
        return;
    }
}
