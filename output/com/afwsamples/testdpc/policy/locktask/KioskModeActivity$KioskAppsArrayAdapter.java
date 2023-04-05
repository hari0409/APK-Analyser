package com.afwsamples.testdpc.policy.locktask;
 class KioskModeActivity$KioskAppsArrayAdapter extends android.widget.ArrayAdapter implements android.widget.AdapterView$OnItemClickListener {
    final synthetic com.afwsamples.testdpc.policy.locktask.KioskModeActivity this$0;

    public KioskModeActivity$KioskAppsArrayAdapter(com.afwsamples.testdpc.policy.locktask.KioskModeActivity p1, android.content.Context p2, int p3, java.util.List p4)
    {
        this.this$0 = p1;
        super(p2, p3, p4);
        return;
    }

    public android.view.View getView(int p10, android.view.View p11, android.view.ViewGroup p12)
    {
        try {
            android.content.pm.ApplicationInfo v0 = com.afwsamples.testdpc.policy.locktask.KioskModeActivity.access$000(this.this$0).getApplicationInfo(((String) this.getItem(p10)), 0);
        } catch (android.content.pm.PackageManager$NameNotFoundException v2) {
            android.util.Log.e("KioskModeActivity", new StringBuilder().append("Fail to retrieve application info for the entry: ").append(p10).toString(), v2);
            android.view.View v5_2 = 0;
            return v5_2;
        }
        if (p11 == null) {
            p11 = android.view.LayoutInflater.from(this.getContext()).inflate(2131427390, p12, 0);
        }
        ((android.widget.ImageView) p11.findViewById(2131296533)).setImageDrawable(v0.loadIcon(com.afwsamples.testdpc.policy.locktask.KioskModeActivity.access$000(this.this$0)));
        android.widget.TextView v4_1 = ((android.widget.TextView) p11.findViewById(2131296534));
        if (!this.this$0.getPackageName().equals(this.getItem(p10))) {
            v4_1.setText(v0.loadLabel(com.afwsamples.testdpc.policy.locktask.KioskModeActivity.access$000(this.this$0)));
        } else {
            v4_1.setText(this.this$0.getString(2131690270));
        }
        v5_2 = p11;
        return v5_2;
    }

    public void onItemClick(android.widget.AdapterView p6, android.view.View p7, int p8, long p9)
    {
        if (!this.this$0.getPackageName().equals(this.getItem(p8))) {
            android.content.Intent v1;
            android.content.pm.PackageManager v2 = this.this$0.getPackageManager();
            String v0_1 = ((String) this.getItem(p8));
            if (!com.afwsamples.testdpc.common.Util.isRunningOnTvDevice(this.getContext())) {
                v1 = v2.getLaunchIntentForPackage(v0_1);
            } else {
                v1 = v2.getLeanbackLaunchIntentForPackage(v0_1);
            }
            this.this$0.startActivity(v1);
        } else {
            this.this$0.onBackdoorClicked();
        }
        return;
    }
}
