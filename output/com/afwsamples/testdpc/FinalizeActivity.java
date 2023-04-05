package com.afwsamples.testdpc;
public class FinalizeActivity extends android.app.Activity {
    private android.widget.Button mFinishButton;
    private com.android.setupwizardlib.GlifLayout mSetupWizardLayout;

    public FinalizeActivity()
    {
        return;
    }

    private String getAddedAccountName()
    {
        String v0 = this.getIntent().getStringExtra("account_name");
        if (v0 == null) {
            v0 = com.afwsamples.testdpc.common.LaunchIntentUtil.getAddedAccountName(((android.os.PersistableBundle) this.getIntent().getParcelableExtra("android.app.extra.PROVISIONING_ADMIN_EXTRAS_BUNDLE")));
        }
        return v0;
    }

    private boolean isAccountMigrated(String p7)
    {
        int v2 = 0;
        android.accounts.Account[] v1 = android.accounts.AccountManager.get(this).getAccounts();
        int v3_0 = 0;
        while (v3_0 < v1.length) {
            if (!p7.equalsIgnoreCase(v1[v3_0].name)) {
                v3_0++;
            } else {
                v2 = 1;
                break;
            }
        }
        return v2;
    }

    protected void onCreate(android.os.Bundle p12)
    {
        super.onCreate(p12);
        if ((p12 == null) && (com.afwsamples.testdpc.common.Util.isManagedProfileOwner(this))) {
            com.afwsamples.testdpc.provision.ProvisioningUtil.enableProfile(this);
        }
        this.setContentView(2131427383);
        this.mSetupWizardLayout = ((com.android.setupwizardlib.GlifLayout) this.findViewById(2131296619));
        this.mFinishButton = ((android.widget.Button) this.mSetupWizardLayout.findViewById(2131296670));
        this.mFinishButton.setText(2131689830);
        this.mFinishButton.setOnClickListener(new com.afwsamples.testdpc.FinalizeActivity$$Lambda$0(this));
        android.widget.ImageView v2_1 = ((android.widget.ImageView) this.findViewById(2131296330));
        android.widget.TextView v3_1 = ((android.widget.TextView) this.findViewById(2131296331));
        try {
            android.content.pm.PackageManager v7 = this.getPackageManager();
            android.content.pm.ApplicationInfo v4 = v7.getApplicationInfo(this.getPackageName(), 0);
            v2_1.setImageDrawable(v7.getApplicationIcon(v4));
            v3_1.setText(v7.getApplicationLabel(v4));
        } catch (android.content.pm.PackageManager$NameNotFoundException v5) {
            android.util.Log.w("TestDPC", "Couldn\'t look up our own package?!?!", v5);
        }
        String v1 = this.getAddedAccountName();
        if (v1 != null) {
            android.view.View v0;
            if (!this.isAccountMigrated(v1)) {
                v0 = this.findViewById(2131296272);
            } else {
                v0 = this.findViewById(2131296273);
            }
            v0.setVisibility(0);
            ((android.widget.TextView) v0.findViewById(2131296498)).setText(v1);
        }
        int v9_7;
        if (!com.afwsamples.testdpc.common.Util.isDeviceOwner(this)) {
            v9_7 = 2131689542;
        } else {
            v9_7 = 2131689541;
        }
        ((android.widget.TextView) this.findViewById(2131296436)).setText(v9_7);
        return;
    }

    public void onNavigateNext(android.view.View p2)
    {
        this.setResult(-1);
        this.finish();
        return;
    }
}
