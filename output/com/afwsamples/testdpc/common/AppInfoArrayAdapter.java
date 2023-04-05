package com.afwsamples.testdpc.common;
public class AppInfoArrayAdapter extends android.widget.ArrayAdapter {
    private static final String TAG = "AppInfoArrayAdapter";
    private int mAppInfoFlags;
    private android.content.pm.PackageManager mPackageManager;

    public AppInfoArrayAdapter(android.content.Context p2, int p3, java.util.List p4)
    {
        this(p2, p3, p4, 0);
        return;
    }

    public AppInfoArrayAdapter(android.content.Context p2, int p3, java.util.List p4, boolean p5)
    {
        super(p2, p3, p4);
        super.mAppInfoFlags = 0;
        super.mPackageManager = super.getContext().getPackageManager();
        if (p5) {
            super.mAppInfoFlags = 8192;
        }
        return;
    }

    public android.view.View getView(int p8, android.view.View p9, android.view.ViewGroup p10)
    {
        if (p9 == null) {
            p9 = android.view.LayoutInflater.from(this.getContext()).inflate(2131427362, p10, 0);
        }
        android.widget.ImageView v2_1 = ((android.widget.ImageView) p9.findViewById(2131296533));
        android.widget.TextView v3_1 = ((android.widget.TextView) p9.findViewById(2131296534));
        try {
            android.content.pm.ApplicationInfo v0 = this.mPackageManager.getApplicationInfo(((String) this.getItem(p8)), this.mAppInfoFlags);
            v2_1.setImageDrawable(this.mPackageManager.getApplicationIcon(v0));
            v3_1.setText(this.mPackageManager.getApplicationLabel(v0));
        } catch (android.content.pm.PackageManager$NameNotFoundException v1) {
            v2_1.setImageDrawable(0);
            v3_1.setText(((CharSequence) this.getItem(p8)));
        }
        return p9;
    }
}
