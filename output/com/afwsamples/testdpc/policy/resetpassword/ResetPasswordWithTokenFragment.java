package com.afwsamples.testdpc.policy.resetpassword;
public class ResetPasswordWithTokenFragment extends android.app.Fragment implements android.view.View$OnClickListener {
    private static final String PREFS_NAME = "password-token";
    private static final int REQUEST_CONFIRM_CREDENTIAL = 1;
    private static final String TOKEN_NAME = "token";
    private android.widget.Button mBtnActivateToken;
    private android.widget.Button mBtnNewToken;
    private android.widget.Button mBtnRemoveToken;
    private android.widget.Button mBtnSetPassword;
    private android.widget.CheckBox mChkDoNotAllowOtherAdminsChange;
    private android.widget.CheckBox mChkDoNotRequirePasswordOnBoot;
    private android.widget.CheckBox mChkRequireEntry;
    private android.app.admin.DevicePolicyManager mDpm;
    private android.widget.EditText mEdtPassword;
    private android.widget.EditText mEdtToken;
    private android.widget.EditText mEdtTokenStatus;
    private android.widget.EditText mEdtUseToken;
    private android.app.KeyguardManager mKeyguardMgr;

    public ResetPasswordWithTokenFragment()
    {
        return;
    }

    private void activatePasswordToken()
    {
        android.content.Intent v0 = this.mKeyguardMgr.createConfirmDeviceCredentialIntent(0, 0);
        if (v0 != null) {
            this.startActivityForResult(v0, 1);
        }
        return;
    }

