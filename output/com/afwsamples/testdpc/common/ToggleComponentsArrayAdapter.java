package com.afwsamples.testdpc.common;
public abstract class ToggleComponentsArrayAdapter extends android.widget.ArrayAdapter implements android.widget.AdapterView$OnItemClickListener {
    public static final String TAG;
    protected android.app.admin.DevicePolicyManager mDevicePolicyManager;
    protected com.afwsamples.testdpc.DevicePolicyManagerGateway mDevicePolicyManagerGateway;
    protected java.util.List mIsComponentCheckedList;
    protected android.content.pm.PackageManager mPackageManager;

    static ToggleComponentsArrayAdapter()
    {
        com.afwsamples.testdpc.common.ToggleComponentsArrayAdapter.TAG = com.afwsamples.testdpc.common.ToggleComponentsArrayAdapter.getSimpleName();
        return;
    }

    public ToggleComponentsArrayAdapter(android.content.Context p3, int p4, java.util.List p5)
    {
        super(p3, p4, p5);
        super.mPackageManager = p3.getPackageManager();
        super.mDevicePolicyManagerGateway = new com.afwsamples.testdpc.DevicePolicyManagerGatewayImpl(p3);
        super.mDevicePolicyManager = super.mDevicePolicyManagerGateway.getDevicePolicyManager();
        Boolean v1_1 = new Boolean[p5.size()];
        super.mIsComponentCheckedList = new java.util.ArrayList(java.util.Arrays.asList(v1_1));
        java.util.Collections.fill(super.mIsComponentCheckedList, Boolean.FALSE);
        return;
    }

    protected abstract boolean canModifyComponent();

    protected android.graphics.drawable.Drawable getApplicationIcon(android.content.pm.ApplicationInfo p2)
    {
        return this.mPackageManager.getApplicationIcon(p2);
    }

    protected abstract android.content.pm.ApplicationInfo getApplicationInfo();

    public abstract CharSequence getDisplayName();

    public android.view.View getView(int p9, android.view.View p10, android.view.ViewGroup p11)
    {
        android.view.View v5_12;
        android.content.pm.ApplicationInfo v0 = this.getApplicationInfo(p9);
        if (v0 != null) {
            if (p10 == null) {
                p10 = android.view.LayoutInflater.from(this.getContext()).inflate(2131427378, p11, 0);
            }
            ((android.widget.ImageView) p10.findViewById(2131296533)).setImageDrawable(this.getApplicationIcon(v0));
            ((android.widget.TextView) p10.findViewById(2131296534)).setText(this.getDisplayName(p9));
            android.widget.CheckBox v2_1 = ((android.widget.CheckBox) p10.findViewById(2131296424));
            v2_1.setOnClickListener(new com.afwsamples.testdpc.common.ToggleComponentsArrayAdapter$1(this, p9));
            v2_1.setChecked(((Boolean) this.mIsComponentCheckedList.get(p9)).booleanValue());
            v2_1.setEnabled(this.canModifyComponent(p9));
            v5_12 = p10;
        } else {
            android.util.Log.e(com.afwsamples.testdpc.common.ToggleComponentsArrayAdapter.TAG, new StringBuilder().append("Fail to retrieve application info for the entry: ").append(p9).toString());
            v5_12 = 0;
        }
        return v5_12;
    }

    protected abstract boolean isComponentEnabled();

    protected boolean isSystemApp(android.content.pm.ApplicationInfo p2)
    {
        if ((p2 == null) || ((p2.flags & 1) == 0)) {
            int v0_2 = 0;
        } else {
            v0_2 = 1;
        }
        return v0_2;
    }

    public void onItemClick(android.widget.AdapterView p3, android.view.View p4, int p5, long p6)
    {
        ((android.widget.CheckBox) p4.findViewById(2131296424)).performClick();
        return;
    }

    protected void setIsComponentEnabledList(java.util.List p1)
    {
        this.mIsComponentCheckedList = p1;
        return;
    }
}
