package com.afwsamples.testdpc.provision;
public class GetProvisioningModeActivity extends android.app.Activity {

    public GetProvisioningModeActivity()
    {
        return;
    }

    private boolean containsDoOption(java.util.ArrayList p2)
    {
        return p2.contains(Integer.valueOf(1));
    }

    private boolean containsPoOption(java.util.ArrayList p2)
    {
        if ((!p2.contains(Integer.valueOf(2))) && (!p2.contains(Integer.valueOf(3)))) {
            int v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    private void finishWithIntent(android.content.Intent p2)
    {
        this.setResult(-1, p2);
        this.finish();
        return;
    }

    private java.util.ArrayList getAllowedProvisioningModes()
    {
        java.util.ArrayList v0_0 = this.getIntent().getIntegerArrayListExtra("android.app.extra.PROVISIONING_ALLOWED_PROVISIONING_MODES");
        if ((v0_0 == null) || (v0_0.isEmpty())) {
            v0_0 = new java.util.ArrayList();
            v0_0.add(Integer.valueOf(2));
            v0_0.add(Integer.valueOf(1));
        }
        return v0_0;
    }

    private void hideAllOptions(android.view.ViewGroup p3)
    {
        p3.findViewById(2131296536).setVisibility(8);
        p3.findViewById(2131296408).setVisibility(8);
        return;
    }

    private void hideDivider(android.view.ViewGroup p3)
    {
        p3.findViewById(2131296407).setVisibility(8);
        return;
    }

    private void onDoButtonClick(android.view.View p4)
    {
        android.content.Intent v0_1 = new android.content.Intent();
        v0_1.putExtra("android.app.extra.PROVISIONING_MODE", 1);
        this.finishWithIntent(v0_1);
        return;
    }

    private void onPoButtonClick(android.view.View p4)
    {
        android.content.Intent v0_1 = new android.content.Intent();
        v0_1.putExtra("android.app.extra.PROVISIONING_MODE", 2);
        this.finishWithIntent(v0_1);
        return;
    }

    private void showDivider(android.view.ViewGroup p3)
    {
        p3.findViewById(2131296407).setVisibility(0);
        return;
    }

    private void showDoOption(android.view.ViewGroup p3)
    {
        p3.findViewById(2131296408).setVisibility(0);
        p3.findViewById(2131296409).setOnClickListener(new com.afwsamples.testdpc.provision.GetProvisioningModeActivity$$Lambda$1(this));
        return;
    }

    private void showPoOption(android.view.ViewGroup p3)
    {
        p3.findViewById(2131296536).setVisibility(0);
        p3.findViewById(2131296537).setOnClickListener(new com.afwsamples.testdpc.provision.GetProvisioningModeActivity$$Lambda$0(this));
        return;
    }

    private void showRelevantProvisioningOptions(android.view.ViewGroup p3)
    {
        this.hideAllOptions(p3);
        this.hideDivider(p3);
        java.util.ArrayList v0 = this.getAllowedProvisioningModes();
        if (this.containsDoOption(v0)) {
            this.showDoOption(p3);
        }
        if (this.containsPoOption(v0)) {
            if (this.containsDoOption(v0)) {
                this.showDivider(p3);
            }
            this.showPoOption(p3);
        }
        return;
    }

    final bridge synthetic void bridge$lambda$0$GetProvisioningModeActivity(android.view.View p1)
    {
        this.onPoButtonClick(p1);
        return;
    }

    final bridge synthetic void bridge$lambda$1$GetProvisioningModeActivity(android.view.View p1)
    {
        this.onDoButtonClick(p1);
        return;
    }

    public void onBackPressed()
    {
        this.setResult(0);
        super.onBackPressed();
        return;
    }

    public void onCreate(android.os.Bundle p3)
    {
        super.onCreate(p3);
        this.setContentView(2131427359);
        this.showRelevantProvisioningOptions(((android.widget.LinearLayout) this.findViewById(2131296415)));
        return;
    }
}
