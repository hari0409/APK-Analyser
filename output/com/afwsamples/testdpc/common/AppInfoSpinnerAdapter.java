package com.afwsamples.testdpc.common;
public class AppInfoSpinnerAdapter extends android.widget.ArrayAdapter implements android.widget.SpinnerAdapter {
    private android.content.pm.PackageManager mPackageManager;

    public AppInfoSpinnerAdapter(android.content.Context p2, int p3, int p4, java.util.List p5)
    {
        super(p2, p3, p4, p5);
        super.mPackageManager = p2.getPackageManager();
        return;
    }

    private android.view.View getCustomView(int p7, android.view.View p8, android.view.ViewGroup p9)
    {
        if (p8 == null) {
            p8 = android.view.LayoutInflater.from(this.getContext()).inflate(2131427362, p9, 0);
        }
        android.content.pm.ApplicationInfo v0_1 = ((android.content.pm.ApplicationInfo) this.getItem(p7));
        ((android.widget.ImageView) p8.findViewById(2131296533)).setImageDrawable(this.mPackageManager.getApplicationIcon(v0_1));
        ((android.widget.TextView) p8.findViewById(2131296534)).setText(this.mPackageManager.getApplicationLabel(v0_1));
        return p8;
    }

    public android.view.View getDropDownView(int p2, android.view.View p3, android.view.ViewGroup p4)
    {
        return this.getCustomView(p2, p3, p4);
    }

    public android.view.View getView(int p2, android.view.View p3, android.view.ViewGroup p4)
    {
        return this.getCustomView(p2, p3, p4);
    }
}
