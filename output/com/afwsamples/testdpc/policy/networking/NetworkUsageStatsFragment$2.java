package com.afwsamples.testdpc.policy.networking;
 class NetworkUsageStatsFragment$2 extends android.widget.ArrayAdapter {
    final synthetic com.afwsamples.testdpc.policy.networking.NetworkUsageStatsFragment this$0;

    NetworkUsageStatsFragment$2(com.afwsamples.testdpc.policy.networking.NetworkUsageStatsFragment p1, android.content.Context p2, int p3, int p4, java.util.List p5)
    {
        this.this$0 = p1;
        super(p2, p3, p4, p5);
        return;
    }

    private android.text.Spanned getDateString(java.util.Date p7, java.util.Date p8)
    {
        return android.text.Html.fromHtml(new StringBuilder().append("<b>").append(com.afwsamples.testdpc.policy.networking.NetworkUsageStatsFragment.access$200(this.this$0).format(p7)).append("</b> ").append(com.afwsamples.testdpc.policy.networking.NetworkUsageStatsFragment.access$300(this.this$0).format(p7)).append(" - ").append(com.afwsamples.testdpc.policy.networking.NetworkUsageStatsFragment.access$300(this.this$0).format(p8)).toString());
    }

    public android.view.View getView(int p17, android.view.View p18, android.view.ViewGroup p19)
    {
        android.view.View v7 = p18;
        if (p18 == null) {
            v7 = this.this$0.getActivity().getLayoutInflater().inflate(2131427394, p19, 0);
        }
        android.app.usage.NetworkStats$Bucket v3_1 = ((android.app.usage.NetworkStats$Bucket) this.getItem(p17));
        android.widget.TextView v6_1 = ((android.widget.TextView) v7.findViewById(2131296697));
        ((android.widget.TextView) v7.findViewById(2131296696)).setText(this.getDateString(new java.util.Date(v3_1.getStartTimeStamp()), new java.util.Date(v3_1.getEndTimeStamp())));
        String v8_6 = this.this$0;
        Object[] v10_1 = new Object[4];
        v10_1[0] = com.afwsamples.testdpc.policy.networking.NetworkUsageStatsFragment.access$100(this.this$0, v3_1.getRxBytes());
        v10_1[1] = Long.valueOf(v3_1.getRxPackets());
        v10_1[2] = com.afwsamples.testdpc.policy.networking.NetworkUsageStatsFragment.access$100(this.this$0, v3_1.getTxBytes());
        v10_1[3] = Long.valueOf(v3_1.getTxPackets());
        v6_1.setText(v8_6.getString(2131689952, v10_1));
        return v7;
    }
}
