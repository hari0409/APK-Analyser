package com.afwsamples.testdpc.provision;
public class ProvisioningSuccessActivity extends android.app.Activity {
    private static final String TAG = "ProvisioningSuccess";

    public ProvisioningSuccessActivity()
    {
        return;
    }

    public void onCreate(android.os.Bundle p5)
    {
        super.onCreate(p5);
        com.afwsamples.testdpc.provision.PostProvisioningTask v1_1 = new com.afwsamples.testdpc.provision.PostProvisioningTask(this);
        if (v1_1.performPostProvisioningOperations(this.getIntent())) {
            android.content.Intent v0 = v1_1.getPostProvisioningLaunchIntent(this.getIntent());
            if (v0 == null) {
                android.util.Log.e("ProvisioningSuccess", "ProvisioningSuccessActivity.onCreate() invoked, but ownership not assigned");
                android.widget.Toast.makeText(this, 2131689694, 1).show();
            } else {
                this.startActivity(v0);
            }
            this.finish();
        } else {
            this.finish();
        }
        return;
    }
}
