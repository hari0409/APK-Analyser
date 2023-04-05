package com.afwsamples.testdpc;
public class AddAccountActivity extends android.app.Activity {
    public static final String EXTRA_NEXT_ACTIVITY_INTENT = "nextActivityIntent";
    private static final String GOOGLE_ACCOUNT_TYPE = "com.google";
    private static final String TAG = "AddAccountActivity";
    private static final long WAIT_FOR_FOREGROUND_DELAY_MS = 10;
    private android.content.ComponentName mAdminComponentName;
    private android.app.admin.DevicePolicyManager mDevicePolicyManager;
    private boolean mDisallowModifyAccounts;
    private android.content.Intent mNextActivityIntent;
    private android.os.UserManager mUserManager;

    public AddAccountActivity()
    {
        this.mNextActivityIntent = 0;
        return;
    }

    private void accountCreated(android.os.Bundle p6)
    {
        String v0 = p6.getString("authAccount");
        android.util.Log.d("AddAccountActivity", new StringBuilder().append("addAccount - accountNameAdded: ").append(v0).toString());
        if (this.mNextActivityIntent != null) {
            this.startActivity(this.mNextActivityIntent);
        }
        android.content.Intent v1_1 = new android.content.Intent();
        v1_1.putExtra("android.app.extra.PROVISIONING_ACCOUNT_TO_MIGRATE", new android.accounts.Account(v0, "com.google"));
        this.setResult(-1, v1_1);
        this.finish();
        return;
    }

    private void addAccount(String p9)
    {
        android.accounts.AccountManager v0 = android.accounts.AccountManager.get(this);
        android.os.Bundle v4_1 = new android.os.Bundle();
        if (!android.text.TextUtils.isEmpty(p9)) {
            v4_1.putString("authAccount", p9);
        }
        v0.addAccount("com.google", 0, 0, v4_1, this, new com.afwsamples.testdpc.AddAccountActivity$$Lambda$1(this), 0);
        return;
    }

    private void disableUserRestrictions()
    {
        if (com.afwsamples.testdpc.common.Util.SDK_INT < 24) {
            android.util.Log.v("AddAccountActivity", "disabling user restrictions");
            this.mDisallowModifyAccounts = this.mUserManager.hasUserRestriction("no_modify_accounts");
            this.mDevicePolicyManager.clearUserRestriction(this.mAdminComponentName, "no_modify_accounts");
        } else {
            android.util.Log.v("AddAccountActivity", "skip disabling user restriction on N or above");
        }
        return;
    }

    private void restoreUserRestrictions()
    {
        if (com.afwsamples.testdpc.common.Util.SDK_INT < 24) {
            android.util.Log.v("AddAccountActivity", "restoring user restrictions");
            if (this.mDisallowModifyAccounts) {
                this.mDevicePolicyManager.addUserRestriction(this.mAdminComponentName, "no_modify_accounts");
            }
        } else {
            android.util.Log.v("AddAccountActivity", "skip restoring user restrictions on N or above");
        }
        return;
    }

    private void waitForForeground(Runnable p7, long p8)
    {
        if (p8 > 0) {
            if (!androidx.lifecycle.ProcessLifecycleOwner.get().getLifecycle().getCurrentState().isAtLeast(androidx.lifecycle.Lifecycle$State.STARTED)) {
                new android.os.Handler().postDelayed(new com.afwsamples.testdpc.AddAccountActivity$$Lambda$2(this, p7, p8), 10);
            } else {
                p7.run();
            }
            return;
        } else {
            throw new RuntimeException("Timed out waiting for foreground.");
        }
    }

    final synthetic void lambda$addAccount$3$AddAccountActivity(android.accounts.AccountManagerFuture p7)
    {
        try {
            this.waitForForeground(new com.afwsamples.testdpc.AddAccountActivity$$Lambda$4(this, ((android.os.Bundle) p7.getResult())), 1000);
        } catch (java.io.IOException v0) {
            android.util.Log.e("AddAccountActivity", "addAccount - failed", v0);
            android.widget.Toast.makeText(this, 2131689819, 1).show();
        } catch (java.io.IOException v0) {
        } catch (java.io.IOException v0) {
        }
        return;
    }

    final synthetic void lambda$null$2$AddAccountActivity(android.os.Bundle p1)
    {
        this.accountCreated(p1);
        return;
    }

    final synthetic void lambda$onNavigateNext$5$AddAccountActivity(android.view.View p4, android.content.DialogInterface p5, int p6)
    {
        this.addAccount(((android.widget.EditText) p4.findViewById(2131296472)).getText().toString());
        return;
    }

    final synthetic void lambda$waitForForeground$4$AddAccountActivity(Runnable p3, long p4)
    {
        this.waitForForeground(p3, (p4 - 10));
        return;
    }

    protected void onCreate(android.os.Bundle p5)
    {
        super.onCreate(p5);
        this.mUserManager = ((android.os.UserManager) this.getSystemService("user"));
        this.mDevicePolicyManager = ((android.app.admin.DevicePolicyManager) this.getSystemService("device_policy"));
        this.mAdminComponentName = com.afwsamples.testdpc.DeviceAdminReceiver.getComponentName(this);
        this.setContentView(2131427357);
        ((com.android.setupwizardlib.GlifLayout) this.findViewById(2131296619)).findViewById(2131296670).setOnClickListener(new com.afwsamples.testdpc.AddAccountActivity$$Lambda$0(this));
        android.os.Bundle v0 = this.getIntent().getExtras();
        if (v0 != null) {
            this.mNextActivityIntent = ((android.content.Intent) v0.get("nextActivityIntent"));
        }
        return;
    }

    public void onNavigateNext(android.view.View p6)
    {
        switch (((android.widget.RadioGroup) this.findViewById(2131296301)).getCheckedRadioButtonId()) {
            case 2131296299:
                this.addAccount(0);
            case 2131296300:
            case 2131296301:
            default:
                break;
            case 2131296300:
            case 2131296301:
                break;
            case 2131296302:
                if (this.mNextActivityIntent != null) {
                    this.startActivity(this.mNextActivityIntent);
                }
                this.finish();
                break;
            case 2131296303:
                android.view.View v1 = this.getLayoutInflater().inflate(2131427446, 0);
                new android.app.AlertDialog$Builder(this).setTitle(2131689521).setView(v1).setPositiveButton(17039370, new com.afwsamples.testdpc.AddAccountActivity$$Lambda$3(this, v1)).show();
                break;
        }
        return;
    }

    protected void onPause()
    {
        super.onPause();
        this.restoreUserRestrictions();
        return;
    }

    protected void onResume()
    {
        super.onResume();
        this.disableUserRestrictions();
        return;
    }
}