    private void createNewPasswordToken()
    {
        byte[] v0 = this.generateRandomPasswordToken();
        if (this.mDpm.setResetPasswordToken(com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this.getContext()), v0)) {
            this.savePasswordResetTokenToPreference(v0);
            this.reloadTokenInfomation();
        } else {
            this.showToast(this.getString(2131690223));
        }
        return;
    }

    private byte[] generateRandomPasswordToken()
    {
        try {
            int v1_2 = java.security.SecureRandom.getInstance("SHA1PRNG").generateSeed(32);
        } catch (java.security.NoSuchAlgorithmException v0) {
            v0.printStackTrace();
            v1_2 = 0;
        }
        return v1_2;
    }

    public static byte[] loadPasswordResetTokenFromPreference(android.content.Context p6)
    {
        byte[] v3_0 = 0;
        String v2 = p6.createDeviceProtectedStorageContext().getSharedPreferences("password-token", 0).getString("token", 0);
        if (v2 != null) {
            v3_0 = java.util.Base64.getDecoder().decode(v2.getBytes(java.nio.charset.StandardCharsets.UTF_8));
        }
        return v3_0;
    }

    private void reloadTokenInfomation()
    {
        String v2;
        byte[] v1 = com.afwsamples.testdpc.policy.resetpassword.ResetPasswordWithTokenFragment.loadPasswordResetTokenFromPreference(this.getContext());
        if (v1 == null) {
            v2 = this.getString(2131690158);
        } else {
            v2 = java.util.Base64.getEncoder().encodeToString(v1);
        }
        int v3_4;
        this.mEdtToken.setText(v2);
        this.mEdtUseToken.setText(v2);
        boolean v0 = this.mDpm.isResetPasswordTokenActive(com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this.getContext()));
        if (!v0) {
            v3_4 = 2131690157;
        } else {
            v3_4 = 2131690156;
        }
        int v3_6;
        this.mEdtTokenStatus.setText(this.getString(v3_4));
        if ((v0) || (v1 == null)) {
            v3_6 = 0;
        } else {
            v3_6 = 1;
        }
        this.mBtnActivateToken.setEnabled(v3_6);
        return;
    }

    private void removePasswordToken()
    {
        if (this.mDpm.clearResetPasswordToken(com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this.getContext()))) {
            this.savePasswordResetTokenToPreference(0);
            this.reloadTokenInfomation();
        } else {
            this.showToast(this.getString(2131689628));
        }
        return;
    }

    private void resetPasswordWithToken()
    {
        String v5 = this.mEdtUseToken.getText().toString();
        try {
            byte[] v4 = java.util.Base64.getDecoder().decode(v5);
        } catch (IllegalArgumentException v0) {
            v4 = v5.getBytes(java.nio.charset.StandardCharsets.UTF_8);
        }
        String v6_6;
        String v2 = this.mEdtPassword.getText().toString();
        if (!this.mChkRequireEntry.isChecked()) {
            v6_6 = 0;
        } else {
            v6_6 = 1;
        }
        String v6_9;
        if (!this.mChkDoNotRequirePasswordOnBoot.isChecked()) {
            v6_9 = 0;
        } else {
            v6_9 = 2;
        }
        String v6_12;
        if (!this.mChkDoNotAllowOtherAdminsChange.isChecked()) {
            v6_12 = 0;
        } else {
            v6_12 = 1;
        }
        if (v4 == null) {
            this.showToast(this.getString(2131690154));
        } else {
            if (!this.mDpm.resetPasswordWithToken(com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this.getContext()), v2, v4, (((0 | v6_6) | v6_9) | v6_12))) {
                this.showToast(this.getString(2131690159));
            } else {
                Object[] v7_1 = new Object[1];
                v7_1[0] = v2;
                this.showToast(this.getString(2131690160, v7_1));
            }
        }
        return;
    }

    private void savePasswordResetTokenToPreference(byte[] p6)
    {
        android.content.SharedPreferences$Editor v1 = this.getContext().createDeviceProtectedStorageContext().getSharedPreferences("password-token", 0).edit();
        if (p6 == null) {
            v1.remove("token");
        } else {
            v1.putString("token", java.util.Base64.getEncoder().encodeToString(p6));
        }
        v1.commit();
        return;
    }

    private void showToast(String p3)
    {
        android.widget.Toast.makeText(this.getContext(), p3, 1).show();
        return;
    }

    public void onActivityResult(int p2, int p3, android.content.Intent p4)
    {
        if (p2 == 1) {
            if (p3 != -1) {
                this.showToast(this.getString(2131689518));
            } else {
                this.reloadTokenInfomation();
            }
        }
        return;
    }

    public void onClick(android.view.View p2)
    {
        switch (p2.getId()) {
            case 2131296343:
                this.activatePasswordToken();
                break;
            case 2131296344:
                this.createNewPasswordToken();
                break;
            case 2131296345:
                this.removePasswordToken();
                break;
            case 2131296346:
                this.resetPasswordWithToken();
                break;
        }
        return;
    }

    public void onCreate(android.os.Bundle p3)
    {
        super.onCreate(p3);
        this.mDpm = ((android.app.admin.DevicePolicyManager) this.getContext().getSystemService(android.app.admin.DevicePolicyManager));
        this.mKeyguardMgr = ((android.app.KeyguardManager) this.getContext().getSystemService(android.app.KeyguardManager));
        return;
    }

    public android.view.View onCreateView(android.view.LayoutInflater p4, android.view.ViewGroup p5, android.os.Bundle p6)
    {
        android.view.View v0 = p4.inflate(2131427434, 0);
        this.mEdtToken = ((android.widget.EditText) v0.findViewById(2131296420));
        this.mEdtUseToken = ((android.widget.EditText) v0.findViewById(2131296422));
        this.mEdtTokenStatus = ((android.widget.EditText) v0.findViewById(2131296421));
        this.mEdtPassword = ((android.widget.EditText) v0.findViewById(2131296419));
        this.mChkRequireEntry = ((android.widget.CheckBox) v0.findViewById(2131296569));
        this.mChkDoNotRequirePasswordOnBoot = ((android.widget.CheckBox) v0.findViewById(2131296414));
        this.mChkDoNotAllowOtherAdminsChange = ((android.widget.CheckBox) v0.findViewById(2131296413));
        this.mBtnNewToken = ((android.widget.Button) v0.findViewById(2131296344));
        this.mBtnRemoveToken = ((android.widget.Button) v0.findViewById(2131296345));
        this.mBtnActivateToken = ((android.widget.Button) v0.findViewById(2131296343));
        this.mBtnSetPassword = ((android.widget.Button) v0.findViewById(2131296346));
        this.mBtnNewToken.setOnClickListener(this);
        this.mBtnRemoveToken.setOnClickListener(this);
        this.mBtnActivateToken.setOnClickListener(this);
        this.mBtnSetPassword.setOnClickListener(this);
        return v0;
    }

    public void onResume()
    {
        super.onResume();
        this.reloadTokenInfomation();
        return;
    }
}
