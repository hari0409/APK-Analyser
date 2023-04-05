package com.afwsamples.testdpc.policy.wifimanagement;
 class WifiModificationFragment$ConfigsAdapter extends android.widget.ArrayAdapter {
    final synthetic com.afwsamples.testdpc.policy.wifimanagement.WifiModificationFragment this$0;

    public WifiModificationFragment$ConfigsAdapter(com.afwsamples.testdpc.policy.wifimanagement.WifiModificationFragment p4)
    {
        this.this$0 = p4;
        super(p4.getActivity(), 17367045, com.afwsamples.testdpc.policy.wifimanagement.WifiModificationFragment.access$000(p4));
        return;
    }

    public long getItemId(int p3)
    {
        return ((long) ((android.net.wifi.WifiConfiguration) com.afwsamples.testdpc.policy.wifimanagement.WifiModificationFragment.access$000(this.this$0).get(p3)).networkId);
    }

    public android.view.View getView(int p5, android.view.View p6, android.view.ViewGroup p7)
    {
        if (p6 == null) {
            p6 = this.this$0.getActivity().getLayoutInflater().inflate(17367045, p7, 0);
        }
        ((android.widget.CheckedTextView) p6).setText(((android.net.wifi.WifiConfiguration) com.afwsamples.testdpc.policy.wifimanagement.WifiModificationFragment.access$000(this.this$0).get(p5)).SSID);
        return p6;
    }

    public boolean hasStableIds()
    {
        return 1;
    }
}
